.class public Lcom/sonyericsson/textinput/uxp/view/language/DialogBase;
.super Landroid/app/DialogFragment;
.source "DialogBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogBase;->setRetainInstance(Z)V

    .line 22
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogBase;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 29
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogBase;->getRetainInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 33
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 34
    return-void
.end method
