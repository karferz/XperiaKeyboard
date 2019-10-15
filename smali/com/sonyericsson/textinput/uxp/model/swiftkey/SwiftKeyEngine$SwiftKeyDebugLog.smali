.class Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SwiftKeyDebugLog;
.super Ljava/lang/Object;
.source "SwiftKeyEngine.java"

# interfaces
.implements Lcom/touchtype_fluency/LoggingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwiftKeyDebugLog"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Lcom/touchtype_fluency/LoggingListener$Level;Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Lcom/touchtype_fluency/LoggingListener$Level;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 2761
    const-string v0, "TI_SKSDK_Diag"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    return-void
.end method
