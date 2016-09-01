Devise.setup do |config|
  #Replace example.com with your own domain name
  config.mailer_sender = 'mailer@example.com'

  require 'devise/orm/active_record'
  config.case_insensitive_keys = [ :email ]
  config.strip_whitespace_keys = [ :email ]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 8..128
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete

  #Add your ID and secret here
  #ID first, secret second
  config.omniauth :facebook, "297875983903514", "86ccd365251537bf5ea340c4840cf094" , info_fields: 'email, first_name, last_name'
    config.secret_key = '6c58c70a95927acc671747dc113116267efe3d898888e0e8d0e3dccca0bbb2bf6938c19a39018b270083e9b6565ccc1471770ae61872eb81b127da4e41434988'

end  