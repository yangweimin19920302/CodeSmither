package ${packageName}.util;

import java.util.LinkedList;
import java.util.List;

/**
* Created by hadoop on 2016/5/12.
*/
public class PageInfo
<T> {

    List
    <T> dataList = new LinkedList
        <T>();
            int total;

            public List
            <T> getDataList() {
                return dataList;
                }

                public void setDataList(List
                <T> dataList) {
                    this.dataList = dataList;
                    }

                    public int getTotal() {
                    return total;
                    }

                    public void setTotal(int total) {
                    this.total = total;
                    }
                    }

