class ApiKey < ActiveRecord::Base
  belongs_to :user
  attr_accessible :application, :auth_token, :version

  def self.create_key(params)
    user = User.find_by_email(params[:username])
    if user && user.valid_password?(params[:password])
      params.delete(:username)
      params.delete(:password)
      key = user.api_keys.find_by_application(params[:application])
      key ||= user.api_keys.build
      key.application = params[:application]
      key.version = params[:version]
      key.auth_token = SecureRandom.urlsafe_base64
      if key.save
        key
      else
        nil
      end
    else
      nil
    end
  end


end
