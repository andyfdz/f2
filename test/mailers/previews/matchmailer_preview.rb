# Preview all emails at http://localhost:3000/rails/mailers/matchmailer
class MatchmailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/matchmailer/new_match
  def new_match
    Matchmailer.new_match
  end

end
