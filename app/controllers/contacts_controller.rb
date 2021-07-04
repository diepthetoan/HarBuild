class ContactsController < ApplicationController
  def index
    @requests = Request.all.order(created_at: :desc)
  end
end
