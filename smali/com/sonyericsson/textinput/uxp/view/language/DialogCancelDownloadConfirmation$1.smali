.class Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation$1;
.super Ljava/lang/Object;
.source "DialogCancelDownloadConfirmation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 43
    return-void
.end method
