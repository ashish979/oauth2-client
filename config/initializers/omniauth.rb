require 'doorkeeper'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :doorkeeper, "6383c641e76777093a9c8c44ec9a023b7bc2a60aa561967106f43b523613d0ad", "7912327f700cc3045e62e82346e22e4e3af79130ab6acc265f4d1dac9dd6558f"
  provider :twitter, "NJFN5Atf7L98u6xPluahPQMGb", "E4QraRCqYaY5x3cjTUOW2Si6LTJD57jQPZPaWTe9D80jBfwPwO"
end