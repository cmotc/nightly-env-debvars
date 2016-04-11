# nightly-env-debvars
Automatically export debian packaging related variables for my nightlies.

## What it's for

This script can make it very easy to package certain script-based
applications, and much easier to package some other applications when
they're being stubborn. It just sets up an environment for building the
package with a script by exporting some variables and creating a clean
package skeleton to build against.

## How to use it

If you create a build-deb.sh or debian.sh(Or similar) script to build
an application, source this into your application to export the following
variables into your environment. In order to use them, source them into
your build script like this if you use dash

        #! /bin/sh
        . export_deb_vars

or this if you use bash

        #! /bin/sh
        source export_deb_vars

To see an example of this script in action, see the debian.sh script in
this directory.

### Variables Exported by the Script

**will be added in later**

## How to override the variables

Once you've sourced the variables in, you can use them as you see fit,
declare new ones, or override the exported values by changing them
AFTER the script has been sourced.
