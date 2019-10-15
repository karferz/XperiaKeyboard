.class public final Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;
.super Ljava/lang/Object;
.source "RunningCloudAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$ByteArrayStreamWriter;,
        Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;,
        Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;
    }
.end annotation


# static fields
.field private static final ACCESS_STATUS:Ljava/lang/String; = "accessStatus"

.field private static final ACCESS_SUCCESS:Ljava/lang/String; = "success"

.field private static final BACKUP_DYNAMIC_MODEL_INTERVAL:I = 0x48190800

.field private static final CLOUD_ACCESS_TOKEN:Ljava/lang/String; = "accessToken"

.field private static final DEBUG:Z = false

.field private static final DYNAMIC_MODEL_FILE_NAME:Ljava/lang/String; = "dynamic.lm"

.field private static final JSON_MESSAGE_BATCHES_CLIENT_VERSION:Ljava/lang/String; = "clientVersion"

.field private static final JSON_MESSAGE_BATCHES_DATA:Ljava/lang/String; = "batchData"

.field private static final JSON_MESSAGE_DELTA_BATCHES_NAME:Ljava/lang/String; = "messageBatches"

.field private static final JSON_MESSAGE_DELTA_MARKER:Ljava/lang/String; = "marker"

.field private static final JSON_MESSAGE_DELTA_TIMESTAMP:Ljava/lang/String; = "serverStorageTimeStamp"

.field private static final MAX_MESSAGE_FETCH_COUNT:I = 0x4e20

.field private static final MESSAGE_BATCH_FILE_NAME:Ljava/lang/String; = "messagebatch"

.field private static final MILLISECONDS_PER_DAY:I = 0x5265c00

.field private static final PATH_DEMAND_NOT_FULFILLED:Ljava/lang/String; = "pathDemandNotFulfilled"

.field private static final REFRESH_CLOUD_ACCESS_TOKEN:Ljava/lang/String; = "refreshToken"

.field private static final TAG:Ljava/lang/String; = "TI_SyncTask"

.field private static final TEMP_FOLDER:Ljava/lang/String; = "/temp/"

