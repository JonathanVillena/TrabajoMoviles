Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '16293533510', 'yXAn6F7H65gZi3M3RBG4B2sv'
  provider :facebook, '1218330124889799', 'eb187907b59f2fdabc5589db3ee48250'
end