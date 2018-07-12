class NumbersController < ApplicationController
  def create
    number = Number.find_or_create_by(number_params)
    CheckPrimaryJob.perform_later(number) if number.is_prime.nil?
    render json: { status: 201, body: { number.value => number.is_prime } }
  end

  private

  def number_params
    params.require(:number).permit(:value)
  end
end
