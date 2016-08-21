<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

    <#include "activity_layout_recipe.xml.ftl" />

    <instantiate from="src/app_package/classes/Activity.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <instantiate from="src/app_package/classes/ViewModel.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${viewModelClass}.java" />

    <instantiate from="src/app_package/classes/Entity.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/entities/${entityClass}.java" />

    <instantiate from="src/app_package/classes/Presenter.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${presenterClass}.java" />

    <instantiate from="src/app_package/classes/Request.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/request/${requestClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${viewModelClass}.java" />
    
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    
</recipe>
