Quick test for closure-compiler.


`reflection-config.json` copied over from https://github.com/ChadKillingsworth/closure-compiler-graal.

# Native Image instructions:

0. You need to have `native-image` on the PATH.

1. Run `build.sh` in this directory to build the native image.

3. Run `run.sh` to run the native image created in the previous step.
It should display `function hello(a){alert("Hello, "+a)}hello("New User");`.
