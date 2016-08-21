package ${packageName};


import com.showjoy.shop.common.request.SHResponse;
import com.showjoy.network.base.BaseRequest;
import com.showjoy.shop.common.base.BasePresenter;
import ${packageName}.entities.${entityClass};
import ${packageName}.request.${requestClass};

public class ${presenterClass} extends BasePresenter<${viewModelClass}, SHResponse<${entityClass}>> {
    public ${presenterClass}(${viewModelClass} viewModel) {
        super(viewModel);
    }

    @Override
    public BaseRequest getRequest() {
        return new ${requestClass}();
    }

    @Override
    public void responseSuccess(SHResponse<${entityClass}> response) {
        if (!response.isSuccess) {
            return;
        }
    }

    @Override
    public void responseError(int error) {
    
    }

}
