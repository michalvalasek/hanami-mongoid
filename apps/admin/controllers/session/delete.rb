module Admin::Controllers::Session
  class Delete
    include Admin::Action

    def call(params)
      session[:user_id] = nil
      redirect_to routes.login_path
    end
  end
end
