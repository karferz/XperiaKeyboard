.class Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;
.super Landroid/database/ContentObserver;
.source "GaGtmSubscriber.java"


# static fields
.field private static final GA_URI:Landroid/net/Uri;

.field private static final LOG_TAG:Ljava/lang/String; = "GaGtmHelper"

.field private static final SOMC_GA_ENABLED_SETTING:Ljava/lang/String; = "somc.google_analytics_enabled"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "somc.google_analytics_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->GA_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mContext:Landroid/content/Context;

    .line 50
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->GA_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 53
    invoke-direct {p0}, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->readSomcGaAndManageOptInOut()V

    .line 56
    return-void
.end method

.method private readSomcGaAndManageOptInOut()V
    .locals 5

    .prologue
    .line 70
    const/4 v0, 0x1

    .line 72
    .local v0, "doOptOut":Z
    iget-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {v2}, Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting;->readSomcGaSetting(Landroid/content/Context;)I

    move-result v1

    .line 75
    .local v1, "settingsValue":I
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    const-string v2, "GaGtmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readSomcGaAndManageOptInOut settingsValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 87
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    const-string v2, "GaGtmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_1
    const/4 v0, 0x1

    .line 93
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setAppOptOut(Z)V

    .line 94
    return-void

    .line 81
    :pswitch_0
    const/4 v0, 0x1

    .line 82
    goto :goto_0

    .line 84
    :pswitch_1
    const/4 v0, 0x0

    .line 85
    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 62
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "GaGtmHelper"

    const-string v1, "onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->readSomcGaAndManageOptInOut()V

    .line 67
    return-void
.end method
