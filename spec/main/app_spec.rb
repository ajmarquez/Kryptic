require 'spec_helper'


describe 'Kryptic App' do
  include Rack::Test::Methods

  def app
    KrypticApp
  end

 ## SEND DOMAIN
  describe "#availability" do

    context "when domain is found" do

      it "returns TRUE" do

        get '/domains'
        expect(last_response).to be_ok
        expect(last_response.body).to eq('Hello there')
      end

    end

    context "when domain is NOT found" do
      it "answers FALSE"
    end
  end



 ## POST SAVE
  describe "#save_content" do

    context "when right hash is received" do
      it "returns confirmation"
    end

    context "when WRONG hash is received" do
      it "returns NO GO"
    end
  end



  ## POST Delete_site
  describe "#delete_site" do

    context "when right hash is received" do
      it "returns confirmation"
    end

    context "when WRONG hash is recieved" do
      it "returns NO GO"
    end
  end



  ## GET reload
  describe "#reload" do

    context "when right hash is received" do
      it "returns confirmation"
    end

    context "when WRONG hash is recieved" do
      it "returns NO GO"
    end
  end

end
