require 'spec_helper'

describe ReportController do

  describe "GET 'count_contry_by_month'" do
    it "returns http success" do
      get 'count_contry_by_month'
      response.should be_success
    end
  end

end
