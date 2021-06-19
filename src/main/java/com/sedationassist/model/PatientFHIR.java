package com.sedationassist.model;

public class PatientFHIR {
    int age;
    // 1 men, -1 women, 0 unknow
    int gender;
    boolean tabacooUse;
    boolean BenzodiazepineUse;
    boolean OpoidUse;
    boolean PsychoactiveNed;

    public PatientFHIR(int age, int gender, boolean tabacooUse, boolean benzodiazepineUse, boolean opoidUse, boolean psychoactiveNed) {
        this.age = age;
        this.gender = gender;
        this.tabacooUse = tabacooUse;
        BenzodiazepineUse = benzodiazepineUse;
        OpoidUse = opoidUse;
        PsychoactiveNed = psychoactiveNed;
    }

    public PatientFHIR() {

    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public boolean isTabacooUse() {
        return tabacooUse;
    }

    public void setTabacooUse(boolean tabacooUse) {
        this.tabacooUse = tabacooUse;
    }

    public boolean isBenzodiazepineUse() {
        return BenzodiazepineUse;
    }

    public void setBenzodiazepineUse(boolean benzodiazepineUse) {
        BenzodiazepineUse = benzodiazepineUse;
    }

    public boolean isOpoidUse() {
        return OpoidUse;
    }

    public void setOpoidUse(boolean opoidUse) {
        OpoidUse = opoidUse;
    }

    public boolean isPsychoactiveNed() {
        return PsychoactiveNed;
    }

    public void setPsychoactiveNed(boolean psychoactiveNed) {
        PsychoactiveNed = psychoactiveNed;
    }
}
