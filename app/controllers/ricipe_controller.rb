class RicipeController < ApplicationController
  def page
    @r=""
    @lst=[]
    @nn = request.GET[:name]
    n = Recipe.find_by(name: request.GET[:name])
    f = Product.find_by(name: request.GET[:food])
    cn = request.GET[:count]
    if n!=nil and f!=nil and cn!=nil and cn!='0'
      @r = n.description
      i = n.id
      fid = f.id
      fl = List.find_by(recipe_id: i,product_id: fid)
      if fl!=nil
        k = cn.to_i / fl.count
        j=0
        List.where(recipe_id: i).find_each do |t|
          ff = Product.find_by(id: t.product_id)
          @lst[j] = ff.name + " "+(t.count.to_i*k).round(2).to_s+" "+t.metric_name
          j = j+1
        end
      end
    end
  end
end