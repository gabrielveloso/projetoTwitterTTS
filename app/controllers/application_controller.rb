class ApplicationController < ActionController::Base
  protect_from_forgery


Twitter.configure do |config|
  config.consumer_key = "JsVlQTHFzaJjHB0uVOw"
  config.consumer_secret = "35p7CNOv5hL1YXPtOPA217Sv7n6oYIVcXH6ZtSSITTQ"
  config.oauth_token =     "480642828-u2fDkmZ0KwVHez8gd46IWxFxzRYUOrYfSvr0p6xx"
  config.oauth_token_secret =     "GaCsD9bFYSBtygETfJQO57yAWuS1MvqrVTWLyPDho"
end

end
