package ${packageName}.dao;

import java.util.HashMap;
import java.util.List;

import ${packageName}.dao.base.BaseDao;
import ${packageName}.mapper.${className}Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import ${packageName}.model.${className};

/**
* ${table.remark}的Dao接口
* @author ${author}
* @date ${.now?string("yyyy-MM-dd HH:mm:ss zzzz")}
*/
@Repository
public class ${className}Dao extends BaseDao<${className}>{

}
