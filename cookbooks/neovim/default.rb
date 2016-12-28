execute "brew tap neovim/neovim" do
  not_if "brew tap | grep neovim/neovim"
end

package 'neovim'

execute "mkdir -p #{ENV['HOME']}/.config/nvim"
remote_file "#{ENV['HOME']}/.config/nvim/init.vim" do
  source "files/nvim/init.vim"
end

include_recipe 'dein'
