include_recipe 'apt'
include_recipe 'timezone'
include_recipe 'screen'
include_recipe 'sqlite'

package 'curl'
package 'git-core'
package 'vim'

package 'build-essential'
package 'libshadow-ruby1.8'
package 'libxml2-dev'
package 'libxslt-dev'

bootstrap_rc 'twitfwd' do
  user node['user']
  action :setup
end