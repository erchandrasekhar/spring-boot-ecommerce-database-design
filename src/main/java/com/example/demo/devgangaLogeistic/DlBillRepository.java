package com.example.demo.devgangaLogeistic;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


public interface DlBillRepository extends JpaRepository<DlBill, Integer>{

	public List<DlBill> findByLoriNumber(String loriNumber);
}
