package com.sedationassist.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import com.sedationassist.model.PatientMongo;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.DBRef;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "record")
public class SedationRecord {
    @Id
    private String sedation_id;

    private SedationOption option;

    private Integer consciousness_level;
    private Integer recovery_time;

    private PatientMongo patient;

    public SedationRecord( SedationOption option, Integer consciousness_level, Integer recovery_time, PatientMongo patient) {

        this.option = option;
        this.consciousness_level = consciousness_level;
        this.recovery_time = recovery_time;
        this.patient = patient;
    }

    public String getSedation_id() {
        return sedation_id;
    }

    public void setSedation_id(String sedation_id) {
        this.sedation_id = sedation_id;
    }

    public SedationOption getOption() {
        return option;
    }

    public void setOption(SedationOption option) {
        this.option = option;
    }

    public Integer getConsciousness_level() {
        return consciousness_level;
    }

    public void setConsciousness_level(Integer consciousness_level) {
        this.consciousness_level = consciousness_level;
    }

    public Integer getRecovery_time() {
        return recovery_time;
    }

    public void setRecovery_time(Integer recovery_time) {
        this.recovery_time = recovery_time;
    }

    public PatientMongo getPatient() {
        return patient;
    }

    public void setPatient(PatientMongo patient) {
        this.patient = patient;
    }

    @Override
    public String toString() {
        return "SedationRecord{" +
                "sedation_id='" + sedation_id + '\'' +
                ", option=" + option +
                ", consciousness_level=" + consciousness_level +
                ", recovery_time=" + recovery_time +
                ", patient=" + patient +
                '}';
    }
}