.class final Lcom/touchtype_fluency/util/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/touchtype_fluency/util/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype_fluency/util/d;->enableDefaultLanguage(Lcom/touchtype_fluency/util/ProgressListener;)Lcom/touchtype_fluency/util/LanguagePack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/touchtype_fluency/util/ProgressListener;

.field private synthetic b:Lcom/touchtype_fluency/util/LanguagePack;

.field private synthetic c:Lcom/touchtype_fluency/util/d;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/d;Lcom/touchtype_fluency/util/ProgressListener;Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/touchtype_fluency/util/d$3;->c:Lcom/touchtype_fluency/util/d;

    iput-object p2, p0, Lcom/touchtype_fluency/util/d$3;->a:Lcom/touchtype_fluency/util/ProgressListener;

    iput-object p3, p0, Lcom/touchtype_fluency/util/d$3;->b:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInsufficientStorageThreshold()J
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/touchtype_fluency/util/d$3;->a:Lcom/touchtype_fluency/util/ProgressListener;

    if-nez v0, :cond_0

    .line 654
    const-wide/16 v0, 0x0

    .line 656
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/d$3;->a:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/ProgressListener;->getInsufficientStorageThreshold()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final onComplete(Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;)V
    .locals 3
    .param p1, "result"    # Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    .prologue
    .line 644
    sget-object v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->SUCCESS:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    if-ne v0, p1, :cond_1

    .line 645
    iget-object v0, p0, Lcom/touchtype_fluency/util/d$3;->c:Lcom/touchtype_fluency/util/d;

    iget-object v1, p0, Lcom/touchtype_fluency/util/d$3;->b:Lcom/touchtype_fluency/util/LanguagePack;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/touchtype_fluency/util/d;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    move-result v0

    .line 646
    iget-object v1, p0, Lcom/touchtype_fluency/util/d$3;->a:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/d;->a(Lcom/touchtype_fluency/util/ProgressListener;Z)V

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/touchtype_fluency/util/d$3;->a:Lcom/touchtype_fluency/util/ProgressListener;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/touchtype_fluency/util/d$3;->a:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-interface {v0, p1}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;)V

    goto :goto_0
.end method

.method public final onProgress(II)V
    .locals 1
    .param p1, "current"    # I
    .param p2, "maximum"    # I

    .prologue
    .line 638
    iget-object v0, p0, Lcom/touchtype_fluency/util/d$3;->a:Lcom/touchtype_fluency/util/ProgressListener;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/touchtype_fluency/util/d$3;->a:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-interface {v0, p1, p2}, Lcom/touchtype_fluency/util/ProgressListener;->onProgress(II)V

    .line 641
    :cond_0
    return-void
.end method
