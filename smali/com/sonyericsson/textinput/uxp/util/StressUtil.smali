.class public final Lcom/sonyericsson/textinput/uxp/util/StressUtil;
.super Ljava/lang/Object;
.source "StressUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/util/StressUtil$ByteArray;
    }
.end annotation


# static fields
.field public static final ONE_SECOND:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field private static sSwallowedHeap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/textinput/uxp/util/StressUtil$ByteArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/util/StressUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/StressUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static freeSwallowedHeap()V
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/StressUtil;->sSwallowedHeap:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/StressUtil;->sSwallowedHeap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/StressUtil;->sSwallowedHeap:Ljava/util/ArrayList;

    .line 111
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method public static getAvailableHeapMemory()J
    .locals 6

    .prologue
    .line 41
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 42
    .local v0, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method private static getSwallowedHeap()Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/textinput/uxp/util/StressUtil$ByteArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/StressUtil;->sSwallowedHeap:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/StressUtil;->sSwallowedHeap:Ljava/util/ArrayList;

    .line 119
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/StressUtil;->sSwallowedHeap:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static isSwallowedHeap()Z
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/StressUtil;->sSwallowedHeap:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static swallowHeap(Landroid/content/Context;I)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "afterSwallowFreeMb"    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v10, 0x3e8

    .line 52
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 53
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 55
    :try_start_0
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 57
    .local v4, "random":Ljava/util/Random;
    :goto_0
    const/high16 v7, 0x100000

    new-array v0, v7, [B

    .line 58
    .local v0, "bytes":[B
    invoke-virtual {v4, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 59
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/StressUtil;->getSwallowedHeap()Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Lcom/sonyericsson/textinput/uxp/util/StressUtil$ByteArray;

    invoke-direct {v8, v0}, Lcom/sonyericsson/textinput/uxp/util/StressUtil$ByteArray;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    .end local v0    # "bytes":[B
    .end local v4    # "random":Ljava/util/Random;
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/StressUtil;->getSwallowedHeap()Ljava/util/ArrayList;

    move-result-object v5

    .line 64
    .local v5, "swallowedHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/StressUtil$ByteArray;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 65
    .local v6, "swallowedHeapCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/StressUtil$ByteArray;>;"
    const/4 v2, 0x0

    .line 66
    .local v2, "freedCount":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/util/StressUtil$ByteArray;

    .line 67
    .local v3, "heapBlock":Lcom/sonyericsson/textinput/uxp/util/StressUtil$ByteArray;
    if-lt v2, p1, :cond_1

    .line 73
    .end local v3    # "heapBlock":Lcom/sonyericsson/textinput/uxp/util/StressUtil$ByteArray;
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 74
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 91
    return-void

    .line 70
    .restart local v3    # "heapBlock":Lcom/sonyericsson/textinput/uxp/util/StressUtil$ByteArray;
    :cond_1
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 72
    goto :goto_1
.end method