.field public static final URL_ENCODED_SPACE:Ljava/lang/String; = "%20"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static addMessagesToSwiftKey(Ljava/lang/String;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;)V
    .locals 24
    .param p0, "response"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageBatchInfo"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;

    .prologue
    .line 924
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 925
    .local v6, "jsonResponse":Lorg/json/JSONObject;
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;->access$300(Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;Ljava/lang/Long;)V

    .line 926
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;->access$400(Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;Ljava/lang/String;)V

    .line 928
    const-string v19, "serverStorageTimeStamp"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 929
    .local v18, "timestamp":Ljava/lang/String;
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    .line 930
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 931
    .local v7, "lastMessageTimestamp":Ljava/lang/Long;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-lez v19, :cond_0

    .line 932
    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;->access$300(Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;Ljava/lang/Long;)V

    .line 936
    .end local v7    # "lastMessageTimestamp":Ljava/lang/Long;
    :cond_0
    const-string v19, "marker"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 937
    .local v8, "marker":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_1

    .line 938
    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;->access$400(Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;Ljava/lang/String;)V

    .line 941
    :cond_1
    const/4 v12, 0x0

    .line 942
    .local v12, "messageTotal":I
    const-string v19, "messageBatches"

    .line 943
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 944
    .local v10, "messageBatches":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v4, v0, :cond_3

    .line 945
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 946
    .local v9, "messageBatch":Lorg/json/JSONObject;
    const-string v19, "clientVersion"

    .line 947
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 948
    .local v2, "clientVersion":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_2

    .line 949
    const-string v19, "batchData"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 950
    .local v13, "messagesBase64":Ljava/lang/String;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v13, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v14

    .line 951
    .local v14, "messagesCompressed":[B
    const/4 v13, 0x0

    .line 952
    invoke-static {v14}, Lcom/sonyericsson/ned/util/SemcTextUtil;->decompress([B)Ljava/lang/String;

    move-result-object v15

    .line 953
    .local v15, "messagesDecompressed":Ljava/lang/String;
    if-eqz v15, :cond_2

    .line 954
    const/4 v14, 0x0

    .line 955
    new-instance v16, Lorg/json/JSONArray;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 956
    .local v16, "messagesJSON":Lorg/json/JSONArray;
    const/4 v15, 0x0

    .line 957
    if-eqz v16, :cond_2

    .line 958
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v11

    .line 959
    .local v11, "messageCount":I
    add-int/2addr v12, v11

    .line 960
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v11, :cond_2

    .line 961
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 962
    .local v17, "sequence":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->addSequence(Ljava/lang/String;Landroid/content/Context;)V

    .line 960
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 944
    .end local v5    # "j":I
    .end local v11    # "messageCount":I
    .end local v13    # "messagesBase64":Ljava/lang/String;
    .end local v14    # "messagesCompressed":[B
    .end local v15    # "messagesDecompressed":Ljava/lang/String;
    .end local v16    # "messagesJSON":Lorg/json/JSONArray;
    .end local v17    # "sequence":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 968
    .end local v2    # "clientVersion":Ljava/lang/String;
    .end local v9    # "messageBatch":Lorg/json/JSONObject;
    :cond_3
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->writeDynamicModel()V

    .line 969
    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;->access$500(Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 976
    .end local v4    # "i":I
    .end local v6    # "jsonResponse":Lorg/json/JSONObject;
    .end local v8    # "marker":Ljava/lang/String;
    .end local v10    # "messageBatches":Lorg/json/JSONArray;
    .end local v12    # "messageTotal":I
    .end local v18    # "timestamp":Ljava/lang/String;
    :goto_2
    return-void

    .line 973
    :catch_0
    move-exception v3

    .line 974
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    const-string v19, "TI_SyncTask"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 973
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_3
.end method

.method private static addModelToSwiftKey([BLjava/lang/String;Landroid/content/Context;)Z
    .locals 10
    .param p0, "newModel"    # [B
    .param p1, "basePath"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 980
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/temp/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 981
    .local v5, "temp":Ljava/io/File;
    const/4 v2, 0x0

    .line 982
    .local v2, "stream":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 983
    .local v4, "success":Z
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 984
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/temp/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "dynamic.lm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 988
    .local v0, "downloadedModel":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 989
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 991
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 992
    invoke-static {v0, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mergeDynamicModels(Ljava/io/File;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 993
    const/4 v4, 0x1

    .line 999
    :cond_2
    if-eqz v3, :cond_3

    .line 1000
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1002
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v3

    .line 1008
    .end local v0    # "downloadedModel":Ljava/io/File;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :cond_4
    :goto_0
    return v4

    .line 999
    .restart local v0    # "downloadedModel":Ljava/io/File;
    :catchall_0
    move-exception v6

    :goto_1
    if-eqz v2, :cond_5

    .line 1000
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1002
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1004
    :catch_0
    move-exception v1

    .line 1005
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    const-string v6, "TI_SyncTask"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1004
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 999
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private static createJSONStringFromMessages(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessage;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1066
    .local p0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessage;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1067
    .local v0, "jsonArrayMessages":Lorg/json/JSONArray;
    if-eqz p0, :cond_0

    .line 1068
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessage;

    .line 1069
    .local v1, "message":Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessage;
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessage;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1072
    .end local v1    # "message":Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessage;
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static hasNoLoginIdToken(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Z
    .locals 3
    .param p0, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .prologue
    .line 158
    invoke-interface {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCloudLoginIdToken()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    move-result-object v0

    .line 159
    .local v0, "cloudLoginIdTokenOrTicket":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;->getCloudLoginType()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Npam2:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isJSONObject(Ljava/lang/String;)Z
    .locals 1
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 1076
    if-eqz p0, :cond_0

    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMultipleDevices(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Z
    .locals 2
    .param p0, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .prologue
    .line 1080
    invoke-interface {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCurrentNumberOfDevices()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 827
    const-string v0, "pathDemandNotFulfilled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseTokenJSON(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;)Z
    .locals 6
    .param p0, "jsonToken"    # Ljava/lang/String;
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 1013
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1014
    .local v2, "jsonResponse":Lorg/json/JSONObject;
    const-string v4, "success"

    const-string v5, "accessStatus"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1015
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v1

    .line 1016
    .local v1, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    const-string v4, "accessToken"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setCloudAccessToken(Ljava/lang/String;)V

    .line 1017
    const-string v4, "refreshToken"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1018
    const-string v4, "refreshToken"

    .line 1019
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1018
    invoke-interface {v1, v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setRefreshCloudAccessToken(Ljava/lang/String;)V

    .line 1021
    :cond_0
    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1028
    const/4 v3, 0x1

    .line 1032
    .end local v1    # "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    .end local v2    # "jsonResponse":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return v3

    .line 1029
    :catch_0
    move-exception v0

    .line 1030
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "TI_SyncTask"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static pathBuilder(Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Ljava/lang/String;
    .locals 10
    .param p0, "httpsMethod"    # Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;
    .param p1, "clientVersion"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "deviceName"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "oldToken"    # Ljava/lang/String;
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .prologue
    .line 835
    const-string v6, ""

    const-wide/16 v0, 0x0

    .line 836
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 835
    invoke-static/range {v0 .. v9}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->pathBuilder(Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static pathBuilder(Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Ljava/lang/String;
    .locals 5
    .param p0, "httpsMethod"    # Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;
    .param p1, "clientVersion"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "deviceName"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "oldToken"    # Ljava/lang/String;
    .param p6, "marker"    # Ljava/lang/String;
    .param p7, "lastFetchedTimestamp"    # Ljava/lang/Long;
    .param p8, "context"    # Landroid/content/Context;
    .param p9, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .prologue
    const/16 v4, 0x2f

    .line 844
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 846
    .local v0, "path":Ljava/lang/StringBuilder;
    const-string v1, "https://xperiakeyboard.sonymobile.com/api/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$1;->$SwitchMap$com$sonyericsson$textinput$uxp$util$HttpsMethodEnum:[I

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 915
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 917
    .end local v0    # "path":Ljava/lang/StringBuilder;
    :goto_1
    return-object v1

    .line 851
    .restart local v0    # "path":Ljava/lang/StringBuilder;
    :pswitch_0
    const-string v1, "/postMessages/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 855
    :pswitch_1
    const-string v1, "/getDeltaSince/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 859
    :pswitch_2
    const-string v1, "/getDeltaSinceCont/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 862
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 864
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 867
    :pswitch_3
    const-string v1, "/postDynamicModel/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 871
    :pswitch_4
    const-string v1, "/getDynamicModel/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 875
    :pswitch_5
    const-string v1, "/generateTokensV2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 878
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 880
    invoke-static {p9}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->getUriString(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 882
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 885
    :pswitch_6
    const-string v1, "/getOtherDevices/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 889
    :pswitch_7
    const-string v1, "/deleteUserData/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 893
    :pswitch_8
    const-string v1, "/clearSyncedData/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 897
    :pswitch_9
    const-string v1, "/unregisterDevice/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 901
    :pswitch_a
    const-string v1, "/unregisterUser/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 905
    :pswitch_b
    const-string v1, "/renewRefreshToken/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 909
    :pswitch_c
    const-string v1, "/renewAccessToken/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 912
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 917
    .end local v0    # "path":Ljava/lang/StringBuilder;
    :cond_0
    const-string v1, "pathDemandNotFulfilled"

    goto/16 :goto_1

    .line 849
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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private static persistSyncDeactivation(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V
    .locals 4
    .param p0, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 440
    invoke-interface {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 441
    .local v0, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isBackupAndSyncEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    invoke-interface {v0, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setBackupAndSync(Z)V

    .line 444
    :cond_0
    invoke-interface {v0, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setCurrentNumberOfDevices(I)V

    .line 445
    invoke-interface {v0, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setOtherDeviceInfo(Ljava/lang/String;)V

    .line 446
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setOldBackupAndSyncDataExists(Z)V

    .line 447
    invoke-interface {v0, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setCloudAccessToken(Ljava/lang/String;)V

    .line 448
    invoke-interface {v0, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setRefreshCloudAccessToken(Ljava/lang/String;)V

    .line 449
    invoke-interface {v0, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setCloudSyncTryCount(I)V

    .line 450
    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setLastSyncTime(J)V

    .line 451
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 452
    return-void
.end method

.method private static refreshCloudTokens(Landroid/os/AsyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;)Z
    .locals 7
    .param p1, "clientVersion"    # Ljava/lang/String;
    .param p2, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p3, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p4, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    .param p5, "isCancellable"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLContext;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;",
            "Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;",
            "Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "asyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const/4 v6, 0x0

    .line 168
    invoke-interface {p3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getRefreshCloudAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "refreshTokenBeforeRenewUpdate":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;->TRUE:Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;

    if-eq p5, v0, :cond_1

    .line 170
    :cond_0
    invoke-static {p3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->hasNoLoginIdToken(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1, v2, p2, p3, p4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->syncRenewCloudRefreshToken(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v6

    .line 192
    :goto_0
    return v0

    .line 179
    :cond_2
    invoke-interface {p3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getRefreshCloudAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "refreshTokenAfterRenewUpdate":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;->TRUE:Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;

    if-eq p5, v0, :cond_4

    .line 181
    :cond_3
    invoke-static {p3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->hasNoLoginIdToken(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->syncRenewCloudAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v0, v6

    .line 189
    goto :goto_0

    .line 192
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static runCreateAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z
    .locals 13
    .param p0, "ticketOrTokenData"    # Ljava/lang/String;
    .param p1, "clientVersion"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p4, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .prologue
    .line 655
    if-nez p0, :cond_0

    .line 656
    const-string v2, "TI_SyncTask"

    const-string v3, "runCreateAccessToken with null ticketOrTokenData"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/4 v10, 0x0

    .line 685
    :goto_0
    return v10

    .line 660
    :cond_0
    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->GET_TOKEN:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    .line 661
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v4}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "%20"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 663
    invoke-interface/range {p4 .. p4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCloudAccessToken()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EMPTY"

    .line 662
    invoke-static {v3, v4}, Lcom/sonyericsson/ned/util/StringUtil;->replaceIfEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 660
    invoke-static/range {v2 .. v9}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->pathBuilder(Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Ljava/lang/String;

    move-result-object v12

    .line 665
    .local v12, "postTokenPath":Ljava/lang/String;
    invoke-static {v12}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->isValidPath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 669
    const/4 v10, 0x0

    goto :goto_0

    .line 672
    :cond_1
    move-object/from16 v0, p3

    invoke-static {v12, p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->sendPostRequestWithResponseBody(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;)Ljava/lang/String;

    move-result-object v11

    .line 675
    .local v11, "json":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 676
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v11, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->parseTokenJSON(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;)Z

    move-result v10

    .line 680
    .local v10, "isSuccess":Z
    goto :goto_0

    .line 685
    .end local v10    # "isSuccess":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private static runGetMessages(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z
    .locals 15
    .param p0, "clientVersion"    # Ljava/lang/String;
    .param p1, "cloudAccessToken"    # Ljava/lang/String;
    .param p2, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .prologue
    .line 526
    sget-object v1, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->GET_DELTA_SINCE:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    .line 527
    .local v1, "method":Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;
    const/4 v12, 0x0

    .line 528
    .local v12, "isFinished":Z
    new-instance v13, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;

    const/4 v2, 0x0

    invoke-direct {v13, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;-><init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$1;)V

    .line 529
    .local v13, "messageBatchInfo":Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;
    :goto_0
    if-nez v12, :cond_3

    .line 530
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 532
    invoke-static {v13}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;->access$100(Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v13}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;->access$200(Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    move-object v2, p0

    move-object/from16 v5, p1

    move-object/from16 v10, p4

    .line 530
    invoke-static/range {v1 .. v10}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->pathBuilder(Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Ljava/lang/String;

    move-result-object v11

    .line 535
    .local v11, "getPath":Ljava/lang/String;
    invoke-static {v11}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->isValidPath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 539
    const/4 v2, 0x0

    .line 557
    .end local v11    # "getPath":Ljava/lang/String;
    :goto_1
    return v2

    .line 543
    .restart local v11    # "getPath":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p2

    invoke-static {v11, v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->sendGetRequest(Ljava/lang/String;Ljavax/net/ssl/SSLContext;)Landroid/util/Pair;

    move-result-object v14

    .line 544
    .local v14, "responseDataAndResultCode":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v14, :cond_1

    iget-object v2, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->isJSONObject(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 549
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 552
    :cond_2
    iget-object v2, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-static {v2, v0, v13}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->addMessagesToSwiftKey(Ljava/lang/String;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;)V

    .line 553
    sget-object v1, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->GET_DELTA_SINCE_CONT:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    .line 554
    invoke-virtual {v13}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;->isFinishedFetchingMessages()Z

    move-result v12

    .line 555
    goto :goto_0

    .line 557
    .end local v11    # "getPath":Ljava/lang/String;
    .end local v14    # "responseDataAndResultCode":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method static runSync(Landroid/os/AsyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z
    .locals 12
    .param p1, "clientVersion"    # Ljava/lang/String;
    .param p2, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p3, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "database"    # Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;
    .param p6, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLContext;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;",
            "Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "asyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 154
    :goto_0
    return v0

    .line 100
    :cond_0
    invoke-interface {p3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v7

    .line 101
    .local v7, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {p3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCloudSyncTryCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v7, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setCloudSyncTryCount(I)V

    .line 102
    invoke-interface {v7}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 105
    .local v8, "currentTimeMillis":J
    invoke-interface {p3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getLastBackupTimeDynamicModel()J

    move-result-wide v2

    sub-long v10, v8, v2

    .line 107
    .local v10, "timeSinceLastSyncDynamicModel":J
    invoke-static {p3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->hasNoLoginIdToken(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v5, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;->TRUE:Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p6

    .line 108
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->refreshCloudTokens(Landroid/os/AsyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    const/4 v0, 0x0

    goto :goto_0

    .line 116
    :cond_1
    invoke-interface {p3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCloudAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "accessTokenAfterRefresh":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p4

    .line 118
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->syncListDevices(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 123
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, p1

    move-object v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v5, p3

    move-object/from16 v6, p6

    .line 127
    invoke-static/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->syncMessageTask(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 134
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 137
    :cond_5
    const-wide/32 v2, 0x48190800

    cmp-long v0, v10, v2

    if-lez v0, :cond_7

    .line 138
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    .line 139
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->syncUploadModelTask(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 146
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :cond_7
    invoke-static {p3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->setSyncSuccessful(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    .line 154
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method protected static runSyncClearSyncedUserData(Landroid/os/AsyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z
    .locals 11
    .param p1, "clientVersion"    # Ljava/lang/String;
    .param p2, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p3, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p4, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLContext;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;",
            "Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 332
    .local p0, "asyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    invoke-static {p3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->hasNoLoginIdToken(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v5, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;->FALSE:Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->refreshCloudTokens(Landroid/os/AsyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    const/4 v0, 0x0

    .line 354
    :goto_0
    return v0

    .line 340
    :cond_0
    invoke-interface {p3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCloudAccessToken()Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, "cloudAccessToken":Ljava/lang/String;
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->CLEAR_SYNCED_DATA:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->pathBuilder(Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Ljava/lang/String;

    move-result-object v8

    .line 345
    .local v8, "deleteUserDataPath":Ljava/lang/String;
    invoke-static {v8, p2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->sendGetRequest(Ljava/lang/String;Ljavax/net/ssl/SSLContext;)Landroid/util/Pair;

    move-result-object v10

    .line 347
    .local v10, "responseDataAndResultCode":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v9

    .line 348
    .local v9, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setOldBackupAndSyncDataExists(Z)V

    .line 349
    invoke-interface {v9}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 354
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static runSyncDeleteUserData(Landroid/os/AsyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z
    .locals 11
    .param p1, "clientVersion"    # Ljava/lang/String;
    .param p2, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p3, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p4, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLContext;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;",
            "Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "asyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    invoke-static {p3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->hasNoLoginIdToken(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v5, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;->FALSE:Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->refreshCloudTokens(Landroid/os/AsyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    const/4 v0, 0x0

    .line 321
    :goto_0
    return v0

    .line 307
    :cond_0
    invoke-interface {p3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCloudAccessToken()Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "cloudAccessToken":Ljava/lang/String;
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->DELETE_USER_DATA:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->pathBuilder(Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Ljava/lang/String;

    move-result-object v8

    .line 312
    .local v8, "deleteUserDataPath":Ljava/lang/String;
    invoke-static {v8, p2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->sendGetRequest(Ljava/lang/String;Ljavax/net/ssl/SSLContext;)Landroid/util/Pair;

    move-result-object v10

    .line 314
    .local v10, "responseDataAndResultCode":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v9

    .line 315
    .local v9, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setOldBackupAndSyncDataExists(Z)V

    .line 316
    invoke-interface {v9}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 321
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static runSyncInit(Landroid/os/AsyncTask;Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z
    .locals 10
    .param p1, "clientVersion"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p4, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLContext;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "asyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    invoke-interface {p4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v9

    .line 216
    .local v9, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {p4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCloudSyncTryCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v9, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setCloudSyncTryCount(I)V

    .line 217
    invoke-interface {v9}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 219
    invoke-static {p4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->hasNoLoginIdToken(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v5, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;->TRUE:Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p6

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->refreshCloudTokens(Landroid/os/AsyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    const/4 v0, 0x0

    .line 278
    :goto_0
    return v0

    .line 227
    :cond_0
    invoke-interface {p4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCloudAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "cloudAccessToken":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p6

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->syncListDevices(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 234
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 237
    :cond_2
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 241
    const/4 v0, 0x0

    goto :goto_0

    .line 250
    :cond_3
    invoke-virtual {p5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, v1

    move-object v5, p5

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v8}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->syncDownloadModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z

    .line 253
    invoke-static {p4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->isMultipleDevices(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 254
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v4, 0x0

    move-object v0, p1

    move-object v2, p3

    move-object v3, p5

    move-object v5, p4

    move-object/from16 v6, p6

    .line 255
    invoke-static/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->syncMessageTask(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 261
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 264
    :cond_5
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->syncUploadModelTask(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 270
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 273
    :cond_7
    invoke-static {p4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->setSyncSuccessful(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    .line 278
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static runSyncListDevices(Landroid/os/AsyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z
    .locals 1
    .param p1, "clientVersion"    # Ljava/lang/String;
    .param p2, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p3, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p4, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLContext;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;",
            "Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 707
    .local p0, "asyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    return v0
.end method

.method static runSyncUnregisterDevice(Landroid/os/AsyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z
    .locals 11
    .param p1, "clientVersion"    # Ljava/lang/String;
    .param p2, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p3, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p4, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLContext;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;",
            "Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "asyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 375
    invoke-static {p3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->hasNoLoginIdToken(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v5, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;->FALSE:Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->refreshCloudTokens(Landroid/os/AsyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    :goto_0
    return v10

    .line 383
    :cond_0
    invoke-interface {p3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCloudAccessToken()Ljava/lang/String;

    move-result-object v4

    .line 384
    .local v4, "cloudAccessToken":Ljava/lang/String;
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->UNREGISTER_DEVICE:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    move-object v1, p1

    move-object v2, v7

    move-object v3, v7

    move-object v5, v7

    move-object v6, v7

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->pathBuilder(Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Ljava/lang/String;

    move-result-object v9

    .line 388
    .local v9, "unregisterUserDataPath":Ljava/lang/String;
    invoke-static {v9, p2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->sendGetRequest(Ljava/lang/String;Ljavax/net/ssl/SSLContext;)Landroid/util/Pair;

    move-result-object v8

    .line 390
    .local v8, "responseDataAndResultCode":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->persistSyncDeactivation(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    .line 394
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v10, v0

    goto :goto_0

    :cond_1
    move v0, v10

    goto :goto_1
.end method

.method static runSyncUnregisterUser(Landroid/os/AsyncTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z
    .locals 10
    .param p1, "ticketOrTokenData"    # Ljava/lang/String;
    .param p2, "clientVersion"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p5, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p6, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLContext;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;",
            "Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, "asyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    invoke-static {p5}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->hasNoLoginIdToken(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v5, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;->FALSE:Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p6

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->refreshCloudTokens(Landroid/os/AsyncTask;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$Cancellable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 436
    :goto_0
    return v0

    .line 426
    :cond_0
    invoke-interface {p5}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCloudAccessToken()Ljava/lang/String;

    move-result-object v4

    .line 427
    .local v4, "oldCloudAccessToken":Ljava/lang/String;
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->UNREGISTER_USER:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->pathBuilder(Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Ljava/lang/String;

    move-result-object v9

    .line 430
    .local v9, "unregisterUserDataPath":Ljava/lang/String;
    invoke-static {v9, p4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->sendGetRequest(Ljava/lang/String;Ljavax/net/ssl/SSLContext;)Landroid/util/Pair;

    move-result-object v8

    .line 432
    .local v8, "responseDataAndResultCode":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p5}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->persistSyncDeactivation(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    .line 436
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendNumberOfDevicesToAnalytics(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nbrOfDevices"    # I

    .prologue
    .line 1058
    .line 1059
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 1060
    .local v0, "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    if-eqz v0, :cond_0

    .line 1061
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushNbrOfActiveBackupDevicesEvent(I)V

    .line 1063
    :cond_0
    return-void
.end method

.method private static setDeviceInfo(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 6
    .param p0, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p1, "deviceListJson"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1038
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1039
    new-instance v4, Lorg/json/JSONTokener;

    invoke-direct {v4, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 1041
    .local v2, "jsonResponse":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 1042
    .local v3, "nbrOfDevices":I
    invoke-interface {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCurrentNumberOfDevices()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 1043
    invoke-static {p2, v3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->sendNumberOfDevicesToAnalytics(Landroid/content/Context;I)V

    .line 1045
    :cond_0
    invoke-interface {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v1

    .line 1046
    .local v1, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setOtherDeviceInfo(Ljava/lang/String;)V

    .line 1047
    invoke-interface {v1, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setCurrentNumberOfDevices(I)V

    .line 1048
    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    const/4 v4, 0x1

    .line 1054
    .end local v1    # "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    .end local v2    # "jsonResponse":Lorg/json/JSONArray;
    .end local v3    # "nbrOfDevices":I
    :goto_0
    return v4

    .line 1051
    :catch_0
    move-exception v0

    .line 1052
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "TI_SyncTask"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static setSyncSuccessful(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V
    .locals 4
    .param p0, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .prologue
    .line 1084
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1090
    .local v2, "syncDoneTime":J
    invoke-interface {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 1091
    .local v0, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setCloudSyncTryCount(I)V

    .line 1092
    invoke-interface {v0, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setLastSyncTime(J)V

    .line 1093
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 1094
    return-void
.end method

.method private static syncDownloadModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z
    .locals 11
    .param p0, "basePath"    # Ljava/lang/String;
    .param p1, "clientVersion"    # Ljava/lang/String;
    .param p2, "cloudAccessToken"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p5, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p6, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .prologue
    .line 612
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->GET_MODEL:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->pathBuilder(Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Ljava/lang/String;

    move-result-object v9

    .line 614
    .local v9, "getPath":Ljava/lang/String;
    invoke-static {v9}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->isValidPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    const/4 v0, 0x0

    .line 632
    :goto_0
    return v0

    .line 620
    :cond_0
    invoke-static {v9, p4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->getFileFromServerRequest(Ljava/lang/String;Ljavax/net/ssl/SSLContext;)[B

    move-result-object v10

    .line 622
    .local v10, "response":[B
    if-eqz v10, :cond_1

    .line 627
    :try_start_0
    invoke-static {v10, p0, p3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->addModelToSwiftKey([BLjava/lang/String;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 628
    :catch_0
    move-exception v8

    .line 629
    .local v8, "e":Ljava/io/IOException;
    const-string v0, "TI_SyncTask"

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    .end local v8    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static syncListDevices(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;Landroid/content/Context;)Z
    .locals 12
    .param p0, "clientVersion"    # Ljava/lang/String;
    .param p1, "cloudAccessToken"    # Ljava/lang/String;
    .param p2, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p3, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p4, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 718
    sget-object v1, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->GET_DEVICE_LIST:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object/from16 v8, p4

    invoke-static/range {v1 .. v8}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->pathBuilder(Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Ljava/lang/String;

    move-result-object v9

    .line 722
    .local v9, "getDevicesPath":Ljava/lang/String;
    invoke-static {v9}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->isValidPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 726
    const/4 v11, 0x0

    .line 744
    :goto_0
    return v11

    .line 730
    :cond_0
    invoke-static {v9, p2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->sendGetRequest(Ljava/lang/String;Ljavax/net/ssl/SSLContext;)Landroid/util/Pair;

    move-result-object v10

    .line 731
    .local v10, "responseDataAndResultCode":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 732
    iget-object v1, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-static {p3, v1, v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->setDeviceInfo(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v11

    .line 738
    .local v11, "success":Z
    goto :goto_0

    .line 744
    .end local v11    # "success":Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_0
.end method

.method private static syncMessageTask(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z
    .locals 18
    .param p0, "clientVersion"    # Ljava/lang/String;
    .param p1, "cloudAccessToken"    # Ljava/lang/String;
    .param p2, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "database"    # Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;
    .param p5, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p6, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .prologue
    .line 471
    if-eqz p4, :cond_1

    .line 472
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;->read(Landroid/content/Context;)Ljava/util/List;

    move-result-object v16

    .line 473
    .local v16, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessage;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 474
    sget-object v5, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->POST_MESSAGES:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v9, p1

    move-object/from16 v12, p6

    invoke-static/range {v5 .. v12}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->pathBuilder(Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Ljava/lang/String;

    move-result-object v17

    .line 476
    .local v17, "postPath":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->isValidPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 477
    invoke-static/range {v16 .. v16}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->createJSONStringFromMessages(Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    .line 478
    .local v15, "jsonMessages":Ljava/lang/String;
    invoke-static {v15}, Lcom/sonyericsson/ned/util/SemcTextUtil;->compress(Ljava/lang/String;)[B

    move-result-object v14

    .line 479
    .local v14, "compressedMessages":[B
    if-eqz v14, :cond_0

    .line 480
    new-instance v13, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$ByteArrayStreamWriter;

    invoke-direct {v13, v14}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$ByteArrayStreamWriter;-><init>([B)V

    .line 482
    .local v13, "byteArrayStreamWriter":Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$ByteArrayStreamWriter;
    const-string v5, "messagebatch"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v5, v13, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->postFileUploadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/StreamWriter;Ljavax/net/ssl/SSLContext;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 493
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;->clearDatabase(Landroid/content/Context;)V

    .line 506
    .end local v13    # "byteArrayStreamWriter":Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$ByteArrayStreamWriter;
    .end local v14    # "compressedMessages":[B
    .end local v15    # "jsonMessages":Ljava/lang/String;
    .end local v17    # "postPath":Ljava/lang/String;
    :cond_0
    invoke-interface/range {p4 .. p4}, Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;->dispose()V

    .line 509
    .end local v16    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessage;>;"
    :cond_1
    invoke-static/range {p5 .. p5}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->isMultipleDevices(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 515
    const/4 v5, 0x1

    .line 518
    :goto_0
    return v5

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->runGetMessages(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z

    move-result v5

    goto :goto_0
.end method

.method private static syncRenewCloudAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z
    .locals 11
    .param p0, "clientVersion"    # Ljava/lang/String;
    .param p1, "refreshToken"    # Ljava/lang/String;
    .param p2, "oldRefreshToken"    # Ljava/lang/String;
    .param p3, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p4, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p5, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .prologue
    .line 790
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->RENEW_ACCESS_TOKEN:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->pathBuilder(Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Ljava/lang/String;

    move-result-object v8

    .line 797
    .local v8, "accessTokenPath":Ljava/lang/String;
    invoke-static {v8}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->isValidPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 801
    const/4 v0, 0x0

    .line 823
    :goto_0
    return v0

    .line 805
    :cond_0
    invoke-static {v8, p3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->sendGetRequest(Ljava/lang/String;Ljavax/net/ssl/SSLContext;)Landroid/util/Pair;

    move-result-object v10

    .line 806
    .local v10, "responseDataAndResultCode":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 807
    invoke-interface {p4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v9

    .line 808
    .local v9, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v9, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setCloudAccessToken(Ljava/lang/String;)V

    .line 809
    invoke-interface {v9}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 813
    const/4 v0, 0x1

    goto :goto_0

    .line 815
    .end local v9    # "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    :cond_1
    iget-object v0, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_2

    .line 816
    invoke-static {p4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->persistSyncDeactivation(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    .line 823
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static syncRenewCloudRefreshToken(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z
    .locals 11
    .param p0, "clientVersion"    # Ljava/lang/String;
    .param p1, "oldRefreshToken"    # Ljava/lang/String;
    .param p2, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p3, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p4, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .prologue
    .line 750
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->GET_REFRESH_TOKEN:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->pathBuilder(Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Ljava/lang/String;

    move-result-object v9

    .line 757
    .local v9, "refreshTokenPath":Ljava/lang/String;
    invoke-static {v9}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->isValidPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 761
    const/4 v0, 0x0

    .line 783
    :goto_0
    return v0

    .line 764
    :cond_0
    invoke-static {v9, p2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->sendGetRequest(Ljava/lang/String;Ljavax/net/ssl/SSLContext;)Landroid/util/Pair;

    move-result-object v10

    .line 765
    .local v10, "responseDataAndResultCode":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v0, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->isSuccessResponse(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    .line 766
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 767
    invoke-interface {p3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v8

    .line 768
    .local v8, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v8, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setRefreshCloudAccessToken(Ljava/lang/String;)V

    .line 769
    invoke-interface {v8}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 773
    const/4 v0, 0x1

    goto :goto_0

    .line 775
    .end local v8    # "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    :cond_1
    iget-object v0, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_2

    .line 776
    invoke-static {p3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->persistSyncDeactivation(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    .line 783
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static syncUploadModelTask(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z
    .locals 10
    .param p0, "clientVersion"    # Ljava/lang/String;
    .param p1, "cloudAccessToken"    # Ljava/lang/String;
    .param p2, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p3, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .prologue
    const/4 v2, 0x0

    .line 575
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->POST_MODEL:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    move-object v1, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->pathBuilder(Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Ljava/lang/String;

    move-result-object v9

    .line 577
    .local v9, "postPath":Ljava/lang/String;
    invoke-static {v9}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;->isValidPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    const-string v0, "dynamic.lm"

    .line 579
    invoke-static {p4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getDynamicModelStreamWriter(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/StreamWriter;

    move-result-object v1

    .line 578
    invoke-static {v9, v0, v1, p2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/http/HttpCloudConnectionUtil;->postFileUploadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/StreamWriter;Ljavax/net/ssl/SSLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    invoke-interface {p3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v8

    .line 581
    .local v8, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {v8, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setLastBackupTimeDynamicModel(J)V

    .line 582
    invoke-interface {v8}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 586
    const/4 v0, 0x1

    .line 593
    .end local v8    # "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
