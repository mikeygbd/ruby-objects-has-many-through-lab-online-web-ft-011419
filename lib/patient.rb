class Patient
  attr_accessor :name
  attr_reader :appointments
  @@all = []

  def initialize(name)
    @name = name
    # @appointments = []
    # @doctors = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
    appointmet.patient = self
    
    # @appointments << appointment
    # appointment.patient = self
  end
  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor

    end
  end

end
