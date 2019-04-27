class Student < Storage::Base
	attr_accessor :nombre, :email, :fecha, :programa

	def initialize(nombre, email ,fecha, programa)
		self.nombre = nombre
		self.email = email
		self.fecha= fecha
		self.programa = programa
	end

	def self.table_name
		'teachers'
	end
end