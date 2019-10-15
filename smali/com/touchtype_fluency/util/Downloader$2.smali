.class final Lcom/touchtype_fluency/util/Downloader$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype_fluency/util/Downloader;->cancelDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/touchtype_fluency/util/Downloader;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/Downloader;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/touchtype_fluency/util/Downloader$2;->a:Lcom/touchtype_fluency/util/Downloader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lcom/touchtype_fluency/util/Downloader$2;->a:Lcom/touchtype_fluency/util/Downloader;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader$2;->a:Lcom/touchtype_fluency/util/Downloader;

    invoke-static {v0}, Lcom/touchtype_fluency/util/Downloader;->a(Lcom/touchtype_fluency/util/Downloader;)Lcom/touchtype_fluency/util/HttpDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/HttpDownload;->interrupt()V

    .line 55
    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader$2;->a:Lcom/touchtype_fluency/util/Downloader;

    invoke-static {v0}, Lcom/touchtype_fluency/util/Downloader;->b(Lcom/touchtype_fluency/util/Downloader;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader$2;->a:Lcom/touchtype_fluency/util/Downloader;

    invoke-static {v0}, Lcom/touchtype_fluency/util/Downloader;->b(Lcom/touchtype_fluency/util/Downloader;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 57
    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader$2;->a:Lcom/touchtype_fluency/util/Downloader;

    invoke-static {v0}, Lcom/touchtype_fluency/util/Downloader;->c(Lcom/touchtype_fluency/util/Downloader;)Ljava/lang/Thread;

    .line 59
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
