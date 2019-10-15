.class public Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil$NetworkState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getInternetAvailability(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil$NetworkState;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 47
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil;->isConnected(Landroid/net/NetworkInfo;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil$NetworkState;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 51
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return-object v2

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil;->TAG:Ljava/lang/String;

    const-string v3, "Permission ACCESS_NETWORK_STATE to read network state is denied."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v2, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil$NetworkState;->IMPLIED:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil$NetworkState;

    goto :goto_0
.end method

.method private static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const-string v1, "connectivity"

    .line 57
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 58
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method private static isConnected(Landroid/net/NetworkInfo;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil$NetworkState;
    .locals 1
    .param p0, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 62
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 71
    sget-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil$NetworkState;->OTHER:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil$NetworkState;

    .line 75
    :goto_0
    return-object v0

    .line 65
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil$NetworkState;->MOBILE:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil$NetworkState;

    goto :goto_0

    .line 68
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil$NetworkState;->WIFI:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil$NetworkState;

    goto :goto_0

    .line 75
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil$NetworkState;->NONE:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil$NetworkState;

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isInternetAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil;->getInternetAvailability(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil$NetworkState;

    move-result-object v0

    .line 34
    .local v0, "state":Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil$NetworkState;
    sget-object v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil$NetworkState;->NONE:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil$NetworkState;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
