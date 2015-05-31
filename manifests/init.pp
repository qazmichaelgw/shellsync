# == Class: shellsync
#
# Full description of class shellsync here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'shellsync':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2015 Your name here, unless otherwise noted.
#
class shellsync (
	$source_dir = $shellsync::params::source_dir,
	$agent_target_dir = $shellsync::params::agent_target_dir
) inherits shellsync::params {
    file {$agent_target_dir:
	path => $agent_target_dir,
	source  => "puppet:///extra_files",
	owner   => "root",
	group	=> "root",
        mode 	=> 750,
	recurse	=> true, 	
    }
}
