.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/NoScaler;
.super Ljava/lang/Object;
.source "NoScaler.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allocate(I)I
    .locals 0
    .param p1, "srcSize"    # I

    .prologue
    .line 23
    return p1
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public scale(I)I
    .locals 0
    .param p1, "srcSize"    # I

    .prologue
    .line 32
    return p1
.end method

.method public setExternalAllocation(II)V
    .locals 0
    .param p1, "sourceSize"    # I
    .param p2, "destSize"    # I

    .prologue
    .line 28
    return-void
.end method

.method public setup(II)V
    .locals 0
    .param p1, "srcTotalSize"    # I
    .param p2, "dstTotalSize"    # I

    .prologue
    .line 15
    return-void
.end method
