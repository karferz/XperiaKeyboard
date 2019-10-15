.class public Lcom/touchtype_fluency/TermPosition;
.super Ljava/lang/Object;
.source "TermPosition.java"


# instance fields
.field private final begin:Ljava/lang/Integer;

.field private final size:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/TermPosition;->begin:Ljava/lang/Integer;

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/TermPosition;->size:Ljava/lang/Integer;

    .line 15
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 42
    instance-of v1, p1, Lcom/touchtype_fluency/TermPosition;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/touchtype_fluency/TermPosition;

    .line 44
    iget-object v1, p0, Lcom/touchtype_fluency/TermPosition;->begin:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/touchtype_fluency/TermPosition;->begin:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/touchtype_fluency/TermPosition;->size:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/touchtype_fluency/TermPosition;->size:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 45
    :cond_0
    return v0
.end method

.method public getBegin()I
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/touchtype_fluency/TermPosition;->begin:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEnd()I
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/touchtype_fluency/TermPosition;->begin:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/touchtype_fluency/TermPosition;->size:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/touchtype_fluency/TermPosition;->size:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/touchtype_fluency/TermPosition;->begin:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    mul-int/lit16 v0, v0, 0x95

    iget-object v1, p0, Lcom/touchtype_fluency/TermPosition;->size:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "begin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/TermPosition;->begin:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/TermPosition;->size:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
