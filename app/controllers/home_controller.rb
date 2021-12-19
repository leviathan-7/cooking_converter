class HomeController < ApplicationController
  def page
    @h =""
    @ccc=""
    p = Product.find_by(name: request.GET[:product])
    cn = request.GET[:count]
    m = request.GET[:from]
    if p != nil and cn!=nil and m!=nil and cn!='0'
      pr = p.id
      a =Converting.find_by(product_id: pr, metric_name: m)
      b = Converting.find_by(product_id: pr, metric_name: m)
      a1 =Converting.find_by(product_id: pr, household_name: m)
      b1 = Converting.find_by(product_id: pr, household_name: m)
      if a!=nil and b!=nil
        @h = a.household_name
        @ccc = b.coefficient * cn.to_i
      end
      if a1!=nil and b1!=nil
        @h = a1.metric_name
        @ccc = b1.coefficient / cn.to_i
      end

    end

  end
end