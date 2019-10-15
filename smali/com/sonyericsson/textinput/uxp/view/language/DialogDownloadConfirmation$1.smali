.class Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation$1;
.super Ljava/lang/Object;
.source "DialogDownloadConfirmation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->setIsConfirmed(Z)V

    .line 56
    return-void
.end method
