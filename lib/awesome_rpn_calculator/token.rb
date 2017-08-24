# frozen_string_literal: true

module AwesomeRPNCalculator
  class Token
    FLOAT_REGEX = /[.]/

    def initialize(value)
      @token = value
    end

    def operator
      OperatorLoader::OPERATORS[token]
    end

    def operator?
      OperatorLoader::OPERATORS.keys.include?(token)
    end

    def numeric?
      Float(token)
      true
    rescue
      false
    end

    def to_number
      return token.to_f if FLOAT_REGEX.match?(token.to_s)
      token.to_i
    end

    def to_s
      token.to_s
    end

    private

    attr_reader :token
  end
end
