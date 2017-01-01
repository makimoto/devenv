execute "brew tap neovim/neovim" do
  not_if "test -e `brew --prefix`/bin/nvim"
end

package 'neovim'

directory "#{ENV['HOME']}/.config/nvim"

remote_file "#{ENV['HOME']}/.config/nvim/init.vim" do
  source "files/nvim/init.vim"
end

remote_file "#{ENV['HOME']}/.config/nvim/dein.toml" do
  source "files/nvim/dein.toml"
end

include_recipe 'dein'
