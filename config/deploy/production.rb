set :stage, :production

# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary
# server in each group is considered to be the first
# unless any hosts have the primary property set.
role :app, %w{ubuntu@ec2-52-88-87-231.us-west-2.compute.amazonaws.com}
role :web, %w{ubuntu@ec2-52-88-87-231.us-west-2.compute.amazonaws.com}
#role :db,  %w{ubuntu@ec2-52-88-87-231.us-west-2.compute.amazonaws.com}

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
#server 'example.com', user: 'deploy', roles: %w{web app}, my_property: :my_value
server 'ubuntu@ec2-52-88-87-231.us-west-2.compute.amazonaws.com', user: 'ubuntu', roles: %w{web app}, my_property: :my_value

# you can set custom ssh options
# it's possible to pass any option but you need to keep in mind that net/ssh understand limited list of options
# you can see them in [net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start)
# set it globally
# set :ssh_options, {
#   keys: %w(/home/.ssh/id_rsa),
#   forward_agent: false,
#   auth_methods: %w(password)
# }
# set :ssh_options, {
#   user:'deploy',
#   forward_agent:true,
#   keys:%w(~/.ssh/id_rsa ~/Desktop/cuni/cuni_web.pem),
#   auth_methods:%w(publickey)
# }
# and/or per server
# server 'ec2-52-88-87-231.us-west-2.compute.amazonaws.com',
#   user: 'deploy',
#   roles: %w{web app}
#   ssh_options: {
#     user: 'deploy', # overrides user setting above
#     keys: %w(/home/deploy/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey wlsdl0301)
#     # password: 'please use keys'
# }
# setting per server overrides global ssh_options

# fetch(:default_env).merge!(rails_env: :production)
