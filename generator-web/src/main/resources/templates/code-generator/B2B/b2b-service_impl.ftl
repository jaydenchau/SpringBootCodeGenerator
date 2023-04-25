<#if isAutoImport?exists && isAutoImport==true>
package ${packageName}.service.impl;
import org.springframework.stereotype.Service;
import com.deckers.b2b.order.infrastructure.util.DeckersAuthenticationUtils;
import javax.annotation.Resource;
import java.util.List;
import java.util.Date;
</#if>

/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
@Service
public class ${classInfo.className}ServiceImpl implements ${classInfo.className}Service {

	@Resource
	private ${classInfo.className}Mapper ${classInfo.className?uncap_first}Mapper;


	@Override
	public void insert(${classInfo.className} ${classInfo.className?uncap_first}) {
		${classInfo.className?uncap_first}.setCreatedBy(DeckersAuthenticationUtils.getUserID());
		${classInfo.className?uncap_first}Mapper.insert(${classInfo.className?uncap_first});
	}


	@Override
	public void delete(int id) {
		${classInfo.className?uncap_first}Mapper.delete(id);
	}


	@Override
	public void update(${classInfo.className} ${classInfo.className?uncap_first}) {
		${classInfo.className?uncap_first}.setModifiedBy(DeckersAuthenticationUtils.getUserID());
		${classInfo.className?uncap_first}.setModifiedDt(new Date());
		${classInfo.className?uncap_first}Mapper.update(${classInfo.className?uncap_first});
	}


	@Override
	public ${classInfo.className} load(int id) {
		return ${classInfo.className?uncap_first}Mapper.load(id);
	}


	@Override
	public PageInfo<${classInfo.className}> pageList(int offset, int limit) {
		PageHelper.offsetPage(offset, limit);
		List<${classInfo.className}> customerList = ${classInfo.className?uncap_first}Mapper.pageList(DeckersAuthenticationUtils.getCompanyID());
		return PageInfo.of(customerList);
	}

}
