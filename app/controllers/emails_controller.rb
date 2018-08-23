class EmailsController < ApplicationController

  def new
    @email = Email.new
  end

  def create
	@email = Email.create(email_params)
   end

  def index
    @emails = Email.all
  end

  def delete
	@email = Email.destroy
  end

private

  def email_params
    params.require(:email).permit(:object, :body)
  end
end
