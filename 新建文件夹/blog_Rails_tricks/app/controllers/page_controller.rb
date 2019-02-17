class PageController < ApplicationController
    def index
        @issues = Issue.all
    end
end
