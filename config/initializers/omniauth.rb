require 'doorkeeper'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :doorkeeper, "2328fa7479ee7909359422fa69f34a21e9ef583d7fd4a464d623bc42938e5b29", "a32619860b39db845e2e967c6e65803698bb51625022a1bdb84784ee1b43ea97"
  provider :twitter, "NJFN5Atf7L98u6xPluahPQMGb", "E4QraRCqYaY5x3cjTUOW2Si6LTJD57jQPZPaWTe9D80jBfwPwO"
end

OmniAuth.config.on_failure = HomeController.action(:omniauth_callback_error_handler)