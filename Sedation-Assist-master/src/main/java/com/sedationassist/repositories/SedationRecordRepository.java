package com.sedationassist.repositories;

import com.sedationassist.model.SedationRecord;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SedationRecordRepository extends MongoRepository<SedationRecord, String> {
    public List<SedationRecord> findAll();
}