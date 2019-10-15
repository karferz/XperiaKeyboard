.class public Lcom/touchtype_fluency/Predictions;
.super Ljava/util/AbstractList;
.source "Predictions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lcom/touchtype_fluency/Prediction;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private predictions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/Prediction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/touchtype_fluency/Predictions;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/Prediction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/touchtype_fluency/Predictions;->predictions:Ljava/util/List;

    .line 27
    sget-boolean v0, Lcom/touchtype_fluency/Predictions;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/touchtype_fluency/Predictions;->isSorted()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_0
    return-void
.end method

.method protected constructor <init>([Lcom/touchtype_fluency/Prediction;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 21
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/Predictions;->predictions:Ljava/util/List;

    .line 22
    sget-boolean v0, Lcom/touchtype_fluency/Predictions;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/touchtype_fluency/Predictions;->isSorted()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_0
    return-void
.end method

.method private isSorted()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 102
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/touchtype_fluency/Predictions;->predictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/touchtype_fluency/Predictions;->predictions:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/Prediction;

    invoke-virtual {v0}, Lcom/touchtype_fluency/Prediction;->getProbability()D

    move-result-wide v4

    iget-object v0, p0, Lcom/touchtype_fluency/Predictions;->predictions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/Prediction;

    invoke-virtual {v0}, Lcom/touchtype_fluency/Prediction;->getProbability()D

    move-result-wide v6

    cmpg-double v0, v4, v6

    if-gez v0, :cond_1

    .line 104
    const/4 v2, 0x0

    .line 107
    :cond_0
    return v2

    .line 102
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public best(I)Lcom/touchtype_fluency/Predictions;
    .locals 4

    .prologue
    .line 56
    new-instance v0, Lcom/touchtype_fluency/Predictions;

    iget-object v1, p0, Lcom/touchtype_fluency/Predictions;->predictions:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/touchtype_fluency/Predictions;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public get(I)Lcom/touchtype_fluency/Prediction;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/touchtype_fluency/Predictions;->predictions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/Prediction;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v0

    return-object v0
.end method

.method public prefixMatches()Lcom/touchtype_fluency/Predictions;
    .locals 4

    .prologue
    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v0, p0, Lcom/touchtype_fluency/Predictions;->predictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/Prediction;

    .line 68
    invoke-virtual {v0}, Lcom/touchtype_fluency/Prediction;->isPrefix()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_1
    new-instance v0, Lcom/touchtype_fluency/Predictions;

    invoke-direct {v0, v1}, Lcom/touchtype_fluency/Predictions;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public sameLengthMatches()Lcom/touchtype_fluency/Predictions;
    .locals 4

    .prologue
    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v0, p0, Lcom/touchtype_fluency/Predictions;->predictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/Prediction;

    .line 84
    invoke-virtual {v0}, Lcom/touchtype_fluency/Prediction;->isPrefix()Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_1
    new-instance v0, Lcom/touchtype_fluency/Predictions;

    invoke-direct {v0, v1}, Lcom/touchtype_fluency/Predictions;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/touchtype_fluency/Predictions;->predictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    iget-object v0, p0, Lcom/touchtype_fluency/Predictions;->predictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/Prediction;

    .line 95
    invoke-virtual {v0}, Lcom/touchtype_fluency/Prediction;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v0, " > "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
