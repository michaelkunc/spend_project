class User < ActiveRecord::Base


validates :email {uniqueness: true, presence: true}
validates :username {uniqueness: true, presence: true}


  def password
    @password ||= BCrypt.new(hashed_password)
  end

  def password=(entered_password)
    self.hashed_password = BCrypt::Password.create(entered_password)
  end

  def self.authenticate(username, entered_password)
    user = User.find_by(username: username)
    if user && user.password == entered_password
      user
    else
      return nil
    end
  end


end
