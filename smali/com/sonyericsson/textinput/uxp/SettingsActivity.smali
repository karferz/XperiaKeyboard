.class public Lcom/sonyericsson/textinput/uxp/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# instance fields
.field private mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    .line 47
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/util/FragmentActivityUtil;->getPreferenceIntent(Landroid/content/Intent;Landroid/preference/PreferenceActivity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 68
    const-class v0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;

    .line 69
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;

    .line 70
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsFragment;

    .line 71
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;

    .line 72
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->initConstants(Landroid/content/Context;)V

    .line 30
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 33
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 34
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/SettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/SettingsActivity;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 38
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/SettingsActivity;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/SettingsActivity;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsOpened;->STARTED:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsOpened;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushSettingsOpenedEvent(Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsOpened;)V

    .line 42
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 53
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 59
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 56
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/SettingsActivity;->onBackPressed()V

    .line 57
    const/4 v0, 0x1

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsActivity;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsActivity;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getDirectBootConfig()Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;->copySharedPreferences()V

    .line 88
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 89
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 78
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->initConstants(Landroid/content/Context;)V

    .line 79
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->reloadPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 80
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 81
    return-void
.end method
