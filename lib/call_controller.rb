class CallController < Adhearsion::CallController
  #include Adhearsion::Twilio::ControllerMethods

  def run
    answer
    play_audio("https://s3.amazonaws.com/chibimp3/kh/ringback_tone.mp3")
    hangup
    #notify_voice_request_url
  end
end
