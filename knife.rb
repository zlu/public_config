current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "zlu"
client_key               "#{current_dir}/zlu.pem"
validation_client_name   "zlu-validator"
validation_key           "#{current_dir}/zlu-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/zlu"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
