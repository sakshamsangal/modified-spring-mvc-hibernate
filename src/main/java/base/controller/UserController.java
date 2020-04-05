package base.controller;

import base.model.pojo.User;
import base.model.service.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    private Service service;

    @RequestMapping("read-user")
    public String readUser(ModelMap modelMap) {
        List<Object> users = service.read(User.class);
        modelMap.addAttribute("users", users);
        return "read/readUser";
    }

    @RequestMapping("form-user")
    public String formUser() {
        return "form/formUser";
    }


    @RequestMapping("create-user")
    public String createUser(@ModelAttribute("user") User user, ModelMap modelMap) {
        int id = service.create(user);
        modelMap.addAttribute("id", id);
        return "form/formUser";
    }

    @RequestMapping("find-user-id")
    public @ResponseBody
    String findUserId(@RequestParam("id") int id) {
        User user = service.findId(id);
        if(user == null) {
            return "";
        } else {
            return "already exist";
        }
    }
}
