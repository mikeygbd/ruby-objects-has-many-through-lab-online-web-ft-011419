class Doctor

  attr_accessor :name
  attr_reader :appointments

  @@all = []

  def initialize(name)
    @name = name
    # @appointments = []

    @@all << self
  end

  def self.all
    @@all
  end


  def new_appointment(patient, date)
    Appointment.new(date, patient, self)


    # @appointments << appointment
    # appointment.doctor = self
  end
  def patients
    Appointment.self.collect do |appointment|
      appointment.patient == self
    end
  end

end
