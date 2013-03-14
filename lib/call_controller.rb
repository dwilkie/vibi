# encoding: utf-8

class CallController < Adhearsion::CallController
  include Adhearsion::Twilio::ControllerMethods

  def run
    answer
    redirect
  end

  private

  def dial(to, options = {})
    super("user/1001", options)
  end
end
