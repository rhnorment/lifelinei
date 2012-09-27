class SurveysController < ApplicationController

  def index
    @surveys =  Survey.paginate(:page => params[:page]).order('id DESC')
    @title = "Administer all Surveys"
  end

  def show
    @survey = Survey.find(params[:id])
    @title = "Showing Survey #{@survey.id}"
  end

  def new
    @survey = Survey.new
    @title = "Training Feedback Form"
  end

  def create
    @survey = Survey.new(params[:survey])
    if @survey.save
      SurveyMailer.survey_confirmation(@survey).deliver
      flash[:green] = "Your feedback was successfully sent to LifeLine!."
      redirect_to new_survey_path
    else
      flash.now[:red] = "There was a problem submitting your feedback.  Please try again."
      render :new
    end
  end

  def destroy
    @survey = Survey.find(params[:id])
    @survey.destroy
    flash[:yellow] = "This survey has been removed from the system."
    redirect_to surveys_path
  end

end
