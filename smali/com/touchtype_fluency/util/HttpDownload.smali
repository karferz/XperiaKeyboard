.class public Lcom/touchtype_fluency/util/HttpDownload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype_fluency/util/HttpDownload$a;,
        Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;
    }
.end annotation


# static fields
.field private static a:Ljavax/net/ssl/SSLContext;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Ljava/net/URLConnection;

.field private e:Ljava/lang/Thread;

.field private f:J

.field private g:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    .line 78
    iput-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Z

    .line 88
    return-void
.end method

.method constructor <init>(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    .line 78
    iput-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Z

    .line 91
    iput-boolean p1, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Z

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/HttpDownload;)J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->f:J

    return-wide v0
.end method

.method static a(Lcom/touchtype_fluency/util/Storage;Lcom/touchtype_fluency/util/e;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 420
    invoke-interface {p0}, Lcom/touchtype_fluency/util/Storage;->getPreinstallDirectory()Ljava/io/File;

    move-result-object v1

    .line 421
    if-nez v1, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-object v0

    .line 425
    :cond_1
    new-instance v2, Lcom/touchtype_fluency/util/HttpDownload$1;

    invoke-direct {v2}, Lcom/touchtype_fluency/util/HttpDownload$1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 433
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 434
    if-eqz v2, :cond_0

    .line 435
    array-length v4, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, v2, v1

    .line 436
    invoke-static {v5, p1}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/io/File;Lcom/touchtype_fluency/util/e;)Lorg/json/JSONObject;

    move-result-object v5

    .line 437
    if-eqz v5, :cond_2

    .line 438
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 435
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 442
    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 443
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "JSONException should not be able to be thrown"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 659
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 660
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/File;Lcom/touchtype_fluency/util/e;)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 456
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 465
    :try_start_0
    const-string v2, "HttpDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Calculating hash for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {p0}, Lcom/touchtype_fluency/util/HttpDownload;->createDigest(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 470
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 471
    invoke-virtual {p1, v3}, Lcom/touchtype_fluency/util/e;->a(Ljava/lang/String;)Lcom/touchtype_fluency/util/c;

    move-result-object v3

    .line 475
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/touchtype_fluency/util/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 477
    const-string v3, "HttpDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Hash unchanged - not generating JSON for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 518
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 519
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 526
    :cond_0
    :goto_0
    return-object v0

    .line 483
    :cond_1
    :try_start_2
    const-string v3, "HttpDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Creating preinstalled JSON from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 486
    :try_start_3
    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v6, v1

    move-object v5, v1

    .line 489
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v0

    if-eqz v0, :cond_3

    .line 491
    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 492
    const-string v7, ".config"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 493
    invoke-static {v3}, Lcom/touchtype_fluency/util/HttpDownload;->b(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v5

    .line 494
    const-string v0, "archive"

    invoke-virtual {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v6

    .line 499
    :goto_2
    :try_start_6
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v6, v0

    .line 500
    goto :goto_1

    .line 495
    :cond_2
    :try_start_7
    const-string v7, "extraData.json"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 496
    invoke-static {v3}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/io/InputStream;)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v6

    move-object v0, v6

    goto :goto_2

    .line 499
    :catchall_0
    move-exception v0

    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 513
    :catch_0
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    .line 518
    :goto_3
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 519
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v2, v0

    move-object v0, v1

    .line 522
    :goto_4
    if-eqz v0, :cond_0

    .line 523
    const-string v1, "sha1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    const-string v1, "preinstalledSha1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 504
    :cond_3
    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 505
    :try_start_9
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 506
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 507
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 508
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_5

    .line 516
    :catch_1
    move-exception v0

    .line 518
    :goto_6
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 519
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 520
    goto :goto_4

    .line 518
    :cond_4
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 519
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v0, v5

    .line 520
    goto :goto_4

    .line 518
    :catchall_1
    move-exception v0

    move-object v4, v1

    :goto_7
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 519
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    .line 518
    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v3

    goto :goto_7

    .line 516
    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v3, v1

    goto :goto_6

    .line 513
    :catch_5
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v0, v2

    move-object v3, v1

    move-object v2, v1

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v0, v2

    move-object v3, v4

    move-object v2, v1

    goto :goto_3

    :cond_5
    move-object v0, v6

    goto/16 :goto_2
.end method

.method private static a(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 566
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 567
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 569
    const/16 v2, 0x1000

    new-array v2, v2, [C

    .line 570
    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 571
    if-lez v3, :cond_0

    .line 572
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_0

    .line 576
    :cond_1
    new-instance v1, Lorg/json/JSONTokener;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 578
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    .line 579
    check-cast v0, Lorg/json/JSONObject;

    return-object v0

    .line 581
    :cond_2
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "extraData.json should contain an object at the top level"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/touchtype_fluency/util/HttpDownload$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 903
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 904
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 907
    :cond_1
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 912
    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 913
    iget-boolean v2, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v2, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 914
    :cond_3
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 916
    :cond_4
    if-lez v1, :cond_5

    .line 917
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/touchtype_fluency/util/HttpDownload;->f:J

    .line 919
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 920
    if-eqz p3, :cond_2

    .line 921
    invoke-virtual {p3}, Lcom/touchtype_fluency/util/HttpDownload$a;->a()V

    goto :goto_0

    .line 925
    :cond_5
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 929
    :cond_6
    instance-of v0, p2, Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_7

    .line 931
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 933
    :cond_7
    return-void
.end method

.method private a(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 941
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 942
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 945
    :cond_1
    const/16 v0, 0x1000

    new-array v0, v0, [C

    .line 946
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 947
    iget-boolean v2, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v2, :cond_2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 948
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 950
    :cond_3
    if-lez v1, :cond_4

    .line 951
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/touchtype_fluency/util/HttpDownload;->f:J

    .line 952
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 955
    :cond_4
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 958
    :cond_5
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;[C)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 190
    invoke-virtual {v2, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 194
    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 195
    invoke-virtual {v3, p3, p4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 199
    invoke-virtual {v3}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v4

    .line 200
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    invoke-virtual {v3, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 204
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    :cond_1
    invoke-virtual {v2, v0, v1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    goto :goto_0

    .line 211
    :cond_2
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 214
    invoke-virtual {v0, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 218
    const-class v1, Lcom/touchtype_fluency/util/HttpDownload;

    monitor-enter v1

    .line 219
    :try_start_0
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 220
    sput-object v2, Lcom/touchtype_fluency/util/HttpDownload;->a:Ljavax/net/ssl/SSLContext;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 221
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/io/InputStream;[C)V
    .locals 5
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
            "[C)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Lcom/touchtype_fluency/util/j;

    invoke-direct {v0, p0, p3, p4, p2}, Lcom/touchtype_fluency/util/j;-><init>(Ljava/lang/String;Ljava/io/InputStream;[CLjava/util/List;)V

    .line 232
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 236
    const-class v2, Lcom/touchtype_fluency/util/HttpDownload;

    monitor-enter v2

    .line 237
    :try_start_0
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 238
    sput-object v0, Lcom/touchtype_fluency/util/HttpDownload;->a:Ljavax/net/ssl/SSLContext;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 239
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/net/URL;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->g:Ljava/lang/Thread;

    .line 158
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/net/URLConnection;

    .line 161
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/net/URLConnection;

    instance-of v0, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_1

    .line 162
    const/4 v0, 0x0

    .line 163
    const-class v2, Lcom/touchtype_fluency/util/HttpDownload;

    monitor-enter v2

    .line 164
    :try_start_0
    sget-object v1, Lcom/touchtype_fluency/util/HttpDownload;->a:Ljavax/net/ssl/SSLContext;

    if-eqz v1, :cond_3

    .line 165
    sget-object v0, Lcom/touchtype_fluency/util/HttpDownload;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    move-object v1, v0

    .line 167
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    if-eqz v1, :cond_1

    .line 169
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/net/URLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 176
    :cond_1
    return-void

    .line 167
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 173
    :cond_2
    new-instance v1, Ljava/net/MalformedURLException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid protocol specified: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v11, 0x1

    .line 588
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 589
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 591
    const/16 v2, 0x1000

    new-array v2, v2, [C

    .line 592
    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    if-eq v4, v13, :cond_1

    .line 593
    if-lez v4, :cond_0

    .line 594
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_0

    .line 599
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 600
    new-instance v1, Lorg/json/JSONTokener;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 601
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_8

    .line 602
    check-cast v0, Lorg/json/JSONObject;

    .line 603
    const-string v1, "tags"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 607
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 608
    const/4 v1, 0x0

    move v2, v3

    .line 609
    :goto_1
    if-ge v2, v6, :cond_5

    .line 610
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 611
    const-string v8, "id:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 612
    const-string v8, "[:_]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 613
    array-length v8, v7

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    .line 615
    new-instance v8, Ljava/util/Locale;

    aget-object v9, v7, v11

    aget-object v10, v7, v12

    invoke-direct {v8, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v9, "language"

    aget-object v10, v7, v11

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "country"

    aget-object v7, v7, v12

    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "name"

    invoke-static {v8}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 609
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 619
    :cond_3
    array-length v8, v7

    if-ne v8, v12, :cond_2

    const-string v8, "language"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 621
    new-instance v8, Ljava/util/Locale;

    aget-object v9, v7, v11

    invoke-direct {v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 622
    const-string v9, "language"

    aget-object v7, v7, v11

    invoke-virtual {v4, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "name"

    invoke-static {v8}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 625
    :cond_4
    const-string v8, "name:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 626
    const-string v1, ":"

    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v11

    goto :goto_2

    .line 631
    :cond_5
    if-eqz v1, :cond_6

    .line 632
    const-string v2, "name"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 636
    :cond_6
    const-string v1, "version"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 638
    if-ne v0, v13, :cond_7

    .line 639
    const-string v1, "HttpDownload"

    const-string v2, "[WARNING] You are using a LanguagePack with version -1. This should not be used in production."

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :cond_7
    const-string v1, "version"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 645
    const-string v1, "latestVersion"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 649
    return-object v4

    .line 647
    :cond_8
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "preinstalled zip contains .config, but it isn\'t JSON"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static declared-synchronized b()V
    .locals 2

    .prologue
    .line 179
    const-class v0, Lcom/touchtype_fluency/util/HttpDownload;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/touchtype_fluency/util/HttpDownload;->a:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit v0

    return-void

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private c()V
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/net/URLConnection;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 888
    :cond_0
    return-void
.end method

.method public static createDigest(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "zipfile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 530
    .line 533
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 534
    :try_start_1
    new-instance v0, Ljava/security/DigestInputStream;

    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 539
    const/16 v1, 0x1000

    :try_start_2
    new-array v1, v1, [B

    .line 540
    :cond_0
    invoke-virtual {v0, v1}, Ljava/security/DigestInputStream;->read([B)I
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 546
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 547
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 550
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/touchtype_fluency/util/HttpDownload;->digestToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 544
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_0
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "SHA-1 digest algorithm not available"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 546
    :catchall_0
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 547
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    .line 546
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    .line 544
    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v1, v2

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 969
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->e:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Timeout thread must be null before attempting to start timeout thread"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 972
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->f:J

    .line 973
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/touchtype_fluency/util/HttpDownload$2;

    invoke-direct {v1, p0}, Lcom/touchtype_fluency/util/HttpDownload$2;-><init>(Lcom/touchtype_fluency/util/HttpDownload;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->e:Ljava/lang/Thread;

    .line 992
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 993
    return-void

    .line 969
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static digestToString([B)Ljava/lang/String;
    .locals 8
    .param p0, "digest"    # [B

    .prologue
    const/4 v1, 0x0

    .line 554
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 555
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 557
    array-length v4, p0

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-byte v5, p0, v0

    .line 558
    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v7, v1

    invoke-virtual {v3, v6, v7}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    :cond_0
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Z

    return v0
.end method

.method public download(Ljava/net/URL;)Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/touchtype_fluency/util/HttpDownload;->downloadIfEtagChanged(Ljava/net/URL;Ljava/lang/String;)Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method public downloadGzip(Ljava/net/URL;Ljava/io/File;Lcom/touchtype_fluency/util/ProgressListener;)V
    .locals 8
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "listener"    # Lcom/touchtype_fluency/util/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1004
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1005
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1008
    :cond_1
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->d()V

    .line 1014
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 1015
    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1016
    new-instance v2, Ljava/net/MalformedURLException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid protocol specified: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1041
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    :goto_0
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1046
    :catchall_0
    move-exception v0

    .line 8996
    :goto_1
    iget-object v5, p0, Lcom/touchtype_fluency/util/HttpDownload;->e:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 1047
    invoke-static {}, Lcom/touchtype_fluency/util/LanguagePackManager;->a()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1048
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1049
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1050
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 1051
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1052
    iget-boolean v1, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v1, :cond_c

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1053
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->c()V

    .line 1080
    :cond_2
    sget-object v1, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->SUCCESS:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    invoke-interface {p3, v1}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;)V

    throw v0

    .line 1019
    :cond_3
    :try_start_2
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/net/URL;)V

    .line 1020
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1021
    :cond_4
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1042
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    .line 1043
    :goto_2
    :try_start_3
    const-string v5, "HttpDownload"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Runtime exception: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Download interrupted or timed out"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1023
    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1024
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/net/URLConnection;

    const-string v2, "Accept-Encoding"

    const-string v3, "gzip,deflate"

    invoke-virtual {v0, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 1028
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v0, :cond_6

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1029
    :cond_6
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1046
    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto/16 :goto_1

    .line 1031
    :cond_7
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v4

    .line 1032
    :try_start_5
    new-instance v3, Lorg/apache/commons/io/input/CountingInputStream;

    invoke-direct {v3, v4}, Lorg/apache/commons/io/input/CountingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1033
    :try_start_6
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1034
    :try_start_7
    new-instance v0, Lcom/touchtype_fluency/util/HttpDownload$a;

    iget-object v5, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/net/URLConnection;

    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentLength()I

    move-result v5

    invoke-direct {v0, p3, v5, v3}, Lcom/touchtype_fluency/util/HttpDownload$a;-><init>(Lcom/touchtype_fluency/util/ProgressListener;ILorg/apache/commons/io/input/CountingInputStream;)V

    .line 1036
    invoke-static {p2}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1038
    invoke-direct {p0, v2, v1, v0}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/touchtype_fluency/util/HttpDownload$a;)V
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 7996
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1047
    invoke-static {}, Lcom/touchtype_fluency/util/LanguagePackManager;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1048
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1049
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1050
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 1051
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1052
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v0, :cond_9

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1053
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->c()V

    .line 1080
    :cond_8
    sget-object v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->SUCCESS:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    invoke-interface {p3, v0}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;)V

    .line 1081
    return-void

    .line 1055
    :cond_9
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1059
    :cond_a
    :try_start_8
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->c()V
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1071
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1072
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1073
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 1074
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1076
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v0, :cond_b

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1077
    :cond_b
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1062
    :catch_2
    move-exception v0

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1071
    :catchall_2
    move-exception v0

    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1072
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1073
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 1074
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    .line 1063
    :catch_3
    move-exception v0

    .line 1069
    :try_start_a
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1055
    :cond_c
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1059
    :cond_d
    :try_start_b
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->c()V
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1071
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1072
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1073
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 1074
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1076
    iget-boolean v1, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v1, :cond_e

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1077
    :cond_e
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1062
    :catch_4
    move-exception v0

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1071
    :catchall_3
    move-exception v0

    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1072
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1073
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 1074
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    .line 1063
    :catch_5
    move-exception v0

    .line 1069
    :try_start_d
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1046
    :catchall_4
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_1

    :catchall_5
    move-exception v0

    move-object v2, v1

    goto/16 :goto_1

    .line 1042
    :catch_6
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_2

    :catch_7
    move-exception v0

    move-object v2, v1

    goto/16 :goto_2

    :catch_8
    move-exception v0

    goto/16 :goto_2

    .line 1041
    :catch_9
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_0

    :catch_a
    move-exception v0

    move-object v2, v1

    goto/16 :goto_0

    :catch_b
    move-exception v0

    goto/16 :goto_0
.end method

.method public downloadIfEtagChanged(Ljava/net/URL;Ljava/lang/String;)Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;
    .locals 8
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "eTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 258
    const-string v0, "HttpDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Sending HTTP request to: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 265
    :cond_1
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->d()V

    .line 267
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 274
    :try_start_0
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/net/URL;)V

    .line 275
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    :catchall_0
    move-exception v0

    .line 2996
    :goto_1
    iget-object v1, p0, Lcom/touchtype_fluency/util/HttpDownload;->e:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 326
    invoke-static {}, Lcom/touchtype_fluency/util/LanguagePackManager;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 327
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 328
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 329
    iget-boolean v1, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v1, :cond_9

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_9

    .line 330
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->c()V

    .line 349
    :goto_2
    throw v0

    .line 279
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/net/URLConnection;

    const-string v1, "Cache-Control"

    const-string v3, "public"

    invoke-virtual {v0, v1, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 281
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 282
    if-eqz p2, :cond_4

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 283
    iget-object v1, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/net/URLConnection;

    const-string v3, "If-None-Match"

    invoke-virtual {v1, v3, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_4
    iget-boolean v1, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v1, :cond_5

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 286
    :cond_5
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 321
    :catch_1
    move-exception v0

    .line 322
    :goto_3
    :try_start_3
    const-string v1, "HttpDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Runtime exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Download interrupted or timed out"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 290
    :cond_6
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 291
    const-string v3, "ETag"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 292
    if-eqz v1, :cond_b

    .line 293
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, v1

    .line 295
    :goto_4
    const-string v1, "HttpDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ETag from server:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 298
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    .line 300
    sparse-switch v4, :sswitch_data_0

    .line 314
    const-string v0, "HttpDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected response: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v2

    .line 1996
    :goto_5
    iget-object v1, p0, Lcom/touchtype_fluency/util/HttpDownload;->e:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 326
    invoke-static {}, Lcom/touchtype_fluency/util/LanguagePackManager;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 327
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 328
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 329
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v0, :cond_7

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 330
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->c()V

    .line 354
    :goto_6
    new-instance v0, Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;-><init>(Lcom/touchtype_fluency/util/HttpDownload;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 302
    :sswitch_0
    :try_start_5
    const-string v0, "HttpDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Downloading: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    .line 305
    :try_start_6
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1, v6}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 306
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v2

    goto :goto_5

    .line 310
    :sswitch_1
    :try_start_7
    const-string v0, "HttpDownload"

    const-string v1, "File not modified - no download performed"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v0, v2

    .line 311
    goto :goto_5

    .line 332
    :cond_7
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 336
    :cond_8
    :try_start_8
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->c()V
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 348
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 349
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_6

    .line 339
    :catch_2
    move-exception v1

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 348
    :catchall_1
    move-exception v1

    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 349
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v1

    .line 340
    :catch_3
    move-exception v1

    .line 346
    :try_start_a
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 332
    :cond_9
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 336
    :cond_a
    :try_start_b
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->c()V
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 348
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 349
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto/16 :goto_2

    .line 339
    :catch_4
    move-exception v0

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 348
    :catchall_2
    move-exception v0

    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 349
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    .line 340
    :catch_5
    move-exception v0

    .line 346
    :try_start_d
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 325
    :catchall_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_1

    .line 321
    :catch_6
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_3

    .line 320
    :catch_7
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_0

    :cond_b
    move-object v3, v2

    goto/16 :goto_4

    .line 300
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x130 -> :sswitch_1
    .end sparse-switch
.end method

.method public downloadToFile(Ljava/net/URL;Ljava/io/File;)V
    .locals 6
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 360
    const-string v0, "HttpDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Downloading: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 368
    :cond_1
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->d()V

    .line 372
    :try_start_0
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/net/URL;)V

    .line 373
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 374
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 383
    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_0
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    .line 4996
    :goto_1
    iget-object v1, p0, Lcom/touchtype_fluency/util/HttpDownload;->e:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 389
    invoke-static {}, Lcom/touchtype_fluency/util/LanguagePackManager;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 390
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 391
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 392
    iget-boolean v1, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v1, :cond_6

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_6

    .line 393
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->c()V

    .line 412
    :goto_2
    throw v0

    .line 376
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 377
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v3

    .line 378
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 380
    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, v3, v1, v0}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/touchtype_fluency/util/HttpDownload$a;)V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 3996
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 389
    invoke-static {}, Lcom/touchtype_fluency/util/LanguagePackManager;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 390
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 391
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 392
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 393
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->c()V

    .line 413
    :goto_3
    return-void

    .line 395
    :cond_4
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 399
    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->c()V
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 411
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 412
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_3

    .line 402
    :catch_1
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 411
    :catchall_1
    move-exception v0

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 412
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    .line 403
    :catch_2
    move-exception v0

    .line 409
    :try_start_7
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 384
    :catch_3
    move-exception v0

    move-object v3, v2

    .line 385
    :goto_4
    :try_start_8
    const-string v1, "HttpDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Runtime exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Download interrupted or timed out"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 388
    :catchall_2
    move-exception v0

    goto/16 :goto_1

    .line 395
    :cond_6
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 399
    :cond_7
    :try_start_9
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->c()V
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 411
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 412
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto/16 :goto_2

    .line 402
    :catch_4
    move-exception v0

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 411
    :catchall_3
    move-exception v0

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 412
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    .line 403
    :catch_5
    move-exception v0

    .line 409
    :try_start_b
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 388
    :catchall_4
    move-exception v0

    move-object v3, v2

    goto/16 :goto_1

    :catchall_5
    move-exception v0

    move-object v2, v1

    goto/16 :goto_1

    .line 384
    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 383
    :catch_8
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_0

    :catch_9
    move-exception v0

    move-object v2, v3

    goto/16 :goto_0
.end method

.method public downloadZip(Ljava/net/URL;Ljava/io/File;Ljava/lang/String;Lcom/touchtype_fluency/util/ProgressListener;)Ljava/util/Vector;
    .locals 14
    .param p1, "archive"    # Ljava/net/URL;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "sha1"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/touchtype_fluency/util/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/touchtype_fluency/util/ProgressListener;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .prologue
    .line 677
    iget-boolean v2, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 678
    :cond_0
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 681
    :cond_1
    const-string v2, "HttpDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Downloading and uncompressing: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 685
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    .line 686
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to create destination folders: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 691
    :cond_2
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->d()V

    .line 692
    const/4 v5, 0x0

    .line 693
    const/4 v4, 0x0

    .line 694
    const/4 v3, 0x0

    .line 696
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 699
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 700
    const-string v6, "file"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 702
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/net/URLConnection;

    .line 703
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 704
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move-result-wide v6

    long-to-int v5, v6

    move v6, v5

    move-object v7, v2

    .line 717
    :goto_0
    :try_start_2
    iget-boolean v2, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v2, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 718
    :cond_3
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 806
    :catch_0
    move-exception v2

    move-object v2, v3

    move-object v5, v4

    move-object v3, v7

    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "SHA-1 digest algorithm not available"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 814
    :catchall_0
    move-exception v4

    move-object v7, v3

    move-object v3, v2

    move-object v2, v4

    .line 6996
    :goto_2
    iget-object v4, p0, Lcom/touchtype_fluency/util/HttpDownload;->e:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 815
    invoke-static {}, Lcom/touchtype_fluency/util/LanguagePackManager;->a()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 816
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 817
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 818
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 819
    iget-boolean v3, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v3, :cond_14

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_14

    .line 820
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->c()V

    .line 840
    :goto_3
    throw v2

    .line 705
    :cond_4
    :try_start_4
    const-string v6, "https"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 706
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/net/URL;)V

    .line 707
    iget-boolean v2, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v2, :cond_5

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 708
    :cond_5
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 806
    :catch_1
    move-exception v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, v4

    goto :goto_1

    .line 710
    :cond_6
    iget-object v2, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/net/URLConnection;

    check-cast v2, Ljava/net/HttpURLConnection;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 711
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v6, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/net/URLConnection;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 712
    :try_start_5
    iget-object v5, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/net/URLConnection;

    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentLength()I
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_14
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    move-result v5

    move v6, v5

    move-object v7, v2

    goto :goto_0

    .line 714
    :cond_7
    :try_start_6
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid protocol specified: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 809
    :catch_2
    move-exception v2

    move-object v7, v5

    move-object v5, v4

    :goto_4
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 814
    :catchall_1
    move-exception v2

    goto :goto_2

    .line 723
    :cond_8
    if-nez v6, :cond_9

    .line 724
    :try_start_8
    const-string v2, "HttpDownload"

    const-string v5, "File downloaded has zero bytes or download target is empty (%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/net/URLConnection;

    invoke-virtual {v10}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v10

    aput-object v10, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    move-object v2, v3

    move-object v3, v4

    .line 5996
    :goto_5
    iget-object v4, p0, Lcom/touchtype_fluency/util/HttpDownload;->e:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 815
    invoke-static {}, Lcom/touchtype_fluency/util/LanguagePackManager;->a()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 816
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 817
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 818
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 819
    iget-boolean v4, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v4, :cond_12

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_12

    .line 820
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->c()V

    .line 845
    :goto_6
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/touchtype_fluency/util/HttpDownload;->digestToString([B)Ljava/lang/String;

    move-result-object v2

    .line 846
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 847
    new-instance v4, Ljava/security/DigestException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Mismatching checksums: calculated("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "), json("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "), "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lorg/apache/commons/io/input/CountingInputStream;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 728
    :cond_9
    :try_start_9
    new-instance v5, Lorg/apache/commons/io/input/CountingInputStream;

    invoke-direct {v5, v7}, Lorg/apache/commons/io/input/CountingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 729
    :try_start_a
    new-instance v2, Ljava/security/DigestInputStream;

    const-string v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-direct {v2, v5, v4}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_15
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_e
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 730
    :try_start_b
    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 732
    new-instance v9, Lcom/touchtype_fluency/util/HttpDownload$a;

    move-object/from16 v0, p4

    invoke-direct {v9, v0, v6, v5}, Lcom/touchtype_fluency/util/HttpDownload$a;-><init>(Lcom/touchtype_fluency/util/ProgressListener;ILorg/apache/commons/io/input/CountingInputStream;)V

    .line 736
    :goto_7
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 737
    iget-boolean v6, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v6, :cond_a

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 738
    :cond_a
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 739
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 740
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 806
    :catch_3
    move-exception v3

    move-object v3, v7

    goto/16 :goto_1

    .line 743
    :cond_b
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 746
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v10, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 747
    move-object/from16 v0, p2

    invoke-static {v10, v0}, Lcom/touchtype_fluency/util/b;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 748
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Invalid path specified in file "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 809
    :catch_4
    move-exception v3

    move-object v13, v3

    move-object v3, v2

    move-object v2, v13

    goto/16 :goto_4

    .line 751
    :cond_c
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 752
    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z
    :try_end_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_7

    .line 810
    :catch_5
    move-exception v3

    move-object v13, v3

    move-object v3, v2

    move-object v2, v13

    .line 811
    :goto_8
    :try_start_c
    const-string v4, "HttpDownload"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Runtime exception: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Download interrupted or timed out"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 758
    :cond_d
    :try_start_d
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_e

    .line 759
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_e

    .line 760
    const-string v4, "HttpDownload"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed to create parent directory for file: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/touchtype_fluency/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :cond_e
    invoke-virtual {v8, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 769
    iget-boolean v4, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    if-nez v4, :cond_f

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 770
    :cond_f
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 771
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 772
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 814
    :catchall_2
    move-exception v3

    move-object v13, v3

    move-object v3, v2

    move-object v2, v13

    goto/16 :goto_2

    .line 774
    :cond_10
    const-string v4, "HttpDownload"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Decompressing file: "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 776
    const/4 v6, 0x0

    .line 778
    :try_start_e
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 779
    :try_start_f
    invoke-direct {p0, v3, v4, v9}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/touchtype_fluency/util/HttpDownload$a;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    .line 781
    :try_start_10
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 791
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto/16 :goto_7

    .line 781
    :catchall_3
    move-exception v3

    move-object v4, v6

    :goto_9
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v3

    .line 796
    :cond_11
    new-instance v4, Lorg/apache/commons/io/output/NullOutputStream;

    invoke-direct {v4}, Lorg/apache/commons/io/output/NullOutputStream;-><init>()V

    invoke-direct {p0, v2, v4, v9}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/touchtype_fluency/util/HttpDownload$a;)V

    .line 803
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-object v3, v5

    goto/16 :goto_5

    .line 822
    :cond_12
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 826
    :cond_13
    :try_start_11
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->c()V
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 838
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 839
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 840
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto/16 :goto_6

    .line 829
    :catch_6
    move-exception v4

    :try_start_12
    throw v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 838
    :catchall_4
    move-exception v4

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 839
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 840
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v4

    .line 830
    :catch_7
    move-exception v4

    .line 836
    :try_start_13
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 822
    :cond_14
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 826
    :cond_15
    :try_start_14
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->c()V
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 838
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 839
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 840
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto/16 :goto_3

    .line 829
    :catch_8
    move-exception v2

    :try_start_15
    throw v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 838
    :catchall_5
    move-exception v2

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 839
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 840
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v2

    .line 830
    :catch_9
    move-exception v2

    .line 836
    :try_start_16
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 853
    :cond_16
    const-string v2, ".config"

    invoke-virtual {v8, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 854
    return-object v8

    .line 814
    :catchall_6
    move-exception v2

    move-object v7, v5

    move-object v5, v4

    goto/16 :goto_2

    :catchall_7
    move-exception v5

    move-object v7, v2

    move-object v2, v5

    move-object v5, v4

    goto/16 :goto_2

    :catchall_8
    move-exception v5

    move-object v7, v2

    move-object v2, v5

    move-object v5, v4

    goto/16 :goto_2

    :catchall_9
    move-exception v2

    move-object v5, v4

    goto/16 :goto_2

    .line 810
    :catch_a
    move-exception v2

    move-object v7, v5

    move-object v5, v4

    goto/16 :goto_8

    :catch_b
    move-exception v5

    move-object v7, v2

    move-object v2, v5

    move-object v5, v4

    goto/16 :goto_8

    :catch_c
    move-exception v5

    move-object v7, v2

    move-object v2, v5

    move-object v5, v4

    goto/16 :goto_8

    :catch_d
    move-exception v2

    move-object v5, v4

    goto/16 :goto_8

    :catch_e
    move-exception v2

    goto/16 :goto_8

    .line 809
    :catch_f
    move-exception v5

    move-object v7, v2

    move-object v2, v5

    move-object v5, v4

    goto/16 :goto_4

    :catch_10
    move-exception v5

    move-object v7, v2

    move-object v2, v5

    move-object v5, v4

    goto/16 :goto_4

    :catch_11
    move-exception v2

    move-object v5, v4

    goto/16 :goto_4

    :catch_12
    move-exception v2

    goto/16 :goto_4

    .line 806
    :catch_13
    move-exception v5

    move-object v5, v4

    move-object v13, v3

    move-object v3, v2

    move-object v2, v13

    goto/16 :goto_1

    :catch_14
    move-exception v5

    move-object v5, v4

    move-object v13, v3

    move-object v3, v2

    move-object v2, v13

    goto/16 :goto_1

    :catch_15
    move-exception v2

    move-object v2, v3

    move-object v3, v7

    goto/16 :goto_1

    .line 781
    :catchall_a
    move-exception v3

    goto/16 :goto_9
.end method

.method public interrupt()V
    .locals 1

    .prologue
    .line 870
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    .line 871
    invoke-static {}, Lcom/touchtype_fluency/util/LanguagePackManager;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 872
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->c()V

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 873
    :cond_1
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public isInterrupted()Z
    .locals 1

    .prologue
    .line 891
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    return v0
.end method
