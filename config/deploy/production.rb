role :web, %w(justin@direct.matthin.com)

set :ssh_options, {
  auth_methods: %w(password),
  password: ENV["matthin_com_cap_pass"]
}

