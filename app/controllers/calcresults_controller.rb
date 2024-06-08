class CalcresultsController < ApplicationController
  def square
    @num = params.fetch("user_number").to_f
    @squared = @num ** 2

    render({ template: "results/square" })
  end

  def square_rt
    @num = params.fetch("user_number").to_f
    @square_root = Math.sqrt(@num)

    render({ template: "results/root" })
  end

  def payment
    @apr = params.fetch("user_apr").to_f.to_fs(:percentage, { :precision => 4 })
    @years = params.fetch("user_years").to_i

    r = params.fetch("user_apr").to_f / 100 / 12
    n = @years * 12

    pv = params.fetch("user_pv").to_f
    @prin = pv.to_fs(:currency)
    p = (r * pv) / (1 - ((1 + r) ** (-n)))
    
    @result = p.to_fs(:currency)

    render({ template: "results/payment" })
  end

  def random
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @random = rand(@min..@max)
    
    render({ template: "results/random" })
  end

end
