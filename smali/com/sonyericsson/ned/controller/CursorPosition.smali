.class public final Lcom/sonyericsson/ned/controller/CursorPosition;
.super Ljava/lang/Object;
.source "CursorPosition.java"


# instance fields
.field private final index:I

.field private final offset:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/sonyericsson/ned/controller/CursorPosition;->index:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/ned/controller/CursorPosition;->offset:I

    .line 69
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "offset"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/sonyericsson/ned/controller/CursorPosition;->index:I

    .line 80
    iput p2, p0, Lcom/sonyericsson/ned/controller/CursorPosition;->offset:I

    .line 81
    return-void
.end method

.method public static createCursorPositionFromRange(II)Lcom/sonyericsson/ned/controller/CursorPosition;
    .locals 2
    .param p0, "start"    # I
    .param p1, "end"    # I

    .prologue
    .line 84
    if-ge p0, p1, :cond_0

    .line 85
    new-instance v0, Lcom/sonyericsson/ned/controller/CursorPosition;

    sub-int v1, p1, p0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/ned/controller/CursorPosition;-><init>(II)V

    .line 87
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sonyericsson/ned/controller/CursorPosition;

    sub-int v1, p0, p1

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/ned/controller/CursorPosition;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method public contains(Lcom/sonyericsson/ned/controller/CursorPosition;)Z
    .locals 3
    .param p1, "b"    # Lcom/sonyericsson/ned/controller/CursorPosition;

    .prologue
    .line 123
    iget v0, p1, Lcom/sonyericsson/ned/controller/CursorPosition;->index:I

    iget v1, p0, Lcom/sonyericsson/ned/controller/CursorPosition;->index:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/sonyericsson/ned/controller/CursorPosition;->index:I

    iget v1, p1, Lcom/sonyericsson/ned/controller/CursorPosition;->offset:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sonyericsson/ned/controller/CursorPosition;->index:I

    iget v2, p0, Lcom/sonyericsson/ned/controller/CursorPosition;->offset:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    if-ne p0, p1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v1

    .line 135
    :cond_1
    instance-of v3, p1, Lcom/sonyericsson/ned/controller/CursorPosition;

    if-nez v3, :cond_2

    move v1, v2

    .line 136
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 141
    check-cast v0, Lcom/sonyericsson/ned/controller/CursorPosition;

    .line 142
    .local v0, "position":Lcom/sonyericsson/ned/controller/CursorPosition;
    iget v3, p0, Lcom/sonyericsson/ned/controller/CursorPosition;->index:I

    iget v4, v0, Lcom/sonyericsson/ned/controller/CursorPosition;->index:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/sonyericsson/ned/controller/CursorPosition;->offset:I

    iget v4, v0, Lcom/sonyericsson/ned/controller/CursorPosition;->offset:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getEnd()I
    .locals 2

    .prologue
    .line 119
    iget v0, p0, Lcom/sonyericsson/ned/controller/CursorPosition;->index:I

    iget v1, p0, Lcom/sonyericsson/ned/controller/CursorPosition;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/sonyericsson/ned/controller/CursorPosition;->offset:I

    return v0
.end method

.method public final getLogicalIndex()I
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/sonyericsson/ned/controller/CursorPosition;->index:I

    iget v1, p0, Lcom/sonyericsson/ned/controller/CursorPosition;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/sonyericsson/ned/controller/CursorPosition;->index:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lcom/sonyericsson/ned/controller/CursorPosition;->index:I

    iget v1, p0, Lcom/sonyericsson/ned/controller/CursorPosition;->offset:I

    xor-int/2addr v0, v1

    return v0
.end method
