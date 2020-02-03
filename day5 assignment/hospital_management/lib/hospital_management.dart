import 'dart:io';
class patient
{
  int patient_id,n;
  String name;
  void get_data()
  {
    print('welcome patient');
    print('Please enter the patient id');
    patient_id=int.parse(stdin.readLineSync());
    print('Please enter your name');
    name=stdin.readLineSync();
    print('Press 1 for services from a doctor\npress 2 for services from a hospital');
    n=int.parse(stdin.readLineSync());
    if(n==1)
    {
      doctor d=doctor();
      d.services();
    }
    else
    {
      print('Welcome to the hospital services');
      hospital h=hospital();
      h.services();
    }
  }
}
class doctor extends patient
{
  String doctor_name,patient;
  int doctor_id,service_id,booking;
  void services()
  {
    print('Please enter the doctor name,you want the services from');
    doctor_name=stdin.readLineSync();
    print('Please enter the doctors id');
    doctor_id=int.parse(stdin.readLineSync());
    print('Press 1 to book the services in a private clinic\npress 2 to book a service in the hospital');
    service_id=int.parse(stdin.readLineSync());
    if(service_id==1)
    {
      print('Welcome to the private clinic');
      print('Please enter your details to book an appoinment');
      print('Please enter your name');
      patient=stdin.readLineSync();
      print('Please select the service type\n1 for emergency\n2 for ENT\n3 for General physician');
      booking=int.parse(stdin.readLineSync());
      switch(booking)
      {
        case 1: print('Hi! $patient,your appoientment for doctor $doctor_name for the emergency service is booked sucessfully');
                break;
        case 2: print('Hi! $patient,your appoientment for doctor $doctor_name for the ENT service is booked sucessfully');
                break;
        case 3: print('Hi! $patient,your appoientment for doctor $doctor_name for the General Physician service is booked sucessfully');
                break;
        default: print('invalid choice!!!');
      }
    }
    else
    {
      print('Welcome to the hospital services');
      hospital h=hospital();
      h.services();
    }
  }
}
class hospital extends patient
{
    int service_id;
    void services()
    {
      print('Press 1 for service from the hospital\npress 2 for sheduling a doctors appointment');
      service_id=int.parse(stdin.readLineSync());
      switch(service_id)
      {
        case 1: doctor d=doctor();
                d.services();
                break;
        case 2: print('Press 1 for emergency services\nPress 2 for ENT services\npress 3 for general physian services');
                int request_id=int.parse(stdin.readLineSync());
                switch(request_id)
                {
                  case 1: emergency e=emergency();
                          e.services_types();
                          break;
                  case 2: ent e=ent();
                          e.services_types();
                          break;
                  case 3: general g=general();
                          g.services_types();
                          break;
                  default: print('Invalid choice!!!');
                }

      }
    }
}
class hospital_services
{
    void services_types()
    {

    }
}
class emergency implements hospital_services
{
  @override
  void services_types() {
    print('welcome to emergency services');
    print('please enter your name');
    String name= stdin.readLineSync();
    print('Hi!, $name your appointment for emergency services is booked sucessfully');
  }

}
class ent implements hospital_services
{
  @override
  void services_types() {
    print('welcome to ent services');
    print('please enter your name');
    String name= stdin.readLineSync();
    print('Hi!, $name your appointment for ent services is booked sucessfully');
  }

}
class general implements hospital_services
{
  @override
  void services_types() {
    print('welcome to general physcian services');
    print('please enter your name');
    String name= stdin.readLineSync();
    print('Hi!, $name your appointment for general physcian  services is booked sucessfully');
  }

}