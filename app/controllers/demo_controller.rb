class DemoController < ApplicationController

	layout 'application'

	def index
		#render(:template => 'demo/hello')
		#render('demo/hello')
		#render('hello')
	end

	def hello
		#render('index')

		@array = [1,2,3,4,5]

		@page = params[:page].to_i
		@id = params['id'].to_i
	end

	def other_hello
		#redirect_to(:controller => 'demo', :action => 'index')
		redirect_to(:action => 'index')
	end

	def google
		redirect_to("http://google.com")
	end

	def text_helpers
	end

	def escape_output
	end

	def make_error
		#render(:text => "test"
		#render(:text => @something.upcase)
		#render(:text => "1" + 1)
	end

	def logging
		logger.debug("This is debug.")
		logger.info("This is info.")
		logger.warn("This is warn.")
		logger.error("This is error")
		logger.fatal("This is fatal.")
		render(:text => "Logged!")
	end
end
