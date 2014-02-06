log_level                :info
log_location             STDOUT
node_name                'vagrant'
client_key               '/home/vagrant/chef-repo/.chef/vagrant.pem'
validation_client_name   'chef-validator'
validation_key           '/home/vagrant/chef-repo/.chef/chef-validator.pem'
chef_server_url          'https://chef-server'
syntax_check_cache_path  '/home/vagrant/.chef/syntax_check_cache'
cookbook_path [ '/home/vagrant/chef-repo/cookbooks' ]
