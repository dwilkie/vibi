# encoding: utf-8

class CallController < Adhearsion::CallController
  include Adhearsion::Twilio::ControllerMethods

  def run
    answer
    notify_voice_request_url
  end

  private

  def twilio_dial(node, options = {})
    play_audio!("https://s3.amazonaws.com/chibimp3/ringback_cambodia.mp3")
    super
  end
end
