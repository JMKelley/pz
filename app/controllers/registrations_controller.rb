class RegistrationsController < Devise::RegistrationsController
  def create
    if User.any?
      redirect_to root_path, alert: 'Only one user allowed!' and return
    end
    super
  end
end