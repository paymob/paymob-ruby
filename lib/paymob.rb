require "paymob/version"
require 'openssl'
module Paymob
  FILTERED_KEYS = ['c_pan_U', 'c_holder_name_U', 'c_expiry_mm_U',
  'c_expiry_yy_U', 'c_cvv_U']

  def Paymob.calc_secure_hash(key, data)
    digest = ::OpenSSL::Digest.new('sha256')
    sorted = data.keys.sort.reject { |e| FILTERED_KEYS.include?(e.to_s) }
    data_str = sorted.reduce('') do |memo, key|
      unless data[key].nil?
        memo + data[key].to_s
      else
        memo
      end
    end
    ::OpenSSL::HMAC.hexdigest(digest, key, data_str)
  end
end
