class Api::V1::CompaniesController < Api::V1::ApiController
  def index
    companies = [
      { id: 1, brand_name: 'Samsung', corporate_name: 'Samsung LTDA', registration_number: '99651410000160' },
      { id: 2, brand_name: 'Sony', corporate_name: 'Sony Group Corporation', registration_number: '87411260000138' },
      { id: 3, brand_name: 'Google', corporate_name: 'Google LLC', registration_number: '61982034000113' },
      { id: 4, brand_name: 'Amazon', corporate_name: 'Amazon.com, Inc.', registration_number: '81690819000120' }
    ]

    render status: :ok, json: companies
  end

  def show
    companies = [
      { id: 1, brand_name: 'Samsung', corporate_name: 'Samsung LTDA', registration_number: '99651410000160' },
      { id: 2, brand_name: 'Sony', corporate_name: 'Sony Group Corporation', registration_number: '87411260000138' },
      { id: 3, brand_name: 'Google', corporate_name: 'Google LLC', registration_number: '61982034000113' },
      { id: 4, brand_name: 'Amazon', corporate_name: 'Amazon.com, Inc.', registration_number: '81690819000120' }
    ]
    company = companies.find { |item| item[:id].to_s == params[:id] }

    render status: :ok, json: company
  end
end
