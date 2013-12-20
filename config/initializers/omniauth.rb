OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '239299412902071', '957e91b06f01f45403cdc5d21df580a6'
  provider :google_oauth2, '6241257363-vssnpupnsliovsmelm74mbr8ojb08kf5.apps.googleusercontent.com', 'WshAnLWrluS5A2Np74eSJtlI'
  provider :github, 'fd8c1c83443ceb76f6c6', 'aa9981aa25e4bfa241de46b0e0b6f9ddce91cdd7'
end