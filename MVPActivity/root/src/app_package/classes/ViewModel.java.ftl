package ${packageName};

import android.content.Intent;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;

import com.baiwanlu.android.R;
import com.baiwanlu.android.common.base.BaseActivity;
import com.baiwanlu.android.common.base.BaseViewModel;


public class ${viewModelClass} extends BaseViewModel<${presenterClass}> {


    public ${viewModelClass}(BaseActivity activity) {
        super(activity);
    }

    @Override
    public void initView() {


    }

    @Override
    public void initData() {
    }

    @Override
    protected ${presenterClass} getPresenter() {
        return new ${presenterClass}(this);
    }

}
