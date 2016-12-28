package 'git'
  
remote_file "#{ENV['HOME']}/.gitconfig" do
  source 'files/.gitconfig'
end
