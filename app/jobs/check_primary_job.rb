class CheckPrimaryJob < ApplicationJob
  queue_as :check_primary

  def perform(number) # perform_later
    number.update!(is_prime: number.value.prime?)
    ActionCable.server.broadcast("Number", { number.value => number.is_prime })
  end
end
