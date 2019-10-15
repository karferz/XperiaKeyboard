.class public Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutActivity;
.super Landroid/preference/PreferenceActivity;
.source "BackupAndSyncAboutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutFragment;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/util/FragmentActivityUtil;->getPreferenceIntent(Landroid/content/Intent;Landroid/preference/PreferenceActivity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 24
    .local v0, "actionbar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 25
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 27
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 31
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 37
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 34
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncAboutActivity;->onBackPressed()V

    .line 35
    const/4 v0, 0x1

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
