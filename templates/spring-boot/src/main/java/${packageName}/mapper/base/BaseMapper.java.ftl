package ${packageName}.mapper.base;

import java.io.Serializable;
import java.util.List;
import java.util.HashMap;

/**
* ${table.remark}的mapper接口
* @author ${author}
* @date ${.now?string("yyyy-MM-dd HH:mm:ss zzzz")}
*/
public interface BaseMapper
<T> {

    /**
    * 插入一条新数据
    * @param model 添加的数据
    * @return 改变行数
    */
    int insert(T model);
    /**
    * 根据ID删除
    * @param id 主键ID
    * @return 改变行数
    */
    int delete(Serializable id);
    /**
    * 更新一条数据
    * @param model 需要更新数据
    * @return 改变行数
    */
    int update(T model);
    /**
    * 统计全部出数据
    * @return 全部数据量
    */
    int countAll();
    /**
    * 根据ID获取
    * @param id 主键ID
    * @return 数据对象 or null
    */
    T findById(Serializable id);
    /**
    * 获取全部数据
    * @return 全部所有数据
    */
    List
    <T> findAll();
        /**
        * 分页查询数据
        * @return 分页列表数据
        */
        List
        <T> findByPage(HashMap
            <String
                    , Object> map);
                }