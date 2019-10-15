.class Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$3;
.super Ljava/lang/Thread;
.source "PersonalizerLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->authorizeGmailAccount(Landroid/accounts/AccountManager;Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$resultBundle:Landroid/accounts/AccountManagerFuture;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;Landroid/accounts/AccountManagerFuture;Landroid/accounts/Account;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$3;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$3;->val$resultBundle:Landroid/accounts/AccountManagerFuture;

    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$3;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$3;->val$resultBundle:Landroid/accounts/AccountManagerFuture;

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 159
    .local v7, "bundle":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    const-string v0, "authtoken"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "authtoken"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "token":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$3;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$3;->val$account:Landroid/accounts/Account;

    invoke-static/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->access$100(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    .end local v2    # "token":Ljava/lang/String;
    .end local v7    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v8

    .line 165
    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$3;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;

    const/4 v1, 0x1

    invoke-static {v0, v9, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->access$200(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;IZ)V

    goto :goto_0

    .line 167
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 168
    .local v8, "e":Landroid/accounts/OperationCanceledException;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Authorizing gmail account canceled"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$3;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->access$200(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;IZ)V

    goto :goto_0

    .line 164
    .end local v8    # "e":Landroid/accounts/OperationCanceledException;
    :catch_2
    move-exception v8

    goto :goto_1
.end method
