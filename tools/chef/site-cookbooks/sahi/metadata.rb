name             "sahi"
maintainer       "Arturas Smorgun"
maintainer_email "arturas@smorgun.com"
license          "Apache 2.0"
description      "Installs/Configures SAHI"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

depends "java", ">= 1.22.0"

%w{ ubuntu debian }.each do |os|
  supports os
end

recipe "sahi", "Install sahi globally"
