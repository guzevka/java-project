package ru.rentalofpremises.services;
/*
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import ru.rentalofpremises.models.Rent;
import ru.rentalofpremises.repositories.RentRepository;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class RentService {
    private final RentRepository rentRepository;

    public List<Rent> findAll(){
        return rentRepository.findAll();
    }

    public Rent findById(Long id){
        return rentRepository.findById(id).orElse(null);
    }

    public void delete(Long id){
        rentRepository.deleteById(id);
    }

    public void save(Rent rent){
        int amount = rent.getApartment().getPrice() * rent.getAmount();
        rent.setAmount(amount);
        rentRepository.save(rent);
    }

}
*/