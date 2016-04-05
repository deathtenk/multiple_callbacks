require_relative "../lib/multiple_callbacks.rb"

RSpec.describe "multiple callbacks" do
  let(:success_handler) { ->() { "success" } }
  let(:failure_handler) { ->() { "failure" } }
  context "for success result" do
    let(:result) { "success" }

    it "should call the success handler" do
      expect(MultipleCallbacks.call(result,success_handler,failure_handler)).to eq("success")
    end
  end

  context "for failure result" do
    let(:result) { "failure" }

    it "should call the failure handler" do
      expect(MultipleCallbacks.call(result,success_handler,failure_handler)).to eq("failure")
    end
  end
end
