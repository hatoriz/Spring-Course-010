package com.sprint3r.deans4j;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface CustomerRespoitory extends  CrudRepository<Customer,Long>{

}
