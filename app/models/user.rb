class User < ActiveRecord::Base

 has_secure_password
 validates :email, presence: true, uniqueness: true

 geocoded_by :ip_address,
  :latitude => :lat, :longitude => :lon
 after_validation :geocode

 def ip_address
  require 'socket'
  Socket::getaddrinfo(Socket.gethostname,"echo",Socket::AF_INET)[0][3]
 end

end

