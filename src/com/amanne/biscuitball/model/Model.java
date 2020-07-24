package com.amanne.biscuitball.model;

@Controller

@RequestMapping(value="/getUsers")
public String getUsers(Model model) 
{
    ArrayList arrayListOfUser = new ArrayList<>();
     
    for(int indexOfUser = 0; indexOfUser < 100; indexOfUser++) {
        User user = new User();
        user.setUserId(indexOfUser);
        user.setUserName("UserName"+indexOfUser);
        arrayListOfUser.add(user);
    }
     
    model.addAttribute("users",arrayListOfUser);
     
    return "user";
}
