<#if isAutoImport?exists && isAutoImport==true>
package ${packageName}.service;
import com.github.pagehelper.PageInfo;
</#if>

/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
public interface ${classInfo.className}Service {

    /**
    * add
    */
    void insert(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * delete
    */
    void delete(int id);

    /**
    * update
    */
    void update(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * query by id
    */
    ${classInfo.className} load(int id);

    /**
    * page list
    */
    PageInfo<${classInfo.className}> pageList(int offset, int pagesize);

}
