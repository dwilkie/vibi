# encoding: utf-8

require 'spec_helper'
require 'adhearsion/twilio/spec/helpers'

describe CallController do
  include Adhearsion::Twilio::Spec::Helpers

  subject { CallController.new(mock_call) }

  describe "#run" do
    before do
      mock_call.stub(:answer)
    end

    it "should answer the call" do
      mock_call.should_receive(:answer)
      expect_call_status_update { subject.run }
    end

    context "when dialing" do
      let(:number_to_dial) { "+85512345678" }
      let(:dial_status) { mock(Adhearsion::CallController::DialStatus, :result => :answer ) }

      before do
        subject.stub(:dial).and_return(dial_status)
      end

      it "should first play a ringback" do
        subject.should_receive(:play_audio!).with(
          "https://s3.amazonaws.com/chibimp3/ringback_cambodia.mp3", :renderer => :native
        )
        subject.should_receive(:dial)
        expect_call_status_update(:to => number_to_dial, :cassette => :dial) { subject.run }
      end
    end
  end
end
