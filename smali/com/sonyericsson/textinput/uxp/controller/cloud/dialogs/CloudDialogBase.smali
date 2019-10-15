.class public Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudDialogBase;
.super Lcom/sonyericsson/textinput/uxp/view/language/DialogBase;
.source "CloudDialogBase.java"


# instance fields
.field private mIsConfirmed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getUserConfirmationListener()Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/UserConfirmationListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudDialogBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 41
    .local v0, "context":Landroid/content/Context;
    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/UserConfirmationListener;

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method protected isConfirmed()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudDialogBase;->mIsConfirmed:Z

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/language/DialogBase;->onAttach(Landroid/app/Activity;)V

    .line 32
    instance-of v0, p1, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/UserConfirmationListener;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DialogConfirmationListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    return-void
.end method

.method protected setIsConfirmed(Z)V
    .locals 0
    .param p1, "mConfirm"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudDialogBase;->mIsConfirmed:Z

    .line 27
    return-void
.end method
