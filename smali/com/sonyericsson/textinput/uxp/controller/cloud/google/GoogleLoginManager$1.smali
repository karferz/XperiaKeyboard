.class Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$1;
.super Landroid/os/AsyncTask;
.source "GoogleLoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->getGoogleToken(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;

.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$1;->val$accountName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    const/4 v2, 0x0

    .line 230
    .local v2, "token":Ljava/lang/String;
    const/4 v0, 0x0

    .line 232
    .local v0, "accountId":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$1;->val$accountName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getAccountId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$1;->val$accountName:Ljava/lang/String;

    const-string v5, "oauth2:server:client_id:489915510622-hop7hlv5d25me0b139knr9uq450c9cr5.apps.googleusercontent.com:api_scope:https://www.googleapis.com/auth/plus.me"

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->access$000(Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->access$000(Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/auth/GoogleAuthUtil;->invalidateToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 241
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$1;->val$accountName:Ljava/lang/String;

    const-string v5, "oauth2:server:client_id:489915510622-hop7hlv5d25me0b139knr9uq450c9cr5.apps.googleusercontent.com:api_scope:https://www.googleapis.com/auth/plus.me"

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 260
    :cond_0
    :goto_0
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Lcom/google/android/gms/auth/UserRecoverableAuthException;
    invoke-virtual {v1}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->access$100(Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 245
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->access$200(Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const v5, 0x1d97c

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 247
    const-string v2, "recoverable"

    goto :goto_0

    .line 252
    .end local v1    # "e":Lcom/google/android/gms/auth/UserRecoverableAuthException;
    :catch_1
    move-exception v1

    .line 253
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get token from Google, network problem? : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 254
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 253
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 256
    .local v1, "e":Lcom/google/android/gms/auth/GoogleAuthException;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get token from Google, authentication problem. : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 257
    invoke-virtual {v1}, Lcom/google/android/gms/auth/GoogleAuthException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 256
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 225
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$1;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "tokenAccountPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 269
    .local v1, "showError":Z
    if-eqz p1, :cond_1

    .line 270
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 271
    .local v2, "token":Ljava/lang/String;
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 272
    .local v0, "accountId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 273
    const-string v3, "recoverable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 274
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;

    invoke-static {v3, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->access$402(Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->access$500(Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;)Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;

    move-result-object v3

    new-instance v4, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    sget-object v5, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Google:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;

    .line 276
    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->access$400(Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;-><init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;Ljava/lang/String;)V

    .line 275
    invoke-interface {v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;->onTokenReceived(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;)V

    .line 278
    :cond_0
    const/4 v1, 0x0

    .line 281
    .end local v0    # "accountId":Ljava/lang/String;
    .end local v2    # "token":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 283
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;

    const v4, 0x7f070031

    invoke-static {v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->access$600(Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;I)V

    .line 285
    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 225
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$1;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
