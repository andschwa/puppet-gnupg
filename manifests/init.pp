# Install python from homebrew.
#
# Usage:
#
#     include gnupg

class gnupg {
  include homebrew

  $version = '1.4.16-boxen1'

  homebrew::formula { 'gnupg':
    before => Package[ 'boxen/brews/gnupg' ],
  }

  package { 'boxen/brews/gnupg':
    ensure => $version,
  }
}
