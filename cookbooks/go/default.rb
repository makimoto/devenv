package 'go'

directory "#{ENV['HOME']}/go"
execute "go get golang.org/x/tools/cmd/goimports" do
  not_if "test -e #{ENV['HOME']}/go/bin/goimports"
end
