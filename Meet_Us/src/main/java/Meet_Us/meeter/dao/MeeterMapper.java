package Meet_Us.meeter.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import Meet_Us.meeter.vo.MeeterVo;
import Meet_Us.meeter.vo.PageCriteria;
 
@Repository
public interface MeeterMapper {

	public List<MeeterVo> selectMeeterTestList() throws Exception;

	public List<MeeterVo> selectMeeterList(PageCriteria cri) throws Exception;
	
	public List<Map<String, Object>> selectCountMeeterList() throws Exception;
	
	public MeeterVo selectMeeterDetail(MeeterVo meeterVo) throws Exception;
}
