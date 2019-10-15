.class final Lcom/touchtype_fluency/util/HttpDownload$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype_fluency/util/HttpDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/touchtype_fluency/util/ProgressListener;

.field private b:I

.field private c:J

.field private d:Lorg/apache/commons/io/input/CountingInputStream;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/ProgressListener;ILorg/apache/commons/io/input/CountingInputStream;)V
    .locals 2

    .prologue
    .line 1086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1087
    iput-object p1, p0, Lcom/touchtype_fluency/util/HttpDownload$a;->a:Lcom/touchtype_fluency/util/ProgressListener;

    .line 1088
    iput p2, p0, Lcom/touchtype_fluency/util/HttpDownload$a;->b:I

    .line 1089
    iput-object p3, p0, Lcom/touchtype_fluency/util/HttpDownload$a;->d:Lorg/apache/commons/io/input/CountingInputStream;

    .line 1090
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/touchtype_fluency/util/HttpDownload$a;->c:J

    .line 1091
    return-void
.end method

.method static a(Lcom/touchtype_fluency/util/Storage;Lcom/touchtype_fluency/util/ProgressListener;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 2012
    if-nez p1, :cond_1

    .line 2021
    :cond_0
    :goto_0
    return v0

    .line 2015
    :cond_1
    invoke-interface {p1}, Lcom/touchtype_fluency/util/ProgressListener;->getInsufficientStorageThreshold()J

    move-result-wide v2

    .line 2016
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 2020
    const-string v1, ""

    invoke-interface {p0, v1}, Lcom/touchtype_fluency/util/Storage;->getLanguageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2021
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 4

    .prologue
    .line 1094
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1096
    iget-wide v2, p0, Lcom/touchtype_fluency/util/HttpDownload$a;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x32

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload$a;->a:Lcom/touchtype_fluency/util/ProgressListener;

    iget-object v1, p0, Lcom/touchtype_fluency/util/HttpDownload$a;->d:Lorg/apache/commons/io/input/CountingInputStream;

    invoke-virtual {v1}, Lorg/apache/commons/io/input/CountingInputStream;->getCount()I

    move-result v1

    iget v2, p0, Lcom/touchtype_fluency/util/HttpDownload$a;->b:I

    invoke-interface {v0, v1, v2}, Lcom/touchtype_fluency/util/ProgressListener;->onProgress(II)V

    .line 1098
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/touchtype_fluency/util/HttpDownload$a;->c:J

    .line 1100
    :cond_0
    return-void
.end method
