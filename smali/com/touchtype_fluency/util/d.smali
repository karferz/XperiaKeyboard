.class Lcom/touchtype_fluency/util/d;
.super Lcom/touchtype_fluency/util/LanguagePackManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype_fluency/util/d$a;
    }
.end annotation


# static fields
.field static a:Lcom/touchtype_fluency/LoggingListener;

.field private static volatile c:Lcom/touchtype_fluency/util/LanguagePackManager;


# instance fields
.field private b:Ljava/lang/String;

.field private final d:Lcom/touchtype_fluency/util/Storage;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private g:Lcom/touchtype_fluency/util/e;

.field private h:Ljava/lang/Thread;

.field private volatile i:Lcom/touchtype_fluency/util/RefreshListener;

.field private j:I

.field private k:I

.field private l:Lcom/touchtype_fluency/util/Downloader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/touchtype_fluency/util/d;->a:Lcom/touchtype_fluency/LoggingListener;

    .line 49
    sput-object v0, Lcom/touchtype_fluency/util/d;->c:Lcom/touchtype_fluency/util/LanguagePackManager;

    return-void
.end method

.method private constructor <init>(Lcom/touchtype_fluency/util/Storage;Ljava/lang/String;ILcom/touchtype_fluency/LoggingListener;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 261
    invoke-direct {p0}, Lcom/touchtype_fluency/util/LanguagePackManager;-><init>()V

    .line 58
    iput v0, p0, Lcom/touchtype_fluency/util/d;->j:I

    .line 59
    iput v0, p0, Lcom/touchtype_fluency/util/d;->k:I

    .line 75
    new-instance v0, Lcom/touchtype_fluency/util/d$1;

    invoke-direct {v0, p0}, Lcom/touchtype_fluency/util/d$1;-><init>(Lcom/touchtype_fluency/util/d;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/d;->l:Lcom/touchtype_fluency/util/Downloader;

    .line 262
    iput-object p1, p0, Lcom/touchtype_fluency/util/d;->d:Lcom/touchtype_fluency/util/Storage;

    .line 263
    iput-object p2, p0, Lcom/touchtype_fluency/util/d;->e:Ljava/lang/String;

    .line 264
    iput p3, p0, Lcom/touchtype_fluency/util/d;->f:I

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype_fluency/util/d;->h:Ljava/lang/Thread;

    .line 266
    sput-object p4, Lcom/touchtype_fluency/util/d;->a:Lcom/touchtype_fluency/LoggingListener;

    .line 268
    :try_start_0
    invoke-interface {p1}, Lcom/touchtype_fluency/util/Storage;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    const-string v0, "languagePacks.json"

    invoke-interface {p1, v0}, Lcom/touchtype_fluency/util/Storage;->loadConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    new-instance v1, Lcom/touchtype_fluency/util/e;

    invoke-direct {v1, v0, p1}, Lcom/touchtype_fluency/util/e;-><init>(Ljava/lang/String;Lcom/touchtype_fluency/util/Storage;)V

    iput-object v1, p0, Lcom/touchtype_fluency/util/d;->g:Lcom/touchtype_fluency/util/e;

    .line 272
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->g:Lcom/touchtype_fluency/util/e;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/e;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 273
    const-string v0, "LanguagePackManager"

    const-string v1, "Empty configuration file was read - will create empty languagePacks.json. Call verify() to check for preinstalled language packs."

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/d;->clearLPConfiguration()V

    .line 293
    :goto_0
    return-void

    .line 278
    :cond_0
    const-string v0, "settings.json"

    invoke-interface {p1, v0}, Lcom/touchtype_fluency/util/Storage;->loadConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-direct {p0, v0}, Lcom/touchtype_fluency/util/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    const-string v1, "LanguagePackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to read configuration: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - will create empty languagePacks.json. Call verify() to check for preinstalled language packs."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/d;->clearLPConfiguration()V

    goto :goto_0

    .line 282
    :cond_1
    :try_start_1
    const-string v0, "LanguagePackManager"

    const-string v1, "Unable to read or save configuration or settings: storage not available - will use empty languagePacks.json"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v0, Lcom/touchtype_fluency/util/e;

    const-string v1, "[]"

    invoke-direct {v0, v1, p1}, Lcom/touchtype_fluency/util/e;-><init>(Ljava/lang/String;Lcom/touchtype_fluency/util/Storage;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/d;->g:Lcom/touchtype_fluency/util/e;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Lcom/touchtype_fluency/util/Storage;Ljava/lang/String;ILcom/touchtype_fluency/LoggingListener;)Lcom/touchtype_fluency/util/LanguagePackManager;
    .locals 2

    .prologue
    .line 244
    sget-object v0, Lcom/touchtype_fluency/util/d;->c:Lcom/touchtype_fluency/util/LanguagePackManager;

    .line 245
    if-nez v0, :cond_1

    .line 246
    const-class v1, Lcom/touchtype_fluency/util/d;

    monitor-enter v1

    .line 247
    :try_start_0
    sget-object v0, Lcom/touchtype_fluency/util/d;->c:Lcom/touchtype_fluency/util/LanguagePackManager;

    .line 248
    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lcom/touchtype_fluency/util/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/touchtype_fluency/util/d;-><init>(Lcom/touchtype_fluency/util/Storage;Ljava/lang/String;ILcom/touchtype_fluency/LoggingListener;)V

    sput-object v0, Lcom/touchtype_fluency/util/d;->c:Lcom/touchtype_fluency/util/LanguagePackManager;

    .line 253
    :cond_0
    monitor-exit v1

    .line 255
    :cond_1
    return-object v0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/touchtype_fluency/util/d;->b:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 3

    .prologue
    .line 441
    move-object v0, p1

    check-cast v0, Lcom/touchtype_fluency/util/c;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    const-string v0, "LanguagePackManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " broken: re-install preinstalled version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :goto_0
    invoke-virtual {p0, p1}, Lcom/touchtype_fluency/util/d;->setLanguageBroken(Lcom/touchtype_fluency/util/LanguagePack;)V

    .line 447
    return-void

    .line 444
    :cond_0
    const-string v0, "LanguagePackManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " broken: re-download it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lcom/touchtype_fluency/util/ProgressListener;)V
    .locals 1

    .prologue
    .line 530
    if-eqz p0, :cond_0

    .line 531
    sget-object v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->FAILED_INSUFFICIENT_STORAGE:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    invoke-interface {p0, v0}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;)V

    .line 533
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/ProgressListener;Z)V
    .locals 0

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/touchtype_fluency/util/d;->b(Lcom/touchtype_fluency/util/ProgressListener;Z)V

    return-void
