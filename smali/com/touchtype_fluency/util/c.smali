.class final Lcom/touchtype_fluency/util/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/touchtype_fluency/util/LanguagePack;


# instance fields
.field private final a:Lcom/touchtype_fluency/util/Storage;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/net/URL;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lorg/json/JSONObject;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I

.field private r:Lcom/touchtype_fluency/util/d$a;

.field private s:Lcom/touchtype_fluency/util/f;

.field private t:Lcom/touchtype_fluency/util/Downloader;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/touchtype_fluency/util/Storage;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/util/h;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v1, Lcom/touchtype_fluency/util/c$1;

    invoke-direct {v1, p0}, Lcom/touchtype_fluency/util/c$1;-><init>(Lcom/touchtype_fluency/util/c;)V

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->t:Lcom/touchtype_fluency/util/Downloader;

    .line 133
    iput-object p2, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    .line 135
    :try_start_0
    const-string v1, "language"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    .line 136
    const-string v1, "country"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    .line 137
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->d:Ljava/lang/String;

    .line 138
    const-string v1, "default-layout"

    const-string v2, "qwerty"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->e:Ljava/lang/String;

    .line 140
    new-instance v1, Ljava/net/URL;

    const-string v2, "archive"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    .line 141
    const-string v1, "sha1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    .line 142
    const-string v1, "preinstalledSha1"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;

    .line 144
    const-string v1, "beta"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/touchtype_fluency/util/c;->m:Z

    .line 145
    const-string v1, "latestVersion"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/touchtype_fluency/util/c;->q:I

    .line 146
    const-string v1, "version"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/touchtype_fluency/util/c;->p:I

    .line 150
    iget v1, p0, Lcom/touchtype_fluency/util/c;->q:I

    if-nez v1, :cond_0

    .line 151
    iget v1, p0, Lcom/touchtype_fluency/util/c;->p:I

    iput v1, p0, Lcom/touchtype_fluency/util/c;->q:I

    .line 154
    :cond_0
    const-string v1, "updateAvailable"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/touchtype_fluency/util/c;->n:Z

    .line 155
    const-string v1, "metadata"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->k:Lorg/json/JSONObject;

    .line 156
    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/touchtype_fluency/util/c;->l:Z

    .line 159
    const-string v1, "input-type"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->f:Ljava/lang/String;

    .line 160
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/touchtype_fluency/util/c;->o:Z

    .line 162
    const-string v1, "files"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 165
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v3, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;

    .line 166
    :goto_0
    if-ge v0, v2, :cond_1

    .line 167
    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    const-string v0, "live"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 172
    if-eqz v1, :cond_2

    .line 173
    new-instance v0, Lcom/touchtype_fluency/util/f;

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getID()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/touchtype_fluency/util/c;->l:Z

    iget-object v5, p0, Lcom/touchtype_fluency/util/c;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/touchtype_fluency/util/f;-><init>(Lorg/json/JSONObject;Lcom/touchtype_fluency/util/Storage;Ljava/lang/String;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_2
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    new-instance v1, Lcom/touchtype_fluency/util/h;

    invoke-direct {v1, v0}, Lcom/touchtype_fluency/util/h;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    const-string p0, "he"

    .line 268
    :cond_0
    :goto_0
    return-object p0

    .line 263
    :cond_1
    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    const-string p0, "id"

    goto :goto_0

    .line 265
    :cond_2
    const-string v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const-string p0, "yi"

    goto :goto_0
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/c;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;

    return-object p1
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/c;Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 27
    .line 8479
    monitor-enter p0

    .line 8480
    :try_start_0
    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->r:Lcom/touchtype_fluency/util/d$a;

    if-nez v1, :cond_0

    .line 8481
    const-string v0, "LanguagePack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") complete - duplicate notification (ignored)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8482
    monitor-exit p0

    :goto_0
    return-void

    .line 8485
    :cond_0
    const-string v1, "LanguagePack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") complete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8486
    sget-object v1, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->SUCCESS:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    if-eq v1, p1, :cond_1

    sget-object v1, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->FAILED_CANCELLED:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/touchtype_fluency/util/c;->o:Z

    .line 8488
    sget-object v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->SUCCESS:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    if-ne v0, p1, :cond_2

    .line 8489
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/c;->n:Z

    .line 8491
    iget v0, p0, Lcom/touchtype_fluency/util/c;->q:I

    iput v0, p0, Lcom/touchtype_fluency/util/c;->p:I

    .line 8493
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8504
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->r:Lcom/touchtype_fluency/util/d$a;

    .line 8505
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->r:Lcom/touchtype_fluency/util/d$a;

    .line 8506
    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->t:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/Downloader;->setComplete()V

    .line 8509
    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/d$a;->onComplete(Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;)V

    goto :goto_0

    .line 8493
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/touchtype_fluency/util/c;)Lcom/touchtype_fluency/util/d$a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->r:Lcom/touchtype_fluency/util/d$a;

    return-object v0
