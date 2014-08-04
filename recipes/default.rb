%w{wget build-essential curl git-core nano language-pack-en erlang openjdk-6-jre ruby1.9.3 wget curl}.each do |pkg|
  package pkg do
    action :install
  end
end

%w{libxslt-dev libxml2-dev imagemagick libmagickwand-dev zlib1g-dev libfreetype6-dev liblcms1-dev libjpeg8-dev libevent-dev libev-dev libyaml-dev libffi-dev libtidy-dev libsqlite3-dev libcurl4-openssl-dev libssl-dev libmemcached-dev}.each do |pkg|
  package pkg do
    action :install
  end
end

%w{memcached mongodb-clients libv8-dev}.each do |pkg|
  package pkg do
    action :install
  end
end


%w{xvfb firefox libqtwebkit4 wkhtmltopdf}.each do |pkg|
  package pkg do
    action :install
  end
end


if File.exists? "/vagrant"
  user = "vagrant"
else
  user = "ubuntu"
end

