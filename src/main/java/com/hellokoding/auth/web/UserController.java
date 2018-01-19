package com.hellokoding.auth.web;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hellokoding.auth.model.RestResponse;
import com.hellokoding.auth.model.Section0;
import com.hellokoding.auth.model.Section0Del;
import com.hellokoding.auth.model.Section1;
import com.hellokoding.auth.model.Section10;
import com.hellokoding.auth.model.Section10Del;
import com.hellokoding.auth.model.Section11;
import com.hellokoding.auth.model.Section11Del;
import com.hellokoding.auth.model.Section12;
import com.hellokoding.auth.model.Section12Del;
import com.hellokoding.auth.model.Section13;
import com.hellokoding.auth.model.Section13Del;
import com.hellokoding.auth.model.Section14;
import com.hellokoding.auth.model.Section14Del;
import com.hellokoding.auth.model.Section15;
import com.hellokoding.auth.model.Section15Del;
import com.hellokoding.auth.model.Section16;
import com.hellokoding.auth.model.Section16Del;
import com.hellokoding.auth.model.Section17;
import com.hellokoding.auth.model.Section17Del;
import com.hellokoding.auth.model.Section18;
import com.hellokoding.auth.model.Section18Del;
import com.hellokoding.auth.model.Section19;
import com.hellokoding.auth.model.Section19Del;
import com.hellokoding.auth.model.Section1Del;
import com.hellokoding.auth.model.Section2;
import com.hellokoding.auth.model.Section20;
import com.hellokoding.auth.model.Section21;
import com.hellokoding.auth.model.Section2Del;
import com.hellokoding.auth.model.Section3;
import com.hellokoding.auth.model.Section3Del;
import com.hellokoding.auth.model.Section4;
import com.hellokoding.auth.model.Section4Del;
import com.hellokoding.auth.model.Section5;
import com.hellokoding.auth.model.Section5Del;
import com.hellokoding.auth.model.Section6;
import com.hellokoding.auth.model.Section6Del;
import com.hellokoding.auth.model.Section7;
import com.hellokoding.auth.model.Section7Del;
import com.hellokoding.auth.model.Section8;
import com.hellokoding.auth.model.Section8Del;
import com.hellokoding.auth.model.Section9;
import com.hellokoding.auth.model.Section9Del;
import com.hellokoding.auth.model.User;
import com.hellokoding.auth.service.KinvaultService;
import com.hellokoding.auth.service.SecurityService;
import com.hellokoding.auth.service.UserService;
import com.hellokoding.auth.validator.UserValidator;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@Autowired
	private KinvaultService kinvaultService;

	@Autowired
	private SecurityService securityService;

	@Autowired
	private UserValidator userValidator;

	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String registration(Model model) {
		model.addAttribute("userForm", new User());

		return "registration";
	}

	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
		userValidator.validate(userForm, bindingResult);

		if (bindingResult.hasErrors()) {
			return "registration";
		}

		userService.save(userForm);

		securityService.autologin(userForm.getUsername(), userForm.getPasswordConfirm());

		return "redirect:/";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model, String error, String logout) {
		if (error != null)
			model.addAttribute("error", "Your username and password is invalid.");

		if (logout != null)
			model.addAttribute("message", "You have been logged out successfully.");

		return "login";
	}

	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public String admin(Model model) {
		return "admin";
	}
	
	@RequestMapping(value = { "/welcome" }, method = RequestMethod.GET)
	public String welcome(Model model) {
		return "welcome";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse saveSection1(@RequestBody Section1 section1, HttpServletRequest request,
			Principal principal) {

		boolean inserted = false;
		try {
			kinvaultService.saveSection1Data(section1, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while saving data - {}", e.getMessage());
		}
		return new RestResponse(inserted, "success");
	}
	
	@RequestMapping(value = "/save0", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse saveSection0(@RequestBody Section0 section0, HttpServletRequest request,
			Principal principal) {

		boolean inserted = false;
		try {
			kinvaultService.saveSection0Data(section0, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while saving data - {}", e.getMessage());
		}
		return new RestResponse(inserted, "success");
	}

	@RequestMapping(value = "/save2", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse saveSection2(@RequestBody Section2 section2, HttpServletRequest request,
			HttpServletResponse response, Principal principal) {
		boolean inserted = false;
		try {
			kinvaultService.saveSection2Data(section2, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while saving data - {}", e.getMessage());
		}
		return new RestResponse(inserted, "success");
	}

	@RequestMapping(value = "/save3", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse saveSection3(@RequestBody Section3 section3, HttpServletRequest request, Principal principal) {
		boolean inserted = false;
		try {
			kinvaultService.saveSection3Data(section3, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while saving data - {}", e.getMessage());
		}
		return new RestResponse(inserted, "success");
	}

	@RequestMapping(value = "/save4", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse saveSection4(@RequestBody Section4 section4, HttpServletRequest request, Principal principal) {
		boolean inserted = false;
		try {
			kinvaultService.saveSection4Data(section4, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while saving data - {}", e.getMessage());
		}
		return new RestResponse(inserted, "success");
	}

	@RequestMapping(value = "/save5", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse saveSection5(@RequestBody Section5 section5, HttpServletRequest request, Principal principal) {
		boolean inserted = false;
		try {
			kinvaultService.saveSection5Data(section5, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while saving data - {}", e.getMessage());
		}
		return new RestResponse(inserted, "success");
	}

	@RequestMapping(value = "/save6", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse saveSection6(@RequestBody Section6 section6, HttpServletRequest request, Principal principal) {
		boolean inserted = false;
		try {
			kinvaultService.saveSection6Data(section6, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while saving data - {}", e.getMessage());
		}
		return new RestResponse(inserted, "success");
	}

	@RequestMapping(value = "/save7", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse saveSection7(@RequestBody Section7 section7, HttpServletRequest request, Principal principal) {
		boolean inserted = false;
		try {
			kinvaultService.saveSection7Data(section7, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while saving data - {}", e.getMessage());
		}
		return new RestResponse(inserted, "success");
	}

	@RequestMapping(value = "/save8", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse saveSection8(@RequestBody Section8 section8, HttpServletRequest request, Principal principal) {
		boolean inserted = false;
		try {
			kinvaultService.saveSection8Data(section8, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while saving data - {}", e.getMessage());
		}
		return new RestResponse(inserted, "success");
	}

	@RequestMapping(value = "/save9", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse saveSection9(@RequestBody Section9 section9, HttpServletRequest request, Principal principal) {
		boolean inserted = false;
		try {
			kinvaultService.saveSection9Data(section9, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while saving data - {}", e.getMessage());
		}
		return new RestResponse(inserted, "success");
	}

	@RequestMapping(value = "/save10", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse saveSection10(@RequestBody Section10 section10, HttpServletRequest request, Principal principal) {
		boolean inserted = false;
		try {
			kinvaultService.saveSection10Data(section10, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while saving data - {}", e.getMessage());
		}
		return new RestResponse(inserted, "success");
	}

	@RequestMapping(value = "/save11", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse saveSection11(@RequestBody Section11 section11, HttpServletRequest request, Principal principal) {
		boolean inserted = false;
		try {
			kinvaultService.saveSection11Data(section11, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while saving data - {}", e.getMessage());
		}
		return new RestResponse(inserted, "success");
	}

	@RequestMapping(value = "/save12", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse saveSection12(@RequestBody Section12 section12, HttpServletRequest request, Principal principal) {
		boolean inserted = false;
		try {
			kinvaultService.saveSection12Data(section12, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while saving data - {}", e.getMessage());
		}
		return new RestResponse(inserted, "success");
	}

	@RequestMapping(value = "/save13", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse saveSection13(@RequestBody Section13 section13, HttpServletRequest request, Principal principal) {
		boolean inserted = false;
		try {
			kinvaultService.saveSection13Data(section13, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while saving data - {}", e.getMessage());
		}
		return new RestResponse(inserted, "success");
	}

	@RequestMapping(value = "/save14", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse saveSection14(@RequestBody Section14 section14, HttpServletRequest request, Principal principal) {
		boolean inserted = false;
		try {
			kinvaultService.saveSection14Data(section14, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while saving data - {}", e.getMessage());
		}
		return new RestResponse(inserted, "success");
	}

	@RequestMapping(value = "/save15", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse saveSection15(@RequestBody Section15 section15, HttpServletRequest request, Principal principal) {
		boolean inserted = false;
		try {
			kinvaultService.saveSection15Data(section15, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while saving data - {}", e.getMessage());
		}
		return new RestResponse(inserted, "success");
	}

	@RequestMapping(value = "/save16", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse saveSection16(@RequestBody Section16 section16, HttpServletRequest request, Principal principal) {
		boolean inserted = false;
		try {
			kinvaultService.saveSection16Data(section16, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while saving data - {}", e.getMessage());
		}
		return new RestResponse(inserted, "success");
	}

	@RequestMapping(value = "/save17", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse saveSection17(@RequestBody Section17 section17, HttpServletRequest request, Principal principal) {
		boolean inserted = false;
		try {
			kinvaultService.saveSection17Data(section17, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while saving data - {}", e.getMessage());
		}
		return new RestResponse(inserted, "success");
	}

	@RequestMapping(value = "/save18", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse saveSection18(@RequestBody Section18 section18, HttpServletRequest request, Principal principal) {
		boolean inserted = false;
		try {
			kinvaultService.saveSection18Data(section18, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while saving data - {}", e.getMessage());
		}
		return new RestResponse(inserted, "success");
	}

	@RequestMapping(value = "/save19", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse saveSection19(@RequestBody Section19 section19, HttpServletRequest request, Principal principal) {
		boolean inserted = false;
		try {
			kinvaultService.saveSection19Data(section19, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while saving data - {}", e.getMessage());
		}
		return new RestResponse(inserted, "success");
	}

	@RequestMapping(value = "/save20", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse saveSection20(@RequestBody Section20 section20, HttpServletRequest request, Principal principal) {
		boolean inserted = false;
		try {
			kinvaultService.saveSection20Data(section20, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while saving data - {}", e.getMessage());
		}
		return new RestResponse(inserted, "success");
	}

	@RequestMapping(value = "/save21", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse saveSection21(@RequestBody Section21 section21, HttpServletRequest request,
			Principal principal) {
		boolean inserted = false;
		try {
			kinvaultService.saveSection21Data(section21, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while saving data - {}", e.getMessage());
		}
		return new RestResponse(inserted, "success");
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse deleteSection1Row(@RequestBody Section1Del section1del,
			HttpServletRequest request, Principal principal) {

		boolean deleted = false;
		try {
			kinvaultService.deleteSection1DataRow(section1del, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while deleting data - {}", e.getMessage());
		}
		return new RestResponse(deleted, "success");
	}
	
	@RequestMapping(value = "/delete0", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse deleteSection0Row(@RequestBody Section0Del section0del,
			HttpServletRequest request, Principal principal) {

		boolean deleted = false;
		try {
			kinvaultService.deleteSection0DataRow(section0del, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while deleting data - {}", e.getMessage());
		}
		return new RestResponse(deleted, "success");
	}

	@RequestMapping(value = "/delete2", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse deleteSection2Row(@RequestBody Section2Del section2Del,
			HttpServletRequest request, Principal principal) {

		boolean deleted = false;
		try {
			kinvaultService.deleteSection2DataRow(section2Del, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while deleting data - {}", e.getMessage());
		}
		return new RestResponse(deleted, "success");
	}

	@RequestMapping(value = "/delete3", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse deleteSection3Row(@RequestBody Section3Del section3Del,
			HttpServletRequest request, Principal principal) {

		boolean deleted = false;
		try {
			kinvaultService.deleteSection3DataRow(section3Del, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while deleting data - {}", e.getMessage());
		}
		return new RestResponse(deleted, "success");
	}

	@RequestMapping(value = "/delete4", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse deleteSection4Row(@RequestBody Section4Del section4Del,
			HttpServletRequest request, Principal principal) {

		boolean deleted = false;
		try {
			kinvaultService.deleteSection4DataRow(section4Del, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while deleting data - {}", e.getMessage());
		}
		return new RestResponse(deleted, "success");
	}

	@RequestMapping(value = "/delete5", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse deleteSection5Row(@RequestBody Section5Del section5Del,
			HttpServletRequest request, Principal principal) {

		boolean deleted = false;
		try {
			kinvaultService.deleteSection5DataRow(section5Del, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while deleting data - {}", e.getMessage());
		}
		return new RestResponse(deleted, "success");
	}

	@RequestMapping(value = "/delete6", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse deleteSection6Row(@RequestBody Section6Del section6Del,
			HttpServletRequest request, Principal principal) {

		boolean deleted = false;
		try {
			kinvaultService.deleteSection6DataRow(section6Del, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while deleting data - {}", e.getMessage());
		}
		return new RestResponse(deleted, "success");
	}

	@RequestMapping(value = "/delete7", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse deleteSection7Row(@RequestBody Section7Del section7Del,
			HttpServletRequest request, Principal principal) {

		boolean deleted = false;
		try {
			kinvaultService.deleteSection7DataRow(section7Del, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while deleting data - {}", e.getMessage());
		}
		return new RestResponse(deleted, "success");
	}

	@RequestMapping(value = "/delete8", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse deleteSection8Row(@RequestBody Section8Del section8Del,
			HttpServletRequest request, Principal principal) {

		boolean deleted = false;
		try {
			kinvaultService.deleteSection8DataRow(section8Del, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while deleting data - {}", e.getMessage());
		}
		return new RestResponse(deleted, "success");
	}

	@RequestMapping(value = "/delete9", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse deleteSection9Row(@RequestBody Section9Del section9Del,
			HttpServletRequest request, Principal principal) {

		boolean deleted = false;
		try {
			kinvaultService.deleteSection9DataRow(section9Del, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while deleting data - {}", e.getMessage());
		}
		return new RestResponse(deleted, "success");
	}

	@RequestMapping(value = "/delete10", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse deleteSection10Row(@RequestBody Section10Del section10Del,
			HttpServletRequest request, Principal principal) {

		boolean deleted = false;
		try {
			kinvaultService.deleteSection10DataRow(section10Del, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while deleting data - {}", e.getMessage());
		}
		return new RestResponse(deleted, "success");
	}

	@RequestMapping(value = "/delete11", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse deleteSection11Row(@RequestBody Section11Del section11Del,
			HttpServletRequest request, Principal principal) {

		boolean deleted = false;
		try {
			kinvaultService.deleteSection11DataRow(section11Del, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while deleting data - {}", e.getMessage());
		}
		return new RestResponse(deleted, "success");
	}

	@RequestMapping(value = "/delete12", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse deleteSection12Row(@RequestBody Section12Del section12Del,
			HttpServletRequest request, Principal principal) {

		boolean deleted = false;
		try {
			kinvaultService.deleteSection12DataRow(section12Del, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while deleting data - {}", e.getMessage());
		}
		return new RestResponse(deleted, "success");
	}

	@RequestMapping(value = "/delete13", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse deleteSection13Row(@RequestBody Section13Del section13Del,
			HttpServletRequest request, Principal principal) {

		boolean deleted = false;
		try {
			kinvaultService.deleteSection13DataRow(section13Del, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while deleting data - {}", e.getMessage());
		}
		return new RestResponse(deleted, "success");
	}

	@RequestMapping(value = "/delete14", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse deleteSection14Row(@RequestBody Section14Del section14Del,
			HttpServletRequest request, Principal principal) {

		boolean deleted = false;
		try {
			kinvaultService.deleteSection14DataRow(section14Del, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while deleting data - {}", e.getMessage());
		}
		return new RestResponse(deleted, "success");
	}

	@RequestMapping(value = "/delete15", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse deleteSection15Row(@RequestBody Section15Del section15Del,
			HttpServletRequest request, Principal principal) {

		boolean deleted = false;
		try {
			kinvaultService.deleteSection15DataRow(section15Del, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while deleting data - {}", e.getMessage());
		}
		return new RestResponse(deleted, "success");
	}

	@RequestMapping(value = "/delete16", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse deleteSection16Row(@RequestBody Section16Del section16Del,
			HttpServletRequest request, Principal principal) {

		boolean deleted = false;
		try {
			kinvaultService.deleteSection16DataRow(section16Del, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while deleting data - {}", e.getMessage());
		}
		return new RestResponse(deleted, "success");
	}

	@RequestMapping(value = "/delete17", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse deleteSection17Row(@RequestBody Section17Del section17Del,
			HttpServletRequest request, Principal principal) {

		boolean deleted = false;
		try {
			kinvaultService.deleteSection17DataRow(section17Del, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while deleting data - {}", e.getMessage());
		}
		return new RestResponse(deleted, "success");
	}

	@RequestMapping(value = "/delete18", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse deleteSection18Row(@RequestBody Section18Del section18Del,
			HttpServletRequest request, Principal principal) {

		boolean deleted = false;
		try {
			kinvaultService.deleteSection18DataRow(section18Del, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while deleting data - {}", e.getMessage());
		}
		return new RestResponse(deleted, "success");
	}

	@RequestMapping(value = "/delete19", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody RestResponse deleteSection19Row(@RequestBody Section19Del section19Del,
			HttpServletRequest request, Principal principal) {

		boolean deleted = false;
		try {
			kinvaultService.deleteSection19DataRow(section19Del, principal.getName());
		} catch (Exception e) {
			logger.error("Exception while deleting data - {}", e.getMessage());
		}
		return new RestResponse(deleted, "success");
	}
}
