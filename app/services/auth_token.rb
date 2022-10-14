class AuthToken
    # encode method
    def self.encode(payload)
      payload["expiry_time"] = 24.hours.from_now.to_i
      secret_key = Rails.application.secrets.secret_key
      JWT.encode(payload, secret_key)
    end
  
    # decode methods
    def self.decode(token, leeway: nil)
      secret_key = Rails.application.secrets.secret_key
      decoded_date = JWT.decode(token, secret_key, leeway: leeway)
      HashWithIndifferentAccess.new(decoded_data[0])
    end
  
  end