package ${packageName};

import android.support.annotation.NonNull;

import com.showjoy.shop.R;
import com.showjoy.shop.common.base.BaseFragment;


public class ${activityClass} extends BaseFragment<${viewModelClass}> {
    @NonNull
    @Override
    public ${viewModelClass} getViewModel() {
        return new ${viewModelClass}(this);
    }

    @Override
    public int getContentViewRes() {
        return R.layout.${layoutName};
    }
}
