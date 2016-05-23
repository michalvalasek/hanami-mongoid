module Admin::Controllers::Session
  class New
    include Admin::Action

    def call(params)
    end

    private

    # override the authenticate! method to skip it
    def authenticate!
    end
  end
end
