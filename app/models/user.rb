class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #before_action :authenticate_user!
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :location
  attr_accessor :username
  attr_accessible :email
  attr_accessible :password
  attr_accessible :password_confirmation
  attr_accessible :first_name
  attr_accessible :last_name,
  #attr_accessible :encrypted_password ,:reset_password_token,:reset_password_sent_at , :remember_created_at ,
  #:current_sign_in_at,
  #:last_sign_in_at,
  #:current_sign_in_ip ,
  #:last_sign_in_ip ,
  :created_at ,
  :updated_at 
end
