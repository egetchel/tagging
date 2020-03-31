Sample scripts to demonstrate automatic base image updating.

Flow:

/base/base-6.7.sh        <-- This will create the initial corproate base image
/dev/build-dev.sh        <-- This will create the application off the corproate base image
/base/upgrade-to-7.7.sh  <-- This will upgrade the corproate base image
/dev.build-dev.sh        <-- Rebuilding the application will automatically pick up the base.
