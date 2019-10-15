.class public Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;
.super Ljava/lang/Object;
.source "CloudUserUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;,
        Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$ICloudTaskResultListener;,
        Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;,
        Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NOT_STARTED_AS_SYNC_HAS_BEEN_CANCELLED:Ljava/lang/String; = " not started as sync has been cancelled"

.field private static final NOT_STARTED_AS_SYNC_HAS_BEEN_DISABLED:Ljava/lang/String; = " not started as sync has been disabled"

.field private static final TAG:Ljava/lang/String;

.field private static final sRunningAndPendingTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->sRunningAndPendingTasks:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->handleTaskFinish(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;)V

    return-void
.end method

.method public static declared-synchronized cancelCancelableTasks()V
    .locals 5

    .prologue
    .line 140
    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->sRunningAndPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "runningOrPendingTaskDescription":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "runningOrPendingTaskDescription":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;
    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;

    .line 141
    .restart local v0    # "runningOrPendingTaskDescription":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;
    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;->mTask:Landroid/os/AsyncTask;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 143
    :cond_0
    monitor-exit v2

    return-void
.end method

.method public static clearSyncedUserData(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;)V
    .locals 8
    .param p0, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 205
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->CLEAR_SYNCED_USER_DATA:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    .line 206
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->getCurrentClientVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/SSLUtils;->createSSLContext(Landroid/content/Context;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    sget-object v7, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->HIGH:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    move-object v3, p0

    move-object v4, p1

    move-object v6, v5

    .line 205
    invoke-static/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->evaluateTokenAndRunAsyncTask(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$ICloudTaskResultListener;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;)V

    .line 208
    return-void
.end method

.method public static deleteUserData(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;)V
    .locals 8
    .param p0, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 180
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->DELETE:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->getCurrentClientVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/SSLUtils;->createSSLContext(Landroid/content/Context;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    sget-object v7, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->MEDIUM:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    move-object v3, p0

    move-object v4, p1

    move-object v6, v5

    .line 180
    invoke-static/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->evaluateTokenAndRunAsyncTask(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$ICloudTaskResultListener;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;)V

    .line 183
    return-void
.end method

.method private static evaluateTokenAndRunAsyncTask(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$ICloudTaskResultListener;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;)V
    .locals 12
    .param p0, "task"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;
    .param p1, "currentVersion"    # Ljava/lang/String;
    .param p2, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p3, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "database"    # Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;
    .param p6, "cloudTaskResultListener"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$ICloudTaskResultListener;
    .param p7, "taskPriority"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    .prologue
    .line 269
    invoke-interface {p3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCloudLoginIdToken()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    move-result-object v11

    .line 270
    .local v11, "idToken":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;->getCloudLoginType()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    move-result-object v10

    .line 272
    .local v10, "cloudLoginType":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    :goto_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Google:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    invoke-virtual {v10, v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    const/4 v8, 0x0

    sget-object v9, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Google:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->runAsyncTask(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$ICloudTaskResultListener;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)V

    .line 279
    return-void

    .line 270
    .end local v10    # "cloudLoginType":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    :cond_0
    sget-object v10, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Unknown:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    goto :goto_0

    .line 276
    .restart local v10    # "cloudLoginType":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getCloudAccessToken(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Ljava/lang/String;
    .locals 1
    .param p0, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .prologue
    .line 256
    invoke-interface {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCloudAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentClientVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getCurrentVersion(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 153
    .local v0, "deviceId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "deviceId":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "deviceId":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 162
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 163
    .local v0, "manufacturer":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 165
    .local v1, "model":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    invoke-static {v1}, Lcom/sonyericsson/ned/util/StringUtil;->capitalizeInitialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    :goto_0
    return-object v2

    .line 168
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/sonyericsson/ned/util/StringUtil;->capitalizeInitialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    .line 169
    invoke-virtual {v3}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static declared-synchronized handleScheduling(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;)Z
    .locals 8
    .param p0, "pendingTaskDescription"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 55
    const-class v3, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$2;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$cloud$CloudUserUtil$TaskPriority:[I

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;->mPriority:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->ordinal()I

    move-result v5

    aget v4, v4, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v4, :pswitch_data_0

    .line 123
    :cond_0
    :goto_0
    monitor-exit v3

    return v1

    .line 58
    :pswitch_0
    :try_start_1
    sget-object v4, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->sRunningAndPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;

    .line 59
    .local v0, "runningOrPendingTaskDescription":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;
    iget-object v5, v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;->mPriority:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    sget-object v6, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->LOW:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    if-ne v5, v6, :cond_1

    .line 60
    iget-object v5, v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;->mTask:Landroid/os/AsyncTask;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/AsyncTask;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 55
    .end local v0    # "runningOrPendingTaskDescription":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    .line 68
    :pswitch_1
    :try_start_2
    sget-object v4, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->sRunningAndPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;

    .line 69
    .restart local v0    # "runningOrPendingTaskDescription":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;
    iget-object v5, v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;->mPriority:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    sget-object v6, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->HIGH:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    if-ne v5, v6, :cond_2

    goto :goto_0

    .line 93
    .end local v0    # "runningOrPendingTaskDescription":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;
    :cond_3
    :pswitch_2
    sget-object v4, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->sRunningAndPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;

    .line 94
    .restart local v0    # "runningOrPendingTaskDescription":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;
    iget-object v5, v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;->mType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;->mType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    if-ne v5, v6, :cond_4

    .line 95
    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;->mPriority:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;->mPriority:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    invoke-static {v2, v4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->isHigherOrSamePriority(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;->mPriority:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    iput-object v2, v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;->mPriority:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    goto :goto_0

    .line 115
    .end local v0    # "runningOrPendingTaskDescription":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;
    :cond_5
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;->mTask:Landroid/os/AsyncTask;

    sget-object v5, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Void;

    const/4 v7, 0x0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Void;

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 116
    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->sRunningAndPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    .line 123
    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static declared-synchronized handleTaskFinish(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;)V
    .locals 2
    .param p0, "finishedTaskDescription"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;

    .prologue
    .line 132
    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->sRunningAndPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit v1

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isHigherOrSamePriority(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;)Z
    .locals 2
    .param p0, "existingPriority"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;
    .param p1, "pendingPriority"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static runAsyncTask(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$ICloudTaskResultListener;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)V
    .locals 12
    .param p0, "task"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;
    .param p1, "clientVersion"    # Ljava/lang/String;
    .param p2, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p3, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "database"    # Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;
    .param p6, "cloudTaskResultListener"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$ICloudTaskResultListener;
    .param p7, "taskPriority"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;
    .param p8, "tokenData"    # Ljava/lang/String;
    .param p9, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .prologue
    .line 293
    new-instance v10, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;

    move-object/from16 v0, p7

    invoke-direct {v10, p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;-><init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;)V

    .line 295
    .local v10, "taskDescription":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;
    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;

    move-object v2, p3

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object v5, p0

    move-object v6, p1

    move-object/from16 v7, p4

    move-object v8, p2

    move-object/from16 v9, p5

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$1;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;Ljava/lang/String;Landroid/content/Context;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$ICloudTaskResultListener;)V

    .line 428
    .local v1, "asyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    iput-object v1, v10, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;->mTask:Landroid/os/AsyncTask;

    .line 429
    invoke-static {v10}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->handleScheduling(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;)Z

    .line 430
    return-void
.end method

.method public static runCreateCloudAccessToken(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$ICloudTaskResultListener;)V
    .locals 10
    .param p0, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tokenData"    # Ljava/lang/String;
    .param p3, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    .param p4, "cloudTaskResultListener"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$ICloudTaskResultListener;

    .prologue
    .line 222
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->CREATE_ACCESS_TOKEN:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->getCurrentClientVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/SSLUtils;->createSSLContext(Landroid/content/Context;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    const/4 v5, 0x0

    sget-object v7, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->HIGH:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p4

    move-object v8, p2

    move-object v9, p3

    .line 222
    invoke-static/range {v0 .. v9}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->runAsyncTask(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$ICloudTaskResultListener;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)V

    .line 225
    return-void
.end method

.method public static runSync(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;)V
    .locals 8
    .param p0, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "database"    # Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;

    .prologue
    .line 240
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->SYNC:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->getCurrentClientVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/SSLUtils;->createSSLContext(Landroid/content/Context;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    const/4 v6, 0x0

    sget-object v7, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->LOW:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 240
    invoke-static/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->evaluateTokenAndRunAsyncTask(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$ICloudTaskResultListener;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;)V

    .line 243
    return-void
.end method

.method public static runSyncInit(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;)V
    .locals 8
    .param p0, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 234
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->INIT:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->getCurrentClientVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/SSLUtils;->createSSLContext(Landroid/content/Context;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    sget-object v7, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->LOW:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    move-object v3, p0

    move-object v4, p1

    move-object v6, v5

    .line 234
    invoke-static/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->evaluateTokenAndRunAsyncTask(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$ICloudTaskResultListener;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;)V

    .line 237
    return-void
.end method

.method public static unregisterDevice(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;)V
    .locals 8
    .param p0, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 192
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->UNREGISTER_DEVICE:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    .line 193
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->getCurrentClientVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/SSLUtils;->createSSLContext(Landroid/content/Context;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    sget-object v7, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->MEDIUM:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    move-object v3, p0

    move-object v4, p1

    move-object v6, v5

    .line 192
    invoke-static/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->evaluateTokenAndRunAsyncTask(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$ICloudTaskResultListener;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;)V

    .line 195
    return-void
.end method
