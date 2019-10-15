.class public Lcom/sonyericsson/textinput/uxp/view/language/DialogTooManyLanguages;
.super Lcom/sonyericsson/textinput/uxp/view/language/DialogBase;
.source "DialogTooManyLanguages.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TI_DialogTooManyLanguages"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogBase;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/sonyericsson/textinput/uxp/view/language/DialogTooManyLanguages;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/language/DialogTooManyLanguages;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogTooManyLanguages;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogTooManyLanguages;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 28
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0700d2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 29
    const v1, 0x7f0700dc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 30
    const v1, 0x7f070019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 31
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
