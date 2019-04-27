class StudentsController < ApplicationController

	set :views, File.join( APP_ROOT ,'app','views','Students')

	Tilt.register Tilt::ERBTemplate,"html.erb"


	get "/" do
		@students = Student.all
		erb :index

	end
	get "/:id" do
		id = params[:id].to_i
		@students = students.all[id]
		erb :show

	end


end
