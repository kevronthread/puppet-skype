# Public: Install Skype.app to /Applications.
#
# Examples
#
#   include skype

class skype($ensure = present) {
    case $ensure {
      present: {
        Package {
          ensure => present
        }
      }

      absent: {
        Package {
          ensure => absent
        }
      }

      default: {
        fail("Ensure must be present or absent!")
      }
    }

    package { 'Skype':
      provider => 'appdmg',
      source   => 'http://www.skype.com/go/getskype-macosx.dmg'
    }
  }