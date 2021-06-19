package com.sedationassist.service;

import com.sedationassist.model.PatientMongo;
import com.sedationassist.model.SedationOption;
import com.sedationassist.model.SedationRecord;
import com.sedationassist.repositories.PatientMongoRepository;
import com.sedationassist.repositories.SedationRecordRepository;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service
@Component
public class AddInitialData implements CommandLineRunner {
    @Autowired
    PatientMongoRepository patientRepository;

    @Autowired
    SedationRecordRepository sedationrecordRepository;

    @Override
    public void run(String... strings) throws Exception {
    //    this.patientRepository.deleteAll();
      //  this.sedationrecordRepository.deleteAll();
        PatientMongo yanqun = patientRepository.save(new PatientMongo((new ObjectId()), "yanqun", "50", "160"));
        PatientMongo James = patientRepository.save(new PatientMongo((new ObjectId()), "James", "80", "180"));
        PatientMongo Jemery = patientRepository.save(new PatientMongo((new ObjectId()), "Jemery", "60", "175"));
        PatientMongo Eric = patientRepository.save(new PatientMongo((new ObjectId()), "Eric", "57", "165"));

        PatientMongo WSS = patientRepository.save(new PatientMongo((new ObjectId()), "Shanshan", "45", "162"));
        PatientMongo Claire = patientRepository.save(new PatientMongo((new ObjectId()), "Claire", "55", "170"));
        PatientMongo Ben = patientRepository.save(new PatientMongo((new ObjectId()), "Ben", "53", "178"));
        PatientMongo Peter = patientRepository.save(new PatientMongo((new ObjectId()), "Peter", "65", "188"));


        //
        SedationRecord record1 = sedationrecordRepository.save(new SedationRecord(
                new SedationOption("Fentanyl", "5",30),2, 15,  yanqun));
        SedationRecord record2 = sedationrecordRepository.save(new SedationRecord(
                new SedationOption("Fentanyl", "10",20),1, 30,  Eric));
        SedationRecord record3 = sedationrecordRepository.save(new SedationRecord(
                new SedationOption("Fentanyl", "8",10),3, 180,  Jemery));

    }
}
