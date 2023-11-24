
class OpenFDAService
  include HTTParty
  base_uri 'https://api.fda.gov/'

  def initialize(api_key)
    @api_key = api_key
  end

  def get_data(patient_name)
    # Реализуйте логику для отправки запроса к OpenFDA API с использованием HTTParty
    # И обработайте полученные данные
  end
end
