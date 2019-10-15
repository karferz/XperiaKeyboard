.class public Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey$PredictiveKeyComparator;
.super Ljava/lang/Object;
.source "PredictiveKey.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PredictiveKeyComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;",
        ">;"
    }
.end annotation


# instance fields
.field private final mSearchKey:Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-array v6, v9, [I

    new-array v7, v9, [I

    new-array v8, v9, [I

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;-><init>(IIIILandroid/graphics/Rect;[I[I[II)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey$PredictiveKeyComparator;->mSearchKey:Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;)I
    .locals 3
    .param p1, "object1"    # Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    .param p2, "object2"    # Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    .prologue
    const/4 v2, 0x0

    .line 244
    iget-object v0, p1, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->candidates:[I

    aget v0, v0, v2

    iget-object v1, p2, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->candidates:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 227
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    check-cast p2, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey$PredictiveKeyComparator;->compare(Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;)I

    move-result v0

    return v0
.end method

.method public setSearchCandidate(C)Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    .locals 2
    .param p1, "primaryCandidate"    # C

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey$PredictiveKeyComparator;->mSearchKey:Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->candidates:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey$PredictiveKeyComparator;->mSearchKey:Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    return-object v0
.end method

.method public setSearchCandidate(I)Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    .locals 2
    .param p1, "primaryCandidate"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey$PredictiveKeyComparator;->mSearchKey:Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->candidates:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey$PredictiveKeyComparator;->mSearchKey:Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    return-object v0
.end method
