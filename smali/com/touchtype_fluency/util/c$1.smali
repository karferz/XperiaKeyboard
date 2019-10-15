.class final Lcom/touchtype_fluency/util/c$1;
.super Lcom/touchtype_fluency/util/Downloader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype_fluency/util/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/touchtype_fluency/util/c;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/c;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-direct {p0}, Lcom/touchtype_fluency/util/Downloader;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onDownload(Lcom/touchtype_fluency/util/HttpDownload;)V
    .locals 6
    .param p1, "httpDownload"    # Lcom/touchtype_fluency/util/HttpDownload;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v0}, Lcom/touchtype_fluency/util/c;->b(Lcom/touchtype_fluency/util/c;)Lcom/touchtype_fluency/util/d$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v0}, Lcom/touchtype_fluency/util/c;->c(Lcom/touchtype_fluency/util/c;)Lcom/touchtype_fluency/util/Storage;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/util/Storage;->getTempDirectory()Ljava/io/File;

    move-result-object v0

    .line 62
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/c;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    sget-object v1, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->SUCCESS:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    .line 68
    :try_start_0
    invoke-static {v2, v0}, Lcom/touchtype_fluency/util/b;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid path specified in file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->FAILED_CANCELLED:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    .line 109
    const-string v0, "LanguagePack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "download("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-virtual {v4}, Lcom/touchtype_fluency/util/c;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") interrupted (tidying up)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    iget-object v0, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/c;->a(Lcom/touchtype_fluency/util/c;Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;)V

    .line 128
    :goto_0
    return-void

    .line 78
    :cond_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/DigestException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 112
    :catch_1
    move-exception v0

    .line 113
    :try_start_3
    sget-object v1, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->FAILED_IO_EXCEPTION:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    .line 114
    const-string v3, "LanguagePack"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "download("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-virtual {v5}, Lcom/touchtype_fluency/util/c;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") error (tidying up): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    iget-object v0, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/c;->a(Lcom/touchtype_fluency/util/c;Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;)V

    goto :goto_0

    .line 81
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v0}, Lcom/touchtype_fluency/util/c;->d(Lcom/touchtype_fluency/util/c;)Ljava/net/URL;

    move-result-object v0

    iget-object v3, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v3}, Lcom/touchtype_fluency/util/c;->e(Lcom/touchtype_fluency/util/c;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v4}, Lcom/touchtype_fluency/util/c;->b(Lcom/touchtype_fluency/util/c;)Lcom/touchtype_fluency/util/d$a;

    move-result-object v4

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/touchtype_fluency/util/HttpDownload;->downloadZip(Ljava/net/URL;Ljava/io/File;Ljava/lang/String;Lcom/touchtype_fluency/util/ProgressListener;)Ljava/util/Vector;

    move-result-object v0

    .line 82
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/DigestException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 120
    :catch_2
    move-exception v0

    .line 121
    :try_start_5
    sget-object v1, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->FAILED_CHECKSUMS_MISMATCH:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    .line 123
    const-string v3, "LanguagePack"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "download("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-virtual {v5}, Lcom/touchtype_fluency/util/c;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") invalid sha1 (tidying up): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/DigestException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 127
    iget-object v0, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/c;->a(Lcom/touchtype_fluency/util/c;Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;)V

    goto/16 :goto_0

    .line 85
    :cond_2
    :try_start_6
    monitor-enter p0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/DigestException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 86
    :try_start_7
    iget-object v3, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v3, v0}, Lcom/touchtype_fluency/util/c;->a(Lcom/touchtype_fluency/util/c;Ljava/util/Vector;)Ljava/util/Vector;

    .line 87
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 93
    :try_start_8
    invoke-static {v2}, Lcom/touchtype_fluency/util/a;->a(Ljava/io/File;)Z

    move-result v0

    .line 94
    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/c;->f()Ljava/io/File;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 97
    invoke-static {v2, v0}, Lorg/apache/commons/io/FileUtils;->moveDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 98
    const-string v3, "LanguagePack"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Language pack moved to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/security/DigestException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 127
    iget-object v0, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/c;->a(Lcom/touchtype_fluency/util/c;Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;)V

    goto/16 :goto_0

    .line 87
    :catchall_0
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/security/DigestException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 127
    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/c;->a(Lcom/touchtype_fluency/util/c;Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;)V

    throw v0

    .line 102
    :cond_3
    :try_start_b
    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 103
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Empty file(s) found!"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/security/DigestException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1
.end method
