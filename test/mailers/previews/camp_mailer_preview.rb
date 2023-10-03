# Preview all emails at http://localhost:3000/rails/mailers/camp_mailer
class CampMailerPreview < ActionMailer::Preview

  def new_camp
    camp = Camp.last
    CampMailer.camp_email(camp)
  end

end
