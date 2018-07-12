class PrimaryChannel < ApplicationCable::Channel
  def subscribed
    stream_from "Number"
  end
end
