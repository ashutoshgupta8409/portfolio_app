class ClientRequestsController < ApplicationController
  def create
    @client_request = ClientRequest.new(client_request_params)
    if @client_request.save
      redirect_to contact_path, notice: "Message sent — thank you."
    else
      render "pages/contact", status: :unprocessable_entity
    end
  end

  private

  def client_request_params
    params.require(:client_request).permit(:name, :email, :message)
  end
end
