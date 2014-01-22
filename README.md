# GnuPG Puppet Module for Boxen

[![Build Status](https://travis-ci.org/andschwa/puppet-gnugpg.png?branch=master)](https://travis-ci.org/andschwa/puppet-gnupg)

Include this module to install GnuPG through homebrew. Everyone needs
encryption.

It installs `gnupg`, not `gnupg2`; the former is statically compiled
while the latter is built against external libraries and would require
including quite a few more dependent packages. The user experience
does not change. If major interest is expressed, I could add the
option to install the latter.

## Usage

```puppet
include gnupg
```

## Required Puppet Modules

* `boxen`
* `homebrew`
    * `repository`
* `stdlib`

## Development

Set `GITHUB_API_TOKEN` in your shell with a [Github oAuth Token](https://help.github.com/articles/creating-an-oauth-token-for-command-line-use) to raise your API rate limit. You can get some work done without it, but you're less likely to encounter errors like `Unable to find module 'boxen/puppet-boxen' on https://github.com`.

Then write some code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
