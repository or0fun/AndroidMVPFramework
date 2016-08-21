package ${packageName}.request;

import android.support.annotation.NonNull;

import com.alibaba.fastjson.TypeReference;
import com.baiwanlu.android.common.request.SHGetRequest;
import ${packageName}.entities.${entityClass};


public class ${requestClass} extends SHGetRequest<${entityClass}> {
    @Override
    protected Class<${entityClass}> getDataClass() {
        return ${entityClass}.class;
    }

    @Override
    protected TypeReference<${entityClass}> getDataTypeReference() {
        return null;
    }

    @NonNull
    @Override
    protected String getRequestUrl() {
        return null;
    }
}
