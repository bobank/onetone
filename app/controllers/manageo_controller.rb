class ManageoController < ApplicationController
  def indx
  	#render("abme.html.erb")# just template only
  	#redirect_to(:controller=> 'manageo', :action=> 'abme', :vp=> '43')
  	@vp = params['vp']

  end

  def abme # defult dont need write render

  	#render("abme.html.erb") 
  	@vp = params['vp']

  	@frut=['mango','bnana','tomito'] # to viwo ^^@

  end
end
