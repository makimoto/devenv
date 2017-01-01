package 'zsh'

remote_file "#{ENV['HOME']}/.zshrc" do
  source 'files/zshrc'
end

remote_directory "#{ENV['HOME']}/.zsh.d" do
  source 'files/zsh.d'
end
