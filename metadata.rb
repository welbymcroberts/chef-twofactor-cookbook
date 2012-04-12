maintainer       "Welby McRoberts"
maintainer_email "welby@whmcr.com"
license          "Apache 2.0"
description      "Installs/Configures Two Factor Auth"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1"


%w{ centos fedora redhat scientific suse}.each do |os|
  supports os
end
