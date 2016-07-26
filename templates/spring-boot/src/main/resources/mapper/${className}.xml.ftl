<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" "http://mybatis.org/dtd/mybatis-3-mapper.dtd" >
<mapper namespace="${packageName}.mapper.${className}Mapper">
    <cache></cache>

    <resultMap id="${className}" type="${packageName}.model.${className}"/>

    <insert id="insert" parameterType="${packageName}.model.${className}">
        insert into ${table.name} (
    <#list table.columns as column>
    ${column.name}
        <#if column_has_next>,</#if>
    </#list>
        ) values (
    <#list table.columns as column>
    ${r"#"}{${column.fieldName}}
        <#if column_has_next>,</#if>
    </#list>
        )
    </insert>

    <delete id="delete" parameterType="java.io.Serializable">
        delete from ${table.name} where ${table.idColumn.name} = ${r"#"}{id}
    </delete>

    <update id="update" parameterType="${packageName}.model.${className}">
        update ${table.name} set
    <#list table.columns as column>
    ${column.name}=${r"#"}{${column.fieldName}}
        <#if column_has_next>,</#if>
    </#list>
        where ${table.idColumn.name}=${r"#"}{${table.idColumn.fieldName}}
    </update>

    <select id="countAll" resultType="int">
        select count(*) from ${table.name}
    </select>

    <select id="findById" resultMap="${className}" parameterType="java.io.Serializable">
        select * from ${table.name} where ${table.idColumn.name} = ${r"#"}{id}
    </select>

    <select id="findAll" resultMap="${className}">
        select * from ${table.name}
    </select>

    <select id="findByPage" resultMap="${className}" parameterType="HashMap">
        select
    <#list table.columns as column>
        <#if column.name==column.fieldName>
        ${column.name}
        </#if>
        <#if column.name!=column.fieldName>
        ${column.name} ${column.fieldName}
        </#if>
        <#if column_has_next>,</#if>
    </#list>
        from ${table.name} limit ${r"${start}"},${r"${size}"}
    </select>

</mapper>