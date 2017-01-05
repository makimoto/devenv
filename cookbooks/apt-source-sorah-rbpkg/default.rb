execute 'apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3F0F56A8' do
  not_if "apt-key list | grep '/3F0F56A8'"
end

remote_file '/etc/apt/sources.list.d/sorah-rbpkg.list' do
  owner 'root'
  group 'root'
  mode '644'
  notifies :run, 'execute[apt-get update]'
end
