.class public abstract Lcom/touchtype_fluency/util/Downloader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Thread;

.field private b:Lcom/touchtype_fluency/util/HttpDownload;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/Downloader;)Lcom/touchtype_fluency/util/HttpDownload;
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->b:Lcom/touchtype_fluency/util/HttpDownload;

    return-object v0
.end method

.method static synthetic b(Lcom/touchtype_fluency/util/Downloader;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->a:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic c(Lcom/touchtype_fluency/util/Downloader;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->a:Ljava/lang/Thread;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized blockUntilComplete()V
    .locals 2

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/Downloader;->isDownloadInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "Downloader"

    const-string v1, "Blocking until download complete"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 73
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized cancelDownload()V
    .locals 2

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/Downloader;->isDownloadInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "Downloader"

    const-string v1, "Canceling download"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/touchtype_fluency/util/Downloader$2;

    invoke-direct {v0, p0}, Lcom/touchtype_fluency/util/Downloader$2;-><init>(Lcom/touchtype_fluency/util/Downloader;)V

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/Downloader$2;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doDownload(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 21
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/Downloader;->isDownloadInProgress()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    :goto_0
    monitor-exit p0

    return-void

    .line 28
    :cond_0
    :try_start_1
    new-instance v0, Lcom/touchtype_fluency/util/HttpDownload;

    invoke-direct {v0, p1}, Lcom/touchtype_fluency/util/HttpDownload;-><init>(Z)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->b:Lcom/touchtype_fluency/util/HttpDownload;

    .line 29
    new-instance v0, Lcom/touchtype_fluency/util/Downloader$1;

    invoke-direct {v0, p0}, Lcom/touchtype_fluency/util/Downloader$1;-><init>(Lcom/touchtype_fluency/util/Downloader;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->a:Ljava/lang/Thread;

    .line 35
    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized download()V
    .locals 1

    .prologue
    .line 13
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/touchtype_fluency/util/Downloader;->doDownload(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized forceDownload()V
    .locals 1

    .prologue
    .line 17
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/touchtype_fluency/util/Downloader;->doDownload(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDownloadInProgress()Z
    .locals 1

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->b:Lcom/touchtype_fluency/util/HttpDownload;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/HttpDownload;->isInterrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract onDownload(Lcom/touchtype_fluency/util/HttpDownload;)V
.end method

.method public declared-synchronized setComplete()V
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->a:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
