FreeNAS 11 Source
=============
[![Build Status](https://travis-ci.org/spillinova/freenas.svg?branch=master)](https://travis-ci.org/spillinova/freenas)
![license](https://img.shields.io/github/license/mashape/apistatus.svg)
![GitHub package version](https://img.shields.io/github/package-json/v/badges/shields.svg)


## IMPORTANT NOTE:  This is the master branch of freenas, which is used for the creation and testing of 11-Nightlies builds. Submit Pull Requests here if you are wanting to get changes into the next major release of FreeNAS. To build this source repo, checkout https://github.com/freenas/build

## Pull Request Instructions / Jenkins Commands

When submitting a pull-request, Jenkins will attempt to verify the changes to ensure it does not break our builds and/or passes QA tests.

The following commands may be used to interact with that service:

    "ok to test" to accept this pull request for testing
    "test this please" for a one time test run
    "add to whitelist" to add the author to the whitelist

If the build fails for other various reasons you can rebuild.

    "retest this please" to start a new build
    "retest this please CLEAN" to start a new build, non-incremental


If your Pull-Request depends upon another repo / branch to build properly, you can specify that using the following syntax in the Pull-Request description:

```DEPENDS: https://github.com/freenas/ports/tree/kris/testbranch```

An example would bee, sending a pull-request for the freenas/samba repo, but it depends upon port changes in the freenas/ports repo. You would first
push your port changes to a branch in freenas/ports (kris/testbranch in this example). Then when creating your pull-request for freenas/samba, you would
insert text into the pull-request description field as shown above.


## Build Branch / Version Matrix

#### FreeNAS 11 Master / Nightlies
(This branch will become the next feature release, I.E. 11.1)

| Repo         | Branch            | Description |
|:-------------|:-----------------:|-------------|
| **build**  | [master](https://github.com/freenas/build/tree/master/) | FreeNAS Build System (build profile: freenas)|
| **freenas**  | [master](https://github.com/freenas/freenas/tree/master/) | Core FreeNAS Sources - Legacy UI and Middleware/API |
| **os**  | [freenas/11-stable](https://github.com/freenas/os/tree/freenas/11-stable/) | FreeBSD Operating System - [Upstream](https://github.com/freebsd/freebsd/tree/11-stable) |
| **ports**  | [freenas/master](https://github.com/freenas/ports/tree/freenas/master/) | FreeBSD Ports Tree - [Upstream](https://github.com/freebsd/freebsd-ports/tree/master) |
| **webui**  | [master](https://github.com/freenas/webui/tree/master/) | New Angular UI |
| **freenas-docs**  | [master](https://github.com/freenas/freenas-docs/tree/master/) | Handbook |
| **samba**  | [freenas/master](https://github.com/freenas/samba/tree/freenas/master) | Samba Sources |
| **py-libzfs**  | [master](https://github.com/freenas/py-libzfs/tree/master/) | Python interface to libzfs |


#### FreeNAS HEAD Nightlies
(This branch will become the next major OS feature release, I.E. 12.0)

| Repo         | Branch            | Description |
|:-------------|:-----------------:|-------------|
| **build**  | [master](https://github.com/freenas/build/tree/master/) | FreeNAS Build System (build profile: fn_head)|
| **freenas**  | [master](https://github.com/freenas/freenas/tree/master/) | Core FreeNAS Sources - Legacy UI and Middleware/API |
| **os**  | [freenas/master](https://github.com/freenas/os/tree/freenas/master/) | FreeBSD Operating System - [Upstream](https://github.com/freebsd/freebsd/tree/master) |
| **ports**  | [freenas/master](https://github.com/freenas/ports/tree/freenas/master/) | FreeBSD Ports Tree - [Upstream](https://github.com/freebsd/freebsd-ports/tree/master) |
| **webui**  | [master](https://github.com/freenas/webui/tree/master/) | New Angular UI |
| **freenas-docs**  | [master](https://github.com/freenas/freenas-docs/tree/master/) | Handbook |
| **samba**  | [freenas/master](https://github.com/freenas/samba/tree/freenas/master) | Samba Sources |
| **py-libzfs**  | [master](https://github.com/freenas/py-libzfs/tree/master/) | Python interface to libzfs |


#### FreeNAS STABLE Branch
(This branch will become the next minor update release, I.E. 11.0-U4)

| Repo         | Branch            | Description |
|:-------------|:-----------------:|-------------|
| **build**  | [freenas/11.0-stable](https://github.com/freenas/build/tree/freenas/11.0-stable/) | FreeNAS Build System (build profile: freenas)|
| **freenas**  | [freenas/11.0-stable](https://github.com/freenas/freenas/tree/freenas/11.0-stable/) | Core FreeNAS Sources - Legacy UI and Middleware/API |
| **os**  | [freenas/11.0-stable](https://github.com/freenas/os/tree/freenas/11.0-stable/) | FreeBSD Operating System - [Upstream](https://github.com/freebsd/freebsd/tree/stable/11) |
| **ports**  | [freenas/11.0-stable](https://github.com/freenas/ports/tree/freenas/11.0-stable/) | FreeBSD Ports Tree - [Upstream](https://github.com/freebsd/freebsd-ports/tree/branches/2017Q2) |
| **webui**  | [freenas/11.0-stable](https://github.com/freenas/webui/tree/freenas/11.0-stable/) | New Angular UI |
| **freenas-docs**  | [master](https://github.com/freenas/freenas-docs/tree/master/) | Handbook |
| **samba**  | [freenas/11.0-stable](https://github.com/freenas/samba/tree/freenas/11.0-stable/) | Samba Sources |
| **py-libzfs**  | [master](https://github.com/freenas/py-libzfs/tree/master/) | Python interface to libzfs |
