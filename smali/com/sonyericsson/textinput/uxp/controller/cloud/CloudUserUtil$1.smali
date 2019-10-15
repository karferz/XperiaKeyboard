.class final Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;
.super Landroid/os/AsyncTask;
.source "CloudUserUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->runAsyncTask(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$ICloudTaskResultListener;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$clientVersion:Ljava/lang/String;

.field final synthetic val$cloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

.field final synthetic val$cloudTaskResultListener:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$ICloudTaskResultListener;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$database:Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;

.field final synthetic val$settings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field final synthetic val$sslContext:Ljavax/net/ssl/SSLContext;

.field final synthetic val$task:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

.field final synthetic val$taskDescription:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;

.field final synthetic val$tokenData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;Ljava/lang/String;Landroid/content/Context;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$ICloudTaskResultListener;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$settings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$tokenData:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$cloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$task:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    iput-object p5, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$clientVersion:Ljava/lang/String;

    iput-object p6, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$context:Landroid/content/Context;

    iput-object p7, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$sslContext:Ljavax/net/ssl/SSLContext;

    iput-object p8, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$database:Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;

    iput-object p9, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$taskDescription:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;

    iput-object p10, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$cloudTaskResultListener:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$ICloudTaskResultListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private doesAccessTokenNeedRefresh(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z
    .locals 1
    .param p1, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .prologue
    .line 424
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Npam3:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private reportResult(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$cloudTaskResultListener:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$ICloudTaskResultListener;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$cloudTaskResultListener:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$ICloudTaskResultListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$ICloudTaskResultListener;->onCloudTaskResult(Z)V

    .line 415
    :cond_0
    return-void
.end method

.method private storeCloudIdToken(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;)V
    .locals 1
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p2, "idToken"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    .prologue
    .line 418
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 419
    .local v0, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setCloudIdToken(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;)V

    .line 420
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 421
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11
    .param p1, "param"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    .line 300
    const/4 v10, 0x1

    .line 301
    .local v10, "isOrdinarySyncTaskAllowed":Z
    const-string v8, ""

    .line 302
    .local v8, "disallowReason":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$settings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isBackupAndSyncEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 303
    const/4 v10, 0x0

    .line 304
    const-string v8, " not started as sync has been disabled"

    .line 320
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 321
    .local v0, "tokenOrTicketData":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$tokenData:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 322
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$settings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    new-instance v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$cloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$tokenData:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;-><init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->storeCloudIdToken(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;)V

    .line 323
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$tokenData:Ljava/lang/String;

    .line 324
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$cloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->doesAccessTokenNeedRefresh(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$task:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->CREATE_ACCESS_TOKEN:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    if-eq v1, v2, :cond_1

    .line 326
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$clientVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$context:Landroid/content/Context;

    .line 327
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$sslContext:Ljavax/net/ssl/SSLContext;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$settings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$cloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .line 326
    invoke-static/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->runCreateAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z

    .line 337
    :cond_1
    :goto_1
    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$2;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$cloud$CloudUserUtil$BackupAndSyncTask:[I

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$task:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 388
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_2
    return-object v1

    .line 305
    .end local v0    # "tokenOrTicketData":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    const/4 v10, 0x0

    .line 307
    const-string v8, " not started as sync has been cancelled"

    goto :goto_0

    .line 331
    .restart local v0    # "tokenOrTicketData":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$settings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCloudLoginIdToken()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    move-result-object v9

    .line 332
    .local v9, "idToken":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;->getCloudLoginType()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$cloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;->getTokenData()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 339
    .end local v9    # "idToken":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$clientVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$sslContext:Ljavax/net/ssl/SSLContext;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$settings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$cloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    invoke-static {p0, v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->runSyncDeleteUserData(Landroid/os/AsyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2

    .line 342
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$clientVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$sslContext:Ljavax/net/ssl/SSLContext;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$settings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$cloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    invoke-static {p0, v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->runSyncClearSyncedUserData(Landroid/os/AsyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2

    .line 345
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$clientVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$sslContext:Ljavax/net/ssl/SSLContext;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$settings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$cloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    invoke-static {p0, v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->runSyncUnregisterDevice(Landroid/os/AsyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2

    .line 348
    :pswitch_3
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$clientVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$context:Landroid/content/Context;

    .line 349
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$sslContext:Ljavax/net/ssl/SSLContext;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$settings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$cloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    move-object v1, p0

    move-object v2, v0

    .line 348
    invoke-static/range {v1 .. v7}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->runSyncUnregisterUser(Landroid/os/AsyncTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2

    .line 352
    :pswitch_4
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$clientVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$context:Landroid/content/Context;

    .line 353
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$sslContext:Ljavax/net/ssl/SSLContext;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$settings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$cloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .line 352
    invoke-static/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->runCreateAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_2

    .line 356
    :pswitch_5
    if-nez v10, :cond_4

    .line 360
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_2

    .line 362
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$clientVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$context:Landroid/content/Context;

    .line 363
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$sslContext:Ljavax/net/ssl/SSLContext;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$settings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$cloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    move-object v1, p0

    .line 362
    invoke-static/range {v1 .. v7}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->runSyncInit(Landroid/os/AsyncTask;Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_2

    .line 366
    :pswitch_6
    if-nez v10, :cond_5

    .line 370
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_2

    .line 372
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$clientVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$context:Landroid/content/Context;

    .line 373
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/SSLUtils;->createSSLContext(Landroid/content/Context;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$settings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$database:Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$cloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    move-object v1, p0

    .line 372
    invoke-static/range {v1 .. v7}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->runSync(Landroid/os/AsyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_2

    .line 376
    :pswitch_7
    if-nez v10, :cond_6

    .line 380
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_2

    .line 382
    :cond_6
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$clientVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$context:Landroid/content/Context;

    .line 383
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/util/SSLUtils;->createSSLContext(Landroid/content/Context;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$settings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$cloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .line 382
    invoke-static {p0, v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->runSyncListDevices(Landroid/os/AsyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_2

    .line 337
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 295
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 406
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 407
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$taskDescription:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->access$000(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;)V

    .line 408
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->reportResult(Ljava/lang/Boolean;)V

    .line 409
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 399
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 400
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->val$taskDescription:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->access$000(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;)V

    .line 401
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->reportResult(Ljava/lang/Boolean;)V

    .line 402
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 295
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
