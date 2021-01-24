package com.ting.service;

import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ting.dao.TingBoardDAOImpl;
import com.ting.domain.PageVO;
import com.ting.domain.TingBoardLikeVO;
import com.ting.domain.TingBoardVO;

@Service("tingBoardService")
public class TingBoardServiceImpl implements TingBoardService {

	@Autowired
	private TingBoardDAOImpl tingBoardDAO;
	
	public void insertBoard(TingBoardVO vo) {
		setSplitTag(vo);
		tingBoardDAO.insertBoard(vo);

	}

	public void updateBoard(TingBoardVO vo) {
		setSplitTag(vo);
		tingBoardDAO.updateBoard(vo);

	}

	public void deleteBoard(TingBoardVO vo) {
		tingBoardDAO.deleteBoard(vo);

	}

	public TingBoardVO getBoard(TingBoardVO vo) {
		
		return tingBoardDAO.getBoard(vo);
	}

/*	
	public List<TingBoardVO> getBoardList(TingBoardVO vo) {
		
		List<TingBoardVO> result = tingBoardDAO.getBoardList(vo);
		 return result;
	}
*/
	 @Autowired
	   //태그와 content를 분리하는 함수 
	      private static void setSplitTag(TingBoardVO vo) {

	            //ex) test1 #test2 test3
	            String content = vo.getContent();
	            String tag = "";
	            String newContent = content;
	            
	            //입력받은 content가 빈값이면 split하지 않는다 
	            if(content == null) {
	               return;
	            }
	            
	            //정규표현식
	            Pattern p = Pattern.compile("\\#([0-9a-zA-Z가-힣_]*)");
	           Matcher m = p.matcher(content);
	           String hashTag = null;

	           //정규표현식과 일치되는게 있다면
	           while (m.find()) {
	              //hashTag를 뽑음 
	              hashTag = m.group();

	              //hashTag가 null이 아니면 
	              if (hashTag != null) {
	                 //#제거 
	                 String replaceHashTag = hashTag.replaceFirst("#", "");
	                 
	                 //비어있지 않으면 태그로 등록 
	                 if(!replaceHashTag.isEmpty())
	                    tag += replaceHashTag+" ";
	                 
	                 //tag를 제외하고 content와 분리 
	                 newContent = newContent.replaceFirst(hashTag, "");
	              }
	           }
	            vo.setContent(newContent);
	            vo.setTag(tag);
	            vo.setOriginalContent(content);
//	            System.out.println("newContent: " +newContent);
//	            System.out.println("tag: " +tag);
	          }
	      

	   
   @Override
   public List<TingBoardVO> getList(PageVO svo) {
      List<TingBoardVO> result = tingBoardDAO.getList(svo);
      return result;
   }
    
	@Override
	public int like(String param) {
		Map<String, Object> paramMap = new HashedMap();
		String[] tmp = param.split("&");
		int clientIdx = Integer.parseInt(tmp[0].split("=")[1]);
		int boardIdx = Integer.parseInt(tmp[1].split("=")[1]);
		int likeyFl = Integer.parseInt(tmp[2].split("=")[1]);
		System.out.println(clientIdx);
		System.out.println(boardIdx);
		System.out.println(likeyFl);
		paramMap.put("clientIdx", clientIdx);
		paramMap.put("boardIdx", boardIdx);
		paramMap.put("likeyFl", likeyFl);
		int result = tingBoardDAO.likeSave(paramMap);
		return result;
	}

	@Override
	public List<TingBoardLikeVO> getBoardLikeCnt(int boardIdx) {
		Map<String, Object> param = new HashedMap();
		param.put("boardIdx", boardIdx);
		return tingBoardDAO.getBoardLikeCnt(param);
	}
	   

}   





	/*
	public TingBoardVO getBoard(TingBoardVO vo) {
	    TingBoardVO result = tingBoardDAO.getBoard(vo);
	    System.out.println(result.get?());
	    return result;
	 } 
	 */