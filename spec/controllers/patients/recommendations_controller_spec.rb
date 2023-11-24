require 'rails_helper'

RSpec.describe Patients::RecommendationsController, type: :controller do
  describe 'GET #index' do
    it 'returns a successful response' do
      get :index, params: { patient_id: 1 }
      expect(response).to be_successful
    end

    # Для тестов прокинуть порт с докера
  end

  describe 'GET #analyze_patient_data' do
    it 'returns a successful response' do
      get :analyze_patient_data, params: { patient_id: 1 }
      expect(response).to be_successful
    end

    #
  end
end
