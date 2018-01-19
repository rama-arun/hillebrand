package com.hellokoding.auth.web;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.hellokoding.auth.model.Section0;
import com.hellokoding.auth.model.Section1;
import com.hellokoding.auth.model.Section10;
import com.hellokoding.auth.model.Section11;
import com.hellokoding.auth.model.Section12;
import com.hellokoding.auth.model.Section13;
import com.hellokoding.auth.model.Section14;
import com.hellokoding.auth.model.Section15;
import com.hellokoding.auth.model.Section16;
import com.hellokoding.auth.model.Section17;
import com.hellokoding.auth.model.Section18;
import com.hellokoding.auth.model.Section19;
import com.hellokoding.auth.model.Section2;
import com.hellokoding.auth.model.Section20;
import com.hellokoding.auth.model.Section21;
import com.hellokoding.auth.model.Section3;
import com.hellokoding.auth.model.Section4;
import com.hellokoding.auth.model.Section5;
import com.hellokoding.auth.model.Section6;
import com.hellokoding.auth.model.Section7;
import com.hellokoding.auth.model.Section8;
import com.hellokoding.auth.model.Section9;
import com.hellokoding.auth.service.RetrieveService;

@RestController
public class DataController {

	@Autowired
	private RetrieveService retrieveService;

	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@GetMapping(value = "/admin/section0", produces = "application/json")
	public List<Section0> section0FormData(Principal principal, Section0 section0) {

		List<Section0> section0DataForUser = new ArrayList<Section0>();
		try {
			String user = principal.getName();
			section0DataForUser = retrieveService.getSection0DataForLoggedInUser(user);

			logger.info("sending section0 data to view for user - {}", user);
		} catch (Exception e) {
			logger.error("exception whule sending section0 data to view for user - {}", e.getMessage());
		}

		return section0DataForUser;
	}

	@GetMapping(value = "/page2/section1/{clientname}", produces = "application/json")
	public List<Section1> section1FormData(Principal principal, Section1 section1,
			@PathVariable("clientname") String clientname) {

		List<Section1> section1DataForUser = new ArrayList<Section1>();
		try {
			String user = principal.getName();
			System.out.println("---------------------" + clientname);
			section1DataForUser = retrieveService.getSection1DataForLoggedInUser(user, clientname);

			logger.info("sending section1 data to view for user - {}", user);
		} catch (Exception e) {
			logger.error("exception whule sending section1 data to view for user - {}", e.getMessage());
		}

		return section1DataForUser;
	}

	@GetMapping(value = "/page3/section2/{clientname}", produces = "application/json")
	public List<Section2> section2FormData(Principal principal, Section2 section2,
			@PathVariable("clientname") String clientname) {

		List<Section2> section2DataForUser = new ArrayList<Section2>();
		try {
			String user = principal.getName();
			section2DataForUser = retrieveService.getSection2DataForLoggedInUser(user, clientname);
			System.out.println("------------" + section2DataForUser.size());
			logger.info("sending section2 data to view for user - {}", user);
		} catch (Exception e) {
			logger.error("exception whule sending section2 data to view for user - {}", e.getMessage());
		}

		return section2DataForUser;
	}

	@GetMapping(value = "/page3/section3/{clientname}", produces = "application/json")
	public List<Section3> section3FormData(Principal principal, Section3 section3,
			@PathVariable("clientname") String clientname) {

		List<Section3> section3DataForUser = new ArrayList<Section3>();
		try {
			String user = principal.getName();
			section3DataForUser = retrieveService.getSection3DataForLoggedInUser(user, clientname);
			System.out.println("------------" + section3DataForUser.size());
			logger.info("sending section3 data to view for user - {}", user);
		} catch (Exception e) {
			logger.error("exception whule sending section3 data to view for user - {}", e.getMessage());
		}

		return section3DataForUser;
	}

