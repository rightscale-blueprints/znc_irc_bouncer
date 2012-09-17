#!/bin/sh -e

# generate metadata.json for upstream opscode cookbooks (they should have no metadata.json)
knife cookbook metadata apache2 -o cookbooks/
knife cookbook metadata collectd -o cookbooks/ && rm cookbooks/collectd/.gitignore      # metadata.json in .gitignore
knife cookbook metadata collectd_plugins -o cookbooks/
knife cookbook metadata cron -o cookbooks/
knife cookbook metadata ntp -o cookbooks/
knife cookbook metadata resolver -o cookbooks/
knife cookbook metadata rightscale -o cookbooks/
knife cookbook metadata sudo -o cookbooks/
knife cookbook metadata system -o cookbooks/
knife cookbook metadata znc -o cookbooks/