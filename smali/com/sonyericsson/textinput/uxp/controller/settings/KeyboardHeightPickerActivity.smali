.class public Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerActivity;
.super Landroid/app/Activity;
.source "KeyboardHeightPickerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static newIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 39
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->initConstants(Landroid/content/Context;)V

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 48
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 49
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 52
    :cond_0
    new-instance v2, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;

    invoke-direct {v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerFragment;-><init>()V

    const v3, 0x7f0f0007

    invoke-static {p0, v2, v3}, Lcom/sonyericsson/textinput/uxp/util/FragmentActivityUtil;->addFragment(Landroid/app/Activity;Landroid/app/Fragment;I)V

    .line 54
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 55
    .local v1, "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;->SETTINGS:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushKeyboardHeightPickerLaunchedEvent(Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;)V

    .line 59
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 70
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 73
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerActivity;->onBackPressed()V

    .line 74
    const/4 v0, 0x1

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 63
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->initConstants(Landroid/content/Context;)V

    .line 64
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->reloadPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 66
    return-void
.end method
