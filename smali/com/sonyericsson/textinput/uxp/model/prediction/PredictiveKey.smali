.class public Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
.super Ljava/lang/Object;
.source "PredictiveKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey$PredictiveKeyComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_NON_REGIONAL:I = 0x1

.field public static final TYPE_REGIONAL:I = 0x0

.field public static final TYPE_SMARTPUNCT:I = 0x2

.field private static final typeToString:[Ljava/lang/String;


# instance fields
.field public final candidates:[I

.field private final doubleRect:Landroid/graphics/Rect;

.field private final padding:Landroid/graphics/Rect;

.field private primaryCandidates:[I

.field private final rect:Landroid/graphics/Rect;

.field public shiftedCandidates:[I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TYPE_REGIONAL"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TYPE_NON_REGIONAL"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TYPE_SMARTPUNCT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->typeToString:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIILandroid/graphics/Rect;I[Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "padding"    # Landroid/graphics/Rect;
    .param p6, "keyIndex"    # I
    .param p7, "keyCandidates"    # [Lcom/sonyericsson/ned/model/CodePointString;
    .param p8, "shiftedKeyCandidates"    # [Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->padding:Landroid/graphics/Rect;

    .line 28
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->rect:Landroid/graphics/Rect;

    .line 29
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->doubleRect:Landroid/graphics/Rect;

    .line 30
    const/4 v5, 0x1

    iput v5, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->type:I

    .line 52
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->rect:Landroid/graphics/Rect;

    iget v6, p5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, p1

    iget v7, p5, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, p2

    iget v8, p5, Landroid/graphics/Rect;->right:I

    sub-int v8, p3, v8

    iget v9, p5, Landroid/graphics/Rect;->bottom:I

    sub-int v9, p4, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 54
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->padding:Landroid/graphics/Rect;

    invoke-virtual {v5, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 55
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->doubleRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 56
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->doubleRect:Landroid/graphics/Rect;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->scaleRect(Landroid/graphics/Rect;F)V

    .line 58
    const/16 v5, 0x31

    move/from16 v0, p6

    if-ne v0, v5, :cond_0

    .line 59
    const/4 v5, 0x2

    iput v5, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->type:I

    .line 64
    :goto_0
    invoke-static/range {p6 .. p7}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->calcSize(I[Lcom/sonyericsson/ned/model/CodePointString;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->candidates:[I

    .line 65
    const/4 v3, 0x0

    .line 66
    .local v3, "offset":I
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->candidates:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    aput p6, v5, v3

    .line 68
    move-object/from16 v0, p7

    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v1, p7, v5

    .line 69
    .local v1, "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v7

    move/from16 v0, p6

    if-eq v7, v0, :cond_4

    .line 70
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->candidates:[I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v8

    aput v8, v7, v4

    .line 68
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_1

    .line 61
    .end local v1    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v4    # "offset":I
    :cond_0
    const/4 v5, 0x1

    iput v5, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->type:I

    goto :goto_0

    .line 73
    .restart local v4    # "offset":I
    :cond_1
    move-object/from16 v0, p8

    array-length v5, v0

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->shiftedCandidates:[I

    .line 74
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    move-object/from16 v0, p8

    array-length v5, v0

    if-ge v2, v5, :cond_3

    .line 75
    aget-object v5, p8, v2

    invoke-virtual {v5}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 76
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->shiftedCandidates:[I

    aget-object v6, p8, v2

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v6

    aput v6, v5, v2

    .line 74
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 79
    :cond_3
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->candidates:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v5, v6

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->primaryCandidates:[I

    .line 82
    return-void

    .end local v2    # "i":I
    .restart local v1    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_4
    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_2
.end method

.method public constructor <init>(IIIILandroid/graphics/Rect;[I[I[II)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "padding"    # Landroid/graphics/Rect;
    .param p6, "primaryCandidates"    # [I
    .param p7, "unShiftedCandidates"    # [I
    .param p8, "shiftedCandidates"    # [I
    .param p9, "type"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->padding:Landroid/graphics/Rect;

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->rect:Landroid/graphics/Rect;

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->doubleRect:Landroid/graphics/Rect;

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->type:I

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->rect:Landroid/graphics/Rect;

    iget v1, p5, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iget v2, p5, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    iget v3, p5, Landroid/graphics/Rect;->right:I

    sub-int v3, p3, v3

    iget v4, p5, Landroid/graphics/Rect;->bottom:I

    sub-int v4, p4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->padding:Landroid/graphics/Rect;

    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 90
    invoke-virtual {p7}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->candidates:[I

    .line 91
    invoke-virtual {p8}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->shiftedCandidates:[I

    .line 92
    invoke-virtual {p6}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->primaryCandidates:[I

    .line 93
    iput p9, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->type:I

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->doubleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->doubleRect:Landroid/graphics/Rect;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->scaleRect(Landroid/graphics/Rect;F)V

    .line 96
    return-void
.end method

.method public constructor <init>(IIII[I[I[II)V
    .locals 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "primaryCandidates"    # [I
    .param p6, "unShiftedCandidates"    # [I
    .param p7, "shiftedCandidates"    # [I
    .param p8, "type"    # I

    .prologue
    .line 100
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;-><init>(IIIILandroid/graphics/Rect;[I[I[II)V

    .line 102
    return-void
.end method

.method public constructor <init>(IIII[Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "keyCandidates"    # [Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->padding:Landroid/graphics/Rect;

    .line 28
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->rect:Landroid/graphics/Rect;

    .line 29
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->doubleRect:Landroid/graphics/Rect;

    .line 30
    iput v8, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->type:I

    .line 36
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 37
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->doubleRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 38
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->doubleRect:Landroid/graphics/Rect;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v3, v5}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->scaleRect(Landroid/graphics/Rect;F)V

    .line 40
    invoke-static {p5}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->calcSize([Lcom/sonyericsson/ned/model/CodePointString;)I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->candidates:[I

    .line 41
    const/4 v1, 0x0

    .line 43
    .local v1, "offset":I
    array-length v5, p5

    move v3, v4

    move v2, v1

    .end local v1    # "offset":I
    .local v2, "offset":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, p5, v3

    .line 44
    .local v0, "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v6

    if-ne v6, v8, :cond_1

    .line 45
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->candidates:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    invoke-virtual {v0, v4}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v7

    aput v7, v6, v2

    .line 43
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0

    .line 48
    .end local v0    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    return-void

    .restart local v0    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_1
.end method

.method private static calcSize(I[Lcom/sonyericsson/ned/model/CodePointString;)I
    .locals 7
    .param p0, "keyIndex"    # I
    .param p1, "candidates"    # [Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v3, 0x0

    .line 123
    const/4 v1, 0x0

    .line 124
    .local v1, "size":I
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, p1, v2

    .line 125
    .local v0, "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v5

    if-eq v5, p0, :cond_0

    .line 126
    add-int/lit8 v1, v1, 0x1

    .line 124
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    return v1
.end method

.method private static calcSize([Lcom/sonyericsson/ned/model/CodePointString;)I
    .locals 1
    .param p0, "candidates"    # [Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->calcSize(I[Lcom/sonyericsson/ned/model/CodePointString;)I

    move-result v0

    return v0
.end method

.method private static candidatesToString([I)Ljava/lang/String;
    .locals 5
    .param p0, "candidatesArray"    # [I

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 107
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p0, v2

    .line 108
    .local v1, "i":I
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static scaleRect(Landroid/graphics/Rect;F)V
    .locals 4
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "f"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 114
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 115
    .local v1, "w":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 116
    .local v0, "h":I
    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 117
    iget v2, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 118
    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 119
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 120
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;)I
    .locals 3
    .param p1, "another"    # Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->candidates:[I

    aget v0, v0, v2

    iget-object v1, p1, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->candidates:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 15
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->compareTo(Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;)I

    move-result v0

    return v0
.end method

.method public contains(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 203
    if-ne p1, p0, :cond_1

    .line 208
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 205
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    if-eqz v1, :cond_2

    .line 206
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->compareTo(Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 208
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBottomBound()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getCenterX()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    return v0
.end method

.method public getLeftBound()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getPrimaryCandidates()[I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->primaryCandidates:[I

    return-object v0
.end method

.method public getRightBound()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getTopBound()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->candidates:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    return v0
.end method

.method public height()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public isCandidate(I)Z
    .locals 7
    .param p1, "c"    # I

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v0

    .line 219
    .local v0, "candidate":I
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->candidates:[I

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget v1, v4, v3

    .line 220
    .local v1, "potentialCandidate":I
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v6

    if-ne v0, v6, :cond_1

    .line 221
    const/4 v2, 0x1

    .line 224
    .end local v1    # "potentialCandidate":I
    :cond_0
    return v2

    .line 219
    .restart local v1    # "potentialCandidate":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public isNeighbours(Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;)Z
    .locals 2
    .param p1, "anotherKey"    # Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->doubleRect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->rect:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->typeToString:[Ljava/lang/String;

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->type:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", left:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", right:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", candidates:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->candidates:[I

    .line 193
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->candidatesToString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public width()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method
