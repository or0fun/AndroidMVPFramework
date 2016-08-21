package ${packageName};

import android.content.Intent;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;

import com.showjoy.shop.R;
import com.showjoy.shop.common.base.BaseFragment;
import com.showjoy.shop.common.base.BaseViewModel;


public class ${viewModelClass} extends BaseViewModel<${presenterClass}> {


    public ${viewModelClass}(BaseFragment activity) {
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
