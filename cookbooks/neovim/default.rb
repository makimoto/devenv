execute "brew tap neovim/neovim" do
  not_if "test -e `brew --prefix`/bin/nvim"
end

package 'neovim'

execute "mkdir -p #{ENV['HOME']}/.config/nvim"
remote_file "#{ENV['HOME']}/.config/nvim/init.vim" do
  source "files/nvim/init.vim"
end

include_recipe 'dein'
