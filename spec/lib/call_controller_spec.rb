# encoding: utf-8

require 'spec_helper'
require 'adhearsion/twilio/spec/helpers'

describe CallController do
  include Adhearsion::Twilio::Spec::Helpers

  subject { CallController.new(mock_call) }

  describe "#run" do
    before do
      allow(mock_call).to receive(:answer)
    end

    it "should answer the call" do
      expect(mock_call).to receive(:answer)
      expect_call_status_update { subject.run }
    end

    context "when dialing" do
      let(:number_to_dial) { "+85512345678" }
      let(:dial_status) { double(Adhearsion::CallController::DialStatus, :result => :answer ) }

      before do
        allow(subject).to receive(:dial).and_return(dial_status)
      end

      it "should first play a ringback" do
        expect(subject).to receive(:play_audio!).with(
          "https://s3.amazonaws.com/chibimp3/ringback_cambodia.mp3"
        )
        expect(subject).to receive(:dial)
        expect_call_status_update(:to => number_to_dial, :cassette => :dial) { subject.run }
      end
    end
  end
end
