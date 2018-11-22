# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://http://136ac43951214b1681a6d1b79978add6.vfs.cloud9.ap-southeast-1.amazonaws.com/rails/mailers/user_mailer/password_reset/rails/mailers/user_mailer/account_activation
  def account_activation
    user = User.first
    user.activation_token = User.new_token
    UserMailer.account_activation(user)
  end

  # Preview this email at http://136ac43951214b1681a6d1b79978add6.vfs.cloud9.ap-southeast-1.amazonaws.com/rails/mailers/user_mailer/password_reset
  def password_reset
    user = User.first
    user.reset_token = User.new_token
    UserMailer.password_reset(user)
  end
end
