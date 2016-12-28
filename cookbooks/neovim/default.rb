execute "brew tap neovim/neovim" do
  not_if "brew tap | grep neovim/neovim"
end

package 'neovim'

remote_file "#{ENV['HOME']}/.config/nvim/init.vim" do
  source "files/neovim/init.vim"
end

execute "Install neovim" do
  command "curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh | sh -x ~/.config/nvim/dein"
  not_if "test -d ~/.config/nvim/dein"
end
