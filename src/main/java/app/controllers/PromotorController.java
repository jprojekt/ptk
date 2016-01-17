package app.controllers;

import app.persistance.dao.UsersDao;
import app.persistance.models.users.User;
import app.persistance.models.users.UserDetails;
import app.persistance.models.users.UserStatus;
import app.persistance.models.users.UserType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/panel-promotora/")
public class PromotorController {

    @Autowired
    UsersDao usersRepo;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String printMainPage(ModelMap model) {

        return "panel-promotora";
    }

    @RequestMapping(value = "/dyplomanci", method = RequestMethod.GET)
    public String printDyplomanci(ModelMap model) {

        model.addAttribute("dyplomanci", usersRepo.getAllDyplomanci());

        return "panel-promotora-dyplomanci";
    }

    @RequestMapping(value = "/dodaj-dyplomante", method = RequestMethod.GET)
    public String printAddDyplomanta(ModelMap model) {

        List<UserStatus> userStatuses = new ArrayList<>();
        userStatuses.add(UserStatus.UKONCZONY);
        userStatuses.add(UserStatus.W_TRAKCIE);
        userStatuses.add(UserStatus.WSTRZYMANO);

        model.addAttribute("statusy", userStatuses);

        return "panel-promotora-dodaj-dyplomante";
    }

    @RequestMapping(value = "/dodaj-dyplomante/dodaj", method = RequestMethod.POST)
    public String proceedAddDyplomanta(
            @RequestParam(name="imie", required = true) String imie,
            @RequestParam(name="nazwisko", required = true) String nazwisko,
            @RequestParam(name="temat", required = true) String temat,
            @RequestParam(name="status", required = true) UserStatus status,
            ModelMap model) {

        User user = new User(UserType.DYPLOMANTA, new UserDetails(imie, nazwisko, temat, status));

        usersRepo.add(user);


        return "redirect:/panel-promotora/dodaj-dyplomante";
    }

    @RequestMapping(value = "/dodaj-temat", method = RequestMethod.GET)
    public String printDodajTemat(ModelMap model) {

        return "panel-promotora-dodaj-temat";
    }

    @RequestMapping(value = "/archiwum", method = RequestMethod.GET)
    public String printArchiwum(ModelMap model) {

        return "panel-promotora-archiwum";
    }

}
