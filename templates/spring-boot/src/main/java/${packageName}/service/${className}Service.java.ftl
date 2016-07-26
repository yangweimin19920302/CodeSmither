package ${packageName}.service;

import ${packageName}.dao.${className}Dao;
import ${packageName}.model.${className};
import ${packageName}.util.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import ${packageName}.util.PageInfo;


/**
* ${table.remark}的Service接口层
* @author ${author}
* @date ${.now?string("yyyy-MM-dd HH:mm:ss zzzz")}
*/
@Service
public class ${className}Service {

@Autowired
${className}Dao dao;

public int insert(${className} model) throws Exception{
return dao.insert(model);
}

public int update(${className} model) throws Exception{
return dao.update(model);
}

public ${className} findById(Serializable id) throws Exception{
return dao.findById(id);
}

public List<${className}> findAll() throws Exception{
return dao.findAll();
}

public int delete(Serializable id) throws Exception{
return dao.delete(id);
}

public PageInfo<${className}> findByPage(int start, int size) throws Exception{
HashMap
<String, Object> map = new HashMap
<String, Object>();
map.put("start", start);
map.put("size", size);
List<${className}> list = dao.findByPage(map);
int count = dao.countAll();
PageInfo<${className}> pageInfo = new PageInfo<${className}>();
pageInfo.setDataList(list);
pageInfo.setTotal(count);
return pageInfo;
}
}
