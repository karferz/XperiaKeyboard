.class public Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;
.super Lcom/sonyericsson/ned/controller/VirtualKey;
.source "LocalizedVirtualKey.java"


# instance fields
.field private final mPointCount:I

.field private final mPointTimes:[J

.field private final mPoints:[I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/ned/controller/EventBlockType;Ljava/lang/Object;I[I[JI)V
    .locals 0
    .param p1, "blockType"    # Lcom/sonyericsson/ned/controller/EventBlockType;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "actionType"    # I
    .param p4, "points"    # [I
    .param p5, "pointTimes"    # [J
    .param p6, "count"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/ned/controller/VirtualKey;-><init>(Lcom/sonyericsson/ned/controller/EventBlockType;Ljava/lang/Object;I)V

    .line 26
    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;->mPoints:[I

    .line 27
    iput p6, p0, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;->mPointCount:I

    .line 28
    iput-object p5, p0, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;->mPointTimes:[J

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 63
    if-ne p0, p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v1

    .line 66
    :cond_1
    instance-of v2, p1, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;

    if-eqz v2, :cond_2

    invoke-super {p0, p1}, Lcom/sonyericsson/ned/controller/VirtualKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 67
    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;

    .line 68
    .local v0, "anotherVirtualKey":Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;
    iget v2, v0, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;->mPointCount:I

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;->mPointCount:I

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;->mPoints:[I

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;->mPoints:[I

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;->mPointTimes:[J

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;->mPointTimes:[J

    if-eq v2, v3, :cond_0

    .line 74
    .end local v0    # "anotherVirtualKey":Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPointCount()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;->mPointCount:I

    return v0
.end method

.method public getPointTimes()[J
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;->mPointTimes:[J

    return-object v0
.end method

.method public getPoints()[I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;->mPoints:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/sonyericsson/ned/controller/VirtualKey;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;->mPoints:[I

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;->mPointCount:I

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;->mPointTimes:[J

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
