.class public Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype_fluency/util/HttpDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HttpDownloadResponse"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/touchtype_fluency/util/HttpDownload;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "eTag"    # Ljava/lang/String;
    .param p4, "responseCode"    # I
    .param p5, "responseMsg"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;->a:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;->b:Ljava/lang/String;

    .line 104
    iput p4, p0, Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;->d:I

    .line 105
    iput-object p5, p0, Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;->c:Ljava/lang/String;

    .line 106
    return-void
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;->d:I

    return v0
.end method

.method public getResponseMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;->c:Ljava/lang/String;

    return-object v0
.end method
