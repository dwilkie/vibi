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
  end
end
