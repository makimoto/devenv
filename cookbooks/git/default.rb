package 'git'
  
remote_file "#{ENV['HOME']}/.gitconfig" do
  source 'files/gitconfig'
end

remote_file "#{ENV['HOME']}/.gitignore" do
  source 'files/gitignore'
end
