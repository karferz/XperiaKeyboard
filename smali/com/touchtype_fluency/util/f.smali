.class final Lcom/touchtype_fluency/util/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/touchtype_fluency/util/LiveLanguagePack;


# instance fields
.field private final a:Lcom/touchtype_fluency/util/Storage;

.field private final b:Ljava/lang/String;

.field private c:Ljava/net/URL;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/touchtype_fluency/util/d$a;

.field private k:Lcom/touchtype_fluency/util/Downloader;


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Lcom/touchtype_fluency/util/Storage;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/touchtype_fluency/util/f$1;

    invoke-direct {v0, p0}, Lcom/touchtype_fluency/util/f$1;-><init>(Lcom/touchtype_fluency/util/f;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/f;->k:Lcom/touchtype_fluency/util/Downloader;

    .line 128
    iput-object p3, p0, Lcom/touchtype_fluency/util/f;->a:Lcom/touchtype_fluency/util/Storage;

    .line 129
    iput-object p4, p0, Lcom/touchtype_fluency/util/f;->b:Ljava/lang/String;

    .line 130
    iput-boolean p5, p0, Lcom/touchtype_fluency/util/f;->g:Z

    .line 131
    iput-object p1, p0, Lcom/touchtype_fluency/util/f;->c:Ljava/net/URL;

    .line 132
    iput-object p2, p0, Lcom/touchtype_fluency/util/f;->d:Ljava/lang/String;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/f;->h:Z

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/f;->i:Z

    .line 136
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/touchtype_fluency/util/Storage;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/util/h;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/touchtype_fluency/util/f$1;

    invoke-direct {v0, p0}, Lcom/touchtype_fluency/util/f$1;-><init>(Lcom/touchtype_fluency/util/f;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/f;->k:Lcom/touchtype_fluency/util/Downloader;

    .line 103
    iput-object p2, p0, Lcom/touchtype_fluency/util/f;->a:Lcom/touchtype_fluency/util/Storage;

    .line 104
    iput-object p3, p0, Lcom/touchtype_fluency/util/f;->b:Ljava/lang/String;

    .line 107
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "archive"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/f;->c:Ljava/net/URL;

    .line 108
    const-string v0, "sha1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/f;->d:Ljava/lang/String;

    .line 109
    const-string v0, "version"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/touchtype_fluency/util/f;->f:I

    .line 110
    const-string v0, "updateAvailable"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/f;->h:Z

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/f;->i:Z

    .line 112
    const-string v0, "enabled"

    invoke-virtual {p1, v0, p4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/f;->g:Z

    .line 113
    iput-object p5, p0, Lcom/touchtype_fluency/util/f;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    new-instance v1, Lcom/touchtype_fluency/util/h;

    invoke-direct {v1, v0}, Lcom/touchtype_fluency/util/h;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/f;Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 18
    .line 2254
    monitor-enter p0

    .line 2255
    :try_start_0
    iget-object v1, p0, Lcom/touchtype_fluency/util/f;->j:Lcom/touchtype_fluency/util/d$a;

    if-nez v1, :cond_0

    .line 2256
    const-string v0, "LiveLanguagePack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/f;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") complete - duplicate notification (ignored)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    monitor-exit p0

    :goto_0
    return-void

    .line 2260
    :cond_0
    const-string v1, "LiveLanguagePack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/f;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") complete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    sget-object v1, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->SUCCESS:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    if-eq v1, p1, :cond_1

    sget-object v1, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->FAILED_CANCELLED:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/touchtype_fluency/util/f;->i:Z

    .line 2263
    sget-object v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->SUCCESS:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    if-ne v0, p1, :cond_2

    .line 2264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/f;->h:Z

    .line 2266
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2277
    iget-object v0, p0, Lcom/touchtype_fluency/util/f;->j:Lcom/touchtype_fluency/util/d$a;

    .line 2278
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/touchtype_fluency/util/f;->j:Lcom/touchtype_fluency/util/d$a;

    .line 2279
    iget-object v1, p0, Lcom/touchtype_fluency/util/f;->k:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/Downloader;->setComplete()V

    .line 2282
    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/d$a;->onComplete(Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;)V

    goto :goto_0

    .line 2266
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/touchtype_fluency/util/f;)Lcom/touchtype_fluency/util/d$a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/touchtype_fluency/util/f;->j:Lcom/touchtype_fluency/util/d$a;

    return-object v0
.end method

.method static synthetic c(Lcom/touchtype_fluency/util/f;)Lcom/touchtype_fluency/util/Storage;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/touchtype_fluency/util/f;->a:Lcom/touchtype_fluency/util/Storage;

    return-object v0
.end method

.method static synthetic d(Lcom/touchtype_fluency/util/f;)Ljava/net/URL;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/touchtype_fluency/util/f;->c:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic e(Lcom/touchtype_fluency/util/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/touchtype_fluency/util/f;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :try_start_1
    const-string v1, "archive"

    iget-object v2, p0, Lcom/touchtype_fluency/util/f;->c:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v1, "sha1"

    iget-object v2, p0, Lcom/touchtype_fluency/util/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v1, "version"

    iget v2, p0, Lcom/touchtype_fluency/util/f;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 146
    const-string v1, "enabled"

    iget-boolean v2, p0, Lcom/touchtype_fluency/util/f;->g:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 147
    const-string v1, "updateAvailable"

    iget-boolean v2, p0, Lcom/touchtype_fluency/util/f;->h:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    monitor-exit p0

    return-object v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "JSONException should not be able to be thrown"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/touchtype_fluency/util/d$a;)V
    .locals 1

    .prologue
    .line 235
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iput-object p1, p0, Lcom/touchtype_fluency/util/f;->j:Lcom/touchtype_fluency/util/d$a;

    .line 237
    iget-object v0, p0, Lcom/touchtype_fluency/util/f;->k:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/Downloader;->download()V

    .line 238
    return-void
