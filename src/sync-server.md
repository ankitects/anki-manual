# Self-Hosted Sync Server

Advanced users who cannot or do not wish to use AnkiWeb can use a self-hosted
sync server instead.

Things to be aware of:

- This is an advanced feature, targeted at users who are comfortable with
  networking and the command line. If you use this, the expectation is you
  can resolve any setup/network/firewall issues you run into yourself, and
  use of this is entirely at your own risk.
- Newer clients may depend on changes to the sync protocol, so syncing may
  stop working if you update your Anki clients without also updating the server.
- Third-party sync servers also exist. No testing is done against them, and
  they tend to take time to catch up when the sync protocol changes, so they
  are not recommended.
- The messages inside Anki will use the term 'AnkiWeb' even if a custom server
  has been configured, (e.g "Cannot connect to AnkiWeb" when your server is down).

## Installing/Running

There are various ways you can install and run the server. You can use either:
- the sync server bundled with the desktop version of Anki
- a separate minimal sync server that doesn't include Anki's GUI dependencies. Python and Rust implementations are available.

### From a Packaged Build

This uses the sync server built into the desktop version of Anki as of version 2.1.57+.

On Windows in a cmd.exe session:

```
set SYNC_USER1=user:pass
"\Program Files\anki\anki.exe" --syncserver
```

Or MacOS, in Terminal.app:

```
SYNC_USER1=user:pass /Applications/Anki.app/Contents/MacOS/anki --syncserver
```

Or Linux:

```
SYNC_USER1=user:pass anki --syncserver
```

### With Pip

To avoid downloading desktop Anki's GUI dependencies, you can run a standalone Anki sync server using a Python package downloaded from PyPI instead.
Make sure you have Python 3.9+ installed.

```
python3 -m venv ~/syncserver
~/syncserver/bin/pip install anki
SYNC_USER1=user:pass ~/syncserver/bin/python -m anki.syncserver
```

### With Cargo

From Anki 2.1.66+, you can alternatively build a Rust implementation of the standalone sync server using the below command.
Make sure you have Rustup installed.

```
cargo install --git https://github.com/ankitects/anki.git --tag 2.1.66 anki-sync-server
```

Replace 2.1.66 with whatever the latest Anki version is.

Protobuf (protoc) will need to be installed.

After building, you can run it with:

```
SYNC_USER1=user:pass anki-sync-server
```

### From a source checkout

If you've cloned the Anki repo from GitHub, you can install from there:

```
./ninja extract:protoc
cargo install --path rslib/sync
```

## Multiple Users

SYNC_USER1 declares the first user and password, and must be set.
You can optionally declare SYNC_USER2, SYNC_USER3 and so on, if you
wish to set up multiple accounts.

## Storage Location

The server needs to store a copy of your collection and media in a folder.
By default it is ~/.syncserver; you can change this by defining
a `SYNC_BASE` environmental variable. This must not be the same
location as your normal Anki data folder, as the server and client
must store separate copies.

## Public Access

The server listens on an unencrypted HTTP connection, so it's not a good
idea to expose it directly to the internet. You'll want to either restrict
usage to your local network, or place some form of encryption in front of
the server, such as a VPN (Tailscale is apparently easy), or a HTTPS
reverse proxy.

You can define `SYNC_HOST` and `SYNC_PORT` to change the host and port
that the server binds to.

## Client Setup

You'll need to determine your computer's network IP address, and then
point each of your Anki clients to the address, e.g something like
`http://192.168.1.200:8080/`. The URL can be configured in the preferences.

If you're using AnkiMobile and are unable to connect to a server on your local
network, please go into the iOS settings, locate Anki near the bottom, and
toggle "Allow Anki to access local network" off and then on again.

Older desktop clients required you to define SYNC_ENDPOINT and SYNC_ENDPOINT_MEDIA.
If using an older client, you'd put it as e.g. `http://192.168.1.200:8080/sync/`
and `http://192.168.1.200:8080/msync/` respectively. AnkiDroid clients before 2.16
require separate configuration for the two endpoints.

## Reverse Proxies

If using a reverse proxy to provide HTTPS access (e.g. nginx), and binding to a subpath
(e.g. `http://example.com/custom/` -> `http://localhost:8080/`), you must make sure to
including a trailing slash when configuring Anki. If you put `http://example.com/custom`
instead, it will not work.

On iOS, TLS 1.3 is not supported, so your reverse proxy will need to have TLS 1.2
enabled, or you'll get an "error code -9836".

## Large Requests

The standard AnkiWeb limit on uploads is applied by default. You can optionally
set MAX_SYNC_PAYLOAD_MEGS to something greater than 100 if you wish to increase
the limit. Bear in mind that if you're using a reverse proxy, you may need to
adjust the limit there as well.

## Contributing Changes

Because this server is bundled with Anki, simplicity is a design goal - it is
targeted at individual/family use, and PRs that add things like a REST API or
external databases are unlikely to be accepted at this time. If in doubt, please
reach out before starting work on a PR.

If you're looking for an existing API solution, the AnkiConnect add-on may
meet your needs.
