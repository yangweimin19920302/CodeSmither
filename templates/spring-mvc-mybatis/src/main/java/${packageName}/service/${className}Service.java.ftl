package ${packageName}.service;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import ${packageName}.util.PageInfo;

import ${packageName}.model.${className};

/**
* ${table.remark}的Service接口层
* @author ${author}
* @date ${.now?string("yyyy-MM-dd HH:mm:ss zzzz")}
*/
public interface ${className}Service {

/**
* 插入一条新数据
* @param model 添加的数据
*/
int insert(${className} model) throws Exception;
/**
* 根据ID删除
* @param id 主键ID
*/
int delete(Serializable id) throws Exception;
/**
* 更新一条数据
* @param model 需要更新数据
*/
int update(${className} model) throws Exception;
/**
* 根据ID获取
* @param id 主键ID
*/
${className} findById(Serializable id) throws Exception;
/**
* 获取全部数据
*/
List<${className}> findAll() throws Exception;
/**
* 分页查询数据
* @param size 每页显示的条数
* @param start 开始页
*/
PageInfo<${className}> findByPage(int start, int size) throws Exception;

}
