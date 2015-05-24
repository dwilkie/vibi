class CallController < Adhearsion::CallController
  include Adhearsion::Twilio::ControllerMethods

  def run
    p "_____CALL VARIABLES________"
    p call.variables
    notify_voice_request_url
  end
end
