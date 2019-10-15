.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;
.super Ljava/lang/Object;
.source "Scaler.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;


# instance fields
.field private mDstAllocatedSize:I

.field private mDstExternallyAllocatedSize:I

.field private mDstTotalSize:I

.field private mSrcAllocatedSize:I

.field private mSrcExternallyAllocatedSize:I

.field private mSrcTotalSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allocate(I)I
    .locals 2
    .param p1, "srcSize"    # I

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    const/4 v1, 0x0

    .line 103
    :goto_0
    return v1

    .line 100
    :cond_0
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->mSrcAllocatedSize:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->mSrcAllocatedSize:I

    .line 101
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->mDstAllocatedSize:I

    .line 102
    .local v0, "oldDstAllocatedSize":I
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->mSrcAllocatedSize:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->scale(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->mDstAllocatedSize:I

    .line 103
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->mDstAllocatedSize:I

    sub-int/2addr v1, v0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->mDstAllocatedSize:I

    .line 74
    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->mSrcAllocatedSize:I

    .line 75
    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->mSrcExternallyAllocatedSize:I

    .line 76
    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->mDstExternallyAllocatedSize:I

    .line 77
    return-void
.end method

.method public scale(I)I
    .locals 3
    .param p1, "srcSize"    # I

    .prologue
    .line 113
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->mDstTotalSize:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->mDstExternallyAllocatedSize:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->mSrcTotalSize:I

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->mSrcExternallyAllocatedSize:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    div-int/2addr v0, v1

    return v0
.end method

.method public setExternalAllocation(II)V
    .locals 0
    .param p1, "sourceSize"    # I
    .param p2, "destSize"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->mSrcExternallyAllocatedSize:I

    .line 87
    iput p2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->mDstExternallyAllocatedSize:I

    .line 88
    return-void
.end method

.method public setup(II)V
    .locals 1
    .param p1, "srcTotalSize"    # I
    .param p2, "dstTotalSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 63
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->mSrcTotalSize:I

    .line 64
    iput p2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->mDstTotalSize:I

    .line 65
    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->mDstAllocatedSize:I

    .line 66
    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->mSrcAllocatedSize:I

    .line 67
    return-void
.end method
