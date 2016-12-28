execute "mkdir -p #{ENV['HOME']}/.config/nvim/dein"
execute "Install dein" do
  command "curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh -o /tmp/dein_installer.sh && sh -x /tmp/dein_installer.sh #{ENV['HOME']}/.config/nvim/dein"
  not_if "test -d ~/.config/nvim/dein/repos/github.com/Shougo/dein.vim"
end
