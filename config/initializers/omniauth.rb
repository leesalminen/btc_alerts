OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '239299412902071', '957e91b06f01f45403cdc5d21df580a6'
  provider :google_oauth2, 'AIzaSyCqiuYlZRbGHyqTHdBZf6tID2_4BFKNu6w', 'WshAnLWrluS5A2Np74eSJtlI'
end