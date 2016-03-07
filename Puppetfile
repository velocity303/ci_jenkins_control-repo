forge "http://forge.puppetlabs.com"

# Modules from the Puppet Forge
# Note the versions are all set to :latest but after you've
# installed you should change them to the exact version you want
mod "puppetlabs/inifile"
mod "puppetlabs/stdlib"
mod "puppetlabs/concat"
mod "puppetlabs/firewall"
mod "nanliu/staging"
mod "lwf/remote_file"
mod "puppetlabs/puppetserver_gem"
mod "garethr/docker"
mod "rtyler/jenkins"
mod "puppetlabs/apt"
mod "puppetlabs/java"
mod "darin/zypprepo"
mod "camptocamp/archive"
mod "hunner/hiera"
mod "vshn/gitlab"
mod "puppetlabs/git"

#An example of using a specific forge module version instead of latest
#Notice the addition of single quotes
#mod "puppetlabs/inifile", '1.3.0'

# Modules from Github using various references
# Further examples: https://github.com/puppetlabs/r10k/blob/master/doc/puppetfile.mkd#examples
# update the tag to the most current release when implementing
mod 'gms',
  :git    => 'https://github.com/npwalker/abrader-gms',
  :branch => 'gitlab_disable_ssl_verify_support'

mod "beaker",
  :git => 'https://github.com/velocity303/puppet-beaker.git'

mod "ntp",
  :git => 'http://gitlab/demouser/puppet-ntp.git'
