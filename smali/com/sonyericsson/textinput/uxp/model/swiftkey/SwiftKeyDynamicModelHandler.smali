.class public final Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;
.super Ljava/lang/Object;
.source "SwiftKeyDynamicModelHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler$BackupDynamicModelRunnable;
    }
.end annotation


# static fields
.field static final CLOUD_MERGED_DATA_FOLDER:Ljava/lang/String; = "/cloudmerged"

.field static final CLOUD_WORK_DATA_FOLDER:Ljava/lang/String; = "/cloudwork"

.field private static final CREATE_OR_LOAD_FAIL_COUNT_UNTIL_WIPE:I = 0xa

.field private static final DEBUG:Z = false

.field static final DYNAMIC_MODEL_CONFIG_FILENAME:Ljava/lang/String; = "/.config"

.field static final DYNAMIC_MODEL_FILENAME:Ljava/lang/String; = "/dynamic.lm"

.field static final DYNAMIC_MODEL_LEARNED_FILENAME:Ljava/lang/String; = "/learned.json"

.field private static final TAG:Ljava/lang/String;

.field static final USER_BACKUP_FOLDER:Ljava/lang/String; = "/userBackup"

.field static final USER_DATA_FOLDER:Ljava/lang/String; = "/user"

.field private static sCreateOrLoadFailCount:I

