require File.expand_path("#{File.dirname(__FILE__)}/spec_helper")

describe SecretKey do
  
  before(:all) do
    reset
    @secret_key = SecretKey.new(File.dirname(__FILE__))
    @key = @secret_key.read
  end
  
  context "first read" do
  
    it "should generate the key" do
      @key.length.should == 40
    end
  end
  
  context "second read" do
  
    it "should already have the key stored" do
      @secret_key.key.length.should == 40
    end
  end
  
  context "first read with temp file present" do
    
    before(:all) do
      @secret_key = SecretKey.new(File.dirname(__FILE__))
    end
  
    it "should read the key from the temp file" do
      @secret_key.read.length.should == 40
      @secret_key.read.should == @key
    end
  end
  
end
