.class public abstract Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideActivity;
.super Landroid/app/Activity;
.source "GuideActivity.java"


# instance fields
.field private mFragment:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected addFragment(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;

    .prologue
    .line 28
    const v0, 0x7f0f000a

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/util/FragmentActivityUtil;->addFragment(Landroid/app/Activity;Landroid/app/Fragment;I)V

    .line 29
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideActivity;->mFragment:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;

    .line 30
    return-void
.end method

.method protected getExistingFragment()Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0f000a

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideActivity;->mFragment:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->onPreviousPage()V

    .line 40
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->initConstants(Landroid/content/Context;)V

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 52
    .local v0, "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getDirectBootConfig()Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;->copySharedPreferences()V

    .line 55
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 56
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 44
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->initConstants(Landroid/content/Context;)V

    .line 45
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->reloadPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 47
    return-void
.end method
