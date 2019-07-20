module UsersHelper
    def logged_in?(user)
        session[:user_id] == user.id
    end
end
