.class public Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;
.super Ljava/lang/Object;
.source "LanguageDataDynamic.java"


# static fields
.field public static final DOWNLOAD_PROGRESS_UNKNOWN:I = -0x1


# instance fields
.field private mDownloadProgress:I

.field private final mIsActivated:Z

.field private final mIsUpdateAvailable:Z

.field private final mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

.field private final mLayoutId:Ljava/lang/String;

.field private final mLayoutName:Ljava/lang/String;

.field private final mNeedDownload:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/touchtype_fluency/util/LanguagePack;ZIZ)V
    .locals 1
    .param p1, "layoutId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "layoutName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "isActivated"    # Z
    .param p4, "languagePack"    # Lcom/touchtype_fluency/util/LanguagePack;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "needDownload"    # Z
    .param p6, "downloadProgress"    # I
    .param p7, "isUpdateAvailable"    # Z

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->mDownloadProgress:I

    .line 31
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->mLayoutId:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->mLayoutName:Ljava/lang/String;

    .line 33
    iput-boolean p3, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->mIsActivated:Z

    .line 34
    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    .line 35
    iput-boolean p7, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->mIsUpdateAvailable:Z

    .line 36
    iput-boolean p5, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->mNeedDownload:Z

    .line 37
    iput p6, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->mDownloadProgress:I

    .line 38
    return-void
.end method


# virtual methods
.method public getDownloadProgress()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->mDownloadProgress:I

    return v0
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->mLayoutId:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->mLayoutName:Ljava/lang/String;

    return-object v0
.end method

.method public isActivated()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->mIsActivated:Z

    return v0
.end method

.method public isDownloaded()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloading()Z
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->mDownloadProgress:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpdateAvailable()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->mIsUpdateAvailable:Z

    return v0
.end method

.method public needDownload()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->mNeedDownload:Z

    return v0
.end method
