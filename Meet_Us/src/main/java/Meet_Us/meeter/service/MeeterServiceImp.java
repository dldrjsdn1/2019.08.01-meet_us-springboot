package Meet_Us.meeter.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Meet_Us.meeter.dao.MeeterMapper;


@Service
public class MeeterServiceImp implements MeeterService {

	@Autowired
	private MeeterMapper mapper;


}
