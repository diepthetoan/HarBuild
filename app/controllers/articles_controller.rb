class ArticlesController < ApplicationController
  def index
    @request = Request.new
  end

  def create_request
    @request = Request.new(permit_params)
    locale = params['request']['locale_code']
    if @request.save
      RequestMailer.with(request: @request).quote_email.deliver_now #deliver_later

      flash[:notice] = locale == 'vi' ? 'Gửi thông tin thành công!' :'Sent Successfully!'
    end
    redirect_to "/#{locale}#contact"
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
