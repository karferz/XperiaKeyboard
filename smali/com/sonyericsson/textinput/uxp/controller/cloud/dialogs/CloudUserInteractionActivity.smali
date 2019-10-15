.class public Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudUserInteractionActivity;
.super Landroid/app/Activity;
.source "CloudUserInteractionActivity.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/UserConfirmationListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_USER_INTERACTION_TAG:Ljava/lang/String; = "user_interaction_tag"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudUserInteractionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudUserInteractionActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static newFailureDialogIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "messageResId"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudUserInteractionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "user_interaction_tag"

    const-string v2, "TI_DialogFailure"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogFailure;->BUNDLE_REASON:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    return-object v0
.end method

.method public static newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "userInteractionTag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudUserInteractionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "user_interaction_tag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v12, 0x7f0f0003

    const v11, 0x7f0f0002

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudUserInteractionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 69
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_7

    .line 71
    const-string v10, "user_interaction_tag"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, "userInteractionTag":Ljava/lang/String;
    const/4 v5, 0x0

    .line 75
    .local v5, "isDialog":Z
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    move v10, v8

    :goto_0
    packed-switch v10, :pswitch_data_0

    .line 92
    const/4 v5, 0x1

    .line 96
    :goto_1
    if-eqz v5, :cond_6

    .line 97
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudUserInteractionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    .line 98
    invoke-virtual {v10}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 99
    .local v3, "fragmentTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudUserInteractionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    .line 100
    invoke-virtual {v10, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/app/DialogFragment;

    .line 101
    .local v1, "dialogFragment":Landroid/app/DialogFragment;
    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {v3, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 104
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    :cond_2
    move v7, v8

    :goto_2
    packed-switch v7, :pswitch_data_1

    .line 113
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudUserInteractionActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Unknown language userInteractionTag:\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 75
    .end local v1    # "dialogFragment":Landroid/app/DialogFragment;
    .end local v3    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    :sswitch_0
    const-string v10, "TI_FragmentPrivacyPolicyAndLoginSelection"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v10, v7

    goto :goto_0

    :sswitch_1
    const-string v10, "TI_FragmentPrivacyPolicyAbout"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v10, v9

    goto :goto_0

    .line 77
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudUserInteractionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    .line 78
    .local v2, "fragment":Landroid/app/Fragment;
    if-nez v2, :cond_3

    .line 79
    new-instance v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;

    .end local v2    # "fragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;-><init>()V

    .line 81
    .restart local v2    # "fragment":Landroid/app/Fragment;
    :cond_3
    invoke-static {p0, v2, v12}, Lcom/sonyericsson/textinput/uxp/util/FragmentActivityUtil;->addFragment(Landroid/app/Activity;Landroid/app/Fragment;I)V

    goto :goto_1

    .line 84
    .end local v2    # "fragment":Landroid/app/Fragment;
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudUserInteractionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    .line 85
    .restart local v2    # "fragment":Landroid/app/Fragment;
    if-nez v2, :cond_4

    .line 86
    new-instance v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAboutFragment;

    .end local v2    # "fragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAboutFragment;-><init>()V

    .line 88
    .restart local v2    # "fragment":Landroid/app/Fragment;
    :cond_4
    invoke-static {p0, v2, v11}, Lcom/sonyericsson/textinput/uxp/util/FragmentActivityUtil;->addFragment(Landroid/app/Activity;Landroid/app/Fragment;I)V

    goto/16 :goto_1

    .line 104
    .end local v2    # "fragment":Landroid/app/Fragment;
    .restart local v1    # "dialogFragment":Landroid/app/DialogFragment;
    .restart local v3    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    :sswitch_2
    const-string v9, "TI_DialogUpdateClient"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    :sswitch_3
    const-string v7, "TI_DialogFailure"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v9

    goto :goto_2

    .line 106
    :pswitch_2
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogUpdateClient;->newInstance()Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogUpdateClient;

    move-result-object v1

    .line 116
    :goto_3
    invoke-virtual {v1, v3, v6}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 132
    .end local v1    # "dialogFragment":Landroid/app/DialogFragment;
    .end local v3    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    .end local v5    # "isDialog":Z
    .end local v6    # "userInteractionTag":Ljava/lang/String;
    :cond_5
    :goto_4
    return-void

    .line 109
    .restart local v1    # "dialogFragment":Landroid/app/DialogFragment;
    .restart local v3    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    .restart local v5    # "isDialog":Z
    .restart local v6    # "userInteractionTag":Ljava/lang/String;
    :pswitch_3
    sget-object v7, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogFailure;->BUNDLE_REASON:Ljava/lang/String;

    .line 110
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 109
    invoke-static {v7}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogFailure;->newInstance(I)Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogFailure;

    move-result-object v1

    .line 111
    goto :goto_3

    .line 119
    .end local v1    # "dialogFragment":Landroid/app/DialogFragment;
    .end local v3    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudUserInteractionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 120
    .local v0, "actionbar":Landroid/app/ActionBar;
    if-eqz v0, :cond_5

    .line 121
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_4

    .line 130
    .end local v0    # "actionbar":Landroid/app/ActionBar;
    .end local v5    # "isDialog":Z
    .end local v6    # "userInteractionTag":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudUserInteractionActivity;->finish()V

    goto :goto_4

    .line 75
    nop

    :sswitch_data_0
    .sparse-switch
        -0x32e7f093 -> :sswitch_1
        0x3897c5ba -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 104
    :sswitch_data_1
    .sparse-switch
        -0x573c1948 -> :sswitch_3
        -0x354d0a7a -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 136
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 139
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudUserInteractionActivity;->onBackPressed()V

    .line 140
    const/4 v0, 0x1

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onUserConfirmation(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 2
    .param p1, "dialogTag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "returnBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "resultCode"    # I

    .prologue
    .line 148
    if-nez p2, :cond_0

    .line 149
    invoke-virtual {p0, p3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudUserInteractionActivity;->setResult(I)V

    .line 155
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudUserInteractionActivity;->finish()V

    .line 156
    return-void

    .line 151
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 152
    .local v0, "dataIntent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 153
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudUserInteractionActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method
