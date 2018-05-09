require 'net/http'

namespace :wake do
  desc 'WAKKEEEEEE UPPP!'
  task :up do
    brooks = URI('https://brooksmason.com')
    maggie = URI('https://maggieutgoff.com')
    Net::HTTP.get(brooks)
    Net::HTTP.get(maggie)
  end

end
