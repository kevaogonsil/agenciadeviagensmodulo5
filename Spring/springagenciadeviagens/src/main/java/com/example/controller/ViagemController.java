package com.example.controller;

import com.example.model.Viagem;
import com.example.repository.ViagemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/viagens")
public class ViagemController {

    @Autowired
    private ViagemRepository viagemRepository;

    @GetMapping
    public List<Viagem> getAllViagens() {
        return viagemRepository.findAll();
    }

    @PostMapping
    public Viagem createViagem(@RequestBody Viagem viagem) {
        return viagemRepository.save(viagem);
    }
}
