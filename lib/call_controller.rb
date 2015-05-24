class CallController < Adhearsion::CallController
  include Adhearsion::Twilio::ControllerMethods

  def run
    p "_____CALL VARIABLES________"
    p call.variables
    p "---x_variable_sip_p_asserted_identity---"
    p call.variables[:x_variable_sip_p_asserted_identity]
    p "----p_early_media-----"
    p call.variables[:p_early_media]
    p "----P-Asserted-Identity-----"
    p call.variables[:p_asserted_identity]
    p "----SIP-P-Asserted-Identity-----"
    p call.variables[:sip_p_asserted_identity]
    notify_voice_request_url
  end
end
