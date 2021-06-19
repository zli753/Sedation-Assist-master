package com.sedationassist.service;

import ca.uhn.fhir.context.FhirContext;
import ca.uhn.fhir.rest.client.api.IGenericClient;
import com.sedationassist.model.PatientFHIR;
import org.hl7.fhir.dstu3.model.Patient;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.ModelMap;

import java.util.Date;

public class PatientInfo {
    @Value("${hapi.fhir.server.url}")
    private String serverBase;
    public PatientFHIR findpatientinfobyID(String ID) {
        int age = 0;
        int gender = 0;
        boolean tabacooUse = false;
        boolean BenzodiazepineUse = false;
        boolean OpoidUse = false;
        boolean PsychoactiveNed = false;

        Date cur = new Date();
        FhirContext ctx = FhirContext.forDstu3();
        IGenericClient client = ctx.newRestfulGenericClient(serverBase);
        Patient patient = client.read()
                .resource(Patient.class)
                .withId(ID)
                .execute();
        if (patient == null){
            return new PatientFHIR();
        }
        else {
            Date birthdate = patient.getBirthDate();
            String thisgender = String.valueOf(patient.getGender());

            age = birthdate != null? (int)(birthdate.getTime()- cur.getTime())/(1000*60*60*24*365) : 0;
            if (thisgender.equals("female")){
                gender = -1;
            }
            else if (thisgender.equals("male")){
                gender = 1;
            }
            else {
                gender = 0;
            }
            // updated the medine use here


            //

            return new PatientFHIR(age,gender,tabacooUse,BenzodiazepineUse, OpoidUse,PsychoactiveNed);
        }




    }

}
