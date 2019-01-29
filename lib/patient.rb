class Patient
  attr_accessor :name, :doctors
  attr_reader :appointments
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
    # @appointments << appointment
    # appointment.patient = self
  end
  def doctors
    self.appointments.collect do |appointment|
      @doctors << appointment.doctor
    end
  end

end
