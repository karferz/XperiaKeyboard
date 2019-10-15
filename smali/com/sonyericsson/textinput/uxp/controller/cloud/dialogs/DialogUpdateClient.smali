.class public Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogUpdateClient;
.super Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudDialogBase;
.source "DialogUpdateClient.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TI_DialogUpdateClient"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudDialogBase;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogUpdateClient;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogUpdateClient;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogUpdateClient;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogUpdateClient;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070125

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 36
    const v1, 0x7f070124

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 37
    const v1, 0x7f070123

    new-instance v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogUpdateClient$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogUpdateClient$1;-><init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogUpdateClient;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 44
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 45
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogUpdateClient;->isConfirmed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    .line 51
    .local v0, "result":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogUpdateClient;->getUserConfirmationListener()Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/UserConfirmationListener;

    move-result-object v1

    const-string v2, "TI_DialogUpdateClient"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/UserConfirmationListener;->onUserConfirmation(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 52
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudDialogBase;->onDismiss(Landroid/content/DialogInterface;)V

    .line 53
    return-void

    .line 50
    .end local v0    # "result":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
