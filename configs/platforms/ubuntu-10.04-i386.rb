platform "ubuntu-10.04-i386" do |plat|
  plat.make = "/usr/bin/make"
  plat.servicedir = "/etc/init.d"
  plat.defaultdir = "/etc/default"
  plat.servicetype = "sysv"

  plat.provision_with "export DEBIAN_FRONTEND=noninteractive; apt-get update -qq; apt-get install -qy --no-install-recommends build-essential devscripts make quilt pkg-config debhelper "
  plat.install_build_dependencies_with "DEBIAN_FRONTEND=noninteractive; apt-get install -qy --no-install-recommends "
  plat.vcloud_name = "ubuntu-1004-i386"
end
