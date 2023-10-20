package com.puc.polo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.puc.polo.model.Clientes;

@Repository
public interface ClienteRepository extends JpaRepository<Clientes, Integer> {
    
}
