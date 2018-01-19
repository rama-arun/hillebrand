package com.hellokoding.auth.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Service;

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
import com.mongodb.MongoException;

@Service
public class KinvaultServiceImpl implements KinvaultService {

	@Autowired
	MongoTemplate mongoTemplate;

	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Override
	public boolean saveSection1Data(Section1 data, String user) {
		boolean inserted = false;
		try {

			if (data.getKey().contains("Select When")) {
				logger.error("Nothing to Update- {} ");
				return inserted;
			} else {

				if (findSection1DataRow(data, user)) {
					Update update = new Update();
					update.set("key", data.getKey());
					update.set("value", data.getValue());
					update.set("client", data.getClient());

					Query query = new Query(Criteria.where("key").is(data.getKey()).andOperator(Criteria.where("value")
							.is(data.getValue()).andOperator(Criteria.where("client").is(data.getClient()))));
					mongoTemplate.updateFirst(query, update, Section1.class);
					logger.info("Found Record - Updated - {} ", data.getKey());
					inserted = true;
				} else {
					mongoTemplate.save(data, "section1");
					logger.info("New Record - Created - {} ", data.getKey());
				}
			}
		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return inserted;
	}

	@Override
	public boolean findSection1DataRow(Section1 data, String user) {
		boolean exists = true;

		String key = data.getKey();
		String value = data.getValue();
		String client = data.getClient();

		try {
			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("key").is(key)
					.andOperator(Criteria.where("value").is(value).andOperator(Criteria.where("client").is(client)))));
			List<Section1> sec1 = mongoTemplate.find(query, Section1.class);

			if (sec1.size() == 0) {
				exists = false;
			}

		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return exists;
	}

	@Override
	public boolean deleteSection1DataRow(Section1Del data, String user) {
		boolean deleted = false;
		try {

			String key = data.getKey();
			String value = data.getValue();
			String client = data.getClient();

			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("key").is(key)
					.andOperator(Criteria.where("value").is(value).andOperator(Criteria.where("client").is(client)))));

