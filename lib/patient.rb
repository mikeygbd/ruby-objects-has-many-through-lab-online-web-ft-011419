class Patient
  attr_accessor :name, :date, :doctor
  attr_reader :appointments
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
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
      appointment.doctor
    end
  end

end
