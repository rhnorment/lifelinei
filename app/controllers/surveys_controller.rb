class SurveysController < ApplicationController

  def index
    @surveys = Survey.all
  end

  def show
    @survey = Survey.find(params[:id])
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
  end

end