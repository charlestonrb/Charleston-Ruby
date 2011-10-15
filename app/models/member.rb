class Member < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :first_name, :last_name, :github, :twitter, :blog

  attr_accessor :password
  before_save :encrypt_password

  validates_confirmation_of :password
  #validates_presence_of :first_name
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  
  has_many :projects
  
  def full_name
    "#{first_name} #{last_name}"
  end

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end
