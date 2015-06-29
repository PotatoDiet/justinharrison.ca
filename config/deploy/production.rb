require "capistrano/cloudflare"

role :web, %w(justin@direct.matthin.com)

set :ssh_options, {
  auth_methods: %w(password),
  password: ENV["matthin_com_cap_pass"]
}

set :cloudflare_options, {
  domain:  "matthin.com",
  email:   "pyrohail.ca@gmail.com",
  api_key: ENV["matthin_com_cloud_key"]
}

after(:deploy, "cloudflare:cache:purge")

