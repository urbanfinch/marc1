class Application
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  validates_presence_of :name, :email, :home_phone, :work_phone
  validates_format_of   :email,
                        :with     => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
                        :message  => 'must be in the form of an email address'
                            
  attr_accessor :name, :address, :email, :home_phone, :work_phone, :experience, :resume

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end
end