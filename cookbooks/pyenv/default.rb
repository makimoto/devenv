PYTHON3_VERSION = '3.6.0'

package 'pyenv'

execute "pyenv install #{PYTHON3_VERSION}" do
  not_if "test -d #{ENV['HOME']}/.pyenv/versions/#{PYTHON3_VERSION}"
end

execute "PYENV_VERSION=#{PYTHON3_VERSION} pip3 install -U neovim"
