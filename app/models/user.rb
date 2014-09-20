class User < ActiveRecord::Base
  has_many :events, foreign_key: :creator_id

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :omniauthable, omniauth_providers: [:facebook]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.nickname = auth.info.name
      user.image_url = auth.info.image
    end
  end
end
