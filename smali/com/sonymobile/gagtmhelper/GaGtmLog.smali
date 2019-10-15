.class public Lcom/sonymobile/gagtmhelper/GaGtmLog;
.super Ljava/lang/Object;
.source "GaGtmLog.java"


# static fields
.field private static volatile mEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/gagtmhelper/GaGtmLog;->mEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static enable(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 22
    sput-boolean p0, Lcom/sonymobile/gagtmhelper/GaGtmLog;->mEnabled:Z

    .line 23
    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/sonymobile/gagtmhelper/GaGtmLog;->mEnabled:Z

    return v0
.end method
