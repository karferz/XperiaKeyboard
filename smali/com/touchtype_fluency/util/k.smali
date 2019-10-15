.class abstract Lcom/touchtype_fluency/util/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lcom/touchtype_fluency/util/l;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/touchtype_fluency/util/l;Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/util/l;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/touchtype_fluency/util/k;->b:Lcom/touchtype_fluency/util/l;

    .line 47
    iput-object p2, p0, Lcom/touchtype_fluency/util/k;->c:Ljava/util/Map;

    .line 48
    iput p3, p0, Lcom/touchtype_fluency/util/k;->a:I

    .line 49
    return-void
.end method

.method protected constructor <init>(Lcom/touchtype_fluency/util/l;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p1, p2}, Lcom/touchtype_fluency/util/l;->a([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Lcom/touchtype_fluency/util/k;->a([Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/touchtype_fluency/util/k;-><init>(Lcom/touchtype_fluency/util/l;Ljava/util/Map;I)V

    .line 41
    return-void
.end method

.method private static a([Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 30
    .line 31
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    .line 32
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v0, v4, :cond_0

    .line 31
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    .line 34
    :cond_1
    return v0
.end method

.method private static a(Lcom/touchtype_fluency/Predictions;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/touchtype_fluency/Prediction;->getTags()Ljava/util/Set;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    const-string v2, "input:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 79
    :cond_1
    return-object p1
.end method


# virtual methods
.method protected final a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offset cannot be larger than the input length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 101
    const/4 v0, 0x0

    move v2, v0

    move v1, p2

    :goto_0
    if-ge v2, v3, :cond_4

    .line 102
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_2

    .line 103
    add-int/lit8 v0, v1, -0x1

    if-nez v1, :cond_3

    .line 104
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 105
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 108
    :cond_1
    iget v1, p0, Lcom/touchtype_fluency/util/k;->a:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_1
    return-object v0

    :cond_2
    move v0, v1

    .line 101
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 112
    :cond_4
    const-string v0, ""

    goto :goto_1
.end method

.method final a(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 140
    const-string v0, ""

    invoke-static {p1, v0}, Lcom/touchtype_fluency/util/k;->a(Lcom/touchtype_fluency/Predictions;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {p0, v0, p2}, Lcom/touchtype_fluency/util/k;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/touchtype_fluency/util/k;->b:Lcom/touchtype_fluency/util/l;

    invoke-virtual {v1, v0}, Lcom/touchtype_fluency/util/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 153
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/touchtype_fluency/util/k;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 155
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0, v0, p1, p2}, Lcom/touchtype_fluency/util/k;->a(Ljava/util/List;Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 153
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 159
    :cond_1
    return-object v2
.end method

.method protected a(Ljava/util/List;Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/touchtype_fluency/Predictions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    return-object p1
.end method
