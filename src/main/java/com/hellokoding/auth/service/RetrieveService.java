package com.hellokoding.auth.service;

import java.util.List;

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

public interface RetrieveService {

	public List<Section1> getSection1DataForLoggedInUser(String user, String client);
	
	public List<Section0> getSection0DataForLoggedInUser(String user);

	public List<Section2> getSection2DataForLoggedInUser(String user, String client);

	public List<Section3> getSection3DataForLoggedInUser(String user, String client);

	public List<Section4> getSection4DataForLoggedInUser(String user, String client);

	public List<Section5> getSection5DataForLoggedInUser(String user, String client);

	public List<Section6> getSection6DataForLoggedInUser(String user, String client);

	public List<Section7> getSection7DataForLoggedInUser(String user, String client);

	public List<Section8> getSection8DataForLoggedInUser(String user, String client);

	public List<Section9> getSection9DataForLoggedInUser(String user, String client);

	public List<Section10> getSection10DataForLoggedInUser(String user, String client);

	public List<Section11> getSection11DataForLoggedInUser(String user, String client);

	public List<Section12> getSection12DataForLoggedInUser(String user, String client);

	public List<Section13> getSection13DataForLoggedInUser(String user, String client);

	public List<Section14> getSection14DataForLoggedInUser(String user, String client);

	public List<Section15> getSection15DataForLoggedInUser(String user, String client);

	public List<Section16> getSection16DataForLoggedInUser(String user, String client);

	public List<Section17> getSection17DataForLoggedInUser(String user, String client);

	public List<Section18> getSection18DataForLoggedInUser(String user, String client);

	public List<Section19> getSection19DataForLoggedInUser(String user, String client);

	public List<Section20> getSection20DataForLoggedInUser(String user, String client);

	public List<Section21> getSection21DataForLoggedInUser(String user, String clients);
}
