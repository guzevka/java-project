package ru.rentalofpremises.services;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import ru.rentalofpremises.models.User;
import ru.rentalofpremises.models.enums.Role;
import ru.rentalofpremises.repositories.UserRepository;

@Service
@Slf4j
@RequiredArgsConstructor
public class UserService {
    private UserRepository userRepository;

    public boolean createUser(User user){
        String email = user.getEmail();
        if(userRepository.findByEmail(email) != null) return false;
        user.setActive(true);
        user.getRoles().add(Role.ROLE_USER);
        log.info("saving new user with email: {}", email);
        return true;
    }

}
