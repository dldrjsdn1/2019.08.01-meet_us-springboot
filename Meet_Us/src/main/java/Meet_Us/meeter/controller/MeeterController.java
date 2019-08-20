package Meet_Us.meeter.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;

import Meet_Us.meeter.service.MeeterService;

@Controller
@EnableAutoConfiguration
public class MeeterController {
	@Autowired
	private MeeterService service;


}
