# Devskiller programming task sample - DevOps

## Introduction

With [Devskiller.com](https://devskiller.com) you can assess your candidates'
programming skills as a part of your recruitment process. We have found that
programming tasks are the best way to do this and have built our tests
accordingly. The way our test works is your candidate is asked to modify the
source code of an existing project.

During the test, your candidates have the option of using our browser-based
code editor and can build the project inside the browser at any time. If they
would prefer to use an IDE they are more comfortable with, they can also
download the project code or clone the project’s Git repository and work
locally.

You can check out this short video to see the test from the [candidate's
perspective](https://goo.gl/AXXaTT).

This repo contains a sample DevOps project and below you can find a detailed
guide for creating your own programming project.

**Please make sure to read our [Getting started with programming
projects](https://goo.gl/gkQU4J) guide first.**

## Technical details

This task consists of two parts:

 * the initialization script `init.sh`,
 * `bats` verification tests.

The `init.sh` script is used for initializing the candidate's Virtual Machine.
You can use it to install and pre-configure all required services.

## Candidate's files

There are cases when you might need to save a candidate's files to review later. Directory `/var/lib/candidate` exists on every Virtual Machine and its contents will be archived after the test.

All archived files will be available to the recruiter to review. 

**The maximum folder size for a Candidate’s files is 20MB. If the files exceed this limit, their contents will be lost. The recruiter will not be able to see the files after the evaluation is complete.**

## Automatic assessment

It is possible to automatically assess the solution posted by the candidate.

**Verification tests** are unit tests that are hidden from the candidate. The
final score, calculated during verification, is a direct result of the
verification tests.

Verification tests in DevOps tasks *must* reside in the `verification`
directory, i.e. the `pathPatterns` directive in the project descriptor is ignored.

## Devskiller project descriptor

Programming tasks can be configured with the Devskiller project descriptor
file:

1. Create a `devskiller.json` file.
2. Place it in the root directory of your project.

Here is an example project descriptor:

```json
{
    "verification" : {
        "testNamePatterns" : [ ".*Verification.*" ]
    }
}
```

You can find more details about the `devskiller.json` descriptor in our
[documentation](https://goo.gl/uWXeCD).

## Automatic verification with verification tests

The solution submitted by the candidate may be verified using automated tests.
Simply define which tests should be treated as verification tests.

To define verification tests, you need to set configuration properties in
`devskiller.json`:

- `testNamePatterns` - an array of RegEx patterns that should match all the
  names of the verification tests.

In our sample task, all verifications tests are prefixed with string Verification
In this case the following patterns will be sufficient:

```json
"testNamePatterns" : [".*Verification.*"]
```
