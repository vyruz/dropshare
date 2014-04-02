OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '561983067232884', '9e4cbd261a276a7ae828433726ab402f'
end