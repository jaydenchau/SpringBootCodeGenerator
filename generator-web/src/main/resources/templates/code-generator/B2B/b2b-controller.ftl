<#if isAutoImport?exists && isAutoImport==true>
package ${packageName}.controller;
import com.deckers.b2b.common.dto.ListRespDTO;
import com.deckers.b2b.common.dto.Result;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
</#if>

/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
@RestController
@RequestMapping(value = "/${classInfo.className?uncap_first}")
public class ${classInfo.className}Controller {

    @Resource
    private ${classInfo.className}Service ${classInfo.className?uncap_first}Service;

    /**
    * add
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @PostMapping
    public Result<Void> insert(@RequestBody ${classInfo.className} ${classInfo.className?uncap_first}){
        ${classInfo.className?uncap_first}Service.insert(${classInfo.className?uncap_first});
        return Result.build(null);
    }

    /**
    * delete
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @DeleteMapping("/{${classInfo.idFieldName}}")
    public Result<Void> delete(@PathVariable int ${classInfo.idFieldName}){
        ${classInfo.className?uncap_first}Service.delete(${classInfo.idFieldName});
        return Result.build(null);
    }

    /**
    * update
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @PutMapping
    public Result<Void> update(@RequestBody ${classInfo.className} ${classInfo.className?uncap_first}){
        ${classInfo.className?uncap_first}Service.update(${classInfo.className?uncap_first});
        return Result.build(null);
    }

    /**
    * query by id
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @GetMapping("/{${classInfo.idFieldName}}")
    public Result<${classInfo.className}> load(@PathVariable int ${classInfo.idFieldName}){
        return Result.build(${classInfo.className?uncap_first}Service.load(${classInfo.idFieldName}));
    }

    /**
    * page list
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @GetMapping("/pageList")
    public Result<ListRespDTO<${classInfo.className}>> pageList(@RequestParam(required = false, defaultValue = "0") int offset,
                                                         @RequestParam(required = false, defaultValue = "10") int limit){
        PageInfo<${classInfo.className}> pageResult = ${classInfo.className?uncap_first}Service.pageList(offset, limit);
        ListRespDTO<${classInfo.className}> result = new ListRespDTO<>();
        if (pageResult != null) {
            result.setTotal(pageResult.getTotal());
            result.setRows(pageResult.getList());
        }
        return Result.build(result);
    }

}
