class PagesController < ApplicationController
  def home
    # binding.break
  end

  def secret
    if current_user.blank?
      render plain: "401 Unauthrozied", status: :unauthorized
    end
  end
end
