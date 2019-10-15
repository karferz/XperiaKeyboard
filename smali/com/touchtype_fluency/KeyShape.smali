.class public Lcom/touchtype_fluency/KeyShape;
.super Ljava/lang/Object;
.source "KeyShape.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/touchtype_fluency/KeyShape;",
        ">;"
    }
.end annotation


# instance fields
.field private aspectRatio:F

.field private featureThresholdMultiplier:F

.field private initialScaleMultiplier:F

.field private points:[Lcom/touchtype_fluency/Point;

.field private preScaled:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/touchtype_fluency/KeyShape;-><init>(I)V

    .line 27
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-array v0, p1, [Lcom/touchtype_fluency/Point;

    iput-object v0, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    .line 225
    return-void
.end method

.method public static lineKey(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/Point;)Lcom/touchtype_fluency/KeyShape;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 119
    new-instance v0, Lcom/touchtype_fluency/KeyShape;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/touchtype_fluency/KeyShape;-><init>(I)V

    .line 120
    iget-object v1, v0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    aput-object p0, v1, v4

    .line 121
    iget-object v1, v0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 122
    iput v3, v0, Lcom/touchtype_fluency/KeyShape;->initialScaleMultiplier:F

    .line 123
    iput v3, v0, Lcom/touchtype_fluency/KeyShape;->featureThresholdMultiplier:F

    .line 124
    iput v3, v0, Lcom/touchtype_fluency/KeyShape;->aspectRatio:F

    .line 125
    iput-boolean v4, v0, Lcom/touchtype_fluency/KeyShape;->preScaled:Z

    .line 126
    return-object v0
.end method

.method public static lineKey(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/Point;FF)Lcom/touchtype_fluency/KeyShape;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    new-instance v0, Lcom/touchtype_fluency/KeyShape;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/touchtype_fluency/KeyShape;-><init>(I)V

    .line 138
    iget-object v1, v0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    aput-object p0, v1, v3

    .line 139
    iget-object v1, v0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 140
    iput p2, v0, Lcom/touchtype_fluency/KeyShape;->initialScaleMultiplier:F

    .line 141
    iput p3, v0, Lcom/touchtype_fluency/KeyShape;->featureThresholdMultiplier:F

    .line 142
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/touchtype_fluency/KeyShape;->aspectRatio:F

    .line 143
    iput-boolean v3, v0, Lcom/touchtype_fluency/KeyShape;->preScaled:Z

    .line 144
    return-object v0
.end method

.method public static pointKey(Lcom/touchtype_fluency/Point;)Lcom/touchtype_fluency/KeyShape;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 34
    new-instance v0, Lcom/touchtype_fluency/KeyShape;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/touchtype_fluency/KeyShape;-><init>(I)V

    .line 35
    iget-object v1, v0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    aput-object p0, v1, v3

    .line 36
    iput v2, v0, Lcom/touchtype_fluency/KeyShape;->initialScaleMultiplier:F

    .line 37
    iput v2, v0, Lcom/touchtype_fluency/KeyShape;->featureThresholdMultiplier:F

    .line 38
    iput v2, v0, Lcom/touchtype_fluency/KeyShape;->aspectRatio:F

    .line 39
    iput-boolean v3, v0, Lcom/touchtype_fluency/KeyShape;->preScaled:Z

    .line 40
    return-object v0
.end method

.method public static pointKey(Lcom/touchtype_fluency/Point;FF)Lcom/touchtype_fluency/KeyShape;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/touchtype_fluency/KeyShape;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/touchtype_fluency/KeyShape;-><init>(I)V

    .line 51
    iget-object v1, v0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    aput-object p0, v1, v2

    .line 52
    iput p1, v0, Lcom/touchtype_fluency/KeyShape;->initialScaleMultiplier:F

    .line 53
    iput p2, v0, Lcom/touchtype_fluency/KeyShape;->featureThresholdMultiplier:F

    .line 54
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/touchtype_fluency/KeyShape;->aspectRatio:F

    .line 55
    iput-boolean v2, v0, Lcom/touchtype_fluency/KeyShape;->preScaled:Z

    .line 56
    return-object v0
.end method

.method public static scaledPointKey(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/Point;)Lcom/touchtype_fluency/KeyShape;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 65
    new-instance v0, Lcom/touchtype_fluency/KeyShape;

    invoke-direct {v0, v10}, Lcom/touchtype_fluency/KeyShape;-><init>(I)V

    .line 66
    invoke-virtual {p1}, Lcom/touchtype_fluency/Point;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/touchtype_fluency/Point;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 67
    invoke-virtual {p1}, Lcom/touchtype_fluency/Point;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/touchtype_fluency/Point;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    .line 69
    cmpg-float v3, v1, v4

    if-lez v3, :cond_0

    cmpg-float v3, v2, v4

    if-gtz v3, :cond_1

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Coordinates of min should be lower than corresponding coords of max"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    iget-object v3, v0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    const/4 v4, 0x0

    new-instance v5, Lcom/touchtype_fluency/Point;

    invoke-virtual {p0}, Lcom/touchtype_fluency/Point;->getX()F

    move-result v6

    invoke-virtual {p1}, Lcom/touchtype_fluency/Point;->getX()F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v9

    invoke-virtual {p0}, Lcom/touchtype_fluency/Point;->getY()F

    move-result v7

    invoke-virtual {p1}, Lcom/touchtype_fluency/Point;->getY()F

    move-result v8

    add-float/2addr v7, v8

    div-float/2addr v7, v9

    invoke-direct {v5, v6, v7}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    aput-object v5, v3, v4

    .line 76
    div-float v3, v1, v2

    iput v3, v0, Lcom/touchtype_fluency/KeyShape;->aspectRatio:F

    .line 81
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/touchtype_fluency/KeyShape;->initialScaleMultiplier:F

    .line 82
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/touchtype_fluency/KeyShape;->featureThresholdMultiplier:F

    .line 84
    iput-boolean v10, v0, Lcom/touchtype_fluency/KeyShape;->preScaled:Z

    .line 85
    return-object v0
.end method

.method public static scaledPointKey(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/Point;FF)Lcom/touchtype_fluency/KeyShape;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 96
    new-instance v0, Lcom/touchtype_fluency/KeyShape;

    invoke-direct {v0, v10}, Lcom/touchtype_fluency/KeyShape;-><init>(I)V

    .line 97
    invoke-virtual {p1}, Lcom/touchtype_fluency/Point;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/touchtype_fluency/Point;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 98
    invoke-virtual {p1}, Lcom/touchtype_fluency/Point;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/touchtype_fluency/Point;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    .line 100
    cmpg-float v3, v1, v4

    if-lez v3, :cond_0

    cmpg-float v3, v2, v4

    if-gtz v3, :cond_1

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Coordinates of min should be lower than corresponding coords of max"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    iget-object v3, v0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    const/4 v4, 0x0

    new-instance v5, Lcom/touchtype_fluency/Point;

    invoke-virtual {p0}, Lcom/touchtype_fluency/Point;->getX()F

    move-result v6

    invoke-virtual {p1}, Lcom/touchtype_fluency/Point;->getX()F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v9

    invoke-virtual {p0}, Lcom/touchtype_fluency/Point;->getY()F

    move-result v7

    invoke-virtual {p1}, Lcom/touchtype_fluency/Point;->getY()F

    move-result v8

    add-float/2addr v7, v8

    div-float/2addr v7, v9

    invoke-direct {v5, v6, v7}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    aput-object v5, v3, v4

    .line 106
    div-float v3, v1, v2

    iput v3, v0, Lcom/touchtype_fluency/KeyShape;->aspectRatio:F

    .line 107
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v1, p2

    iput v1, v0, Lcom/touchtype_fluency/KeyShape;->initialScaleMultiplier:F

    .line 108
    iput p3, v0, Lcom/touchtype_fluency/KeyShape;->featureThresholdMultiplier:F

    .line 109
    iput-boolean v10, v0, Lcom/touchtype_fluency/KeyShape;->preScaled:Z

    .line 110
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/touchtype_fluency/KeyShape;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 205
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    array-length v2, v2

    iget-object v3, p1, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 206
    iget-object v2, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/Point;->compareTo(Lcom/touchtype_fluency/Point;)I

    move-result v2

    .line 207
    if-eqz v2, :cond_1

    move v1, v2

    .line 214
    :cond_0
    :goto_1
    return v1

    .line 205
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    array-length v0, v0

    iget-object v2, p1, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    const/4 v1, -0x1

    goto :goto_1

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    array-length v0, v0

    iget-object v2, p1, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    array-length v2, v2

    if-le v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/touchtype_fluency/KeyShape;

    invoke-virtual {p0, p1}, Lcom/touchtype_fluency/KeyShape;->compareTo(Lcom/touchtype_fluency/KeyShape;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 165
    instance-of v1, p1, Lcom/touchtype_fluency/KeyShape;

    if-eqz v1, :cond_0

    .line 166
    check-cast p1, Lcom/touchtype_fluency/KeyShape;

    .line 167
    iget-object v1, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    iget-object v2, p1, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/touchtype_fluency/KeyShape;->aspectRatio:F

    iget v2, p1, Lcom/touchtype_fluency/KeyShape;->aspectRatio:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/touchtype_fluency/KeyShape;->initialScaleMultiplier:F

    iget v2, p1, Lcom/touchtype_fluency/KeyShape;->initialScaleMultiplier:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/touchtype_fluency/KeyShape;->preScaled:Z

    iget-boolean v2, p1, Lcom/touchtype_fluency/KeyShape;->preScaled:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/touchtype_fluency/KeyShape;->featureThresholdMultiplier:F

    iget v2, p1, Lcom/touchtype_fluency/KeyShape;->featureThresholdMultiplier:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 174
    :cond_0
    return v0
.end method

.method public getFeatureThresholdMultiplier()F
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/touchtype_fluency/KeyShape;->featureThresholdMultiplier:F

    return v0
.end method

.method public getInitialScaleMultiplier()F
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/touchtype_fluency/KeyShape;->initialScaleMultiplier:F

    return v0
.end method

.method public getPoints()[Lcom/touchtype_fluency/Point;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 192
    iget-object v0, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    new-instance v1, Ljava/lang/Float;

    iget v2, p0, Lcom/touchtype_fluency/KeyShape;->aspectRatio:F

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    new-instance v2, Ljava/lang/Float;

    iget v3, p0, Lcom/touchtype_fluency/KeyShape;->initialScaleMultiplier:F

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    new-instance v3, Ljava/lang/Boolean;

    iget-boolean v4, p0, Lcom/touchtype_fluency/KeyShape;->preScaled:Z

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    new-instance v4, Ljava/lang/Float;

    iget v5, p0, Lcom/touchtype_fluency/KeyShape;->featureThresholdMultiplier:F

    invoke-direct {v4, v5}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v4}, Ljava/lang/Float;->hashCode()I

    move-result v4

    mul-int/lit16 v4, v4, 0xad

    add-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0xad

    add-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0xad

    add-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0xad

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    const-string v1, ""

    .line 180
    iget-object v0, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    array-length v0, v0

    if-eqz v0, :cond_1

    .line 181
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/touchtype_fluency/Point;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    iget-object v2, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/touchtype_fluency/Point;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    :cond_1
    return-object v1
.end method
