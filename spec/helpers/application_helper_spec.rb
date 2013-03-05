require 'spec_helper'

describe ApplicationHelper do

  describe "full_title" do
    it "should include the page title" do
      full_title("i got you all in check").should =~ /i got you all in check/
    end

    it "should include the base title" do
      full_title("HOO").should =~ /^Ruby on Rails Tutorial Sample App for Jay the Drunk/
    end

    it "should not include a bar for home page" do
      full_title("").should_not =~ /\|/
    end
  end
end
