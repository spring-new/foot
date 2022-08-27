package com.hs.wa.dao;

import com.hs.wa.entity.Article;
import com.hs.wa.entity.ArticleCondition;
import com.hs.wa.entity.ArticleKey;
import com.hs.wa.entity.ArticleWithBLOBs;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ArticleMapper {
    long countByExample(ArticleCondition example);

    int deleteByExample(ArticleCondition example);

    int deleteByPrimaryKey(ArticleKey key);

    int insert(ArticleWithBLOBs record);

    int insertSelective(ArticleWithBLOBs record);

    List<ArticleWithBLOBs> selectByExampleWithBLOBs(ArticleCondition example);

    List<Article> selectByExample(ArticleCondition example);

    ArticleWithBLOBs selectByPrimaryKey(ArticleKey key);

    int updateByExampleSelective(@Param("record") ArticleWithBLOBs record, @Param("example") ArticleCondition example);

    int updateByExampleWithBLOBs(@Param("record") ArticleWithBLOBs record, @Param("example") ArticleCondition example);

    int updateByExample(@Param("record") Article record, @Param("example") ArticleCondition example);

    int updateByPrimaryKeySelective(ArticleWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(ArticleWithBLOBs record);

    int updateByPrimaryKey(Article record);
}