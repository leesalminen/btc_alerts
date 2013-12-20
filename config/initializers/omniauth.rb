OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '239299412902071', '957e91b06f01f45403cdc5d21df580a6'
  provider :google_oauth2, '6241257363-vssnpupnsliovsmelm74mbr8ojb08kf5.apps.googleusercontent.com', 'WshAnLWrluS5A2Np74eSJtlI'
  provider :coinbase, 'd49919d781d00b788102c66ee3d40b0c420388a897d2a045af87340c1113ea55', '43842d5db245c0477f9f4371b24b7e589e286b98176fd90ac1c97adf119efa7f'
end

use OmniAuth::Builder do
  provider :github, 'fd8c1c83443ceb76f6c6', 'aa9981aa25e4bfa241de46b0e0b6f9ddce91cdd7'
end