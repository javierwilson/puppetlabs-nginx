# Class: nginx::package::fedora
#
# This module manages NGINX package installation on RedHat based systems
#
# Parameters:
#
# There are no default parameters for this class.
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# This class file is not called directly
class nginx::package::fedora {
  $fedora_packages = ['nginx']

  #$redhat_packages = ['nginx', 'GeoIP', 'gd', 'libXpm', 'libxslt']

  #if downcase($::operatingsystem) == "redhat" {
  #  $os_type = "rhel"
  #} else {
  #  $os_type = downcase($::operatingsystem)
  #}

  #if $::lsbmajdistrelease == undef {
  #  $os_rel = regsubst($::operatingsystemrelease, '\..*$', '')
  #} else {
  #  $os_rel = $::lsbmajdistrelease
  #}

  package { $fedora_packages:
    ensure  => present,
  }
}
