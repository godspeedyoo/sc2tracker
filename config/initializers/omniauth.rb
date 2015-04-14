Rails.application.config.middleware.use OmniAuth::Builder do
  provider :bnet, ENV['BNET_KEY'], ENV['SECRET']
end

OmniAuth.config.full_host = "http://localhost:3000/"

