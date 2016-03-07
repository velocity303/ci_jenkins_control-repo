define profile::jenkins::module_jobs {
  # This is primarily to make the template more clear.
  $test_module_name = $name
  $gitlab_url = 'http://gitlab'
  $gitlab_username  = 'demouser'

  # Create some jobs to do linting, rspec and serverspec tests.
  jenkins::job { "gitlab_${name}_lint":
    config => template("profile/jenkins/gitlab_lint.xml.erb"),
  }

  jenkins::job { "gitlab_${name}_parse":
    config => template("profile/jenkins/gitlab_parse.xml.erb"),
  }

  jenkins::job { "gitlab_${name}_rspec":
    config => template("profile/jenkins/gitlab_rspec.xml.erb"),
  }

  jenkins::job { "gitlab_${name}_serverspec":
    config => template("profile/jenkins/gitlab_serverspec.xml.erb"),
  }
}
