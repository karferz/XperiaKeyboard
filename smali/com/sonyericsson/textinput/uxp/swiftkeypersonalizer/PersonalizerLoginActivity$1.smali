.class Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$1;
.super Ljava/lang/Object;
.source "PersonalizerLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->createChooseGoogleAccountDialog(Landroid/accounts/AccountManager;[Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->finish()V

    .line 141
    return-void
.end method
