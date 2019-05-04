class StudentsController < ApplicationController

	set :views, File.join( APP_ROOT ,'app','views','Students')

	Tilt.register Tilt::ERBTemplate,"html.erb"


	get "/" do
		@students = Student.all
		p @students
		erb :index

	end
	
	
	get "/new" do

		erb :new
	
	end

	get "/:id" do
		id = params[:id].to_i
		@students = students.all[id]
		erb :show

	end

	post '/' do 
		student = Student.new(student_params)	
		
		student.save
		redirect '/students' 
	
	end	
	def student_params
		params[:student]
	end




end
