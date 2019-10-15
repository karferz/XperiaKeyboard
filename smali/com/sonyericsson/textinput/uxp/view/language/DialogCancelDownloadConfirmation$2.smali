.class Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation$2;
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
    .line 45
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 48
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 50
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 51
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSwiftKeyLanguagePackHandler()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    move-result-object v1

    .line 52
    .local v1, "swiftKeyLanguagePackHandler":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;->getLanguageIso3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->cancelDownload(Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/language/DialogCancelDownloadConfirmation;->setIsConfirmed(Z)V

    .line 54
    return-void
.end method