.end method

.method private a(Lcom/touchtype_fluency/util/RefreshListener;Z)V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->d:Lcom/touchtype_fluency/util/Storage;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/Storage;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 452
    iput-object p1, p0, Lcom/touchtype_fluency/util/d;->i:Lcom/touchtype_fluency/util/RefreshListener;

    .line 453
    if-eqz p2, :cond_1

    .line 454
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->l:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/Downloader;->forceDownload()V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->l:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/Downloader;->download()V

    goto :goto_0

    .line 460
    :cond_2
    const-string v0, "LanguagePackManager"

    const-string v1, "Unable to refresh: storage not available"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    if-eqz p1, :cond_0

    .line 462
    sget-object v0, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->STORAGE_UNAVAILABLE:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    invoke-interface {p1, v0}, Lcom/touchtype_fluency/util/RefreshListener;->onComplete(Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/d;Lcom/touchtype_fluency/util/e;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/d;->a(Lcom/touchtype_fluency/util/e;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/touchtype_fluency/util/e;)V
    .locals 1

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->g:Lcom/touchtype_fluency/util/e;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/e;->a(Lcom/touchtype_fluency/util/e;)V

    .line 369
    invoke-direct {p0}, Lcom/touchtype_fluency/util/d;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    monitor-exit p0

    return-void

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 298
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 299
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 300
    check-cast v0, Lorg/json/JSONObject;

    .line 301
    const-string v1, "serverJsonETag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/d;->b:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :goto_0
    monitor-exit p0

    return-void

    .line 308
    :cond_0
    :try_start_1
    const-string v0, "LanguagePackManager"

    const-string v1, "Resetting and saving the local settings after reading invalid settings.json"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-direct {p0}, Lcom/touchtype_fluency/util/d;->e()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    :try_start_2
    const-string v1, "LanguagePackManager"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Lcom/touchtype_fluency/util/d;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/touchtype_fluency/Session;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 413
    const/4 v0, 0x1

    .line 414
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/d;->getAllLanguages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/util/LanguagePack;

    .line 415
    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 417
    :try_start_0
    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v4

    .line 420
    invoke-interface {p1, v4}, Lcom/touchtype_fluency/Session;->verify(Lcom/touchtype_fluency/ModelSetDescription;)V

    .line 421
    const-string v4, "LanguagePackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " verified"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 422
    :catch_0
    move-exception v1

    .line 423
    const-string v4, "LanguagePackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not verified, with IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-direct {p0, v0}, Lcom/touchtype_fluency/util/d;->a(Lcom/touchtype_fluency/util/LanguagePack;)V

    move v1, v2

    .line 434
    goto :goto_0

    .line 428
    :catch_1
    move-exception v1

    .line 429
    const-string v4, "LanguagePackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not verified, with InvalidDataException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/touchtype_fluency/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-direct {p0, v0}, Lcom/touchtype_fluency/util/d;->a(Lcom/touchtype_fluency/util/LanguagePack;)V

    move v0, v2

    :goto_1
    move v1, v0

    .line 436
    goto/16 :goto_0

    .line 437
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/d;Lcom/touchtype_fluency/Session;)Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/d;->a(Lcom/touchtype_fluency/Session;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/touchtype_fluency/util/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Lcom/touchtype_fluency/util/ProgressListener;)V
    .locals 1

    .prologue
    .line 536
    if-eqz p0, :cond_0

    .line 537
    sget-object v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->FAILED_TOO_MANY_CONCURRENT_DOWNLOADS:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    invoke-interface {p0, v0}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;)V

    .line 539
    :cond_0
    return-void
