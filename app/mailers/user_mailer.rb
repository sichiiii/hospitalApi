class UserMailer < ApplicationMailer
  def new_recommendation_email(patient, recommendation)
    @patient = patient
    @recommendation = recommendation
    mail(to: @patient.email, subject: 'Новая рекомендация')
  end
end
