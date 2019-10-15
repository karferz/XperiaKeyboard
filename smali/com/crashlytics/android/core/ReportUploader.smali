.class Lcom/crashlytics/android/core/ReportUploader;
.super Ljava/lang/Object;
.source "ReportUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/ReportUploader$Worker;,
        Lcom/crashlytics/android/core/ReportUploader$AlwaysSendCheck;,
        Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;,
        Lcom/crashlytics/android/core/ReportUploader$HandlingExceptionCheck;,
        Lcom/crashlytics/android/core/ReportUploader$SendCheck;
    }
.end annotation


# static fields
.field static final HEADER_INVALID_CLS_FILE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RETRY_INTERVALS:[S


# instance fields
.field private final apiKey:Ljava/lang/String;

.field private final createReportCall:Lcom/crashlytics/android/core/CreateReportSpiCall;

.field private final fileAccessLock:Ljava/lang/Object;

.field private final handlingExceptionCheck:Lcom/crashlytics/android/core/ReportUploader$HandlingExceptionCheck;

.field private final reportFilesProvider:Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;

.field private uploadThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "X-CRASHLYTICS-INVALID-SESSION"

    const-string v1, "1"

    .line 50
    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/core/ReportUploader;->HEADER_INVALID_CLS_FILE:Ljava/util/Map;

    .line 52
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/crashlytics/android/core/ReportUploader;->RETRY_INTERVALS:[S

    return-void

    nop

    :array_0
    .array-data 2
        0xas
        0x14s
        0x1es
        0x3cs
        0x78s
        0x12cs
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/crashlytics/android/core/CreateReportSpiCall;Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;Lcom/crashlytics/android/core/ReportUploader$HandlingExceptionCheck;)V
    .locals 2
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "createReportCall"    # Lcom/crashlytics/android/core/CreateReportSpiCall;
    .param p3, "reportFilesProvider"    # Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;
    .param p4, "handlingExceptionCheck"    # Lcom/crashlytics/android/core/ReportUploader$HandlingExceptionCheck;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/core/ReportUploader;->fileAccessLock:Ljava/lang/Object;

    .line 64
    if-nez p2, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "createReportCall must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iput-object p2, p0, Lcom/crashlytics/android/core/ReportUploader;->createReportCall:Lcom/crashlytics/android/core/CreateReportSpiCall;

    .line 68
    iput-object p1, p0, Lcom/crashlytics/android/core/ReportUploader;->apiKey:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/crashlytics/android/core/ReportUploader;->reportFilesProvider:Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;

    .line 70
    iput-object p4, p0, Lcom/crashlytics/android/core/ReportUploader;->handlingExceptionCheck:Lcom/crashlytics/android/core/ReportUploader$HandlingExceptionCheck;

    .line 71
    return-void
.end method

.method static synthetic access$002(Lcom/crashlytics/android/core/ReportUploader;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/crashlytics/android/core/ReportUploader;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/crashlytics/android/core/ReportUploader;->uploadThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/crashlytics/android/core/ReportUploader;)Lcom/crashlytics/android/core/ReportUploader$HandlingExceptionCheck;
    .locals 1
    .param p0, "x0"    # Lcom/crashlytics/android/core/ReportUploader;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/crashlytics/android/core/ReportUploader;->handlingExceptionCheck:Lcom/crashlytics/android/core/ReportUploader$HandlingExceptionCheck;

    return-object v0
.end method

.method static synthetic access$200()[S
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/crashlytics/android/core/ReportUploader;->RETRY_INTERVALS:[S

    return-object v0
.end method


# virtual methods
.method findReports()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/crashlytics/android/core/Report;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v9

    const-string v10, "CrashlyticsCore"

    const-string v11, "Checking for crash reports..."

    invoke-interface {v9, v10, v11}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v10, p0, Lcom/crashlytics/android/core/ReportUploader;->fileAccessLock:Ljava/lang/Object;

    monitor-enter v10

    .line 122
    :try_start_0
    iget-object v9, p0, Lcom/crashlytics/android/core/ReportUploader;->reportFilesProvider:Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;

    invoke-interface {v9}, Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;->getCompleteSessionFiles()[Ljava/io/File;

    move-result-object v0

    .line 123
    .local v0, "clsFiles":[Ljava/io/File;
    iget-object v9, p0, Lcom/crashlytics/android/core/ReportUploader;->reportFilesProvider:Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;

    invoke-interface {v9}, Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;->getInvalidSessionFiles()[Ljava/io/File;

    move-result-object v2

    .line 124
    .local v2, "invalidClsFiles":[Ljava/io/File;
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 127
    .local v7, "reports":Ljava/util/List;, "Ljava/util/List<Lcom/crashlytics/android/core/Report;>;"
    if-eqz v0, :cond_0

    .line 128
    array-length v10, v0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v1, v0, v9

    .line 129
    .local v1, "file":Ljava/io/File;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v11

    const-string v12, "CrashlyticsCore"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Found crash report "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v11, Lcom/crashlytics/android/core/SessionReport;

    invoke-direct {v11, v1}, Lcom/crashlytics/android/core/SessionReport;-><init>(Ljava/io/File;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "clsFiles":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "invalidClsFiles":[Ljava/io/File;
    .end local v7    # "reports":Ljava/util/List;, "Ljava/util/List<Lcom/crashlytics/android/core/Report;>;"
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 134
    .restart local v0    # "clsFiles":[Ljava/io/File;
    .restart local v2    # "invalidClsFiles":[Ljava/io/File;
    .restart local v7    # "reports":Ljava/util/List;, "Ljava/util/List<Lcom/crashlytics/android/core/Report;>;"
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v5, "invalidSessionFiles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/io/File;>;>;"
    if-eqz v2, :cond_2

    .line 136
    array-length v11, v2

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    if-ge v10, v11, :cond_2

    aget-object v3, v2, v10

    .line 138
    .local v3, "invalidFile":Ljava/io/File;
    invoke-static {v3}, Lcom/crashlytics/android/core/CrashlyticsController;->getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, "sessionId":Ljava/lang/String;
    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 140
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_1
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_1

    .line 146
    .end local v3    # "invalidFile":Ljava/io/File;
    .end local v8    # "sessionId":Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 147
    .local v6, "key":Ljava/lang/String;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v9

    const-string v11, "CrashlyticsCore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Found invalid session: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v11, v12}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 149
    .local v4, "invalidFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v11, Lcom/crashlytics/android/core/InvalidSessionReport;

    .line 150
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/io/File;

    invoke-interface {v4, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/io/File;

    invoke-direct {v11, v6, v9}, Lcom/crashlytics/android/core/InvalidSessionReport;-><init>(Ljava/lang/String;[Ljava/io/File;)V

    .line 149
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 154
    .end local v4    # "invalidFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v6    # "key":Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 155
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v9

    const-string v10, "CrashlyticsCore"

    const-string v11, "No reports found."

    invoke-interface {v9, v10, v11}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_4
    return-object v7
.end method

.method forceUpload(Lcom/crashlytics/android/core/Report;)Z
    .locals 9
    .param p1, "report"    # Lcom/crashlytics/android/core/Report;

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, "removed":Z
    iget-object v5, p0, Lcom/crashlytics/android/core/ReportUploader;->fileAccessLock:Ljava/lang/Object;

    monitor-enter v5

    .line 98
    :try_start_0
    new-instance v2, Lcom/crashlytics/android/core/CreateReportRequest;

    iget-object v4, p0, Lcom/crashlytics/android/core/ReportUploader;->apiKey:Ljava/lang/String;

    invoke-direct {v2, v4, p1}, Lcom/crashlytics/android/core/CreateReportRequest;-><init>(Ljava/lang/String;Lcom/crashlytics/android/core/Report;)V

    .line 99
    .local v2, "requestData":Lcom/crashlytics/android/core/CreateReportRequest;
    iget-object v4, p0, Lcom/crashlytics/android/core/ReportUploader;->createReportCall:Lcom/crashlytics/android/core/CreateReportSpiCall;

    invoke-interface {v4, v2}, Lcom/crashlytics/android/core/CreateReportSpiCall;->invoke(Lcom/crashlytics/android/core/CreateReportRequest;)Z

    move-result v3

    .line 101
    .local v3, "sent":Z
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v6

    const-string v7, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Crashlytics report upload "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_1

    const-string v4, "complete: "

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 102
    invoke-interface {p1}, Lcom/crashlytics/android/core/Report;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-interface {v6, v7, v4}, Lio/fabric/sdk/android/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    if-eqz v3, :cond_0

    .line 105
    invoke-interface {p1}, Lcom/crashlytics/android/core/Report;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    const/4 v1, 0x1

    .line 112
    .end local v2    # "requestData":Lcom/crashlytics/android/core/CreateReportRequest;
    .end local v3    # "sent":Z
    :cond_0
    :goto_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    return v1

    .line 101
    .restart local v2    # "requestData":Lcom/crashlytics/android/core/CreateReportRequest;
    .restart local v3    # "sent":Z
    :cond_1
    :try_start_2
    const-string v4, "FAILED: "
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 108
    .end local v2    # "requestData":Lcom/crashlytics/android/core/CreateReportRequest;
    .end local v3    # "sent":Z
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string v6, "CrashlyticsCore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error occurred sending report "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 110
    invoke-interface {v4, v6, v7, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method isUploading()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/crashlytics/android/core/ReportUploader;->uploadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized uploadReports(FLcom/crashlytics/android/core/ReportUploader$SendCheck;)V
    .locals 4
    .param p1, "delay"    # F
    .param p2, "sendCheck"    # Lcom/crashlytics/android/core/ReportUploader$SendCheck;

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/crashlytics/android/core/ReportUploader;->uploadThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 75
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Report upload has already been started."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_0
    monitor-exit p0

    return-void

    .line 79
    :cond_0
    :try_start_1
    new-instance v0, Lcom/crashlytics/android/core/ReportUploader$Worker;

    invoke-direct {v0, p0, p1, p2}, Lcom/crashlytics/android/core/ReportUploader$Worker;-><init>(Lcom/crashlytics/android/core/ReportUploader;FLcom/crashlytics/android/core/ReportUploader$SendCheck;)V

    .line 80
    .local v0, "uploadWorker":Lcom/crashlytics/android/core/ReportUploader$Worker;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Crashlytics Report Uploader"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/crashlytics/android/core/ReportUploader;->uploadThread:Ljava/lang/Thread;

    .line 81
    iget-object v1, p0, Lcom/crashlytics/android/core/ReportUploader;->uploadThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    .end local v0    # "uploadWorker":Lcom/crashlytics/android/core/ReportUploader$Worker;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