	@GetMapping(value = "/page3/section4/{clientname}", produces = "application/json")
	public List<Section4> section4FormData(Principal principal, Section4 section4,
			@PathVariable("clientname") String clientname) {

		List<Section4> section4DataForUser = new ArrayList<Section4>();
		try {
			String user = principal.getName();
			section4DataForUser = retrieveService.getSection4DataForLoggedInUser(user, clientname);
			System.out.println("------------" + section4DataForUser.size());
			logger.info("sending section4 data to view for user - {}", user);
		} catch (Exception e) {
			logger.error("exception whule sending section4 data to view for user - {}", e.getMessage());
		}

		return section4DataForUser;
	}

	@GetMapping(value = "/page3/section5/{clientname}", produces = "application/json")
	public List<Section5> section5FormData(Principal principal, Section5 section5,
			@PathVariable("clientname") String clientname) {

		List<Section5> section5DataForUser = new ArrayList<Section5>();
		try {
			String user = principal.getName();
			section5DataForUser = retrieveService.getSection5DataForLoggedInUser(user, clientname);
			System.out.println("------------" + section5DataForUser.size());
			logger.info("sending section5 data to view for user - {}", user);
		} catch (Exception e) {
			logger.error("exception whule sending section5 data to view for user - {}", e.getMessage());
		}

		return section5DataForUser;
	}

	@GetMapping(value = "/page3/section6/{clientname}", produces = "application/json")
	public List<Section6> section6FormData(Principal principal, Section6 section6,
			@PathVariable("clientname") String clientname) {

		List<Section6> section6DataForUser = new ArrayList<Section6>();
		try {
			String user = principal.getName();
			section6DataForUser = retrieveService.getSection6DataForLoggedInUser(user, clientname);
			System.out.println("------------" + section6DataForUser.size());
			logger.info("sending section6 data to view for user - {}", user);
		} catch (Exception e) {
			logger.error("exception whule sending section6 data to view for user - {}", e.getMessage());
		}

		return section6DataForUser;
	}

	@GetMapping(value = "/page4/section7/{clientname}", produces = "application/json")
	public List<Section7> section7FormData(Principal principal, Section7 section7,
			@PathVariable("clientname") String clientname) {

		List<Section7> section7DataForUser = new ArrayList<Section7>();
		try {
			String user = principal.getName();
			section7DataForUser = retrieveService.getSection7DataForLoggedInUser(user, clientname);
			System.out.println("------------" + section7DataForUser.size());
			logger.info("sending section7 data to view for user - {}", user);
		} catch (Exception e) {
			logger.error("exception whule sending section7 data to view for user - {}", e.getMessage());
		}

		return section7DataForUser;
	}

	@GetMapping(value = "/page4/section8/{clientname}", produces = "application/json")
	public List<Section8> section8FormData(Principal principal, Section8 section8,
			@PathVariable("clientname") String clientname) {

		List<Section8> section8DataForUser = new ArrayList<Section8>();
		try {
			String user = principal.getName();
			section8DataForUser = retrieveService.getSection8DataForLoggedInUser(user, clientname);
			System.out.println("------------" + section8DataForUser.size());
			logger.info("sending section8 data to view for user - {}", user);
		} catch (Exception e) {
			logger.error("exception whule sending section8 data to view for user - {}", e.getMessage());
		}

		return section8DataForUser;
	}

	@GetMapping(value = "/page4/section9/{clientname}", produces = "application/json")
	public List<Section9> section9FormData(Principal principal, Section9 section9,
			@PathVariable("clientname") String clientname) {

		List<Section9> section9DataForUser = new ArrayList<Section9>();
		try {
			String user = principal.getName();
			section9DataForUser = retrieveService.getSection9DataForLoggedInUser(user, clientname);
			System.out.println("------------" + section9DataForUser.size());
			logger.info("sending section9 data to view for user - {}", user);
		} catch (Exception e) {
			logger.error("exception whule sending section9 data to view for user - {}", e.getMessage());
		}

		return section9DataForUser;
	}

