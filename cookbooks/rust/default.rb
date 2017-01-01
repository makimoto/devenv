package 'rust'

execute "cargo install rustfmt" do
  not_if "test -e `which rustfmt`"
end

execute "cargo install racer" do
  not_if "test -e `which racer`"
end
