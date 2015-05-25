class CallController < Adhearsion::CallController
  include Adhearsion::Twilio::ControllerMethods

  def run
    p "_____CALL VARIABLES________"
    p call.variables
    p "variable_sip_p_asserted_identity"
    p call.variables["variable_sip_p_asserted_identity"]
    notify_voice_request_url
  end
end