	@GetMapping(value = "/page4/section10/{clientname}", produces = "application/json")
	public List<Section10> section10FormData(Principal principal, Section10 section10,
			@PathVariable("clientname") String clientname) {

		List<Section10> section10DataForUser = new ArrayList<Section10>();
		try {
			String user = principal.getName();
			section10DataForUser = retrieveService.getSection10DataForLoggedInUser(user, clientname);
			System.out.println("------------" + section10DataForUser.size());
			logger.info("sending section10 data to view for user - {}", user);
		} catch (Exception e) {
			logger.error("exception whule sending section10 data to view for user - {}", e.getMessage());
		}

		return section10DataForUser;
	}

	@GetMapping(value = "/page4/section11/{clientname}", produces = "application/json")
	public List<Section11> section11FormData(Principal principal, Section11 section11,
			@PathVariable("clientname") String clientname) {

		List<Section11> section11DataForUser = new ArrayList<Section11>();
		try {
			String user = principal.getName();
			section11DataForUser = retrieveService.getSection11DataForLoggedInUser(user, clientname);
			System.out.println("------------" + section11DataForUser.size());
			logger.info("sending section11 data to view for user - {}", user);
		} catch (Exception e) {
			logger.error("exception whule sending section11 data to view for user - {}", e.getMessage());
		}

		return section11DataForUser;
	}

	@GetMapping(value = "/page5/section12/{clientname}", produces = "application/json")
	public List<Section12> section12FormData(Principal principal, Section12 section12,
			@PathVariable("clientname") String clientname) {

		List<Section12> section12DataForUser = new ArrayList<Section12>();
		try {
			String user = principal.getName();
			section12DataForUser = retrieveService.getSection12DataForLoggedInUser(user, clientname);
			System.out.println("------------" + section12DataForUser.size());
			logger.info("sending section12 data to view for user - {}", user);
		} catch (Exception e) {
			logger.error("exception whule sending section12 data to view for user - {}", e.getMessage());
		}

		return section12DataForUser;
	}

	@GetMapping(value = "/page5/section13/{clientname}", produces = "application/json")
	public List<Section13> section13FormData(Principal principal, Section13 section13,
			@PathVariable("clientname") String clientname) {

		List<Section13> section13DataForUser = new ArrayList<Section13>();
		try {
			String user = principal.getName();
			section13DataForUser = retrieveService.getSection13DataForLoggedInUser(user, clientname);
			System.out.println("------------" + section13DataForUser.size());
			logger.info("sending section13 data to view for user - {}", user);
		} catch (Exception e) {
			logger.error("exception whule sending section13 data to view for user - {}", e.getMessage());
		}

		return section13DataForUser;
	}

	@GetMapping(value = "/page6/section14/{clientname}", produces = "application/json")
	public List<Section14> section14FormData(Principal principal, Section14 section14,
			@PathVariable("clientname") String clientname) {

		List<Section14> section14DataForUser = new ArrayList<Section14>();
		try {
			String user = principal.getName();
			section14DataForUser = retrieveService.getSection14DataForLoggedInUser(user, clientname);
			System.out.println("------------" + section14DataForUser.size());
			logger.info("sending section14 data to view for user - {}", user);
		} catch (Exception e) {
			logger.error("exception whule sending section14 data to view for user - {}", e.getMessage());
		}

		return section14DataForUser;
	}

	@GetMapping(value = "/page6/section15/{clientname}", produces = "application/json")
	public List<Section15> section15FormData(Principal principal, Section15 section15,
			@PathVariable("clientname") String clientname) {

		List<Section15> section15DataForUser = new ArrayList<Section15>();
		try {
			String user = principal.getName();
			section15DataForUser = retrieveService.getSection15DataForLoggedInUser(user, clientname);
			System.out.println("------------" + section15DataForUser.size());
			logger.info("sending section15 data to view for user - {}", user);
		} catch (Exception e) {
			logger.error("exception whule sending section15 data to view for user - {}", e.getMessage());
		}

		return section15DataForUser;
	}

