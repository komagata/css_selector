require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'css_selector'

describe "CssSelector" do
  it "get title" do
    html = '<html><head><title>foo</title></head><body><h1>bar</h1></body></html>'
    selector = 'title'
    CssSelector(html, selector).should == 'foo'
  end

  it "get h1" do
    html = '<html><head><title>foo</title></head><body><h1>bar</h1></body></html>'
    selector = 'h1'
    CssSelector(html, selector).should == 'bar'
  end
end
