package Meet_Us.meeter.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Meet_Us.meeter.dao.MeeterMapper;
import Meet_Us.meeter.vo.MeeterVo;
import Meet_Us.meeter.vo.PageCriteria;

@Service
public class MeeterServiceImpl implements MeeterService {

	@Autowired
	private MeeterMapper mapper;
	
	@Override
	public List<MeeterVo> selectMeeterList(PageCriteria cri) throws Exception {
		return mapper.selectMeeterList(cri);
	}
	
	@Override
	public List<Map<String, Object>> selectCountMeeterList() throws Exception {
		return mapper.selectCountMeeterList();
	}

	@Override
	public List<MeeterVo> selectMeeterTestList() throws Exception {
		return mapper.selectMeeterTestList();
	}

	@Override
	public MeeterVo selectMeeterDetail(MeeterVo meeterVo) throws Exception {
		return mapper.selectMeeterDetail(meeterVo);
	}

}
