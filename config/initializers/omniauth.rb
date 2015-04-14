require 'httplog'
HttpLog.options[:logger] = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :bnet, ENV['BNET_KEY'], ENV['SECRET'], scope: "sc2.profile"
end

OmniAuth.config.full_host = "https://localhost:3000"

