<?xml version="1.0"?>
<recipe>
<#if needActivity>
    <#include "../common/recipe_manifest.xml.ftl" />
</#if>

<#if needActivity && generateActivityLayout>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />
</#if>

<#if needFragment && generateFragmentLayout>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />
</#if>

<#if needActivity>
    <instantiate from="root/src/app_package/Activity.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(ativityPackageName)}/${pageName}Activity.java" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(ativityPackageName)}/${pageName}Activity.java" />
</#if>

<#if needFragment>
    <instantiate from="root/src/app_package/Fragment.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(fragmentPackageName)}/${pageName}Fragment.java" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(fragmentPackageName)}/${pageName}Fragment.java" />
</#if>

<#if needContract>
    <instantiate from="root/src/app_package/Contract.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(contractPackageName)}/${pageName}Contract.java" />
</#if>

<#if needPresenter>
    <instantiate from="root/src/app_package/Presenter.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(presenterPackageName)}/${pageName}Presenter.java" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(presenterPackageName)}/${pageName}Presenter.java" />
</#if>

<#if needModel>
    <instantiate from="root/src/app_package/Model.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(modelPackageName)}/${pageName}Model.java" />
</#if>

<#if needDagger>
    <instantiate from="root/src/app_package/Component.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(componentPackageName)}/${pageName}Component.java" />
    <instantiate from="root/src/app_package/Module.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(modulePackageName)}/${pageName}Module.java" />

</#if>

</recipe>
