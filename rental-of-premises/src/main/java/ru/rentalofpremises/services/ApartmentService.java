package ru.rentalofpremises.services;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import ru.rentalofpremises.models.Apartment;
import ru.rentalofpremises.repositories.ApartmentRepository;

import java.io.IOException;
import java.util.List;

@Service
//@Slf4j
@RequiredArgsConstructor
public class ApartmentService {

    private final ApartmentRepository apartmentRepository;

    // ЛИСТ ВСЕХ АПАРТАМЕНТОВ

    public List<Apartment> listApartments(String title){
        if(title != null) return apartmentRepository.findApartmentByTitle(title);
        else return apartmentRepository.findAll();
    }

    // СОХРАНИТЬ / СОЗДАТЬ АПАРТАМЕНТЫ

    public void saveApartment(Apartment apartment) throws IOException {

        //log.info("saving new {}", apartment);
        apartmentRepository.save(apartment);
    }

    // УДАЛИТЬ АПАРТАМЕНТЫ

    public void deleteApartment(Long id) {
        apartmentRepository.deleteById(id);
    }

    // АРЕНДОВАТЬ АПАРТАМЕНТЫ



    // АПАРТАМЕНТЫ ПО ID

    public Apartment getApartmentById(Long id) {
        return apartmentRepository.findById(id).orElse(null);
    }
}

