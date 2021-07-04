class ArticlesController < ApplicationController
  def index
    @request = Request.new
  end

  def create_request
    @request = Request.new(permit_params)
    if @request.save
      flash[:notice] = 'Sent Successfully!'
    end
    redirect_to '/#contact'
  end

  private

  def permit_params
    params['request'].permit(
      :name,
      :email,
      :phone,
      :address,
      :description
    )
  end
end
