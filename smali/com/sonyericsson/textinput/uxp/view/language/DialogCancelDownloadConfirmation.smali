.class public Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;
.super Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;
.source "DialogCancelDownloadConfirmation.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TI_DialogCancelDownloadConfirmation"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;
    .locals 2
    .param p0, "languageIso3"    # Ljava/lang/String;
    .param p1, "showReason"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;

    invoke-direct {v1}, Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;-><init>()V

    .line 29
    .local v1, "dialogConfirmation":Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;
    invoke-static {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;->createBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 30
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;->setArguments(Landroid/os/Bundle;)V

    .line 31
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;->getLanguageLayoutConfig()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;->getLanguageIso3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 38
    const v1, 0x7f0700d7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 39
    const v1, 0x7f070018

    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 45
    const v1, 0x7f07001c

    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation$2;-><init>(Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;->getDialogConfirmationListener()Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase$DialogConfirmationListener;

    move-result-object v0

    .line 63
    .local v0, "dialogConfirmationListener":Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase$DialogConfirmationListener;
    const-string v1, "TI_DialogCancelDownloadConfirmation"

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;->getLanguageIso3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;->getShowReason()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;->isConfirmed()Z

    move-result v4

    .line 63
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase$DialogConfirmationListener;->onDialogConfirmation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 65
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->onDismiss(Landroid/content/DialogInterface;)V

    .line 66
    return-void
.end method
