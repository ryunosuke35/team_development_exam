class AgendaMailer < ApplicationMailer
  def agenda_mail(agenda)
    @agenda = agenda
    @team = Team.find(@agenda.team_id)
      mail to: @team.members.map(&:email).join(","), subject: "お問い合わせの確認メール"
  end
end
