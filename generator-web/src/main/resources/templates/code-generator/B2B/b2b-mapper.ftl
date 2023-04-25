<#if isAutoImport?exists && isAutoImport==true>
package ${packageName}.dao;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import java.util.List;
</#if>

/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
@Mapper
@Repository
public interface ${classInfo.className}Mapper {

    /**
    * add
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    int insert(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * delete
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    int delete(int id);

    /**
    * update
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    int update(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * query by id
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    ${classInfo.className} load(int id);

    /**
    * page list
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    List<${classInfo.className}> pageList(@Param("portalId") Integer portalId);

}
