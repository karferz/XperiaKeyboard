.class public Lcom/sonyericsson/ned/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static final CALLING_METHOD_STACK_TRACE_DEPTH:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallingMethodName()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 24
    .local v0, "stacktrace":[Ljava/lang/StackTraceElement;
    if-nez v0, :cond_0

    .line 25
    const-string v1, ""

    .line 33
    :goto_0
    return-object v1

    .line 29
    :cond_0
    array-length v1, v0

    if-gt v1, v2, :cond_1

    .line 30
    const-string v1, ""

    goto :goto_0

    .line 33
    :cond_1
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
