.class public Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$AlertDialogManager;
.super Ljava/lang/Object;
.source "MyWordsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertDialogManager"
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAlertDialog(Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "alertDialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 512
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$AlertDialogManager;->mAlertDialog:Landroid/app/AlertDialog;

    .line 513
    return-void
.end method

.method public dismissAlertDialog()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$AlertDialogManager;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$AlertDialogManager;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$AlertDialogManager;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$AlertDialogManager;->mAlertDialog:Landroid/app/AlertDialog;

    .line 520
    :cond_0
    return-void
.end method
