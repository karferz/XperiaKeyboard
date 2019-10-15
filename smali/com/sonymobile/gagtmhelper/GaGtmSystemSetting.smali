.class public Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting;
.super Ljava/lang/Object;
.source "GaGtmSystemSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting$GaSettingsValue;
    }
.end annotation


# static fields
.field public static final DO_NOT_EXIST:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "GaGtmHelper"

.field public static final OPT_IN:I = 0x1

.field public static final OPT_OUT:I = 0x0

.field private static final SOMC_GA_ENABLED_SETTING:Ljava/lang/String; = "somc.google_analytics_enabled"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readSomcGaSetting(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "somc.google_analytics_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 50
    .local v0, "value":I
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    const-string v3, "GaGtmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readSomcGaSetting values="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    :pswitch_0
    return v1

    .line 58
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 61
    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
