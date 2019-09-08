# frozen_string_literal: true

require_relative "jsonable"
module Allure
  # Allure model step result container
  class TestResultContainer < JSONable
    def initialize(uuid: UUID.generate, name: "Unnamed")
      @uuid = uuid
      @name = name
      @children = []
      @befores = []
      @afters = []
      @links = []
    end

    attr_accessor :uuid, :name, :description, :description_html, :start, :stop, :children, :befores, :afters, :links
  end
end
