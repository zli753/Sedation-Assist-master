package com.sedationassist.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import com.sedationassist.model.*;
import com.sedationassist.service.CalculateOption;
import org.hl7.fhir.dstu3.model.Bundle;
import org.hl7.fhir.dstu3.model.Patient;
import org.hl7.fhir.dstu3.model.Period;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sedationassist.application.SedationAssistApplication;
import com.sedationassist.configuration.SecurityService;
import com.sedationassist.repositories.PatientMongoRepository;
import com.sedationassist.service.UserService;
import com.sedationassist.validator.UserValidator;

import ca.uhn.fhir.context.FhirContext;
import ca.uhn.fhir.rest.client.api.IGenericClient;

@Controller
@EnableConfigurationProperties
public class RiskAssessmentController {
	@Autowired
	private UserService userService;

	@Autowired
	private SecurityService securityService;

	@Autowired
	private UserValidator userValidator;

	@Autowired
	private SedationAssistApplication myConfig;

	@Value("${hapi.fhir.server.url}")
	private String serverBase;

	@Autowired
	private PatientMongoRepository patientrepository;

	@Autowired
    private CalculateOption calulationoption;

	@GetMapping(value = "/login")
	public String getlogin() {
		return "login";
	}
	
	@PostMapping(value = "/login")
	public String login(@RequestParam("username") String username,  @RequestParam("password") String password) {
		securityService.autologin(username, password);
		return "redirect:/index";
	}

	@GetMapping("/registration")
	public String registration(ModelMap model) {
		model.addAttribute("userForm", new UserForm());
		return "registration";
	}

	@PostMapping(value = "/registration")
	public String registration(@ModelAttribute("userForm") UserForm userForm, BindingResult bindingResult, ModelMap model) {
		userValidator.validate(userForm, bindingResult);
		if (bindingResult.hasErrors()) {
			return "registration";
		}
		User newUser = new User(userForm.getUsername(), userForm.getPasswordConfirm());
		userService.save(newUser);
		securityService.autologin(newUser.getUsername(), userForm.getPasswordConfirm());
		return "redirect:/index";
	}

	@GetMapping("/index")
	public String showIndexPage() {
		return "index";
	}
	
	@PostMapping("/patientinfo")
	public String showPatientInfo(@RequestParam("patientID") String patientID) {
		// add your code here: get this patient using patientID; you can either return a patient info obejct, or put all the patient related info for frontend
		System.out.println(patientID);
		
		//return "hello"; //once you get info, comment this line, and uncomment the next line.
		return "patientinfo";
	}
	
	
	@GetMapping("/")
	public ModelAndView showForm() {
		return new ModelAndView("showPatientForm", "patientForm", new PatientForm());
	}
	
	@GetMapping(value = { "/hello" })
	public String welcome(ModelMap model) {
		return "hello";
	}

	@GetMapping("/mongowelcome")
	public String mongowelcome(ModelMap model) {

		List<PatientMongo> patient = patientrepository.findAll();
		if (patient == null) {
			model.addAttribute("weight", "null patient found");
			return "connected";
		} else {
			model.addAttribute("name", patient.get(0).getName());
			model.addAttribute("weight", patient.get(0).getWeight());
			model.addAttribute("height", patient.get(0).getHeight());
			return "connected";
		}

	}

	@PostMapping("/calculateRisk")
	public String calculateRisk(@Valid @ModelAttribute("patientForm") PatientForm patientForm, BindingResult result,
			ModelMap model) {
		if (result.hasErrors()) {
			return "error";
		}
		model.addAttribute("name", patientForm.getName());
		return "welcome";
	}

	@GetMapping("/welcome")
	public String welcome() {
		FhirContext ctx = FhirContext.forDstu3();
		IGenericClient client = ctx.newRestfulGenericClient(serverBase);
		Bundle results = client.search().forResource(Patient.class).where(Patient.FAMILY.matches().value("duck"))
				.returnBundle(org.hl7.fhir.dstu3.model.Bundle.class).execute();
		// return "Found " + results.getEntry().size() + " ";
		ModelAndView hi = new ModelAndView("./webapp/hello.jsp");
		return "hello";

	}

	@GetMapping("/testFhir")
	public String testFhir(ModelMap model) {
		FhirContext ctx = FhirContext.forDstu3();
		IGenericClient client = ctx.newRestfulGenericClient(serverBase);
		Bundle results = client.search().forResource(Patient.class).where(Patient.FAMILY.matches().value("duck"))
				.returnBundle(org.hl7.fhir.dstu3.model.Bundle.class).execute();
		int number = results.getEntry().size();
		model.addAttribute("number", number);
		return "testFhir";

	}

    @GetMapping("/testFhir2")
    public String getbirthday(ModelMap model) {
	    int age = 0;
	    Date cur = new Date();
        FhirContext ctx = FhirContext.forDstu3();
        IGenericClient client = ctx.newRestfulGenericClient(serverBase);
        Patient patient = client.read()
                .resource(Patient.class)
                .withId("1")
                .execute();
        Date birthdate = patient.getBirthDate();
        if (birthdate != null){
            age = (int)(birthdate.getTime()- cur.getTime())/(1000*60*60*24*365);
        }
        else {
            age = 0;
        }

        model.addAttribute("number", age);
        return "showage";

    }


	@GetMapping("/showoption")
	public String showoption(ModelMap model) {
	   /*
	    model.addAttribute("drug",x);
        model.addAttribute("dose",x);
        model.addAttribute("duration",x);
	    return "showOption";
    }*/

		List<SedationOption> options = calulationoption.calculatedoption(1);
		//return "hello";
        System.out.println(options.get(0).toString());
        if (options == null) {
			model.addAttribute("drug", "null drug");
			return "showOption";
		} else {
			model.addAttribute("drug", options.get(0).getDrug());
			model.addAttribute("dose", options.get(0).getDose());
			model.addAttribute("duration", options.get(0).getDuration());
			return "showOption";
		}
	}


	// @RequestMapping("/hello")
	// public String hello(Model model, @RequestParam(value="name", required=false,
	// defaultValue="World") String name) {
	// model.addAttribute("name", name);
	// return "hello";
	// }

	// @GetMapping("/welcome")
	// public String calculateRisk(Map<String, Object> model) {
	// model.put("name", name);
	// return "welcome";
	// }

	// @RequestMapping("/welcome")
	// public String foo() {
	// return "welcome";
	// }
}
