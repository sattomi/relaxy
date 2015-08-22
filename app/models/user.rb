class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  serialize :carrer
  serialize :working_hours

  def registered?
    self.registered
  end

  def self.find_for_oauth(auth)

    unless user = User.where(uid: auth.uid, provider: auth.provider).first
      user = User.create(
        uid:      auth.uid,
        provider: auth.provider,
        email:    User.get_email(auth),
        birthday: auth.info.user_birthday, # 申請しないと取れないらしいので保留?
        password: Devise.friendly_token[0, 20],
        type: Therapist
      )
    end
    
    user
  end

  protected

    def self.get_email(auth)
      email = auth.info.email
      email = "#{auth.provider}-#{auth.uid}@example.com" if email.blank?
      email
    end

end
