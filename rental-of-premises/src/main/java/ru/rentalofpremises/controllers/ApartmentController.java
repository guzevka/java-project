package ru.rentalofpremises.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ru.rentalofpremises.models.Apartment;
import ru.rentalofpremises.services.ApartmentService;

import java.io.IOException;

@Controller
@RequiredArgsConstructor
public class ApartmentController {
    private final ApartmentService apartmentService;

    // СПИСОК ВСЕХ АПАРТАМЕНТОВ

    @GetMapping("/")
    public String apartments(@RequestParam(name = "title", required = false) String title, Model model) {
        model.addAttribute("apartments", apartmentService.listApartments(title));
        return "apartments";
    }

    // ИНФА ПРО АПАРТАМЕНТЫ

    @GetMapping("/apartment/{id}")
    public String apartmentInfo(@PathVariable Long id, Model model) {
        Apartment apartment = apartmentService.getApartmentById(id);
        model.addAttribute("apartment", apartment);
        return "apartment-info";
    }

    // СОЗДАТЬ АПАРТАМЕНТЫ

    @GetMapping("/apartment/create")
    public String createApartment() throws IOException {
        return "apartment-create";
    }

    @PostMapping("/apartment/create")
    public String createApartment( Apartment apartment) throws IOException {
        apartmentService.saveApartment(apartment);
        return "redirect:/";
    }

    // УДАЛИТЬ АПАРТАМЕНТЫ

    @PostMapping("/apartment/delete/{id}")
    public String deleteApartment(@PathVariable Long id) {
        apartmentService.deleteApartment(id);
        return "redirect:/";
    }

    // АРЕНДОВАТЬ АПАРТАМЕНТЫ

    /*@PostMapping("/apartment/rent/{id}")
    public String rentApartment(@PathVariable Long id){

    }*/

}

