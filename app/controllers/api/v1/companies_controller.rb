class Api::V1::CompaniesController < Api::V1::ApiController
  def index
    companies = Company.all
    render status: :ok, json: companies.as_json(except: [:created_at, :updated_at])
  end

  def show
    company = Company.find(params[:id])
    render status: :ok, json: company.as_json(except: [:created_at, :updated_at])
  end
end
