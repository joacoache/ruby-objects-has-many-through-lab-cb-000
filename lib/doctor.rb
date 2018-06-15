class Doctor

  attr_accessor :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    new_app = Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |app|
      app.doctor == self
    end
  end

  def patients
    appointments.map do |app|
      app.patient
    end
  end

  def self.all
    @@all
  end

end
