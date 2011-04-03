require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "css_selector" do
  it "get title" do
    result = `echo '<html><head><title>foo</title></head><body><h1>bar</h1></body></html>' | bin/css_selector title`
    result.should == "foo\n"
  end

  it "get h1" do
    result = `echo '<html><head><title>foo</title></head><body><h1>bar</h1></body></html>' | bin/css_selector h1`
    result.should == "bar\n"
  end
end
