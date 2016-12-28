execute "brew tap neovim/neovim" do
  not_if "brew tap | grep neovim/neovim"
end

package 'neovim'
