.class final Lcom/touchtype_fluency/util/HttpDownload$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype_fluency/util/HttpDownload;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/touchtype_fluency/util/HttpDownload;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/HttpDownload;)V
    .locals 0

    .prologue
    .line 973
    iput-object p1, p0, Lcom/touchtype_fluency/util/HttpDownload$2;->a:Lcom/touchtype_fluency/util/HttpDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized run()V
    .locals 6

    .prologue
    .line 975
    monitor-enter p0

    :try_start_0
    const-string v0, "HttpDownload"

    const-string v1, "Timeout thread starting"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    :cond_0
    :goto_0
    const-wide/32 v0, 0xea60

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 979
    const-string v0, "HttpDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "polling: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype_fluency/util/HttpDownload$2;->a:Lcom/touchtype_fluency/util/HttpDownload;

    invoke-static {v2}, Lcom/touchtype_fluency/util/HttpDownload;->a(Lcom/touchtype_fluency/util/HttpDownload;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/touchtype_fluency/util/HttpDownload$2;->a:Lcom/touchtype_fluency/util/HttpDownload;

    invoke-static {v2}, Lcom/touchtype_fluency/util/HttpDownload;->a(Lcom/touchtype_fluency/util/HttpDownload;)J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload$2;->a:Lcom/touchtype_fluency/util/HttpDownload;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/HttpDownload;->interrupt()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 988
    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "HttpDownload"

    const-string v1, "Timeout thread stopping"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 990
    monitor-exit p0

    return-void

    .line 975
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
