package com.pantuflas.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.pantuflas.models.Pantuflas;

@Repository
public interface PantuflasRepository  extends JpaRepository<Pantuflas, Long> {

}
