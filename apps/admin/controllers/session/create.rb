module Admin::Controllers::Session
  class Create
    include Admin::Action

    expose :user

    def call(params)
      @user = User.where(email: params[:session]["email"]).first
      if @user.password == params[:session]["password"]
        session[:user_id] = @user.id
        redirect_to routes.admin_root_path
      end
    end

    private

    # override the authenticate! method to skip it
    def authenticate!
    end
  end
end
