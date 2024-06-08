class CalcController < ApplicationController
  def home
    render({ template: "input/home" })
  end

  def square
    render({ template: "input/square" })
  end

  def square_rt
    render({ template: "input/root" })
  end

  def payment
    render({ template: "input/payment" })
  end

  def random
    render({ template: "input/random" })
  end

end
