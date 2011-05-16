class User < ActiveRecord::Base
  attr_accessor             :password
  
  validates_confirmation_of :password
  validates_presence_of     :password, :on => :create
  validates_presence_of     :email
  validates_uniqueness_of   :email
  validates_format_of       :email,
                            :with     => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
                            :message  => 'must be in the form of an email address'
                            
  before_save               :_encrypt_password
  
  def self.find_by_id_or_email(param)
    find_by_id(param) || find_by_email(param)
  end
  
  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
  
  private
  
  def _encrypt_password
    if self.password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(self.password, self.password_salt)
    end
  end
end