class User < ActiveRecord::Base
  include BCrypt

  has_many :reviews

  validates :username, presence: true
  validates :email, presence: true, uniqueness: true

  def create
    @user = User.new({username: params[:username],
                     email: params[:email]})
    @user.password = params[:password]
    @user.save!
  end

   def password
     @password ||= Password.new(password_hash)
     @password
   end

   def password=(new_password)
     @password = Password.create(new_password)
     self.password_hash = @password
   end

	 def self.authenticate(email, password)
     @user = User.find_by(email: email)

     if @user && @user.password == password
       return @user
     else
       return nil
     end
   end

end
