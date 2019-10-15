.class public Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectActivity;
.super Landroid/app/Activity;
.source "LanguageSelectActivity.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment$ShowLanguageDialogListener;
.implements Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase$DialogConfirmationListener;


# static fields
.field private static final FORCE_PORTRAIT:Ljava/lang/String; = "force_portrait"

.field private static final SHOW_OK_BUTTON:Ljava/lang/String; = "show_extra_buttons"


# instance fields
.field private mLanguageSelectFragment:Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 78
    if-eqz p1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectActivity;->mLanguageSelectFragment:Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;

    const-string v1, "show_extra_buttons"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->showOKButton(Z)V

    .line 81
    const-string v0, "force_portrait"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectActivity;->setRequestedOrientation(I)V

    .line 84
    :cond_0
    const-string v0, "notification-start"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil;->clearExpandedMessages(Landroid/content/Intent;)V

    .line 88
    :cond_1
    return-void
.end method

.method public static newIntent(Landroid/content/Context;ZZ)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "showOKButton"    # Z
    .param p2, "forcePortrait"    # Z

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "show_extra_buttons"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    const-string v1, "force_portrait"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v2, 0x7f0f0009

    .line 57
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->initConstants(Landroid/content/Context;)V

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectActivity;->mLanguageSelectFragment:Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;

    .line 62
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectActivity;->mLanguageSelectFragment:Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;

    invoke-direct {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectActivity;->mLanguageSelectFragment:Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectActivity;->handleIntent(Landroid/content/Intent;)V

    .line 67
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectActivity;->mLanguageSelectFragment:Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;

    invoke-static {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/util/FragmentActivityUtil;->addFragment(Landroid/app/Activity;Landroid/app/Fragment;I)V

    .line 71
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 72
    .local v0, "actionbar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 73
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 75
    :cond_1
    return-void
.end method

.method public onDialogConfirmation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "dialogTag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "languageIso3"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "showReason"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "isConfirmed"    # Z

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectActivity;->mLanguageSelectFragment:Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->onDialogConfirmation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 154
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectActivity;->handleIntent(Landroid/content/Intent;)V

    .line 94
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 98
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 101
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectActivity;->onBackPressed()V

    .line 102
    const/4 v0, 0x1

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 159
    .local v0, "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getDirectBootConfig()Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;->copySharedPreferences()V

    .line 162
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 163
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 109
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->initConstants(Landroid/content/Context;)V

    .line 110
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->reloadPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 112
    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "dialogTag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "languageIso3"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "showReason"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 120
    .local v1, "fragmentTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 121
    invoke-virtual {v2, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 122
    .local v0, "dialogFragment":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 125
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 143
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TI_ Unknown language dialog tag:\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :sswitch_0
    const-string v3, "TI_LayoutPicker"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "TI_DialogTooManyLanguages"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "TI_DialogDownloadConfirmation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "TI_DialogUpdateConfirmation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "TI_DialogCancelDownloadConfirmation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    .line 127
    :pswitch_0
    invoke-static {p2, p3}, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;

    move-result-object v0

    .line 146
    :goto_1
    invoke-virtual {v0, v1, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 147
    return-void

    .line 130
    :pswitch_1
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/view/language/DialogTooManyLanguages;->newInstance()Lcom/sonyericsson/textinput/uxp/view/language/DialogTooManyLanguages;

    move-result-object v0

    .line 131
    goto :goto_1

    .line 133
    :pswitch_2
    invoke-static {p2, p3}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;

    move-result-object v0

    .line 134
    goto :goto_1

    .line 136
    :pswitch_3
    invoke-static {p2, p3}, Lcom/sonyericsson/textinput/uxp/view/language/DialogUpdateConfirmation;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/language/DialogUpdateConfirmation;

    move-result-object v0

    .line 137
    goto :goto_1

    .line 139
    :pswitch_4
    invoke-static {p2, p3}, Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;

    move-result-object v0

    .line 141
    goto :goto_1

    .line 125
    nop

    :sswitch_data_0
    .sparse-switch
        -0x790b3d91 -> :sswitch_2
        -0x496ddde6 -> :sswitch_1
        -0x24a57dfe -> :sswitch_0
        -0x234bd177 -> :sswitch_4
        -0x14d8ea50 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
