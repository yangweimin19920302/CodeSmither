package ${packageName}.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.io.Serializable;

import ${packageName}.model.${className};
import ${packageName}.service.${className}Service;

/**
* ${table.remark} 的Controller层实现
* @author ${author}
* @date ${.now?string("yyyy-MM-dd HH:mm:ss zzzz")}
*/
@Controller
@RequestMapping("${table.classNameLower}")
public class ${className}Controller {

@Autowired
private ${className}Service service;

/**
* 添加信息
* @param model 添加的数据
*/
@RequestMapping("add")
@ResponseBody
public Object add(@RequestBody ${className} model) throws Exception{
return service.insert(model);
}

/**
* 更新信息
* @param model 更新的数据
*/
@RequestMapping("update")
@ResponseBody
public Object update(@RequestBody ${className} model) throws Exception{
return service.update(model);
}

/**
* 根据ID获取信息
* @param ID 主键ID
*/
@RequestMapping("get/{ID}")
@ResponseBody
public Object get(@PathVariable Serializable ID) throws Exception{
return service.findById(ID);
}

/**
* 根据ID删除
*/
@RequestMapping("delete/{ID}")
@ResponseBody
public Object delete(@PathVariable Serializable ID) throws Exception{
return service.delete(ID);
}

/**
* 获取全部列表
*/
@RequestMapping("list")
@ResponseBody
public Object list() throws Exception{
return service.findAll();
}

/**
* 获取分页列表
* @param start 分页大小
* @param size 每页显示条数
*/
@RequestMapping("list/{start}/{size}")
@ResponseBody
public Object findByPage(@PathVariable int start,@PathVariable int size) throws Exception{
return service.findByPage(start, size);
}

}
