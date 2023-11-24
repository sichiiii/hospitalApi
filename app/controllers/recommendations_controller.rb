class RecommendationsController < ApplicationController
  before_action :set_consultation_request

  def create
    @recommendation = @consultation_request.build_recommendation(recommendation_params)
    if @recommendation.save
      UserMailer.new_recommendation_email(@patient, @recommendation).deliver_now
      render json: @recommendation, status: :created
    else
      render json: @recommendation.errors, status: :unprocessable_entity
    end
  end

  private

  def set_consultation_request
    @consultation_request = ConsultationRequest.find(params[:consultation_request_id])
  end

  def recommendation_params
    params.require(:recommendation).permit(:text)
  end
end
