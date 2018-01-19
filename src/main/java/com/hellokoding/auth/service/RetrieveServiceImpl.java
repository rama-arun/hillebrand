package com.hellokoding.auth.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Service;

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

@Service
public class RetrieveServiceImpl implements RetrieveService {

	@Autowired
	MongoTemplate mongoTemplate;

	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Override
	public List<Section0> getSection0DataForLoggedInUser(String user) {

		List<Section0> section0DataForLoggedInUser = new ArrayList<Section0>();
		try {

			logger.info("Attempting to retrieve Section data for user - {}", user);
			Query query = new Query(Criteria.where("user").is(user));
			section0DataForLoggedInUser = mongoTemplate.find(query, Section0.class);
			if (section0DataForLoggedInUser == null) {
				logger.error("No Section1 records found for - {}", user);
			}

		} catch (Exception e) {
			logger.error("Exception while retrieving Section data for user - {}", user);
		}
		return section0DataForLoggedInUser;
	}

	@Override
	public List<Section1> getSection1DataForLoggedInUser(String user, String client) {

		List<Section1> section1DataForLoggedInUser = new ArrayList<Section1>();
		try {

			logger.info("Attempting to retrieve Section data for user - {}", user);
			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("client").is(client)));
			section1DataForLoggedInUser = mongoTemplate.find(query, Section1.class);
			if (section1DataForLoggedInUser == null) {
				logger.error("No Section1 records found for - {}", user);
			}

		} catch (Exception e) {
			logger.error("Exception while retrieving Section data for user - {}", user);
		}
		return section1DataForLoggedInUser;
	}

	@Override
	public List<Section2> getSection2DataForLoggedInUser(String user, String client) {

		List<Section2> section2DataForLoggedInUser = new ArrayList<Section2>();
		try {

			logger.info("Attempting to retrieve Section data for user - {}", user);
			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("client").is(client)));
			section2DataForLoggedInUser = mongoTemplate.find(query, Section2.class);

		} catch (Exception e) {
			logger.error("Exception while retrieving Section data for user - {}", user);
		}
		return section2DataForLoggedInUser;
	}

	@Override
	public List<Section3> getSection3DataForLoggedInUser(String user, String client) {

		List<Section3> section3DataForLoggedInUser = new ArrayList<Section3>();
		try {

			logger.info("Attempting to retrieve Section data for user - {}", user);
			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("client").is(client)));
			section3DataForLoggedInUser = mongoTemplate.find(query, Section3.class);

		} catch (Exception e) {
			logger.error("Exception while retrieving Section data for user - {}", user);
		}
		return section3DataForLoggedInUser;
	}

	@Override
	public List<Section4> getSection4DataForLoggedInUser(String user, String client) {

		List<Section4> section4DataForLoggedInUser = new ArrayList<Section4>();
		try {

			logger.info("Attempting to retrieve Section data for user - {}", user);
			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("client").is(client)));
			section4DataForLoggedInUser = mongoTemplate.find(query, Section4.class);

		} catch (Exception e) {
			logger.error("Exception while retrieving Section data for user - {}", user);
		}
		return section4DataForLoggedInUser;
	}

	@Override
	public List<Section5> getSection5DataForLoggedInUser(String user, String client) {

		List<Section5> section5DataForLoggedInUser = new ArrayList<Section5>();
		try {

			logger.info("Attempting to retrieve Section data for user - {}", user);
			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("client").is(client)));
			section5DataForLoggedInUser = mongoTemplate.find(query, Section5.class);

		} catch (Exception e) {
			logger.error("Exception while retrieving Section data for user - {}", user);
		}
		return section5DataForLoggedInUser;
	}

	@Override
	public List<Section6> getSection6DataForLoggedInUser(String user, String client) {

		List<Section6> section6DataForLoggedInUser = new ArrayList<Section6>();
		try {

			logger.info("Attempting to retrieve Section data for user - {}", user);
			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("client").is(client)));
			section6DataForLoggedInUser = mongoTemplate.find(query, Section6.class);

		} catch (Exception e) {
			logger.error("Exception while retrieving Section data for user - {}", user);
		}
		return section6DataForLoggedInUser;
	}

	@Override
	public List<Section7> getSection7DataForLoggedInUser(String user, String client) {

		List<Section7> section7DataForLoggedInUser = new ArrayList<Section7>();
		try {

			logger.info("Attempting to retrieve Section data for user - {}", user);
			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("client").is(client)));
			section7DataForLoggedInUser = mongoTemplate.find(query, Section7.class);

		} catch (Exception e) {
			logger.error("Exception while retrieving Section data for user - {}", user);
		}
		return section7DataForLoggedInUser;
	}

	@Override
	public List<Section8> getSection8DataForLoggedInUser(String user, String client) {

		List<Section8> section8DataForLoggedInUser = new ArrayList<Section8>();
		try {

			logger.info("Attempting to retrieve Section data for user - {}", user);
			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("client").is(client)));
			section8DataForLoggedInUser = mongoTemplate.find(query, Section8.class);

		} catch (Exception e) {
			logger.error("Exception while retrieving Section data for user - {}", user);
		}
		return section8DataForLoggedInUser;
	}

	@Override
	public List<Section9> getSection9DataForLoggedInUser(String user, String client) {

		List<Section9> section9DataForLoggedInUser = new ArrayList<Section9>();
		try {

			logger.info("Attempting to retrieve Section data for user - {}", user);
			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("client").is(client)));
			section9DataForLoggedInUser = mongoTemplate.find(query, Section9.class);

		} catch (Exception e) {
			logger.error("Exception while retrieving Section data for user - {}", user);
		}
		return section9DataForLoggedInUser;
	}

	@Override
	public List<Section10> getSection10DataForLoggedInUser(String user, String client) {

		List<Section10> section10DataForLoggedInUser = new ArrayList<Section10>();
		try {

			logger.info("Attempting to retrieve Section data for user - {}", user);
			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("client").is(client)));
			section10DataForLoggedInUser = mongoTemplate.find(query, Section10.class);

		} catch (Exception e) {
			logger.error("Exception while retrieving Section data for user - {}", user);
		}
		return section10DataForLoggedInUser;
	}

	@Override
	public List<Section11> getSection11DataForLoggedInUser(String user, String client) {

		List<Section11> section11DataForLoggedInUser = new ArrayList<Section11>();
		try {

			logger.info("Attempting to retrieve Section data for user - {}", user);
			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("client").is(client)));
			section11DataForLoggedInUser = mongoTemplate.find(query, Section11.class);

		} catch (Exception e) {
			logger.error("Exception while retrieving Section data for user - {}", user);
		}
		return section11DataForLoggedInUser;
	}

	@Override
	public List<Section12> getSection12DataForLoggedInUser(String user, String client) {

		List<Section12> section12DataForLoggedInUser = new ArrayList<Section12>();
		try {

			logger.info("Attempting to retrieve Section data for user - {}", user);
			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("client").is(client)));
			section12DataForLoggedInUser = mongoTemplate.find(query, Section12.class);

		} catch (Exception e) {
			logger.error("Exception while retrieving Section data for user - {}", user);
		}
		return section12DataForLoggedInUser;
	}

	@Override
	public List<Section13> getSection13DataForLoggedInUser(String user, String client) {

		List<Section13> section13DataForLoggedInUser = new ArrayList<Section13>();
		try {

			logger.info("Attempting to retrieve Section data for user - {}", user);
			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("client").is(client)));
			section13DataForLoggedInUser = mongoTemplate.find(query, Section13.class);

		} catch (Exception e) {
			logger.error("Exception while retrieving Section data for user - {}", user);
		}
		return section13DataForLoggedInUser;
	}

	@Override
	public List<Section14> getSection14DataForLoggedInUser(String user, String client) {

		List<Section14> section14DataForLoggedInUser = new ArrayList<Section14>();
		try {

			logger.info("Attempting to retrieve Section data for user - {}", user);
			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("client").is(client)));
			section14DataForLoggedInUser = mongoTemplate.find(query, Section14.class);

		} catch (Exception e) {
			logger.error("Exception while retrieving Section data for user - {}", user);
		}
		return section14DataForLoggedInUser;
	}

	@Override
	public List<Section15> getSection15DataForLoggedInUser(String user, String client) {

		List<Section15> section15DataForLoggedInUser = new ArrayList<Section15>();
		try {

			logger.info("Attempting to retrieve Section data for user - {}", user);
			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("client").is(client)));
			section15DataForLoggedInUser = mongoTemplate.find(query, Section15.class);

		} catch (Exception e) {
			logger.error("Exception while retrieving Section data for user - {}", user);
		}
		return section15DataForLoggedInUser;
	}

	@Override
	public List<Section16> getSection16DataForLoggedInUser(String user, String client) {

		List<Section16> section16DataForLoggedInUser = new ArrayList<Section16>();
		try {

			logger.info("Attempting to retrieve Section data for user - {}", user);
			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("client").is(client)));
			section16DataForLoggedInUser = mongoTemplate.find(query, Section16.class);

		} catch (Exception e) {
			logger.error("Exception while retrieving Section data for user - {}", user);
		}
		return section16DataForLoggedInUser;
	}

	@Override
	public List<Section17> getSection17DataForLoggedInUser(String user, String client) {

		List<Section17> section17DataForLoggedInUser = new ArrayList<Section17>();
		try {

			logger.info("Attempting to retrieve Section data for user - {}", user);
			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("client").is(client)));
			section17DataForLoggedInUser = mongoTemplate.find(query, Section17.class);

		} catch (Exception e) {
			logger.error("Exception while retrieving Section data for user - {}", user);
		}
		return section17DataForLoggedInUser;
	}

	@Override
	public List<Section18> getSection18DataForLoggedInUser(String user, String client) {

		List<Section18> section18DataForLoggedInUser = new ArrayList<Section18>();
		try {

			logger.info("Attempting to retrieve Section data for user - {}", user);
			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("client").is(client)));
			section18DataForLoggedInUser = mongoTemplate.find(query, Section18.class);

		} catch (Exception e) {
			logger.error("Exception while retrieving Section data for user - {}", user);
		}
		return section18DataForLoggedInUser;
	}

	@Override
	public List<Section19> getSection19DataForLoggedInUser(String user, String client) {

		List<Section19> section19DataForLoggedInUser = new ArrayList<Section19>();
		try {

			logger.info("Attempting to retrieve Section data for user - {}", user);
			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("client").is(client)));
			section19DataForLoggedInUser = mongoTemplate.find(query, Section19.class);

		} catch (Exception e) {
			logger.error("Exception while retrieving Section data for user - {}", user);
		}
		return section19DataForLoggedInUser;
	}

	@Override
	public List<Section20> getSection20DataForLoggedInUser(String user, String client) {

		List<Section20> section20DataForLoggedInUser = new ArrayList<Section20>();
		try {

			logger.info("Attempting to retrieve Section data for user - {}", user);
			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("client").is(client)));
			section20DataForLoggedInUser = mongoTemplate.find(query, Section20.class);

		} catch (Exception e) {
			logger.error("Exception while retrieving Section data for user - {}", user);
		}
		return section20DataForLoggedInUser;
	}

	@Override
	public List<Section21> getSection21DataForLoggedInUser(String user, String client) {

		List<Section21> section21DataForLoggedInUser = new ArrayList<Section21>();
		try {

			logger.info("Attempting to retrieve Section data for user - {}", user);
			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("client").is(client)));
			section21DataForLoggedInUser = mongoTemplate.find(query, Section21.class);

		} catch (Exception e) {
			logger.error("Exception while retrieving Section data for user - {}", user);
		}
		return section21DataForLoggedInUser;
	}
}
