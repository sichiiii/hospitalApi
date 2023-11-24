module Patients
  class RecommendationsController < ApplicationController
    def index
      @patient = Patient.find(params[:patient_id])
      @recommendations = @patient.consultation_requests.map(&:recommendation).compact
      openfda_service = OpenFDAService.new("pI38nbvdlEoXz90OiDSkJVsZtesepv9EM3x2pBai")
      @openfda_data = openfda_service.get_data(@recommendations)
      render json: { data: @openfda_data }
    end

  end
end