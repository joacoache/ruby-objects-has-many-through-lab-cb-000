class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    new_app = Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select {|i| i.patient == self}
  end

  def doctors
    appointments.map {|i| i.doctor}
  end

end
