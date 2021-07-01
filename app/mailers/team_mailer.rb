class TeamMailer < ApplicationMailer
  def team_mail(user)
    mail to: user.email, subject: "あなたにチームの権限が渡されました。"
  end
end
