class Doctor

	attr_accessor :name, :appointment

	def initialize(name)
		@name = name
		@appointments = []
		
	end

	def add_appointment(appointment)
		@appointments << appointment
		appointment.doctor = self
	end

	def appointments
		@appointments		
	end

	def patients
		@appointments.map do |appt|
			appt.patient
		end		
	end

end