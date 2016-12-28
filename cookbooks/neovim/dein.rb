dir = "#{ENV['HOME']}/.config/nvim/dein"

directory dir
execute "Install dein" do
  command "curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh -o /tmp/dein_installer.sh && sh -x /tmp/dein_installer.sh #{dir}"
  not_if "test -d ~/.config/nvim/dein/repos/github.com/Shougo/dein.vim"
end
