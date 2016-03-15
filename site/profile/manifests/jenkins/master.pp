class profile::jenkins::master (
  $test_module_name = 'ntp',
  $gitlab_username  = 'demouser'
){
  include ::profile::jenkins

  class { '::jenkins':
    configure_firewall => true,
    plugin_hash        => {
      swarm                 => {},
      greenballs            => {},
      git                   => {},
      git-client            => {},
      scm-api               => {},
      build-pipeline-plugin => {},
      parameterized-trigger => {},
      jquery                => {},
      ruby-runtime          => {},
      gitlab-hook           => {},
    },
  }

  profile::jenkins::module_jobs { "${test_module_name}": }
  
  jenkins::job { "release_code_to_master":
    config => template("profile/jenkins/release_code_manager.xml.erb"),
  }

}
