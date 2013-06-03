require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Cochrane::Base do
  describe "#new" do
    let(:fit) { Cochrane::Base.new( fit_file(:example) ) }

    it "auto parses the protocol version" do
      fit.header.protocol_version.should == 16
    end

    it "auto parses the profile version" do
      fit.header.profile_version.should == 135
    end

    it "auto parses the data size" do
      fit.header.data_size.should == 44443
    end

    it "auto parses the data type" do
      fit.header.data_type.should == ".FIT"
    end
  end
end
