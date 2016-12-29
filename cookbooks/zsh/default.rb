package 'zsh'

remote_file "#{ENV['HOME']}/.zshrc" do
  source 'files/zshrc'
end

remote_directory "#{ENV['HOME']}/.zsh" do
  source 'files/zsh'
end