	@GetMapping(value = "/page6/section16/{clientname}", produces = "application/json")
	public List<Section16> section16FormData(Principal principal, Section16 section16,
			@PathVariable("clientname") String clientname) {

		List<Section16> section16DataForUser = new ArrayList<Section16>();
		try {
			String user = principal.getName();
			section16DataForUser = retrieveService.getSection16DataForLoggedInUser(user, clientname);
			System.out.println("------------" + section16DataForUser.size());
			logger.info("sending section16 data to view for user - {}", user);
		} catch (Exception e) {
			logger.error("exception whule sending section16 data to view for user - {}", e.getMessage());
		}

		return section16DataForUser;
	}

	@GetMapping(value = "/page6/section17/{clientname}", produces = "application/json")
	public List<Section17> section17FormData(Principal principal, Section17 section17,
			@PathVariable("clientname") String clientname) {

		List<Section17> section17DataForUser = new ArrayList<Section17>();
		try {
			String user = principal.getName();
			section17DataForUser = retrieveService.getSection17DataForLoggedInUser(user, clientname);
			System.out.println("------------" + section17DataForUser.size());
			logger.info("sending section17 data to view for user - {}", user);
		} catch (Exception e) {
			logger.error("exception whule sending section17 data to view for user - {}", e.getMessage());
		}

		return section17DataForUser;
	}

	@GetMapping(value = "/page7/section18/{clientname}", produces = "application/json")
	public List<Section18> section18FormData(Principal principal, Section18 section18,
			@PathVariable("clientname") String clientname) {

		List<Section18> section18DataForUser = new ArrayList<Section18>();
		try {
			String user = principal.getName();
			section18DataForUser = retrieveService.getSection18DataForLoggedInUser(user, clientname);
			System.out.println("------------" + section18DataForUser.size());
			logger.info("sending section18 data to view for user - {}", user);
		} catch (Exception e) {
			logger.error("exception whule sending section18 data to view for user - {}", e.getMessage());
		}

		return section18DataForUser;
	}

	@GetMapping(value = "/page7/section19/{clientname}", produces = "application/json")
	public List<Section19> section19FormData(Principal principal, Section19 section19,
			@PathVariable("clientname") String clientname) {

		List<Section19> section19DataForUser = new ArrayList<Section19>();
		try {
			String user = principal.getName();
			section19DataForUser = retrieveService.getSection19DataForLoggedInUser(user, clientname);
			System.out.println("------------" + section19DataForUser.size());
			logger.info("sending section19 data to view for user - {}", user);
		} catch (Exception e) {
			logger.error("exception whule sending section19 data to view for user - {}", e.getMessage());
		}

		return section19DataForUser;
	}

	@GetMapping(value = "/page8/section20/{clientname}", produces = "application/json")
	public List<Section20> section20FormData(Principal principal, Section20 section20,
			@PathVariable("clientname") String clientname) {

		List<Section20> section20DataForUser = new ArrayList<Section20>();
		try {
			String user = principal.getName();
			section20DataForUser = retrieveService.getSection20DataForLoggedInUser(user, clientname);
			System.out.println("------------" + section20DataForUser.size());
			logger.info("sending section20 data to view for user - {}", user);
		} catch (Exception e) {
			logger.error("exception whule sending section20 data to view for user - {}", e.getMessage());
		}

		return section20DataForUser;
	}

	@GetMapping(value = "/page9/section21/{clientname}", produces = "application/json")
	public List<Section21> section21FormData(Principal principal, Section21 section21,
			@PathVariable("clientname") String clientname) {

		List<Section21> section21DataForUser = new ArrayList<Section21>();
		try {
			String user = principal.getName();
			section21DataForUser = retrieveService.getSection21DataForLoggedInUser(user, clientname);
			System.out.println("------------" + section21DataForUser.size());
			logger.info("sending section21 data to view for user - {}", user);
		} catch (Exception e) {
			logger.error("exception whule sending section21 data to view for user - {}", e.getMessage());
		}

		return section21DataForUser;
	}

}
