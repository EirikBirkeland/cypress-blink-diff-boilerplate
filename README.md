This is a successful attempt at using Cypress with Yahoo's blink-diff.

### How to produce a test result from scratch
- Run `yarn run cypress:screenshots:update` to approve our current index.html state.
- Change the actual page content in index.html
- Run the test in Cypress (which will update the screenshot in cypress/screenshots).
- Run ``yarn run cypress:screenshots:diff``
- Check out the screenshot in `cypress/screenshots-diff` and look for red highlighting where the content has changed.

### Tips
- By setting blink-diff's threshold, we can avoid false positives.