.end method

.method public final declared-synchronized a(Lcom/touchtype_fluency/util/f;)V
    .locals 2

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/f;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/touchtype_fluency/util/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1166
    iget-object v0, p1, Lcom/touchtype_fluency/util/f;->d:Ljava/lang/String;

    .line 291
    iget-object v1, p0, Lcom/touchtype_fluency/util/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2162
    iget-object v0, p1, Lcom/touchtype_fluency/util/f;->c:Ljava/net/URL;

    .line 292
    iput-object v0, p0, Lcom/touchtype_fluency/util/f;->c:Ljava/net/URL;

    .line 2166
    iget-object v0, p1, Lcom/touchtype_fluency/util/f;->d:Ljava/lang/String;

    .line 293
    iput-object v0, p0, Lcom/touchtype_fluency/util/f;->d:Ljava/lang/String;

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/f;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :cond_0
    monitor-exit p0

    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/touchtype_fluency/util/f;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/touchtype_fluency/util/f;->g:Z

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/f;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b()Ljava/net/URL;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/touchtype_fluency/util/f;->c:Ljava/net/URL;

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/touchtype_fluency/util/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final cancelDownload()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/touchtype_fluency/util/f;->k:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/Downloader;->cancelDownload()V

    .line 242
    return-void
.end method

.method final declared-synchronized d()V
    .locals 3

    .prologue
    .line 194
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/touchtype_fluency/util/f;->e:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/touchtype_fluency/util/f;->a:Lcom/touchtype_fluency/util/Storage;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/f;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/Storage;->delete(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized e()V
    .locals 1

    .prologue
    .line 209
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/touchtype_fluency/util/f;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 302
    if-ne p0, p1, :cond_1

    .line 312
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 306
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/touchtype_fluency/util/f;

    if-nez v2, :cond_2

    move v0, v1

    .line 307
    goto :goto_0

    .line 310
    :cond_2
    check-cast p1, Lcom/touchtype_fluency/util/f;

    .line 312
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/touchtype_fluency/util/f;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/touchtype_fluency/util/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/touchtype_fluency/util/f;->c:Ljava/net/URL;

    iget-object v3, p1, Lcom/touchtype_fluency/util/f;->c:Ljava/net/URL;

    invoke-virtual {v2, v3}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/touchtype_fluency/util/f;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/touchtype_fluency/util/f;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/touchtype_fluency/util/f;->g:Z

    iget-boolean v3, p1, Lcom/touchtype_fluency/util/f;->g:Z

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/f;->isDownloaded()Z

    move-result v2

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/f;->isDownloaded()Z

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method final f()Ljava/io/File;
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/touchtype_fluency/util/f;->a:Lcom/touchtype_fluency/util/Storage;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/f;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/Storage;->getLanguageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentVersion()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/touchtype_fluency/util/f;->f:I

    return v0
.end method

.method public final getDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/touchtype_fluency/util/f;->a:Lcom/touchtype_fluency/util/Storage;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/f;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/Storage;->getLanguageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/touchtype_fluency/util/f;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/touchtype_fluency/util/f;->e:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final getID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/touchtype_fluency/util/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-live"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 323
    iget-object v0, p0, Lcom/touchtype_fluency/util/f;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x2bf

    .line 324
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/touchtype_fluency/util/f;->c:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 325
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/touchtype_fluency/util/f;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 326
    mul-int/lit8 v3, v0, 0x25

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/f;->g:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    .line 327
    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/f;->isDownloaded()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 328
    return v0

    :cond_0
    move v0, v2

    .line 326
    goto :goto_0

    :cond_1
    move v1, v2

    .line 327
    goto :goto_1
.end method

.method public final declared-synchronized isBroken()Z
    .locals 1

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/f;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/f;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/f;->isDownloaded()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isDownloadInProgress()Z
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/touchtype_fluency/util/f;->k:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/Downloader;->isDownloadInProgress()Z

    move-result v0

    return v0
.end method

.method public final isDownloaded()Z
    .locals 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/touchtype_fluency/util/f;->a:Lcom/touchtype_fluency/util/Storage;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/f;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".config"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/Storage;->fileExists(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized isEnabled()Z
    .locals 1

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/f;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isUpdateAvailable()Z
    .locals 1

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/f;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final resetDownloadListener(Lcom/touchtype_fluency/util/ProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/touchtype_fluency/util/ProgressListener;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/touchtype_fluency/util/f;->j:Lcom/touchtype_fluency/util/d$a;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lcom/touchtype_fluency/util/f;->j:Lcom/touchtype_fluency/util/d$a;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/d$a;->a(Lcom/touchtype_fluency/util/ProgressListener;)V

    .line 247
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/f;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/f;->c:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
