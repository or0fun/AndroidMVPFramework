package ${packageName};

import android.support.annotation.NonNull;

import com.baiwanlu.android.R;
import com.baiwanlu.android.common.base.BaseActivity;


public class ${activityClass} extends BaseActivity<${viewModelClass}> {
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