			mongoTemplate.remove(query, Section1.class);
			deleted = true;
		} catch (MongoException e) {
			logger.error("Exception while deleting in MongoDB", e.getMessage());
		}
		return deleted;
	}

	@Override
	public boolean saveSection2Data(Section2 data, String user) {
		boolean inserted = false;
		try {

			if (data.getRelationship().equalsIgnoreCase("") && data.getCity().equalsIgnoreCase("")
					&& data.getEmail().equalsIgnoreCase("") && data.getName().equalsIgnoreCase("")
					&& data.getPhone().equalsIgnoreCase("")) {
				logger.error("Nothing to Update- {} ");
				return inserted;
			} else {

				if (findSection2DataRow(data, user)) {
					Update update = new Update();
					update.set("name", data.getName());
					update.set("relationship", data.getRelationship());
					update.set("city", data.getCity());
					update.set("phone", data.getPhone());
					update.set("email", data.getEmail());
					update.set("client", data.getClient());

					Query query = new Query(Criteria.where("name").is(data.getName()).andOperator(Criteria
							.where("relationship").is(data.getRelationship())
							.andOperator(Criteria.where("email").is(data.getEmail())
									.andOperator(Criteria.where("phone").is(data.getPhone())
											.andOperator(Criteria.where("city").is(data.getCity())
													.andOperator(Criteria.where("client").is(data.getClient())))))));
					mongoTemplate.updateFirst(query, update, Section2.class);
					logger.info("Found Record - Updated - {} ", data.getName());
					inserted = true;
				} else {
					mongoTemplate.save(data, "section2");
					logger.info("New Record - Created - {} ", data.getName());
				}
			}
		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return inserted;
	}

	@Override
	public boolean findSection2DataRow(Section2 data, String user) {
		boolean exists = true;

		try {
			Query query = new Query(Criteria.where("name").is(data.getName())
					.andOperator(Criteria.where("relationship").is(data.getRelationship())
							.andOperator(Criteria.where("email").is(data.getEmail())
									.andOperator(Criteria.where("phone").is(data.getPhone())
											.andOperator(Criteria.where("city").is(data.getCity())
													.andOperator(Criteria.where("client").is(data.getClient())))))));
			List<Section2> sec1 = mongoTemplate.find(query, Section2.class);

			if (sec1.size() == 0) {
				exists = false;
			}

		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return exists;
	}

	@Override
	public boolean deleteSection2DataRow(Section2Del data, String user) {
		boolean deleted = false;
		try {

			String name = data.getName();
			String relationship = data.getRelationship();
			String email = data.getEmail();
			String city = data.getCity();
			String phone = data.getPhone();

			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("name").is(name)
					.andOperator(Criteria.where("relationship").is(relationship)
							.andOperator(Criteria.where("city").is(city)
									.andOperator(Criteria.where("email").is(email).andOperator(Criteria.where("phone")
											.is(phone).andOperator(Criteria.where("client").is(data.getClient()))))))));

			mongoTemplate.remove(query, Section2.class);
			deleted = true;
		} catch (MongoException e) {
			logger.error("Exception while deleting in MongoDB", e.getMessage());
		}
		return deleted;
	}

	@Override
	public boolean saveSection3Data(Section3 data, String user) {
		boolean inserted = false;
		try {

			if (data.getRelationship().equalsIgnoreCase("") && data.getCity().equalsIgnoreCase("")
					&& data.getEmail().equalsIgnoreCase("") && data.getName().equalsIgnoreCase("")
					&& data.getPhone().equalsIgnoreCase("")) {
				logger.error("Nothing to Update- {} ");
				return inserted;
			} else {

				if (findSection3DataRow(data, user)) {
					Update update = new Update();
					update.set("name", data.getName());
					update.set("relationship", data.getRelationship());
					update.set("city", data.getCity());
					update.set("phone", data.getPhone());
					update.set("email", data.getEmail());
					update.set("client", data.getClient());

					Query query = new Query(Criteria.where("name").is(data.getName()).andOperator(Criteria
							.where("relationship").is(data.getRelationship())
							.andOperator(Criteria.where("email").is(data.getEmail())
									.andOperator(Criteria.where("phone").is(data.getPhone())
											.andOperator(Criteria.where("city").is(data.getCity())
													.andOperator(Criteria.where("client").is(data.getClient())))))));
					mongoTemplate.updateFirst(query, update, Section3.class);
					logger.info("Found Record - Updated - {} ", data.getName());
					inserted = true;
				} else {
					mongoTemplate.save(data, "section3");
					logger.info("New Record - Created - {} ", data.getName());
				}
			}
		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return inserted;
	}

	@Override
	public boolean findSection3DataRow(Section3 data, String user) {
		boolean exists = true;

		try {
			Query query = new Query(Criteria.where("name").is(data.getName())
					.andOperator(Criteria.where("relationship").is(data.getRelationship())
							.andOperator(Criteria.where("email").is(data.getEmail())
									.andOperator(Criteria.where("phone").is(data.getPhone())
											.andOperator(Criteria.where("city").is(data.getCity())
													.andOperator(Criteria.where("client").is(data.getClient())))))));
			List<Section3> sec1 = mongoTemplate.find(query, Section3.class);

			if (sec1.size() == 0) {
				exists = false;
			}

		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return exists;
	}

	@Override
	public boolean deleteSection3DataRow(Section3Del data, String user) {
		boolean deleted = false;
		try {

			String name = data.getName();
			String relationship = data.getRelationship();
			String email = data.getEmail();
			String city = data.getCity();
			String phone = data.getPhone();

			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("name").is(name)
					.andOperator(Criteria.where("relationship").is(relationship)
							.andOperator(Criteria.where("city").is(city)
									.andOperator(Criteria.where("email").is(email).andOperator(Criteria.where("phone")
											.is(phone).andOperator(Criteria.where("client").is(data.getClient()))))))));

			mongoTemplate.remove(query, Section3.class);
			deleted = true;
		} catch (MongoException e) {
			logger.error("Exception while deleting in MongoDB", e.getMessage());
		}
		return deleted;
	}

	@Override
	public boolean saveSection4Data(Section4 data, String user) {
		boolean inserted = false;
		try {

			if (data.getRelationship().equalsIgnoreCase("") && data.getCity().equalsIgnoreCase("")
					&& data.getEmail().equalsIgnoreCase("") && data.getName().equalsIgnoreCase("")
					&& data.getPhone().equalsIgnoreCase("")) {
				logger.error("Nothing to Update- {} ");
				return inserted;
			} else {

				if (findSection4DataRow(data, user)) {
					Update update = new Update();
					update.set("name", data.getName());
					update.set("relationship", data.getRelationship());
					update.set("city", data.getCity());
					update.set("phone", data.getPhone());
					update.set("email", data.getEmail());
					update.set("client", data.getClient());

					Query query = new Query(Criteria.where("name").is(data.getName()).andOperator(Criteria
							.where("relationship").is(data.getRelationship())
							.andOperator(Criteria.where("email").is(data.getEmail())
									.andOperator(Criteria.where("phone").is(data.getPhone())
											.andOperator(Criteria.where("city").is(data.getCity())
													.andOperator(Criteria.where("client").is(data.getClient())))))));
					mongoTemplate.updateFirst(query, update, Section4.class);
					logger.info("Found Record - Updated - {} ", data.getName());
					inserted = true;
				} else {
					mongoTemplate.save(data, "section4");
					logger.info("New Record - Created - {} ", data.getName());
				}
			}
		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return inserted;
	}

	@Override
	public boolean findSection4DataRow(Section4 data, String user) {
		boolean exists = true;

		try {
			Query query = new Query(Criteria.where("name").is(data.getName())
					.andOperator(Criteria.where("relationship").is(data.getRelationship())
							.andOperator(Criteria.where("email").is(data.getEmail())
									.andOperator(Criteria.where("phone").is(data.getPhone())
											.andOperator(Criteria.where("city").is(data.getCity())
													.andOperator(Criteria.where("client").is(data.getClient())))))));
			List<Section4> sec1 = mongoTemplate.find(query, Section4.class);

			if (sec1.size() == 0) {
				exists = false;
			}

		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return exists;
	}

	@Override
	public boolean deleteSection4DataRow(Section4Del data, String user) {
		boolean deleted = false;
		try {

			String name = data.getName();
			String relationship = data.getRelationship();
			String email = data.getEmail();
			String city = data.getCity();
			String phone = data.getPhone();

			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("name").is(name)
					.andOperator(Criteria.where("relationship").is(relationship)
							.andOperator(Criteria.where("city").is(city)
									.andOperator(Criteria.where("email").is(email).andOperator(Criteria.where("phone")
											.is(phone).andOperator(Criteria.where("client").is(data.getClient()))))))));

			mongoTemplate.remove(query, Section4.class);
			deleted = true;
		} catch (MongoException e) {
			logger.error("Exception while deleting in MongoDB", e.getMessage());
		}
		return deleted;
	}

	@Override
	public boolean saveSection5Data(Section5 data, String user) {
		boolean inserted = false;
		try {

			if (data.getRelationship().equalsIgnoreCase("") && data.getCity().equalsIgnoreCase("")
					&& data.getEmail().equalsIgnoreCase("") && data.getName().equalsIgnoreCase("")
					&& data.getPhone().equalsIgnoreCase("")) {
				logger.error("Nothing to Update- {} ");
				return inserted;
			} else {

				if (findSection5DataRow(data, user)) {
					Update update = new Update();
					update.set("name", data.getName());
					update.set("relationship", data.getRelationship());
					update.set("city", data.getCity());
					update.set("phone", data.getPhone());
					update.set("email", data.getEmail());
					update.set("client", data.getClient());

					Query query = new Query(Criteria.where("name").is(data.getName()).andOperator(Criteria
							.where("relationship").is(data.getRelationship())
							.andOperator(Criteria.where("email").is(data.getEmail())
									.andOperator(Criteria.where("phone").is(data.getPhone())
											.andOperator(Criteria.where("city").is(data.getCity())
													.andOperator(Criteria.where("client").is(data.getClient())))))));
					mongoTemplate.updateFirst(query, update, Section5.class);
					logger.info("Found Record - Updated - {} ", data.getName());
					inserted = true;
				} else {
					mongoTemplate.save(data, "section5");
					logger.info("New Record - Created - {} ", data.getName());
				}
			}
		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return inserted;
	}

	@Override
	public boolean findSection5DataRow(Section5 data, String user) {
		boolean exists = true;

		try {
			Query query = new Query(Criteria.where("name").is(data.getName())
					.andOperator(Criteria.where("relationship").is(data.getRelationship())
							.andOperator(Criteria.where("email").is(data.getEmail())
									.andOperator(Criteria.where("phone").is(data.getPhone())
											.andOperator(Criteria.where("city").is(data.getCity())
													.andOperator(Criteria.where("client").is(data.getClient())))))));
			List<Section5> sec1 = mongoTemplate.find(query, Section5.class);

			if (sec1.size() == 0) {
				exists = false;
			}

		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return exists;
	}

	@Override
	public boolean deleteSection5DataRow(Section5Del data, String user) {
		boolean deleted = false;
		try {

			String name = data.getName();
			String relationship = data.getRelationship();
			String email = data.getEmail();
			String city = data.getCity();
			String phone = data.getPhone();

			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("name").is(name)
					.andOperator(Criteria.where("relationship").is(relationship)
							.andOperator(Criteria.where("city").is(city)
									.andOperator(Criteria.where("email").is(email).andOperator(Criteria.where("phone")
											.is(phone).andOperator(Criteria.where("client").is(data.getClient()))))))));

			mongoTemplate.remove(query, Section5.class);
			deleted = true;
		} catch (MongoException e) {
			logger.error("Exception while deleting in MongoDB", e.getMessage());
		}
		return deleted;
	}

	@Override
	public boolean saveSection6Data(Section6 data, String user) {
		boolean inserted = false;
		try {

			if (data.getRelationship().equalsIgnoreCase("") && data.getCity().equalsIgnoreCase("")
					&& data.getEmail().equalsIgnoreCase("") && data.getName().equalsIgnoreCase("")
					&& data.getPhone().equalsIgnoreCase("")) {
				logger.error("Nothing to Update- {} ");
				return inserted;
			} else {

				if (findSection6DataRow(data, user)) {
					Update update = new Update();
					update.set("name", data.getName());
					update.set("relationship", data.getRelationship());
					update.set("city", data.getCity());
					update.set("phone", data.getPhone());
					update.set("email", data.getEmail());
					update.set("client", data.getClient());

					Query query = new Query(Criteria.where("name").is(data.getName()).andOperator(Criteria
							.where("relationship").is(data.getRelationship())
							.andOperator(Criteria.where("email").is(data.getEmail())
									.andOperator(Criteria.where("phone").is(data.getPhone())
											.andOperator(Criteria.where("city").is(data.getCity())
													.andOperator(Criteria.where("client").is(data.getClient())))))));
					mongoTemplate.updateFirst(query, update, Section6.class);
					logger.info("Found Record - Updated - {} ", data.getName());
					inserted = true;
				} else {
					mongoTemplate.save(data, "section6");
					logger.info("New Record - Created - {} ", data.getName());
				}
			}
		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return inserted;
	}

	@Override
	public boolean findSection6DataRow(Section6 data, String user) {
		boolean exists = true;

		try {
			Query query = new Query(Criteria.where("name").is(data.getName())
					.andOperator(Criteria.where("relationship").is(data.getRelationship())
							.andOperator(Criteria.where("email").is(data.getEmail())
									.andOperator(Criteria.where("phone").is(data.getPhone())
											.andOperator(Criteria.where("city").is(data.getCity())
													.andOperator(Criteria.where("client").is(data.getClient())))))));
			List<Section6> sec1 = mongoTemplate.find(query, Section6.class);

			if (sec1.size() == 0) {
				exists = false;
			}

		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return exists;
	}

	@Override
	public boolean deleteSection6DataRow(Section6Del data, String user) {
		boolean deleted = false;
		try {

			String name = data.getName();
			String relationship = data.getRelationship();
			String email = data.getEmail();
			String city = data.getCity();
			String phone = data.getPhone();

			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("name").is(name)
					.andOperator(Criteria.where("relationship").is(relationship)
							.andOperator(Criteria.where("city").is(city)
									.andOperator(Criteria.where("email").is(email).andOperator(Criteria.where("phone")
											.is(phone).andOperator(Criteria.where("client").is(data.getClient()))))))));

			mongoTemplate.remove(query, Section6.class);
			deleted = true;
		} catch (MongoException e) {
			logger.error("Exception while deleting in MongoDB", e.getMessage());
		}
		return deleted;
	}

	@Override
	public boolean saveSection7Data(Section7 data, String user) {
		boolean inserted = false;
		try {

			if (data.getAccount().equalsIgnoreCase("") && data.getAmount().equalsIgnoreCase("")
					&& data.getExpense().equalsIgnoreCase("")) {
				logger.error("Nothing to Update- {} ");
				return inserted;
			} else {

				if (findSection7DataRow(data, user)) {
					Update update = new Update();
					update.set("account", data.getAccount());
					update.set("amount", data.getAmount());
					update.set("expense", data.getExpense());
					update.set("client", data.getClient());

					Query query = new Query(Criteria.where("account").is(data.getAccount())
							.andOperator(Criteria.where("amount").is(data.getAmount())
									.andOperator(Criteria.where("expense").is(data.getExpense())
											.andOperator(Criteria.where("client").is(data.getClient())))));
					mongoTemplate.updateFirst(query, update, Section6.class);
					logger.info("Found Record - Updated - {} ", data.getAccount());
					inserted = true;
				} else {
					mongoTemplate.save(data, "section7");
					logger.info("New Record - Created - {} ", data.getAccount());
				}
			}
		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return inserted;
	}

	@Override
	public boolean findSection7DataRow(Section7 data, String user) {
		boolean exists = true;

		try {
			Query query = new Query(Criteria.where("account").is(data.getAccount())
					.andOperator(Criteria.where("amount").is(data.getAmount()).andOperator(Criteria.where("expense")
							.is(data.getExpense()).andOperator(Criteria.where("client").is(data.getClient())))));
			List<Section7> sec1 = mongoTemplate.find(query, Section7.class);

			if (sec1.size() == 0) {
				exists = false;
			}

		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return exists;
	}

	@Override
	public boolean deleteSection7DataRow(Section7Del data, String user) {
		boolean deleted = false;
		try {

			String account = data.getAccount();
			String amount = data.getAmount();
			String expense = data.getExpense();

			Query query = new Query(Criteria.where("user").is(user)
					.andOperator(Criteria.where("account").is(account)
							.andOperator(Criteria.where("amount").is(amount).andOperator(Criteria.where("expense")
									.is(expense).andOperator(Criteria.where("client").is(data.getClient()))))));

			mongoTemplate.remove(query, Section7.class);
			deleted = true;
		} catch (MongoException e) {
			logger.error("Exception while deleting in MongoDB", e.getMessage());
		}
		return deleted;
	}

	@Override
	public boolean saveSection8Data(Section8 data, String user) {
		boolean inserted = false;
		try {

			if (data.getAccountnum().equalsIgnoreCase("") && data.getBalance().equalsIgnoreCase("")
					&& data.getBank().equalsIgnoreCase("")) {
				logger.error("Nothing to Update- {} ");
				return inserted;
			} else {

				if (findSection8DataRow(data, user)) {
					Update update = new Update();
					update.set("accountnum", data.getAccountnum());
					update.set("balance", data.getBalance());
					update.set("bank", data.getBank());
					update.set("client", data.getClient());

					Query query = new Query(Criteria.where("accountnum").is(data.getAccountnum()).andOperator(
							Criteria.where("balance").is(data.getBalance()).andOperator(Criteria.where("bank")
									.is(data.getBank()).andOperator(Criteria.where("client").is(data.getClient())))));
					mongoTemplate.updateFirst(query, update, Section8.class);
					logger.info("Found Record - Updated - {} ", data.getAccountnum());
					inserted = true;
				} else {
					mongoTemplate.save(data, "section8");
					logger.info("New Record - Created - {} ", data.getAccountnum());
				}
			}
		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return inserted;
	}

	@Override
	public boolean findSection8DataRow(Section8 data, String user) {
		boolean exists = true;

		try {
			Query query = new Query(Criteria.where("accountnum").is(data.getAccountnum())
					.andOperator(Criteria.where("balance").is(data.getBalance()).andOperator(Criteria.where("bank")
							.is(data.getBank()).andOperator(Criteria.where("client").is(data.getClient())))));
			List<Section8> sec1 = mongoTemplate.find(query, Section8.class);

			if (sec1.size() == 0) {
				exists = false;
			}

		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return exists;
	}

	@Override
	public boolean findSection9DataRow(Section9 data, String user) {
		boolean exists = true;

		try {
			Query query = new Query(Criteria.where("bpname").is(data.getBpname())
					.andOperator(Criteria.where("coverage").is(data.getCoverage())
							.andOperator(Criteria.where("death").is(data.getDeath())
									.andOperator(Criteria.where("issuedate").is(data.getIssuedate())
											.andOperator(Criteria.where("pname").is(data.getPname())
													.andOperator(Criteria.where("client").is(data.getClient())))))));
			List<Section9> sec1 = mongoTemplate.find(query, Section9.class);

			if (sec1.size() == 0) {
				exists = false;
			}

		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return exists;
	}

	@Override
	public boolean saveSection9Data(Section9 data, String user) {
		boolean inserted = false;
		try {

			if (data.getBpname().equalsIgnoreCase("") && data.getCoverage().equalsIgnoreCase("")
					&& data.getDeath().equalsIgnoreCase("") && data.getIssuedate().equalsIgnoreCase("")
					&& data.getPname().equalsIgnoreCase("")) {
				logger.error("Nothing to Update- {} ");
				return inserted;
			} else {

				if (findSection9DataRow(data, user)) {
					Update update = new Update();
					update.set("bpname", data.getBpname());
					update.set("coverage", data.getCoverage());
					update.set("death", data.getDeath());
					update.set("issuedate", data.getIssuedate());
					update.set("pname", data.getPname());
					update.set("client", data.getClient());

					Query query = new Query(Criteria.where("bpname").is(data.getBpname()).andOperator(Criteria
							.where("coverage").is(data.getCoverage())
							.andOperator(Criteria.where("death").is(data.getDeath())
									.andOperator(Criteria.where("issuedate").is(data.getIssuedate())
											.andOperator(Criteria.where("pname").is(data.getPname())
													.andOperator(Criteria.where("client").is(data.getClient())))))));
					mongoTemplate.updateFirst(query, update, Section9.class);
					logger.info("Found Record - Updated - {} ", data.getPname());
					inserted = true;
				} else {
					mongoTemplate.save(data, "section9");
					logger.info("New Record - Created - {} ", data.getPname());
				}
			}
		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return inserted;
	}

	@Override
	public boolean deleteSection8DataRow(Section8Del data, String user) {
		boolean deleted = false;
		try {

			String accountnum = data.getAccountnum();
			String balance = data.getBalance();
			String bank = data.getBank();

			Query query = new Query(Criteria.where("user").is(user)
					.andOperator(Criteria.where("accountnum").is(accountnum)
							.andOperator(Criteria.where("balance").is(balance).andOperator(Criteria.where("bank")
									.is(bank).andOperator(Criteria.where("client").is(data.getClient()))))));

			mongoTemplate.remove(query, Section8.class);
			deleted = true;
		} catch (MongoException e) {
			logger.error("Exception while deleting in MongoDB", e.getMessage());
		}
		return deleted;
	}

	@Override
	public boolean saveSection10Data(Section10 data, String user) {
		boolean inserted = false;
		try {

			if (data.getBpname().equalsIgnoreCase("") && data.getCoverage().equalsIgnoreCase("")
					&& data.getDeath().equalsIgnoreCase("") && data.getIssuedate().equalsIgnoreCase("")
					&& data.getPname().equalsIgnoreCase("")) {
				logger.error("Nothing to Update- {} ");
				return inserted;
			} else {

				if (findSection10DataRow(data, user)) {
					Update update = new Update();
					update.set("bpname", data.getBpname());
					update.set("coverage", data.getCoverage());
					update.set("death", data.getDeath());
					update.set("issuedate", data.getIssuedate());
					update.set("pname", data.getPname());
					update.set("client", data.getClient());

					Query query = new Query(Criteria.where("bpname").is(data.getBpname()).andOperator(Criteria
							.where("coverage").is(data.getCoverage())
							.andOperator(Criteria.where("death").is(data.getDeath())
									.andOperator(Criteria.where("issuedate").is(data.getIssuedate())
											.andOperator(Criteria.where("pname").is(data.getPname())
													.andOperator(Criteria.where("client").is(data.getClient())))))));
					mongoTemplate.updateFirst(query, update, Section10.class);
					logger.info("Found Record - Updated - {} ", data.getPname());
					inserted = true;
				} else {
					mongoTemplate.save(data, "section10");
					logger.info("New Record - Created - {} ", data.getPname());
				}
			}
		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return inserted;
	}

	@Override
	public boolean findSection10DataRow(Section10 data, String user) {
		boolean exists = true;

		try {
			Query query = new Query(Criteria.where("bpname").is(data.getBpname())
					.andOperator(Criteria.where("coverage").is(data.getCoverage())
							.andOperator(Criteria.where("death").is(data.getDeath())
									.andOperator(Criteria.where("issuedate").is(data.getIssuedate())
											.andOperator(Criteria.where("pname").is(data.getPname())
													.andOperator(Criteria.where("client").is(data.getClient())))))));
			List<Section10> sec1 = mongoTemplate.find(query, Section10.class);

			if (sec1.size() == 0) {
				exists = false;
			}

		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return exists;
	}

	@Override
	public boolean deleteSection9DataRow(Section9Del data, String user) {
		boolean deleted = false;
		try {

			String bpname = data.getBpname();
			String coverage = data.getCoverage();
			String death = data.getDeath();
			String issueDate = data.getIssuedate();
			String pname = data.getPname();

			Query query = new Query(Criteria.where("bpname").is(bpname)
					.andOperator(Criteria.where("coverage").is(coverage).andOperator(Criteria.where("death").is(death)
							.andOperator(Criteria.where("issuedate").is(issueDate)
									.andOperator(Criteria.where("pname").is(pname).andOperator(Criteria.where("user")
											.is(user).andOperator(Criteria.where("client").is(data.getClient()))))))));

			mongoTemplate.remove(query, Section9.class);
			deleted = true;
		} catch (MongoException e) {
			logger.error("Exception while deleting in MongoDB", e.getMessage());
		}
		return deleted;
	}

	@Override
	public boolean saveSection11Data(Section11 data, String user) {
		boolean inserted = false;
		try {

			if (data.getDeathTerms().equalsIgnoreCase("") && data.getPensionSource().equalsIgnoreCase("")
					&& data.getPensionTerms().equalsIgnoreCase("") && data.getTermsOfPeriod().equalsIgnoreCase("")) {
				logger.error("Nothing to Update- {} ");
				return inserted;
			} else {

				if (findSection11DataRow(data, user)) {
					Update update = new Update();
					update.set("deathTerms", data.getDeathTerms());
					update.set("pensionSource", data.getPensionSource());
					update.set("pensionTerms", data.getPensionTerms());
					update.set("termsOfPeriod", data.getTermsOfPeriod());
					update.set("client", data.getClient());

					Query query = new Query(Criteria.where("deathTerms").is(data.getDeathTerms())
							.andOperator(Criteria.where("pensionSource").is(data.getPensionSource())
									.andOperator(Criteria.where("pensionTerms").is(data.getPensionTerms())
											.andOperator(Criteria.where("termsOfPeriod").is(data.getTermsOfPeriod())
													.andOperator(Criteria.where("client").is(data.getClient()))))));
					mongoTemplate.updateFirst(query, update, Section11.class);
					logger.info("Found Record - Updated - {} ", data.getPensionSource());
					inserted = true;
				} else {
					mongoTemplate.save(data, "section11");
					logger.info("New Record - Created - {} ", data.getPensionSource());
				}
			}
		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return inserted;
	}

	@Override
	public boolean findSection11DataRow(Section11 data, String user) {
		boolean exists = true;

		try {
			Query query = new Query(Criteria.where("deathTerms").is(data.getDeathTerms())
					.andOperator(Criteria.where("pensionSource").is(data.getPensionSource())
							.andOperator(Criteria.where("pensionTerms").is(data.getPensionTerms())
									.andOperator(Criteria.where("termsOfPeriod").is(data.getTermsOfPeriod())
											.andOperator(Criteria.where("client").is(data.getClient()))))));
			List<Section11> sec1 = mongoTemplate.find(query, Section11.class);

			if (sec1.size() == 0) {
				exists = false;
			}

		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return exists;
	}

	@Override
	public boolean deleteSection10DataRow(Section10Del data, String user) {
		boolean deleted = false;
		try {

			String bpname = data.getBpname();
			String coverage = data.getCoverage();
			String death = data.getDeath();
			String issueDate = data.getIssuedate();
			String pname = data.getPname();

			Query query = new Query(Criteria.where("bpname").is(bpname)
					.andOperator(Criteria.where("coverage").is(coverage).andOperator(Criteria.where("death").is(death)
							.andOperator(Criteria.where("issuedate").is(issueDate)
									.andOperator(Criteria.where("pname").is(pname).andOperator(Criteria.where("user")
											.is(user).andOperator(Criteria.where("client").is(data.getClient()))))))));

			mongoTemplate.remove(query, Section10.class);
			deleted = true;
		} catch (MongoException e) {
			logger.error("Exception while deleting in MongoDB", e.getMessage());
		}
		return deleted;
	}

	@Override
	public boolean deleteSection11DataRow(Section11Del data, String user) {
		boolean deleted = false;
		try {

			String death = data.getDeathTerms();
			String pension = data.getPensionSource();
			String pensTerms = data.getPensionTerms();
			String period = data.getTermsOfPeriod();

			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("deathTerms").is(death)
					.andOperator(Criteria.where("pensionSource").is(pension).andOperator(
							Criteria.where("pensionTerms").is(pensTerms).andOperator(Criteria.where("termsOfPeriod")
									.is(period).andOperator(Criteria.where("client").is(data.getClient())))))));

			mongoTemplate.remove(query, Section11.class);
			deleted = true;
		} catch (MongoException e) {
			logger.error("Exception while deleting in MongoDB", e.getMessage());
		}
		return deleted;
	}

	@Override
	public boolean saveSection12Data(Section12 data, String user) {
		boolean inserted = false;
		try {

			if (data.getDesc().equalsIgnoreCase("") && data.getLocation().equalsIgnoreCase("")
					&& data.getNotes().equalsIgnoreCase("")) {
				logger.error("Nothing to Update- {} ");
				return inserted;
			} else {

				if (findSection12DataRow(data, user)) {
					Update update = new Update();
					update.set("desc", data.getDesc());
					update.set("location", data.getLocation());
					update.set("notes", data.getNotes());
					update.set("client", data.getClient());

					Query query = new Query(Criteria.where("desc").is(data.getDesc()).andOperator(
							Criteria.where("location").is(data.getLocation()).andOperator(Criteria.where("notes")
									.is(data.getNotes()).andOperator(Criteria.where("client").is(data.getClient())))));
					mongoTemplate.updateFirst(query, update, Section12.class);
					logger.info("Found Record - Updated - {} ", data.getLocation());
					inserted = true;
				} else {
					mongoTemplate.save(data, "section12");
					logger.info("New Record - Created - {} ", data.getLocation());
				}
			}
		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return inserted;
	}

	@Override
	public boolean findSection12DataRow(Section12 data, String user) {
		boolean exists = true;

		try {
			Query query = new Query(Criteria.where("desc").is(data.getDesc())
					.andOperator(Criteria.where("location").is(data.getLocation()).andOperator(Criteria.where("notes")
							.is(data.getNotes()).andOperator(Criteria.where("client").is(data.getClient())))));
			List<Section12> sec1 = mongoTemplate.find(query, Section12.class);

			if (sec1.size() == 0) {
				exists = false;
			}

		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return exists;
	}

	@Override
	public boolean deleteSection12DataRow(Section12Del data, String user) {
		boolean deleted = false;
		try {

			String desc = data.getDesc();
			String location = data.getLocation();
			String notes = data.getNotes();

			Query query = new Query(Criteria.where("desc").is(desc)
					.andOperator(Criteria.where("notes").is(notes)
							.andOperator(Criteria.where("location").is(location).andOperator(Criteria.where("user")
									.is(user).andOperator(Criteria.where("client").is(data.getClient()))))));

			mongoTemplate.remove(query, Section12.class);
			deleted = true;
		} catch (MongoException e) {
			logger.error("Exception while deleting in MongoDB", e.getMessage());
		}
		return deleted;
	}

	@Override
	public boolean saveSection13Data(Section13 data, String user) {
		boolean inserted = false;
		try {

			if (data.getCname().equalsIgnoreCase("") && data.getContactp().equalsIgnoreCase("")
					&& data.getPolicy().equalsIgnoreCase("") && data.getTcoverage().equalsIgnoreCase("")) {
				logger.error("Nothing to Update- {} ");
				return inserted;
			} else {

				if (findSection13DataRow(data, user)) {
					Update update = new Update();
					update.set("cname", data.getCname());
					update.set("contactp", data.getContactp());
					update.set("policy", data.getPolicy());
					update.set("tcovergae", data.getTcoverage());
					update.set("client", data.getClient());

					Query query = new Query(Criteria.where("cname").is(data.getCname())
							.andOperator(Criteria.where("contactp").is(data.getContactp())
									.andOperator(Criteria.where("policy").is(data.getPolicy())
											.andOperator(Criteria.where("tcoverage").is(data.getTcoverage())
													.andOperator(Criteria.where("client").is(data.getClient()))))));
					mongoTemplate.updateFirst(query, update, Section13.class);
					logger.info("Found Record - Updated - {} ", data.getPolicy());
					inserted = true;
				} else {
					mongoTemplate.save(data, "section13");
					logger.info("New Record - Created - {} ", data.getPolicy());
				}
			}
		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return inserted;
	}

	@Override
	public boolean findSection13DataRow(Section13 data, String user) {
		boolean exists = true;

		try {
			Query query = new Query(Criteria.where("cname").is(data.getCname())
					.andOperator(Criteria.where("contactp").is(data.getContactp())
							.andOperator(Criteria.where("policy").is(data.getPolicy())
									.andOperator(Criteria.where("tcoverage").is(data.getTcoverage())
											.andOperator(Criteria.where("client").is(data.getClient()))))));
			List<Section13> sec1 = mongoTemplate.find(query, Section13.class);

			if (sec1.size() == 0) {
				exists = false;
			}

		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return exists;
	}

	@Override
	public boolean deleteSection13DataRow(Section13Del data, String user) {
		boolean deleted = false;
		try {

			String cname = data.getCname();
			String contactp = data.getContactp();
			String policy = data.getPolicy();
			String tcoverage = data.getTcoverage();

			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("cname").is(cname)
					.andOperator(Criteria.where("contactp").is(contactp)
							.andOperator(Criteria.where("policy").is(policy).andOperator(Criteria.where("tcoverage")
									.is(tcoverage).andOperator(Criteria.where("client").is(data.getClient())))))));

			mongoTemplate.remove(query, Section13.class);
			deleted = true;
		} catch (MongoException e) {
			logger.error("Exception while deleting in MongoDB", e.getMessage());
		}
		return deleted;
	}

	@Override
	public boolean saveSection14Data(Section14 data, String user) {
		boolean inserted = false;
		try {

			if (data.getBenefits().equalsIgnoreCase("") && data.getMax().equalsIgnoreCase("")
					&& data.getSurvivor().equalsIgnoreCase("") && data.getTotal().equalsIgnoreCase("")) {
				logger.error("Nothing to Update- {} ");
				return inserted;
			} else {

				if (findSection14DataRow(data, user)) {
					Update update = new Update();
					update.set("benefits", data.getBenefits());
					update.set("max", data.getMax());
					update.set("survivor", data.getSurvivor());
					update.set("total", data.getTotal());
					update.set("client", data.getClient());

					Query query = new Query(Criteria.where("benefits").is(data.getBenefits())
							.andOperator(Criteria.where("max").is(data.getMax())
									.andOperator(Criteria.where("survivor").is(data.getSurvivor())
											.andOperator(Criteria.where("total").is(data.getTotal())
													.andOperator(Criteria.where("client").is(data.getClient()))))));
					mongoTemplate.updateFirst(query, update, Section14.class);
					logger.info("Found Record - Updated - {} ", data.getBenefits());
					inserted = true;
				} else {
					mongoTemplate.save(data, "section14");
					logger.info("New Record - Created - {} ", data.getBenefits());
				}
			}
		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return inserted;
	}

	@Override
	public boolean findSection14DataRow(Section14 data, String user) {
		boolean exists = true;

		try {
			Query query = new Query(Criteria.where("benefits").is(data.getBenefits())
					.andOperator(Criteria.where("max").is(data.getMax()).andOperator(
							Criteria.where("survivor").is(data.getSurvivor()).andOperator(Criteria.where("total")
									.is(data.getTotal()).andOperator(Criteria.where("client").is(data.getClient()))))));
			List<Section14> sec1 = mongoTemplate.find(query, Section14.class);

			if (sec1.size() == 0) {
				exists = false;
			}

		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return exists;
	}

	@Override
	public boolean deleteSection14DataRow(Section14Del data, String user) {
		boolean deleted = false;
		try {

			String benefits = data.getBenefits();
			String max = data.getMax();
			String survivor = data.getSurvivor();
			String total = data.getTotal();

			Query query = new Query(Criteria.where("user").is(user)
					.andOperator(Criteria.where("benefits").is(benefits)
							.andOperator(Criteria.where("max").is(max).andOperator(
									Criteria.where("survivor").is(survivor).andOperator(Criteria.where("total")
											.is(total).andOperator(Criteria.where("client").is(data.getClient())))))));

			mongoTemplate.remove(query, Section14.class);
			deleted = true;
		} catch (MongoException e) {
			logger.error("Exception while deleting in MongoDB", e.getMessage());
		}
		return deleted;
	}

	@Override
	public boolean saveSection15Data(Section15 data, String user) {
		boolean inserted = false;
		try {

			if (data.getBenefits().equalsIgnoreCase("") && data.getMax().equalsIgnoreCase("")
					&& data.getSurvivor().equalsIgnoreCase("") && data.getTotal().equalsIgnoreCase("")) {
				logger.error("Nothing to Update- {} ");
				return inserted;
			} else {

				if (findSection15DataRow(data, user)) {
					Update update = new Update();
					update.set("benefits", data.getBenefits());
					update.set("max", data.getMax());
					update.set("survivor", data.getSurvivor());
					update.set("total", data.getTotal());
					update.set("client", data.getClient());

					Query query = new Query(Criteria.where("benefits").is(data.getBenefits())
							.andOperator(Criteria.where("max").is(data.getMax())
									.andOperator(Criteria.where("survivor").is(data.getSurvivor())
											.andOperator(Criteria.where("total").is(data.getTotal())
													.andOperator(Criteria.where("client").is(data.getClient()))))));
					mongoTemplate.updateFirst(query, update, Section15.class);
					logger.info("Found Record - Updated - {} ", data.getBenefits());
					inserted = true;
				} else {
					mongoTemplate.save(data, "section15");
					logger.info("New Record - Created - {} ", data.getBenefits());
				}
			}
		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return inserted;
	}

	@Override
	public boolean findSection15DataRow(Section15 data, String user) {
		boolean exists = true;

		try {
			Query query = new Query(Criteria.where("benefits").is(data.getBenefits())
					.andOperator(Criteria.where("max").is(data.getMax()).andOperator(
							Criteria.where("survivor").is(data.getSurvivor()).andOperator(Criteria.where("total")
									.is(data.getTotal()).andOperator(Criteria.where("client").is(data.getClient()))))));
			List<Section15> sec1 = mongoTemplate.find(query, Section15.class);

			if (sec1.size() == 0) {
				exists = false;
			}

		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return exists;
	}

	@Override
	public boolean deleteSection15DataRow(Section15Del data, String user) {
		boolean deleted = false;
		try {

			String benefits = data.getBenefits();
			String max = data.getMax();
			String survivor = data.getSurvivor();
			String total = data.getTotal();

			Query query = new Query(Criteria.where("user").is(user)
					.andOperator(Criteria.where("benefits").is(benefits)
							.andOperator(Criteria.where("max").is(max).andOperator(
									Criteria.where("survivor").is(survivor).andOperator(Criteria.where("total")
											.is(total).andOperator(Criteria.where("client").is(data.getClient())))))));

			mongoTemplate.remove(query, Section15.class);
			deleted = true;
		} catch (MongoException e) {
			logger.error("Exception while deleting in MongoDB", e.getMessage());
		}
		return deleted;
	}

	@Override
	public boolean saveSection16Data(Section16 data, String user) {
		boolean inserted = false;
		try {

			if (data.getAcctname().equalsIgnoreCase("") && data.getAccttype().equalsIgnoreCase("")
					&& data.getIpy().equalsIgnoreCase("") && data.getTotal().equalsIgnoreCase("")) {
				logger.error("Nothing to Update- {} ");
				return inserted;
			} else {

				if (findSection16DataRow(data, user)) {
					Update update = new Update();
					update.set("accountname", data.getAcctname());
					update.set("accttype", data.getAccttype());
					update.set("ipy", data.getIpy());
					update.set("total", data.getTotal());
					update.set("client", data.getClient());

					Query query = new Query(Criteria.where("accountname").is(data.getAcctname())
							.andOperator(Criteria.where("accttype").is(data.getAccttype())
									.andOperator(Criteria.where("ipy").is(data.getIpy())
											.andOperator(Criteria.where("total").is(data.getTotal())
													.andOperator(Criteria.where("client").is(data.getClient()))))));
					mongoTemplate.updateFirst(query, update, Section16.class);
					logger.info("Found Record - Updated - {} ", data.getAcctname());
					inserted = true;
				} else {
					mongoTemplate.save(data, "section16");
					logger.info("New Record - Created - {} ", data.getAcctname());
				}
			}
		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return inserted;
	}

	@Override
	public boolean findSection16DataRow(Section16 data, String user) {
		boolean exists = true;

		try {
			Query query = new Query(Criteria.where("accountname").is(data.getAcctname())
					.andOperator(Criteria.where("accttype").is(data.getAccttype())
							.andOperator(Criteria.where("ipy").is(data.getIpy()).andOperator(Criteria.where("total")
									.is(data.getTotal()).andOperator(Criteria.where("client").is(data.getClient()))))));
			List<Section16> sec1 = mongoTemplate.find(query, Section16.class);

			if (sec1.size() == 0) {
				exists = false;
			}

		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return exists;
	}

	@Override
	public boolean deleteSection16DataRow(Section16Del data, String user) {
		boolean deleted = false;
		try {

			String accountName = data.getAcctname();
			String accountType = data.getAccttype();
			String ipy = data.getIpy();
			String total = data.getTotal();

			Query query = new Query(Criteria.where("user").is(user)
					.andOperator(Criteria.where("accountName").is(accountName)
							.andOperator(Criteria.where("accountType").is(accountType)
									.andOperator(Criteria.where("ipy").is(ipy).andOperator(Criteria.where("total")
											.is(total).andOperator(Criteria.where("client").is(data.getClient())))))));

			mongoTemplate.remove(query, Section16.class);
			deleted = true;
		} catch (MongoException e) {
			logger.error("Exception while deleting in MongoDB", e.getMessage());
		}
		return deleted;
	}

	@Override
	public boolean saveSection17Data(Section17 data, String user) {
		boolean inserted = false;
		try {

			if (data.getAcctname().equalsIgnoreCase("") && data.getAccttype().equalsIgnoreCase("")
					&& data.getCashflow().equalsIgnoreCase("") && data.getValue().equalsIgnoreCase("")) {
				logger.error("Nothing to Update- {} ");
				return inserted;
			} else {

				if (findSection17DataRow(data, user)) {
					Update update = new Update();
					update.set("accountname", data.getAcctname());
					update.set("accttype", data.getAccttype());
					update.set("cashflow", data.getCashflow());
					update.set("value", data.getValue());
					update.set("client", data.getClient());

					Query query = new Query(Criteria.where("accountname").is(data.getAcctname())
							.andOperator(Criteria.where("accttype").is(data.getAccttype())
									.andOperator(Criteria.where("cashflow").is(data.getCashflow())
											.andOperator(Criteria.where("value").is(data.getValue())
													.andOperator(Criteria.where("client").is(data.getClient()))))));
					mongoTemplate.updateFirst(query, update, Section17.class);
					logger.info("Found Record - Updated - {} ", data.getAcctname());
					inserted = true;
				} else {
					mongoTemplate.save(data, "section17");
					logger.info("New Record - Created - {} ", data.getAcctname());
				}
			}
		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return inserted;
	}

	@Override
	public boolean findSection17DataRow(Section17 data, String user) {
		boolean exists = true;

		try {
			Query query = new Query(Criteria.where("accountname").is(data.getAcctname())
					.andOperator(Criteria.where("accttype").is(data.getAccttype()).andOperator(
							Criteria.where("cashflow").is(data.getCashflow()).andOperator(Criteria.where("value")
									.is(data.getValue()).andOperator(Criteria.where("client").is(data.getClient()))))));
			List<Section17> sec1 = mongoTemplate.find(query, Section17.class);

			if (sec1.size() == 0) {
				exists = false;
			}

		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return exists;
	}

	@Override
	public boolean deleteSection17DataRow(Section17Del data, String user) {
		boolean deleted = false;
		try {

			String accountName = data.getAcctname();
			String accountType = data.getAccttype();
			String cahsflow = data.getCashflow();
			String value = data.getValue();

			Query query = new Query(Criteria.where("user").is(user)
					.andOperator(Criteria.where("accountname").is(accountName)
							.andOperator(Criteria.where("accounttype").is(accountType).andOperator(
									Criteria.where("cashflow").is(cahsflow).andOperator(Criteria.where("value")
											.is(value).andOperator(Criteria.where("client").is(data.getClient())))))));

			mongoTemplate.remove(query, Section17.class);
			deleted = true;
		} catch (MongoException e) {
			logger.error("Exception while deleting in MongoDB", e.getMessage());
		}
		return deleted;
	}

	@Override
	public boolean saveSection18Data(Section18 data, String user) {
		boolean inserted = false;
		try {

			if (data.getCreditor().equalsIgnoreCase("") && data.getFrequency().equalsIgnoreCase("")
					&& data.getPayment().equalsIgnoreCase("") && data.getTotal().equalsIgnoreCase("")) {
				logger.error("Nothing to Update- {} ");
				return inserted;
			} else {

				if (findSection18DataRow(data, user)) {
					Update update = new Update();
					update.set("creditor", data.getCreditor());
					update.set("frequency", data.getFrequency());
					update.set("payment", data.getPayment());
					update.set("total", data.getTotal());
					update.set("client", data.getClient());

					Query query = new Query(Criteria.where("creditor").is(data.getCreditor())
							.andOperator(Criteria.where("frequency").is(data.getFrequency())
									.andOperator(Criteria.where("payment").is(data.getPayment())
											.andOperator(Criteria.where("total").is(data.getTotal())
													.andOperator(Criteria.where("client").is(data.getClient()))))));
					mongoTemplate.updateFirst(query, update, Section18.class);
					logger.info("Found Record - Updated - {} ", data.getCreditor());
					inserted = true;
				} else {
					mongoTemplate.save(data, "section18");
					logger.info("New Record - Created - {} ", data.getCreditor());
				}
			}
		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return inserted;
	}

	@Override
	public boolean findSection18DataRow(Section18 data, String user) {
		boolean exists = true;

		try {
			Query query = new Query(Criteria.where("creditor").is(data.getCreditor())
					.andOperator(Criteria.where("frequency").is(data.getFrequency()).andOperator(
							Criteria.where("payment").is(data.getPayment()).andOperator(Criteria.where("total")
									.is(data.getTotal()).andOperator(Criteria.where("client").is(data.getClient()))))));
			List<Section18> sec1 = mongoTemplate.find(query, Section18.class);

			if (sec1.size() == 0) {
				exists = false;
			}

		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return exists;
	}

	@Override
	public boolean deleteSection18DataRow(Section18Del data, String user) {
		boolean deleted = false;
		try {

			String creditor = data.getCreditor();
			String frequency = data.getFrequency();
			String payment = data.getPayment();
			String total = data.getTotal();
			String type = data.getType();

			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("creditor").is(creditor)
					.andOperator(Criteria.where("frequency").is(frequency)
							.andOperator(Criteria.where("payment").is(payment)
									.andOperator(Criteria.where("total").is(total).andOperator(Criteria.where("type")
											.is(type).andOperator(Criteria.where("client").is(data.getClient()))))))));

			mongoTemplate.remove(query, Section18.class);
			deleted = true;
		} catch (MongoException e) {
			logger.error("Exception while deleting in MongoDB", e.getMessage());
		}
		return deleted;
	}

	@Override
	public boolean saveSection19Data(Section19 data, String user) {
		boolean inserted = false;
		try {

			if (data.getDebitor().equalsIgnoreCase("") && data.getFrequency().equalsIgnoreCase("")
					&& data.getPayment().equalsIgnoreCase("") && data.getTotal().equalsIgnoreCase("")) {
				logger.error("Nothing to Update- {} ");
				return inserted;
			} else {

				if (findSection19DataRow(data, user)) {
					Update update = new Update();
					update.set("creditor", data.getDebitor());
					update.set("frequency", data.getFrequency());
					update.set("payment", data.getPayment());
					update.set("total", data.getTotal());
					update.set("client", data.getClient());

					Query query = new Query(Criteria.where("debitor").is(data.getDebitor())
							.andOperator(Criteria.where("frequency").is(data.getFrequency())
									.andOperator(Criteria.where("payment").is(data.getPayment())
											.andOperator(Criteria.where("total").is(data.getTotal())
													.andOperator(Criteria.where("client").is(data.getClient()))))));
					mongoTemplate.updateFirst(query, update, Section19.class);
					logger.info("Found Record - Updated - {} ", data.getDebitor());
					inserted = true;
				} else {
					mongoTemplate.save(data, "section19");
					logger.info("New Record - Created - {} ", data.getDebitor());
				}
			}
		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}

		return inserted;
	}

	@Override
	public boolean findSection19DataRow(Section19 data, String user) {
		boolean exists = true;

		try {
			Query query = new Query(Criteria.where("debitor").is(data.getDebitor())
					.andOperator(Criteria.where("frequency").is(data.getFrequency()).andOperator(
							Criteria.where("payment").is(data.getPayment()).andOperator(Criteria.where("total")
									.is(data.getTotal()).andOperator(Criteria.where("client").is(data.getClient()))))));
			List<Section19> sec1 = mongoTemplate.find(query, Section19.class);

			if (sec1.size() == 0) {
				exists = false;
			}

		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return exists;
	}

	@Override
	public boolean deleteSection19DataRow(Section19Del data, String user) {
		boolean deleted = false;
		try {

			String debitor = data.getDebitor();
			String frequency = data.getFrequency();
			String payment = data.getPayment();
			String total = data.getTotal();
			String type = data.getType();

			Query query = new Query(Criteria.where("user").is(user).andOperator(Criteria.where("debitor").is(debitor)
					.andOperator(Criteria.where("frequency").is(frequency)
							.andOperator(Criteria.where("payment").is(payment)
									.andOperator(Criteria.where("total").is(total).andOperator(Criteria.where("type")
											.is(type).andOperator(Criteria.where("client").is(data.getClient()))))))));

			mongoTemplate.remove(query, Section19.class);
			deleted = true;
		} catch (MongoException e) {
			logger.error("Exception while deleting in MongoDB", e.getMessage());
		}
		return deleted;
	}

	@Override
	public boolean saveSection20Data(Section20 data, String user) {
		boolean inserted = false;
		try {

			if (data.getWill().equalsIgnoreCase("")) {
				logger.error("Nothing to Update- {} ");
				return inserted;
			} else {

				if (findSection20DataRow(data, user)) {
					Update update = new Update();
					update.set("will", data.getWill());
					update.set("client", data.getClient());

					Query query = new Query(Criteria.where("user").is(data.getUser())
							.andOperator(Criteria.where("client").is(data.getClient())));
					mongoTemplate.updateFirst(query, update, Section20.class);
					logger.info("Found Record - Updated - {} ", data.getUser());
					inserted = true;
				} else {
					mongoTemplate.save(data, "section20");
					logger.info("New Record - Created - {} ", data.getUser());
				}
			}
		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return inserted;
	}

	@Override
	public boolean findSection20DataRow(Section20 data, String user) {
		boolean exists = true;

		try {
			Query query = new Query(Criteria.where("user").is(data.getUser())
					.andOperator(Criteria.where("client").is(data.getClient())));
			List<Section20> sec1 = mongoTemplate.find(query, Section20.class);

			if (sec1.size() == 0) {
				exists = false;
			}

		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return exists;
	}

	@Override
	public boolean saveSection21Data(Section21 data, String user) {
		boolean inserted = false;
		try {

			if (data.getAdditionalInstructions().equalsIgnoreCase("")) {
				logger.error("Nothing to Update- {} ");
				return inserted;
			} else {

				if (findSection21DataRow(data, user)) {
					Update update = new Update();
					update.set("additionalInstructions", data.getAdditionalInstructions());
					update.set("client", data.getClient());

					Query query = new Query(Criteria.where("user").is(data.getUser())
							.andOperator(Criteria.where("client").is(data.getClient())));
					mongoTemplate.updateFirst(query, update, Section21.class);
					logger.info("Found Record - Updated - {} ", data.getUser());
					inserted = true;
				} else {
					mongoTemplate.save(data, "section21");
					logger.info("New Record - Created - {} ", data.getUser());
				}
			}
		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return inserted;
	}

	@Override
	public boolean findSection21DataRow(Section21 data, String user) {
		boolean exists = true;

		try {
			Query query = new Query(Criteria.where("user").is(data.getUser())
					.andOperator(Criteria.where("client").is(data.getClient())));
			List<Section21> sec1 = mongoTemplate.find(query, Section21.class);

			if (sec1.size() == 0) {
				exists = false;
			}

		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return exists;
	}

	@Override
	public boolean saveSection0Data(Section0 data, String user) {
		boolean inserted = false;
		try {

			if (data.getFname().equalsIgnoreCase("") && data.getMname().equalsIgnoreCase("")
					&& data.getLname().equalsIgnoreCase("") && data.getEmail().equalsIgnoreCase("")
					&& data.getPhone().equalsIgnoreCase("")) {
				logger.error("Nothing to Update- {} ");
				return inserted;
			} else {

				if (findSection0DataRow(data, user)) {
					Update update = new Update();
					update.set("fname", data.getFname());
					update.set("mname", data.getMname());
					update.set("nname", data.getLname());
					update.set("email", data.getEmail());
					update.set("phone", data.getPhone());

					Query query = new Query(Criteria.where("fname").is(data.getFname())
							.andOperator(Criteria.where("mname").is(data.getMname())
									.andOperator(Criteria.where("lname").is(data.getLname())
											.andOperator(Criteria.where("email").is(data.getEmail())
													.andOperator(Criteria.where("phone").is(data.getPhone()))))));
					mongoTemplate.updateFirst(query, update, Section0.class);
					logger.info("Found Record - Updated - {} ", data.getLname());
					inserted = true;
				} else {
					mongoTemplate.save(data, "section0");
					logger.info("New Record - Created - {} ", data.getLname());
				}
			}
		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return inserted;
	}

	@Override
	public boolean findSection0DataRow(Section0 data, String user) {
		boolean exists = true;

		try {
			Query query = new Query(Criteria.where("user").is(user)
					.andOperator(Criteria.where("fname").is(data.getFname())
							.andOperator(Criteria.where("mname").is(data.getMname())
									.andOperator(Criteria.where("lname").is(data.getLname())
											.andOperator(Criteria.where("email").is(data.getEmail())
													.andOperator(Criteria.where("phone").is(data.getPhone())))))));
			List<Section0> sec0 = mongoTemplate.find(query, Section0.class);

			if (sec0.size() == 0) {
				exists = false;
			}

		} catch (MongoException e) {
			logger.error("Exception while saving in MongoDB", e.getMessage());
		}
		return exists;
	}

	@Override
	public boolean deleteSection0DataRow(Section0Del data, String user) {
		boolean deleted = false;
		try {

			Query query = new Query(Criteria.where("user").is(user)
					.andOperator(Criteria.where("fname").is(data.getFname())
							.andOperator(Criteria.where("mname").is(data.getMname())
									.andOperator(Criteria.where("lname").is(data.getLname())
											.andOperator(Criteria.where("email").is(data.getEmail())
													.andOperator(Criteria.where("phone").is(data.getPhone())))))));

			mongoTemplate.remove(query, Section0.class);
			deleted = true;
		} catch (MongoException e) {
			logger.error("Exception while deleting in MongoDB", e.getMessage());
		}
		return deleted;
	}
}
