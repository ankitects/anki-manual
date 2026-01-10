(function() {
    const isPrintPage = window.location.pathname.includes('print.html');
    const urlParams = new URLSearchParams(window.location.search);
    const hasTrigger = urlParams.get('do_print') === 'true';

    // This only modifies the link on the current page to add the trigger.
    const updatePrintButton = () => {
        const printButton = document.querySelector('a[href*="print.html"]');
        if (printButton && !printButton.href.includes('do_print')) {
            const separator = printButton.href.includes('?') ? '&' : '?';
            printButton.href += separator + 'do_print=true';
        }
    };

    // --- PART 2: PRINT PAGE LOGIC ---
    if (isPrintPage) {
        // If we land on print.html without the trigger (e.g., via Back/Forward),
        // use location.replace to bounce the user back to the previous chapter
        // without adding a new entry to the history stack.

        // Hijack the print call only on this page
        const originalPrint = window.print;
        window.print = function() {
            // Immediately 'erase' this print.html visit from history
            // by replacing it with the chapter the user came from.
            if (document.referrer && !document.referrer.includes('print.html')) {
                window.history.replaceState({}, document.title, document.referrer);
            }

            originalPrint();
        };

        if (!hasTrigger) {
            const fallback = document.referrer || window.location.pathname.replace('print.html', '');
            window.location.replace(fallback);
            return;
        }
    }

    // Run the button fix on every page load
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', updatePrintButton);
    } else {
        updatePrintButton();
    }
})();