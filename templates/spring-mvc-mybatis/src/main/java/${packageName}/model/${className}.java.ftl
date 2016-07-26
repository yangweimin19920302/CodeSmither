package ${packageName}.model;

import java.io.Serializable;

/**
* ${table.remark}
* @author ${author}
* @date ${.now?string("yyyy-MM-dd HH:mm:ss zzzz")}
*/
public class ${className} implements Serializable{

<#list table.columns as column>
/**
* ${column.remark}
*/
private ${column.fieldType} ${column.fieldName};
</#list>

public ${className}() {
}
<#list table.columns as column>

public ${column.fieldType} get${column.fieldNameUpper}(){
return this.${column.fieldName};
}

public void set${column.fieldNameUpper}(${column.fieldType} ${column.fieldName}) {
this.${column.fieldName} = ${column.fieldName};
}
</#list>

}