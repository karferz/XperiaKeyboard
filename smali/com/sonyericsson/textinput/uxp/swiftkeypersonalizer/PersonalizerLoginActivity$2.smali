.class Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$2;
.super Ljava/lang/Object;
.source "PersonalizerLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$accounts:[Landroid/accounts/Account;

.field final synthetic val$manager:Landroid/accounts/AccountManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;Landroid/accounts/AccountManager;[Landroid/accounts/Account;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$2;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$2;->val$manager:Landroid/accounts/AccountManager;

    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$2;->val$accounts:[Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$2;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$2;->val$manager:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$2;->val$accounts:[Landroid/accounts/Account;

    aget-object v2, v2, p2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->access$000(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;Landroid/accounts/AccountManager;Landroid/accounts/Account;)V

    .line 146
    return-void
.end method
