# encoding: utf-8

class CallController < Adhearsion::CallController
  include Adhearsion::Twilio::ControllerMethods

  def run
    answer
    notify_voice_request_url
  end
end