.field static final sDynamicModelLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->sDynamicModelLock:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->sCreateOrLoadFailCount:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static createOrLoadPersistentDynamicModel(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Z)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "predictionData"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;
    .param p2, "languagePackHandler"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    .param p3, "doRepairIfNeeded"    # Z

    .prologue
    const/4 v3, 0x0

    .line 65
    const/4 v2, 0x0

    .line 66
    .local v2, "isDynamicModelLoaded":Z
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "appFilesDir":Ljava/lang/String;
    sget-object v4, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->sDynamicModelLock:Ljava/lang/Object;

    monitor-enter v4

    .line 69
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v5

    .line 70
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->createOrLoadDynamicUserModel(Lcom/touchtype_fluency/util/LanguagePackManager;)V

    .line 74
    const/4 v2, 0x1

    .line 75
    const/4 v5, 0x0

    sput v5, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->sCreateOrLoadFailCount:I
    :try_end_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v4

    .line 100
    return v2

    .line 76
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Lcom/touchtype_fluency/InvalidDataException;
    if-eqz p3, :cond_2

    .line 84
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->repairAndLoadDynamicModel(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 86
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->emergencyClearAndCreateDynamicModel(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 87
    :goto_1
    const/4 v3, 0x0

    sput v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->sCreateOrLoadFailCount:I

    goto :goto_0

    .line 98
    .end local v1    # "e":Lcom/touchtype_fluency/InvalidDataException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v1    # "e":Lcom/touchtype_fluency/InvalidDataException;
    :cond_2
    move v2, v3

    .line 86
    goto :goto_1

    .line 88
    .end local v1    # "e":Lcom/touchtype_fluency/InvalidDataException;
    :catch_1
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->logNonFatalEvent(Ljava/lang/Exception;)V

    .line 92
    sget v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->sCreateOrLoadFailCount:I

    add-int/lit8 v5, v3, 0x1

    sput v5, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->sCreateOrLoadFailCount:I

    const/16 v5, 0xa

    if-le v3, v5, :cond_0

    .line 94
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->emergencyClearAndCreateDynamicModel(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Z

    move-result v2

    .line 95
    const/4 v3, 0x0

    sput v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->sCreateOrLoadFailCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static createPersistentCloudWorkModel(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "predictionData"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .prologue
    .line 125
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/cloudwork"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "cloudWorkFolder":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/dynamic.lm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "cloudWorkFile":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v3, "cloudWorkModel":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 130
    const-string v6, "/dynamic.lm"

    const/4 v7, 0x4

    const/4 v8, 0x0

    sget-object v9, Lcom/touchtype_fluency/ModelSetDescription$Type;->OTHER_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v2, v6, v7, v8, v9}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v0

    .line 134
    .local v0, "cloudModel":Lcom/touchtype_fluency/ModelSetDescription;
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V

    .line 135
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v6

    .line 136
    invoke-interface {v6}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v5

    .line 137
    .local v5, "trainer":Lcom/touchtype_fluency/Trainer;
    invoke-interface {v5}, Lcom/touchtype_fluency/Trainer;->write()V

    .line 138
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0    # "cloudModel":Lcom/touchtype_fluency/ModelSetDescription;
    .end local v5    # "trainer":Lcom/touchtype_fluency/Trainer;
    :cond_0
    const/4 v6, 0x1

    .line 144
    .end local v1    # "cloudWorkFile":Ljava/lang/String;
    .end local v2    # "cloudWorkFolder":Ljava/lang/String;
    .end local v3    # "cloudWorkModel":Ljava/io/File;
    :goto_0
    return v6

    .line 141
    :catch_0
    move-exception v4

    .line 142
    .local v4, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->logNonFatalEvent(Ljava/lang/Exception;)V

    .line 144
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private static emergencyClearAndCreateDynamicModel(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Z
    .locals 5
    .param p0, "appFilesDir"    # Ljava/lang/String;
    .param p1, "predictionData"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;
    .param p2, "languagePackHandler"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .prologue
    .line 307
    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->sDynamicModelLock:Ljava/lang/Object;

    monitor-enter v3

    .line 308
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->emergencyClearUserData(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    :try_start_1
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v2

    .line 311
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->createOrLoadDynamicUserModel(Lcom/touchtype_fluency/util/LanguagePackManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    const/4 v2, 0x1

    :try_start_2
    monitor-exit v3

    .line 323
    :goto_0
    return v2

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Could not load dynamic model after successful emergency clear"

    .line 319
    .local v1, "message":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->TAG:Ljava/lang/String;

    const-string v4, "Could not load dynamic model after successful emergency clear"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    const-string v2, "Could not load dynamic model after successful emergency clear"

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->logNonFatalEvent(Ljava/lang/String;)V

    .line 323
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 324
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method protected static emergencyClearUserData(Ljava/lang/String;)Z
    .locals 8
    .param p0, "appFilesDir"    # Ljava/lang/String;

    .prologue
    .line 334
    const/4 v5, 0x1

    .line 335
    .local v5, "success":Z
    const/4 v4, 0x0

    .line 341
    .local v4, "nbrOfDeletedFiles":I
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/user"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 342
    .local v1, "dynamicUserDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 343
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 344
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_2

    .line 345
    array-length v7, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v2, v3, v6

    .line 346
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 347
    .local v0, "deletedFile":Z
    if-nez v0, :cond_0

    .line 348
    const/4 v5, 0x0

    .line 345
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 350
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 355
    .end local v0    # "deletedFile":Z
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    :cond_1
    const/4 v5, 0x0

    .line 358
    :cond_2
    if-nez v5, :cond_3

    .line 359
    sget-object v6, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->TAG:Ljava/lang/String;

    const-string v7, "Failed to delete user directory."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Emergency Clear of User Data, success ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " deleted files from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 364
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 362
    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->logNonFatalEvent(Ljava/lang/String;)V

    .line 366
    return v5
.end method

.method private static generateNewDynamicModelConfigFiles(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;)Z
    .locals 14
    .param p0, "appFilesDir"    # Ljava/lang/String;
    .param p1, "predictionData"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .prologue
    .line 251
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/user"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 252
    .local v10, "userFolder":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/dynamic.lm"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v3, "dynamicModelFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 257
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/userBackup"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 258
    .local v9, "userBackupFolder":Ljava/lang/String;
    const/4 v11, 0x4

    const/4 v12, 0x0

    sget-object v13, Lcom/touchtype_fluency/ModelSetDescription$Type;->OTHER_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v9, v11, v12, v13}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v7

    .line 260
    .local v7, "model":Lcom/touchtype_fluency/ModelSetDescription;
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v11

    invoke-interface {v11, v7}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V

    .line 261
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v11

    .line 262
    invoke-interface {v11}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v8

    .line 263
    .local v8, "trainer":Lcom/touchtype_fluency/Trainer;
    invoke-interface {v8}, Lcom/touchtype_fluency/Trainer;->write()V

    .line 264
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v11

    invoke-interface {v11, v7}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    .line 267
    new-instance v0, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/.config"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, "configBackupFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/.config"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    .local v1, "configFile":Ljava/io/File;
    invoke-static {v0, v1}, Lcom/google/common/io/Files;->copy(Ljava/io/File;Ljava/io/File;)V

    .line 274
    new-instance v6, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/learned.json"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    .local v6, "learnedFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 276
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_0

    .line 277
    const-string v5, "Could not delete potentially corrupt dynamic model learned file"

    .line 279
    .local v5, "failedDeleteMessage":Ljava/lang/String;
    sget-object v11, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->TAG:Ljava/lang/String;

    const-string v12, "Could not delete potentially corrupt dynamic model learned file"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Could not delete potentially corrupt dynamic model learned file"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->logNonFatalEvent(Ljava/lang/Exception;)V

    .line 285
    .end local v5    # "failedDeleteMessage":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/dynamic.lm"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    .local v2, "dynamicModelBackupFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_1

    .line 288
    sget-object v11, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->TAG:Ljava/lang/String;

    const-string v12, "Could not delete unused dynamic model"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 300
    .end local v0    # "configBackupFile":Ljava/io/File;
    .end local v1    # "configFile":Ljava/io/File;
    .end local v2    # "dynamicModelBackupFile":Ljava/io/File;
    .end local v6    # "learnedFile":Ljava/io/File;
    .end local v7    # "model":Lcom/touchtype_fluency/ModelSetDescription;
    .end local v8    # "trainer":Lcom/touchtype_fluency/Trainer;
    .end local v9    # "userBackupFolder":Ljava/lang/String;
    :goto_0
    return v11

    .line 295
    :catch_0
    move-exception v4

    .line 296
    .local v4, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->logNonFatalEvent(Ljava/lang/Exception;)V

    .line 300
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public static makeConfigBackup(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;Landroid/content/Context;)V
    .locals 2
    .param p0, "predictionData"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler$BackupDynamicModelRunnable;

    invoke-direct {v1, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler$BackupDynamicModelRunnable;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->submitTask(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method private static repairAndLoadDynamicModel(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Z
    .locals 20
    .param p0, "appFilesDir"    # Ljava/lang/String;
    .param p1, "predictionData"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;
    .param p2, "languagePackHandler"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .prologue
    .line 153
    sget-object v17, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->sDynamicModelLock:Ljava/lang/Object;

    monitor-enter v17

    .line 154
    const/4 v14, 0x0

    .line 157
    .local v14, "success":Z
    :try_start_0
    new-instance v15, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/user"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v15, "userFolder":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/.config"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, "configFile":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/learned.json"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v8, "learnedFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    .line 161
    .local v3, "configFileExists":Z
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    .line 162
    .local v9, "learnedFileExists":Z
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 163
    .local v4, "configFileSize":J
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 166
    .local v10, "learnedFileSize":J
    const/4 v13, 0x0

    .line 167
    .local v13, "restoreBackupSuccess":Z
    const/4 v7, 0x0

    .line 168
    .local v7, "generateNewConfigFilesSuccess":Z
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->restoreBackupModelFiles(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v16

    if-eqz v16, :cond_0

    .line 169
    const/4 v13, 0x1

    .line 171
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v16

    .line 172
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->createOrLoadDynamicUserModel(Lcom/touchtype_fluency/util/LanguagePackManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    const/4 v14, 0x1

    .line 184
    :cond_0
    :goto_0
    if-nez v14, :cond_1

    :try_start_2
    invoke-static/range {p0 .. p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->generateNewDynamicModelConfigFiles(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v16

    if-eqz v16, :cond_1

    .line 185
    const/4 v7, 0x1

    .line 187
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v16

    .line 188
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->createOrLoadDynamicUserModel(Lcom/touchtype_fluency/util/LanguagePackManager;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    const/4 v14, 0x1

    .line 200
    :cond_1
    :goto_1
    if-nez v14, :cond_2

    .line 201
    :try_start_4
    const-string v12, ""

    .line 202
    .local v12, "message":Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 203
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "Could not load dynamic model after successful use of backup config files."

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 212
    :goto_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    if-eqz v3, :cond_5

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " Config file exists with size "

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v19, "."

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :goto_3
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 214
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    if-eqz v9, :cond_6

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " Learned file exists with size "

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v19, "."

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 216
    sget-object v16, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->TAG:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {v12}, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->logNonFatalEvent(Ljava/lang/String;)V

    .line 219
    .end local v12    # "message":Ljava/lang/String;
    :cond_2
    monitor-exit v17

    return v14

    .line 178
    :catch_0
    move-exception v6

    .line 179
    .local v6, "e":Ljava/lang/Exception;
    sget-object v16, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->TAG:Ljava/lang/String;

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 220
    .end local v2    # "configFile":Ljava/io/File;
    .end local v3    # "configFileExists":Z
    .end local v4    # "configFileSize":J
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "generateNewConfigFilesSuccess":Z
    .end local v8    # "learnedFile":Ljava/io/File;
    .end local v9    # "learnedFileExists":Z
    .end local v10    # "learnedFileSize":J
    .end local v13    # "restoreBackupSuccess":Z
    .end local v15    # "userFolder":Ljava/io/File;
    :catchall_0
    move-exception v16

    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v16

    .line 194
    .restart local v2    # "configFile":Ljava/io/File;
    .restart local v3    # "configFileExists":Z
    .restart local v4    # "configFileSize":J
    .restart local v7    # "generateNewConfigFilesSuccess":Z
    .restart local v8    # "learnedFile":Ljava/io/File;
    .restart local v9    # "learnedFileExists":Z
    .restart local v10    # "learnedFileSize":J
    .restart local v13    # "restoreBackupSuccess":Z
    .restart local v15    # "userFolder":Ljava/io/File;
    :catch_1
    move-exception v6

    .line 195
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v16, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->TAG:Ljava/lang/String;

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 205
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v12    # "message":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    .line 206
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "Could not load dynamic model after successful re-generation of config files."

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 209
    :cond_4
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "Could not repair dynamic model."

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 212
    :cond_5
    const-string v16, " Config file doesn\'t exist."

    goto/16 :goto_3

    .line 214
    :cond_6
    const-string v16, " Learned file doesn\'t exist."
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4
.end method

.method private static restoreBackupModelFiles(Ljava/lang/String;)Z
    .locals 9
    .param p0, "appFilesDir"    # Ljava/lang/String;

    .prologue
    .line 224
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/user"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v5, "userFolder":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/userBackup"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "backupFolder":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 228
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/.config"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v1, "configBackup":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/learned.json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v3, "learnedBackup":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 233
    :try_start_0
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/.config"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v6}, Lcom/google/common/io/Files;->copy(Ljava/io/File;Ljava/io/File;)V

    .line 234
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/learned.json"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6}, Lcom/google/common/io/Files;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    const/4 v6, 0x1

    .line 246
    .end local v1    # "configBackup":Ljava/io/File;
    .end local v3    # "learnedBackup":Ljava/io/File;
    :goto_0
    return v6

    .line 240
    .restart local v1    # "configBackup":Ljava/io/File;
    .restart local v3    # "learnedBackup":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 241
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "Dynamic backup files exist, but could not be restored"

    .line 242
    .local v4, "message":Ljava/lang/String;
    sget-object v6, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->TAG:Ljava/lang/String;

    const-string v7, "Dynamic backup files exist, but could not be restored"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    .end local v1    # "configBackup":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "learnedBackup":Ljava/io/File;
    .end local v4    # "message":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method
