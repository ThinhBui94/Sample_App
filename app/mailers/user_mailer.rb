class UserMailer < ApplicationMailer
  def account_activation user
    @user = user
    mail to: user.email, subject: t(".subject_email")
  end

  def password_reset user
    @user = user
    mail to: user.email, subject: t(".pass_reset_subject")
  end
end
