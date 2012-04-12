#
# Cookbook Name:: yubikey
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute


package "pam_yubico" do
  package_name "pam_yubico"
  not_if "rpm -qa | egrep 'pam_yubico'"
  action :install
end

yk = []
begin
    data_bag("admins").each do |login|
        dbi = data_bag_item('admins',login)
        yk.push [dbi['username'],dbi['yubikey']]
    end
rescue
    Chef::Log.info "no users databag"
end
print yk

template "/etc/yubikeys" do
  source "yubikeys.erb"
  variables(
   :yubikeys => yk
  )
end

template "/etc/pam.d/password-auth" do
   source "password-auth.erb"
   variables(
       :yubikey_url => "https://api.yubico.com/wsapi/2.0/verify?id=%d&otp=%s"
end
