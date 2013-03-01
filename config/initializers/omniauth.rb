OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "Wwdw1V1WIUgKV3cJOtiLA", "0WkyLJvtgoXNqIEAd9Mh68etMw42y4jaZgShdXLLo"
end