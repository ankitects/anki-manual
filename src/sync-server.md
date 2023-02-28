# Self-Hosted Sync Server

Anki 2.1.57+ includes a built-in sync server. Advanced users who cannot or do
not wish to use AnkiWeb can use this sync server instead of AnkiWeb.

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
has been configured, (eg "Cannot connect to AnkiWeb" when your server is down).

## From a Packaged Build

On Windows in a cmd.exe session:

```
set SYNC_USER1=user:pass
"\program files\anki\anki-console.exe" --syncserver
```

Or MacOS, in Terminal.app:

```
SYNC_USER1=user:pass /Applications/Anki.app/Contents/MacOS/anki --syncserver
```

Or Linux:

```
SYNC_USER1=user:pass anki --syncserver
```

## Without GUI dependencies

You can run the server without installing the GUI portion of Anki
provided you have a copy of Python3.9+ installed.

```
python3 -m venv ~/syncserver
~/syncserver/bin/pip install anki
SYNC_USER1=user:pass ~/syncserver/bin/python -m anki.syncserver
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
point each of your Anki clients to the address, eg something like
`http://192.168.1.200:8080/`. The URL can be configured in the preferences.

If you're using AnkiMobile and are unable to connect to a server on your local
network, please go into the iOS settings, locate Anki near the bottom, and
toggle "Allow Anki to access local network" off and then on again.

Older desktop clients required you to define SYNC_ENDPOINT and SYNC_ENDPOINT_MEDIA.
If using an older client, you'd put it as e.g. `http://192.168.1.200:8080/sync/`
and `http://192.168.1.200:8080/msync/` respectively. AnkiDroid also currently
requires separate configuration for the two endpoints.

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
