directory '/opt' do
  user 'root'
  group 'wheel'
end

directory '/opt/brew' do
  user ENV['USER']
  group 'admin'
end

git '/opt/brew' do
  repository 'https://github.com/Homebrew/brew.git'
end
