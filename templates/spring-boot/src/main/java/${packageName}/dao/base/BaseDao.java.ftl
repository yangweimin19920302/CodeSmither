package ${packageName}.dao.base;

import ${packageName}.mapper.base.BaseMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;

/**
* 通用Dao层接口
* @param
<T>
    * @author ${author}
    * @date ${.now?string("yyyy-MM-dd HH:mm:ss zzzz")}
    */
    public class BaseDao
    <T> {

        @Autowired
        private BaseMapper
        <T> mapper;

            /**
            * 插入一条新数据
            * @param model 添加的数据
            * @return 改变行数
            */
            public int insert(T model) {
            return mapper.insert(model);
            }
            /**
            * 根据ID删除
            * @param id 主键ID
            * @return 改变行数
            */
            public int delete(Serializable id) {
            return mapper.delete(id);
            }
            /**
            * 更新一条数据
            * @param model 需要更新数据
            * @return 改变行数
            */
            public int update(T model) {
            return mapper.update(model);
            }
            /**
            * 统计全部出数据
            * @return 全部数据量
            */
            public int countAll() {
            return mapper.countAll();
            }
            /**
            * 根据ID获取
            * @param id 主键ID
            * @return 数据对象 or null
            */
            public T findById(Serializable id) {
            return mapper.findById(id);
            }
            /**
            * 获取全部数据
            * @return 全部所有数据
            */
            public List
            <T> findAll() {
                return mapper.findAll();
                }
                /**
                * 分页查询数据
                * @return 分页列表数据
                */
                public List
                <T> findByPage(HashMap
                    <String
                    , Object> map) {
                    return mapper.findByPage(map);
                    }

                    }
