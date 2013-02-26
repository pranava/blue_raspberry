class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:google_oauth2]

  belongs_to :committee

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :google_id, :password, :password_confirmation, :remember_me
  attr_accessible :first_name, :last_name, :biography, :graduation_year, :face, :resume, :phone_number, :position, :committee_id
  attr_accessible :is_alumni, :is_administrator

  has_attached_file :face
  has_attached_file :resume

  #after_avatar_post_process :rename_face
  #after_avatar_post_process :rename_resume

  #def rename_avatar
  #  self.face.instance_write :file_name, 'face.png'
  #end

  def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
    data = access_token.info
    User.where(:google_id => data["email"]).first
  end
end
