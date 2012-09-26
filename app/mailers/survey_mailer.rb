class SurveyMailer < ActionMailer::Base

  default from: "support@lifelinei.com"

  def survey_confirmation(survey)
    @survey = survey
    mail( to: "support@lifelinei.com", :subject => "A new Training Feedback Form has been submitted to our website.  Here is the information:")
  end

end
