class ContactsController < ApplicationController
  http_basic_authenticate_with name: "harbuild", password: "Taydiep123"

  def index
    @requests = Request.all.order(created_at: :desc)
  end
end
