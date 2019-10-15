.class public Lcom/sonyericsson/textinput/uxp/controller/settings/SkinSelectorActivity;
.super Landroid/app/Activity;
.source "SkinSelectorActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->initConstants(Landroid/content/Context;)V

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SkinSelectorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 33
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 34
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 37
    :cond_0
    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;

    invoke-direct {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;-><init>()V

    const v2, 0x7f0f000b

    invoke-static {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/util/FragmentActivityUtil;->addFragment(Landroid/app/Activity;Landroid/app/Fragment;I)V

    .line 38
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 58
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 61
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SkinSelectorActivity;->finish()V

    .line 62
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SkinSelectorActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 50
    .local v0, "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getDirectBootConfig()Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;->copySharedPreferences()V

    .line 53
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 54
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->initConstants(Landroid/content/Context;)V

    .line 43
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->reloadPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 45
    return-void
.end method