.end method

.method static synthetic c(Lcom/touchtype_fluency/util/c;)Lcom/touchtype_fluency/util/Storage;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    return-object v0
.end method

.method static synthetic d(Lcom/touchtype_fluency/util/c;)Ljava/net/URL;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic e(Lcom/touchtype_fluency/util/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized g()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 683
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 684
    const/4 v0, 0x0

    .line 686
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 683
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :try_start_1
    const-string v1, "language"

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string v1, "country"

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string v1, "name"

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string v1, "default-layout"

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v1, "archive"

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string v1, "sha1"

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    const-string v1, "preinstalledSha1"

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    :cond_0
    const-string v1, "beta"

    iget-boolean v2, p0, Lcom/touchtype_fluency/util/c;->m:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 195
    const-string v1, "version"

    iget v2, p0, Lcom/touchtype_fluency/util/c;->p:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 196
    const-string v1, "latestVersion"

    iget v2, p0, Lcom/touchtype_fluency/util/c;->q:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 197
    const-string v1, "updateAvailable"

    iget-boolean v2, p0, Lcom/touchtype_fluency/util/c;->n:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 198
    const-string v1, "metadata"

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->k:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v1, "enabled"

    iget-boolean v2, p0, Lcom/touchtype_fluency/util/c;->l:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 201
    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 202
    const-string v1, "input-type"

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;

    if-eqz v1, :cond_2

    .line 204
    const-string v1, "files"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    if-eqz v1, :cond_3

    .line 207
    const-string v1, "live"

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    invoke-virtual {v2}, Lcom/touchtype_fluency/util/f;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :cond_3
    monitor-exit p0

    return-object v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "JSONException should not be able to be thrown"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/touchtype_fluency/util/c;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 517
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 518
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->getCountry()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->getCountry()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1298
    iget v3, p1, Lcom/touchtype_fluency/util/c;->q:I

    .line 2289
    iget-object v4, p1, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;

    .line 3285
    iget-object v2, p1, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    .line 524
    iget-object v5, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 4298
    iget v2, p1, Lcom/touchtype_fluency/util/c;->q:I

    .line 3610
    iget v5, p0, Lcom/touchtype_fluency/util/c;->q:I

    if-nez v5, :cond_7

    if-nez v2, :cond_7

    .line 3611
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->isPreinstalled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->isPreinstalled()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_2
    move v2, v0

    .line 524
    :goto_1
    if-eqz v2, :cond_9

    .line 525
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->d:Ljava/lang/String;

    .line 5281
    iget-object v0, p1, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    .line 526
    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    .line 5285
    iget-object v0, p1, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    .line 527
    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    .line 528
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->isBeta()Z

    move-result v0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/c;->m:Z

    .line 530
    iput v3, p0, Lcom/touchtype_fluency/util/c;->q:I

    .line 533
    iget-object v0, p1, Lcom/touchtype_fluency/util/c;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->e:Ljava/lang/String;

    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/c;->n:Z

    .line 537
    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 538
    iput-object v4, p0, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;

    .line 571
    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    if-eqz v0, :cond_4

    .line 572
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    if-nez v0, :cond_e

    .line 574
    new-instance v0, Lcom/touchtype_fluency/util/f;

    iget-object v1, p1, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/f;->b()Ljava/net/URL;

    move-result-object v1

    iget-object v2, p1, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    invoke-virtual {v2}, Lcom/touchtype_fluency/util/f;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getID()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/touchtype_fluency/util/c;->l:Z

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->getCurrentInputType()Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/touchtype_fluency/util/f;-><init>(Ljava/net/URL;Ljava/lang/String;Lcom/touchtype_fluency/util/Storage;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    :cond_5
    move v2, v1

    .line 518
    goto :goto_0

    :cond_6
    move v2, v1

    .line 3611
    goto :goto_1

    .line 3614
    :cond_7
    :try_start_1
    iget v5, p0, Lcom/touchtype_fluency/util/c;->q:I

    if-le v2, v5, :cond_8

    move v2, v0

    goto :goto_1

    :cond_8
    move v2, v1

    goto :goto_1

    .line 6285
    :cond_9
    iget-object v2, p1, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    .line 541
    iget-object v5, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 543
    iput v3, p0, Lcom/touchtype_fluency/util/c;->p:I

    .line 544
    iget v2, p0, Lcom/touchtype_fluency/util/c;->q:I

    if-nez v2, :cond_a

    .line 545
    iput v3, p0, Lcom/touchtype_fluency/util/c;->q:I

    .line 6590
    :cond_a
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->isPreinstalled()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->isPreinstalled()Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v0

    .line 554
    :goto_4
    if-eqz v2, :cond_c

    .line 7281
    iget-object v0, p1, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    .line 555
    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    .line 556
    const-string v0, ""

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_b
    move v2, v1

    .line 6590
    goto :goto_4

    .line 7595
    :cond_c
    :try_start_2
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->isPreinstalled()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->isPreinstalled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 559
    :goto_5
    if-eqz v0, :cond_3

    .line 8281
    iget-object v0, p1, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    .line 562
    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    .line 565
    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 566
    iput-object v4, p0, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;

    goto :goto_2

    :cond_d
    move v0, v1

    .line 7595
    goto :goto_5

    .line 583
    :cond_e
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    iget-object v1, p1, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/f;->a(Lcom/touchtype_fluency/util/f;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method final a(Lcom/touchtype_fluency/util/d$a;)V
    .locals 1

    .prologue
    .line 461
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    iput-object p1, p0, Lcom/touchtype_fluency/util/c;->r:Lcom/touchtype_fluency/util/d$a;

    .line 463
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->t:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/Downloader;->download()V

    .line 464
    return-void
.end method

.method final declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/f;->a(Z)V

    .line 309
    :cond_0
    iput-boolean p1, p0, Lcom/touchtype_fluency/util/c;->l:Z

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/c;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method final declared-synchronized b(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 343
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->f:Ljava/lang/String;

    .line 356
    :goto_0
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getLiveLanguagePack()Lcom/touchtype_fluency/util/LiveLanguagePack;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/util/f;

    .line 357
    if-eqz v0, :cond_1

    .line 358
    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    :cond_1
    monitor-exit p0

    return-void

    .line 345
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/Storage;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 347
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ".config"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/Storage;->fileExists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 348
    iput-object p1, p0, Lcom/touchtype_fluency/util/c;->f:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 350
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid input type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "storage not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method final declared-synchronized c()V
    .locals 3

    .prologue
    .line 367
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->f:Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/f;->d()V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/Storage;->delete(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    monitor-exit p0

    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final cancelDownload()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->t:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/Downloader;->cancelDownload()V

    .line 468
    return-void
.end method

.method final declared-synchronized d()V
    .locals 1

    .prologue
    .line 407
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/touchtype_fluency/util/c;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    monitor-exit p0

    return-void

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Z
    .locals 3

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getPreinstallFile()Ljava/io/File;

    move-result-object v0

    .line 428
    if-eqz v0, :cond_0

    .line 430
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    .line 431
    invoke-static {v0}, Lcom/touchtype_fluency/util/HttpDownload;->createDigest(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    const/4 v0, 0x1

    .line 438
    :goto_0
    return v0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IOException should not be able to be thrown"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 438
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 622
    if-ne p0, p1, :cond_1

    .line 632
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 626
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/touchtype_fluency/util/c;

    if-nez v2, :cond_2

    move v0, v1

    .line 627
    goto :goto_0

    .line 630
    :cond_2
    check-cast p1, Lcom/touchtype_fluency/util/c;

    .line 632
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/touchtype_fluency/util/c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/touchtype_fluency/util/c;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    iget-object v3, p1, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    invoke-virtual {v2, v3}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/touchtype_fluency/util/c;->m:Z

    iget-boolean v3, p1, Lcom/touchtype_fluency/util/c;->m:Z

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;

    if-nez v2, :cond_5

    invoke-direct {p1}, Lcom/touchtype_fluency/util/c;->g()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;

    if-eqz v2, :cond_8

    invoke-direct {p1}, Lcom/touchtype_fluency/util/c;->g()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;

    invoke-direct {p1}, Lcom/touchtype_fluency/util/c;->g()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    iget-boolean v2, p0, Lcom/touchtype_fluency/util/c;->l:Z

    iget-boolean v3, p1, Lcom/touchtype_fluency/util/c;->l:Z

    if-ne v2, v3, :cond_8

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->isDownloaded()Z

    move-result v2

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->isDownloaded()Z

    move-result v3

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    if-eqz v2, :cond_0

    :cond_7
    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    iget-object v3, p1, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/util/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_8
    move v0, v1

    goto/16 :goto_0
.end method

.method final f()Ljava/io/File;
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/Storage;->getLanguageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrentInputType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized getCurrentVersion()I
    .locals 1

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/touchtype_fluency/util/c;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getDefaultLayout()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 456
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/Storage;->getLanguageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 457
    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->f:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final getID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getJavaLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    .line 1248
    const-string v1, "he"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1249
    const-string v0, "iw"

    .line 1253
    :cond_0
    :goto_0
    return-object v0

    .line 1250
    :cond_1
    const-string v1, "id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1251
    const-string v0, "in"

    goto :goto_0

    .line 1252
    :cond_2
    const-string v1, "yi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1253
    const-string v0, "ji"

    goto :goto_0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getLiveLanguagePack()Lcom/touchtype_fluency/util/LiveLanguagePack;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    return-object v0
.end method

.method public final getMetadata()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->k:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreinstallFile()Ljava/io/File;
    .locals 4

    .prologue
    .line 416
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/Storage;->getPreinstallDirectory()Ljava/io/File;

    move-result-object v1

    .line 417
    if-eqz v1, :cond_0

    .line 418
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 419
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSupportedInputTypes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/Storage;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/Storage;->getLanguageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 321
    new-instance v1, Lcom/touchtype_fluency/util/c$2;

    invoke-direct {v1}, Lcom/touchtype_fluency/util/c$2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 329
    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 331
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 332
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 658
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x2bf

    .line 659
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    .line 660
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 661
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 662
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 663
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 664
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 665
    mul-int/lit8 v3, v0, 0x25

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/c;->m:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    add-int/2addr v0, v3

    .line 667
    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;

    if-eqz v3, :cond_2

    .line 668
    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 669
    mul-int/lit8 v3, v3, 0x25

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    move v3, v0

    .line 670
    goto :goto_2

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 665
    goto :goto_1

    :cond_2
    move v3, v0

    .line 673
    :cond_3
    mul-int/lit8 v3, v3, 0x25

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/c;->l:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_3
    add-int/2addr v0, v3

    .line 674
    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->isDownloaded()Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_4
    add-int/2addr v0, v2

    .line 675
    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    if-eqz v1, :cond_4

    .line 676
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/f;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 679
    :cond_4
    return v0

    :cond_5
    move v0, v1

    .line 673
    goto :goto_3

    :cond_6
    move v2, v1

    .line 674
    goto :goto_4
.end method

.method public final isBeta()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/c;->m:Z

    return v0
.end method

.method public final declared-synchronized isBroken()Z
    .locals 1

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/c;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/c;->l:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->isDownloaded()Z
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
    .line 513
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->t:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/Downloader;->isDownloadInProgress()Z

    move-result v0

    return v0
.end method

.method public final isDownloaded()Z
    .locals 4

    .prologue
    .line 315
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".config"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/Storage;->fileExists(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/c;->l:Z

    return v0
.end method

.method public final isPreinstalled()Z
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRightToLeft()Z
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/text/Bidi;->requiresBidi([CII)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized isUpdateAvailable()Z
    .locals 1

    .prologue
    .line 398
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/c;->n:Z
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
    .line 471
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->r:Lcom/touchtype_fluency/util/d$a;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->r:Lcom/touchtype_fluency/util/d$a;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/d$a;->a(Lcom/touchtype_fluency/util/ProgressListener;)V

    .line 473
    return-void
.end method

.method public final setMetadata(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "m"    # Lorg/json/JSONObject;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/touchtype_fluency/util/c;->k:Lorg/json/JSONObject;

    .line 223
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
