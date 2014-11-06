class DemoController < ApplicationController

	layout false

	def index
		#render(:template => 'demo/hello')
		#render('demo/hello')
		render('hello')
	end

	def hello
		render('index')
	end
end
