class UsersController < ApplicationController

  def new
    if (params[:user][:password] != params[:user][:password2])
      @msg = "Your passwords did not match!"
      render "root/root"
      return
    elsif (params[:user][:password].length < 6)
      @msg = "Password must be atleast six characters long!!"
      render "root/root"
      return
    elsif (params[:user][:email].length == 0)
      @msg = "Email can't be blank!!"
      render "root/root"
      return
    end
    @user = User.new({email: params[:user][:email]})
    @user.password_digest = BCrypt::Password.create(params[:user][:password])
    render :new
  end

  def create
    @user = User.new({
      email: params[:user][:email],
      password_digest: params[:user][:password_digest],
      fname: params[:user][:fname],
      lname: params[:user][:lname],
      title: params[:user][:title],
      employer: params[:user][:employer],
      summary: params[:user][:summary]
      })

    if @user.save
      self.login(@user)
      redirect_to "/user/home"
    else
      render :new
    end
  end

  def home
    render :home
  end

end################