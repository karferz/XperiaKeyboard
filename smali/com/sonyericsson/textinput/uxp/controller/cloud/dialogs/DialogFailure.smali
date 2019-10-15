.class public Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogFailure;
.super Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudDialogBase;
.source "DialogFailure.java"


# static fields
.field public static final BUNDLE_REASON:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "TI_DialogFailure"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogFailure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_failure_reason"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogFailure;->BUNDLE_REASON:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudDialogBase;-><init>()V

    return-void
.end method

.method protected static createBundle(I)Landroid/os/Bundle;
    .locals 2
    .param p0, "messageResId"    # I

    .prologue
    .line 40
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 41
    .local v0, "args":Landroid/os/Bundle;
    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogFailure;->BUNDLE_REASON:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    return-object v0
.end method

.method public static newInstance(I)Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogFailure;
    .locals 2
    .param p0, "messageResId"    # I

    .prologue
    .line 33
    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogFailure;

    invoke-direct {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogFailure;-><init>()V

    .line 34
    .local v1, "dialogFailure":Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogFailure;
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogFailure;->createBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 35
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogFailure;->setArguments(Landroid/os/Bundle;)V

    .line 36
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogFailure;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogFailure;->BUNDLE_REASON:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 48
    .local v1, "messageResId":I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogFailure;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 50
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 51
    const v2, 0x7f070019

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 52
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogFailure;->isConfirmed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    .line 58
    .local v0, "result":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/DialogFailure;->getUserConfirmationListener()Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/UserConfirmationListener;

    move-result-object v1

    const-string v2, "TI_DialogFailure"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/UserConfirmationListener;->onUserConfirmation(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 59
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudDialogBase;->onDismiss(Landroid/content/DialogInterface;)V

    .line 60
    return-void

    .line 57
    .end local v0    # "result":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
