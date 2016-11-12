require 'rakuten_web_service'
require 'uri'

RakutenWebService.configuration do |c|
  c.application_id = Rails.application.secrets.rakuten_application_id
  c.affiliate_id = Rails.application.secrets.rakuten_affiliate_id
end