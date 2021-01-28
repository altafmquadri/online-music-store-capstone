package com.capstone.dao;

import org.springframework.data.repository.CrudRepository;
import com.capstone.model.MailingAddress;

public interface MailingDAO extends CrudRepository<MailingAddress, Integer> {

}
