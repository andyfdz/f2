class Matchmailer < ApplicationMailer
default from: "truequelatam@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.matchmailer.new_match.subject
  #
  def new_match(user)
    @user=user
    mail to: user.email
  end
end