.end method

.method private static b(Lcom/touchtype_fluency/util/ProgressListener;Z)V
    .locals 1

    .prologue
    .line 668
    if-nez p0, :cond_0

    .line 676
    :goto_0
    return-void

    .line 671
    :cond_0
    if-eqz p1, :cond_1

    .line 672
    sget-object v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->SUCCESS:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    invoke-interface {p0, v0}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;)V

    goto :goto_0

    .line 674
    :cond_1
    sget-object v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->FAILED_CANNOT_ENABLE:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    invoke-interface {p0, v0}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;)V

    goto :goto_0
.end method

.method private declared-synchronized b()Z
    .locals 2

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/touchtype_fluency/util/d;->j:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/touchtype_fluency/util/d;->k:I

    iget v1, p0, Lcom/touchtype_fluency/util/d;->j:I

    if-ge v0, v1, :cond_1

    .line 64
    :cond_0
    iget v0, p0, Lcom/touchtype_fluency/util/d;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/touchtype_fluency/util/d;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    const/4 v0, 0x1

    .line 67
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/touchtype_fluency/util/d;)Lcom/touchtype_fluency/util/Storage;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->d:Lcom/touchtype_fluency/util/Storage;

    return-object v0
.end method

.method private declared-synchronized c()V
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/touchtype_fluency/util/d;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/touchtype_fluency/util/d;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .locals 4

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->d:Lcom/touchtype_fluency/util/Storage;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/Storage;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->d:Lcom/touchtype_fluency/util/Storage;

    iget-object v1, p0, Lcom/touchtype_fluency/util/d;->g:Lcom/touchtype_fluency/util/e;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/e;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "languagePacks.json"

    invoke-interface {v0, v1, v2}, Lcom/touchtype_fluency/util/Storage;->saveConfiguration(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :goto_0
    monitor-exit p0

    return-void

    .line 324
    :cond_0
    :try_start_1
    const-string v0, "LanguagePackManager"

    const-string v1, "Unable to save configuration: storage not available"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 328
    :try_start_2
    const-string v1, "LanguagePackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to save configuration: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/touchtype_fluency/util/d;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/touchtype_fluency/util/d;->f()V

    return-void
.end method

.method static synthetic e(Lcom/touchtype_fluency/util/d;)Lcom/touchtype_fluency/util/RefreshListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->i:Lcom/touchtype_fluency/util/RefreshListener;

    return-object v0
.end method

.method private declared-synchronized e()V
    .locals 1

    .prologue
    .line 341
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/touchtype_fluency/util/d;->b:Ljava/lang/String;

    .line 342
    invoke-direct {p0}, Lcom/touchtype_fluency/util/d;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic f(Lcom/touchtype_fluency/util/d;)Lcom/touchtype_fluency/util/RefreshListener;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype_fluency/util/d;->i:Lcom/touchtype_fluency/util/RefreshListener;

    return-object v0
.end method

.method private declared-synchronized f()V
    .locals 4

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->d:Lcom/touchtype_fluency/util/Storage;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/Storage;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->d:Lcom/touchtype_fluency/util/Storage;

    const-string v1, "{}"

    const-string v2, "settings.json"

    invoke-interface {v0, v1, v2}, Lcom/touchtype_fluency/util/Storage;->saveConfiguration(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :goto_0
    monitor-exit p0

    return-void

    .line 354
    :cond_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 355
    const-string v1, "serverJsonETag"

    iget-object v2, p0, Lcom/touchtype_fluency/util/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    iget-object v1, p0, Lcom/touchtype_fluency/util/d;->d:Lcom/touchtype_fluency/util/Storage;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "settings.json"

    invoke-interface {v1, v0, v2}, Lcom/touchtype_fluency/util/Storage;->saveConfiguration(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    :try_start_2
    const-string v1, "LanguagePackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to save settings: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 358
    :cond_1
    :try_start_3
    const-string v0, "LanguagePackManager"

    const-string v1, "Unable to save settings: storage not available"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 362
    :catch_1
    move-exception v0

    .line 363
    :try_start_4
    const-string v1, "LanguagePackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to save settings: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method static synthetic g(Lcom/touchtype_fluency/util/d;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/touchtype_fluency/util/d;->d()V

    return-void
.end method

.method static synthetic h(Lcom/touchtype_fluency/util/d;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/touchtype_fluency/util/d;->c()V

    return-void
.end method

.method static synthetic i(Lcom/touchtype_fluency/util/d;)V
    .locals 3

    .prologue
    .line 36
    .line 2394
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->d:Lcom/touchtype_fluency/util/Storage;

    iget-object v1, p0, Lcom/touchtype_fluency/util/d;->g:Lcom/touchtype_fluency/util/e;

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload;->a(Lcom/touchtype_fluency/util/Storage;Lcom/touchtype_fluency/util/e;)Ljava/lang/String;

    move-result-object v0

    .line 2396
    if-eqz v0, :cond_1

    .line 2397
    new-instance v1, Lcom/touchtype_fluency/util/e;

    iget-object v2, p0, Lcom/touchtype_fluency/util/d;->d:Lcom/touchtype_fluency/util/Storage;

    invoke-direct {v1, v0, v2}, Lcom/touchtype_fluency/util/e;-><init>(Ljava/lang/String;Lcom/touchtype_fluency/util/Storage;)V

    .line 2398
    invoke-virtual {v1}, Lcom/touchtype_fluency/util/e;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 2399
    invoke-direct {p0, v1}, Lcom/touchtype_fluency/util/d;->a(Lcom/touchtype_fluency/util/e;)V

    .line 2408
    :cond_0
    invoke-direct {p0}, Lcom/touchtype_fluency/util/d;->e()V

    .line 36
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized clearLPConfiguration()V
    .locals 3

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/touchtype_fluency/util/e;

    const-string v1, "[]"

    iget-object v2, p0, Lcom/touchtype_fluency/util/d;->d:Lcom/touchtype_fluency/util/Storage;

    invoke-direct {v0, v1, v2}, Lcom/touchtype_fluency/util/e;-><init>(Ljava/lang/String;Lcom/touchtype_fluency/util/Storage;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/d;->g:Lcom/touchtype_fluency/util/e;

    .line 336
    invoke-direct {p0}, Lcom/touchtype_fluency/util/d;->d()V

    .line 337
    invoke-direct {p0}, Lcom/touchtype_fluency/util/d;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearSslContext()V
    .locals 0

    .prologue
    .line 688
    invoke-static {}, Lcom/touchtype_fluency/util/HttpDownload;->b()V

    .line 689
    return-void
.end method

.method public deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 1
    .param p1, "language"    # Lcom/touchtype_fluency/util/LanguagePack;

    .prologue
    .line 589
    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    check-cast p1, Lcom/touchtype_fluency/util/c;

    .line 591
    .end local p1    # "language":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/touchtype_fluency/util/c;->a(Z)V

    .line 594
    :cond_0
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->c()V

    .line 595
    invoke-direct {p0}, Lcom/touchtype_fluency/util/d;->d()V

    .line 597
    :cond_1
    return-void
.end method

.method public downloadLanguage(Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/ProgressListener;)Z
    .locals 2
    .param p1, "language"    # Lcom/touchtype_fluency/util/LanguagePack;
    .param p2, "listener"    # Lcom/touchtype_fluency/util/ProgressListener;

    .prologue
    const/4 v0, 0x0

    .line 499
    iget-object v1, p0, Lcom/touchtype_fluency/util/d;->d:Lcom/touchtype_fluency/util/Storage;

    invoke-static {v1, p2}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Lcom/touchtype_fluency/util/Storage;Lcom/touchtype_fluency/util/ProgressListener;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    invoke-direct {p0}, Lcom/touchtype_fluency/util/d;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    check-cast p1, Lcom/touchtype_fluency/util/c;

    .end local p1    # "language":Lcom/touchtype_fluency/util/LanguagePack;
    new-instance v0, Lcom/touchtype_fluency/util/d$a;

    invoke-direct {v0, p0, p2}, Lcom/touchtype_fluency/util/d$a;-><init>(Lcom/touchtype_fluency/util/d;Lcom/touchtype_fluency/util/ProgressListener;)V

    invoke-virtual {p1, v0}, Lcom/touchtype_fluency/util/c;->a(Lcom/touchtype_fluency/util/d$a;)V

    .line 502
    const/4 v0, 0x1

    .line 509
    :goto_0
    return v0

    .line 504
    .restart local p1    # "language":Lcom/touchtype_fluency/util/LanguagePack;
    :cond_0
    invoke-static {p2}, Lcom/touchtype_fluency/util/d;->b(Lcom/touchtype_fluency/util/ProgressListener;)V

    goto :goto_0

    .line 508
    :cond_1
    invoke-static {p2}, Lcom/touchtype_fluency/util/d;->a(Lcom/touchtype_fluency/util/ProgressListener;)V

    goto :goto_0
.end method

.method public downloadLiveLanguage(Lcom/touchtype_fluency/util/LiveLanguagePack;Lcom/touchtype_fluency/util/ProgressListener;)Z
    .locals 2
    .param p1, "language"    # Lcom/touchtype_fluency/util/LiveLanguagePack;
    .param p2, "listener"    # Lcom/touchtype_fluency/util/ProgressListener;

    .prologue
    const/4 v0, 0x0

    .line 515
    iget-object v1, p0, Lcom/touchtype_fluency/util/d;->d:Lcom/touchtype_fluency/util/Storage;

    invoke-static {v1, p2}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Lcom/touchtype_fluency/util/Storage;Lcom/touchtype_fluency/util/ProgressListener;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 516
    invoke-direct {p0}, Lcom/touchtype_fluency/util/d;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    check-cast p1, Lcom/touchtype_fluency/util/f;

    .end local p1    # "language":Lcom/touchtype_fluency/util/LiveLanguagePack;
    new-instance v0, Lcom/touchtype_fluency/util/d$a;

    invoke-direct {v0, p0, p2}, Lcom/touchtype_fluency/util/d$a;-><init>(Lcom/touchtype_fluency/util/d;Lcom/touchtype_fluency/util/ProgressListener;)V

    invoke-virtual {p1, v0}, Lcom/touchtype_fluency/util/f;->a(Lcom/touchtype_fluency/util/d$a;)V

    .line 518
    const/4 v0, 0x1

    .line 525
    :goto_0
    return v0

    .line 520
    .restart local p1    # "language":Lcom/touchtype_fluency/util/LiveLanguagePack;
    :cond_0
    invoke-static {p2}, Lcom/touchtype_fluency/util/d;->b(Lcom/touchtype_fluency/util/ProgressListener;)V

    goto :goto_0

    .line 524
    :cond_1
    invoke-static {p2}, Lcom/touchtype_fluency/util/d;->a(Lcom/touchtype_fluency/util/ProgressListener;)V

    goto :goto_0
.end method

.method public enableDefaultLanguage(Lcom/touchtype_fluency/util/ProgressListener;)Lcom/touchtype_fluency/util/LanguagePack;
    .locals 3
    .param p1, "listener"    # Lcom/touchtype_fluency/util/ProgressListener;

    .prologue
    .line 619
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 622
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/touchtype_fluency/util/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 624
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/touchtype_fluency/util/d;->findLanguage(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v0

    .line 625
    if-eqz v0, :cond_1

    .line 626
    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/d;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    move-result v1

    .line 628
    invoke-static {p1, v1}, Lcom/touchtype_fluency/util/d;->b(Lcom/touchtype_fluency/util/ProgressListener;Z)V

    .line 663
    :goto_0
    return-object v0

    .line 633
    :cond_0
    iget v1, p0, Lcom/touchtype_fluency/util/d;->j:I

    .line 634
    const/4 v2, 0x0

    iput v2, p0, Lcom/touchtype_fluency/util/d;->j:I

    .line 635
    new-instance v2, Lcom/touchtype_fluency/util/d$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/touchtype_fluency/util/d$3;-><init>(Lcom/touchtype_fluency/util/d;Lcom/touchtype_fluency/util/ProgressListener;Lcom/touchtype_fluency/util/LanguagePack;)V

    invoke-virtual {p0, v0, v2}, Lcom/touchtype_fluency/util/d;->downloadLanguage(Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/ProgressListener;)Z

    .line 659
    iput v1, p0, Lcom/touchtype_fluency/util/d;->j:I

    goto :goto_0

    .line 663
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z
    .locals 4
    .param p1, "language"    # Lcom/touchtype_fluency/util/LanguagePack;
    .param p2, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 546
    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v2

    if-ne p2, v2, :cond_0

    .line 564
    .end local p1    # "language":Lcom/touchtype_fluency/util/LanguagePack;
    :goto_0
    return v0

    .line 548
    .restart local p1    # "language":Lcom/touchtype_fluency/util/LanguagePack;
    :cond_0
    if-eqz p2, :cond_3

    .line 549
    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 550
    const-string v0, "LanguagePackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " before trying to enable it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 551
    goto :goto_0

    .line 552
    :cond_1
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/d;->getEnabledLanguages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/touchtype_fluency/util/d;->f:I

    if-ge v2, v3, :cond_2

    .line 553
    check-cast p1, Lcom/touchtype_fluency/util/c;

    .end local p1    # "language":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-virtual {p1, p2}, Lcom/touchtype_fluency/util/c;->a(Z)V

    .line 554
    invoke-direct {p0}, Lcom/touchtype_fluency/util/d;->d()V

    goto :goto_0

    .line 557
    .restart local p1    # "language":Lcom/touchtype_fluency/util/LanguagePack;
    :cond_2
    const-string v0, "LanguagePackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "can\'t enable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - too many other languages already enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 558
    goto :goto_0

    .line 562
    :cond_3
    check-cast p1, Lcom/touchtype_fluency/util/c;

    .end local p1    # "language":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-virtual {p1, p2}, Lcom/touchtype_fluency/util/c;->a(Z)V

    .line 563
    invoke-direct {p0}, Lcom/touchtype_fluency/util/d;->d()V

    goto :goto_0
.end method

.method public enableLiveLanguage(Lcom/touchtype_fluency/util/LiveLanguagePack;Z)Z
    .locals 3
    .param p1, "language"    # Lcom/touchtype_fluency/util/LiveLanguagePack;
    .param p2, "enable"    # Z

    .prologue
    const/4 v0, 0x1

    .line 577
    invoke-interface {p1}, Lcom/touchtype_fluency/util/LiveLanguagePack;->isEnabled()Z

    move-result v1

    if-ne p2, v1, :cond_0

    .line 585
    .end local p1    # "language":Lcom/touchtype_fluency/util/LiveLanguagePack;
    :goto_0
    return v0

    .line 579
    .restart local p1    # "language":Lcom/touchtype_fluency/util/LiveLanguagePack;
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LiveLanguagePack;->isDownloaded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 580
    const-string v0, "LanguagePackManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/touchtype_fluency/util/f;

    .end local p1    # "language":Lcom/touchtype_fluency/util/LiveLanguagePack;
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/f;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " before trying to enable it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const/4 v0, 0x0

    goto :goto_0

    .line 583
    .restart local p1    # "language":Lcom/touchtype_fluency/util/LiveLanguagePack;
    :cond_1
    check-cast p1, Lcom/touchtype_fluency/util/f;

    .end local p1    # "language":Lcom/touchtype_fluency/util/LiveLanguagePack;
    invoke-virtual {p1, p2}, Lcom/touchtype_fluency/util/f;->a(Z)V

    .line 584
    invoke-direct {p0}, Lcom/touchtype_fluency/util/d;->d()V

    goto :goto_0
.end method

.method public declared-synchronized findLanguage(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePack;
    .locals 3
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    .prologue
    .line 484
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->g:Lcom/touchtype_fluency/util/e;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/e;->a(Ljava/lang/String;)Lcom/touchtype_fluency/util/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 489
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 488
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->g:Lcom/touchtype_fluency/util/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/e;->a(Ljava/lang/String;)Lcom/touchtype_fluency/util/c;

    move-result-object v0

    .line 489
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->g:Lcom/touchtype_fluency/util/e;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/e;->a(Ljava/lang/String;)Lcom/touchtype_fluency/util/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public forceRefresh(Lcom/touchtype_fluency/util/RefreshListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/touchtype_fluency/util/RefreshListener;

    .prologue
    .line 472
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/touchtype_fluency/util/d;->a(Lcom/touchtype_fluency/util/RefreshListener;Z)V

    .line 473
    return-void
.end method

.method public declared-synchronized getAllLanguages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 476
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->g:Lcom/touchtype_fluency/util/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/e;->a(Z)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDynamicModel()Ljava/io/File;
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->d:Lcom/touchtype_fluency/util/Storage;

    const-string v1, "user"

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/Storage;->getLanguageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getEnabledLanguages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 480
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->g:Lcom/touchtype_fluency/util/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/e;->a(Z)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStorage()Lcom/touchtype_fluency/util/Storage;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->d:Lcom/touchtype_fluency/util/Storage;

    return-object v0
.end method

.method public pinServerCertificatePublicKey(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/io/InputStream;[C)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p4, "inputStream"    # Ljava/io/InputStream;
    .param p5, "password"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "[C)Z"
        }
    .end annotation

    .prologue
    .local p3, "expectedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 724
    .line 726
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    const-string v0, "LanguagePackManager"

    const-string v2, "keystore type must not be null or empty"

    invoke-static {v0, v2}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 752
    :goto_0
    invoke-static {p4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move v1, v0

    .line 754
    :goto_1
    return v1

    .line 728
    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    const-string v0, "LanguagePackManager"

    const-string v2, "protocol must not be null or empty"

    invoke-static {v0, v2}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    .line 730
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 731
    :cond_2
    const-string v0, "LanguagePackManager"

    const-string v2, "expectedKeys must not be null or empty"

    invoke-static {v0, v2}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    .line 1758
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1759
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 732
    :goto_2
    if-eqz v0, :cond_6

    .line 733
    const-string v0, "LanguagePackManager"

    const-string v2, "expectedKeys must not contain null or empty elements"

    invoke-static {v0, v2}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1763
    goto :goto_2

    .line 735
    :cond_6
    invoke-static {p1, p2, p3, p4, p5}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 737
    goto :goto_0

    .line 739
    :catch_0
    move-exception v0

    .line 740
    :try_start_2
    const-string v2, "LanguagePackManager"

    invoke-static {v2, v0}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 752
    invoke-static {p4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    .line 741
    :catch_1
    move-exception v0

    .line 742
    :try_start_3
    const-string v2, "LanguagePackManager"

    invoke-static {v2, v0}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 752
    invoke-static {p4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    .line 743
    :catch_2
    move-exception v0

    .line 744
    :try_start_4
    const-string v2, "LanguagePackManager"

    invoke-static {v2, v0}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 752
    invoke-static {p4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    .line 745
    :catch_3
    move-exception v0

    .line 746
    :try_start_5
    const-string v2, "LanguagePackManager"

    invoke-static {v2, v0}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 752
    invoke-static {p4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    .line 747
    :catch_4
    move-exception v0

    .line 748
    :try_start_6
    const-string v2, "LanguagePackManager"

    invoke-static {v2, v0}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 752
    invoke-static {p4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    .line 749
    :catch_5
    move-exception v0

    .line 750
    :try_start_7
    const-string v2, "LanguagePackManager"

    invoke-static {v2, v0}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 752
    invoke-static {p4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-static {p4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0
.end method

.method public refresh(Lcom/touchtype_fluency/util/RefreshListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/touchtype_fluency/util/RefreshListener;

    .prologue
    .line 468
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/touchtype_fluency/util/d;->a(Lcom/touchtype_fluency/util/RefreshListener;Z)V

    .line 469
    return-void
.end method

.method public setCurrentInputType(Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Lcom/touchtype_fluency/util/LanguagePack;
    .param p2, "inputType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 571
    check-cast p1, Lcom/touchtype_fluency/util/c;

    .end local p1    # "language":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-virtual {p1, p2}, Lcom/touchtype_fluency/util/c;->b(Ljava/lang/String;)V

    .line 573
    invoke-direct {p0}, Lcom/touchtype_fluency/util/d;->d()V

    .line 574
    return-void
.end method

.method public setLanguageBroken(Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 1
    .param p1, "language"    # Lcom/touchtype_fluency/util/LanguagePack;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->d:Lcom/touchtype_fluency/util/Storage;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/Storage;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    check-cast p1, Lcom/touchtype_fluency/util/c;

    .end local p1    # "language":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->d()V

    .line 606
    :cond_0
    return-void
.end method

.method public setLiveLanguageBroken(Lcom/touchtype_fluency/util/LiveLanguagePack;)V
    .locals 1
    .param p1, "language"    # Lcom/touchtype_fluency/util/LiveLanguagePack;

    .prologue
    .line 609
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->d:Lcom/touchtype_fluency/util/Storage;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/Storage;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    check-cast p1, Lcom/touchtype_fluency/util/f;

    .end local p1    # "language":Lcom/touchtype_fluency/util/LiveLanguagePack;
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/f;->e()V

    .line 615
    :cond_0
    return-void
.end method

.method public setMaxDownloads(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 542
    iput p1, p0, Lcom/touchtype_fluency/util/d;->j:I

    .line 543
    return-void
.end method

.method public trustOnlyCertificatesWithAliasPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;[C)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "aliasPrefix"    # Ljava/lang/String;
    .param p4, "inputStream"    # Ljava/io/InputStream;
    .param p5, "password"    # [C

    .prologue
    .line 694
    const/4 v0, 0x0

    .line 696
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 697
    const-string v1, "LanguagePackManager"

    const-string v2, "keystore type must not be null or empty"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    :goto_0
    invoke-static {p4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 718
    :goto_1
    return v0

    .line 698
    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 699
    const-string v1, "LanguagePackManager"

    const-string v2, "protocol must not be null or empty"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 705
    :catch_0
    move-exception v1

    .line 706
    :try_start_2
    const-string v2, "LanguagePackManager"

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 716
    invoke-static {p4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    .line 701
    :cond_1
    :try_start_3
    invoke-static {p1, p2, p3, p4, p5}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;[C)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 703
    const/4 v0, 0x1

    goto :goto_0

    .line 707
    :catch_1
    move-exception v1

    .line 708
    :try_start_4
    const-string v2, "LanguagePackManager"

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 716
    invoke-static {p4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    .line 709
    :catch_2
    move-exception v1

    .line 710
    :try_start_5
    const-string v2, "LanguagePackManager"

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 716
    invoke-static {p4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    .line 711
    :catch_3
    move-exception v1

    .line 712
    :try_start_6
    const-string v2, "LanguagePackManager"

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 716
    invoke-static {p4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    .line 713
    :catch_4
    move-exception v1

    .line 714
    :try_start_7
    const-string v2, "LanguagePackManager"

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 716
    invoke-static {p4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {p4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0
.end method

.method public declared-synchronized verify(Ljava/lang/String;Lcom/touchtype_fluency/util/CompletionListener;)Z
    .locals 3
    .param p1, "license"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/touchtype_fluency/util/CompletionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/LicenseException;
        }
    .end annotation

    .prologue
    .line 374
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->h:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const/4 v0, 0x0

    .line 388
    :goto_0
    monitor-exit p0

    return v0

    .line 378
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/touchtype_fluency/SwiftKeySDK;->createSession(Ljava/lang/String;)Lcom/touchtype_fluency/Session;

    move-result-object v0

    .line 379
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/touchtype_fluency/util/d$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/touchtype_fluency/util/d$2;-><init>(Lcom/touchtype_fluency/util/d;Lcom/touchtype_fluency/Session;Lcom/touchtype_fluency/util/CompletionListener;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/touchtype_fluency/util/d;->h:Ljava/lang/Thread;

    .line 387
    iget-object v0, p0, Lcom/touchtype_fluency/util/d;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    const/4 v0, 0x1

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
