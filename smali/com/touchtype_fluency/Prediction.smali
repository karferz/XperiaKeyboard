.class public Lcom/touchtype_fluency/Prediction;
.super Ljava/util/AbstractList;
.source "Prediction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype_fluency/Prediction$Cache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lcom/touchtype_fluency/Term;",
        ">;"
    }
.end annotation


# instance fields
.field private cache:Lcom/touchtype_fluency/Prediction$Cache;

.field private peer:J

.field private probability:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 259
    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->forceInit()V

    return-void
.end method

.method private constructor <init>(JD)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 31
    iput-wide p1, p0, Lcom/touchtype_fluency/Prediction;->peer:J

    .line 32
    new-instance v0, Lcom/touchtype_fluency/Prediction$Cache;

    invoke-direct {v0, p0}, Lcom/touchtype_fluency/Prediction$Cache;-><init>(Lcom/touchtype_fluency/Prediction;)V

    iput-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    .line 33
    iput-wide p3, p0, Lcom/touchtype_fluency/Prediction;->probability:D

    .line 34
    return-void
.end method

.method protected constructor <init>(Lcom/touchtype_fluency/Prediction;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 41
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/Prediction;->clonePeerFrom(Lcom/touchtype_fluency/Prediction;)V

    .line 42
    iget-object v0, p1, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    iput-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    .line 43
    iget-wide v0, p1, Lcom/touchtype_fluency/Prediction;->probability:D

    iput-wide v0, p0, Lcom/touchtype_fluency/Prediction;->probability:D

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DLjava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 252
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/touchtype_fluency/Prediction;->createPeerFromJava(Ljava/lang/String;DLjava/util/Set;)V

    .line 253
    new-instance v0, Lcom/touchtype_fluency/Prediction$Cache;

    invoke-direct {v0, p0}, Lcom/touchtype_fluency/Prediction$Cache;-><init>(Lcom/touchtype_fluency/Prediction;)V

    iput-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    .line 254
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-static {v0, p1}, Lcom/touchtype_fluency/Prediction$Cache;->access$002(Lcom/touchtype_fluency/Prediction$Cache;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-static {v0, p4}, Lcom/touchtype_fluency/Prediction$Cache;->access$802(Lcom/touchtype_fluency/Prediction$Cache;Ljava/util/Set;)Ljava/util/Set;

    .line 256
    iput-wide p2, p0, Lcom/touchtype_fluency/Prediction;->probability:D

    .line 257
    return-void
.end method

.method private static native approxEquals(DD)Z
.end method

.method private native clonePeerFrom(Lcom/touchtype_fluency/Prediction;)V
.end method

.method private native convertEncoding()Ljava/lang/String;
.end method

.method private native convertInput()Ljava/lang/String;
.end method

.method private native convertPrediction()Ljava/lang/String;
.end method

.method private native convertSeparators()[Ljava/lang/String;
.end method

.method private native convertSource()Ljava/lang/String;
.end method

.method private native convertTags()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native convertTermBreaks()[Ljava/lang/Integer;
.end method

.method private native convertTerms()[Lcom/touchtype_fluency/Term;
.end method

.method private native convertToStringCache()Ljava/lang/String;
.end method

.method private native convertVersion()Ljava/lang/String;
.end method

.method private native createPeerFromJava(Ljava/lang/String;DLjava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native destroyPeer()V
.end method


# virtual methods
.method public native equalTo(Lcom/touchtype_fluency/Prediction;)Z
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 217
    instance-of v0, p1, Lcom/touchtype_fluency/Prediction;

    if-eqz v0, :cond_0

    .line 218
    check-cast p1, Lcom/touchtype_fluency/Prediction;

    invoke-virtual {p0, p1}, Lcom/touchtype_fluency/Prediction;->equalTo(Lcom/touchtype_fluency/Prediction;)Z

    move-result v0

    .line 219
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 233
    :try_start_0
    invoke-direct {p0}, Lcom/touchtype_fluency/Prediction;->destroyPeer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 237
    return-void

    .line 235
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public get(I)Lcom/touchtype_fluency/Term;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-static {v0}, Lcom/touchtype_fluency/Prediction$Cache;->access$200(Lcom/touchtype_fluency/Prediction$Cache;)[Lcom/touchtype_fluency/Term;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-direct {p0}, Lcom/touchtype_fluency/Prediction;->convertTerms()[Lcom/touchtype_fluency/Term;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/Prediction$Cache;->access$202(Lcom/touchtype_fluency/Prediction$Cache;[Lcom/touchtype_fluency/Term;)[Lcom/touchtype_fluency/Term;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-static {v0}, Lcom/touchtype_fluency/Prediction$Cache;->access$200(Lcom/touchtype_fluency/Prediction$Cache;)[Lcom/touchtype_fluency/Term;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/touchtype_fluency/Prediction;->get(I)Lcom/touchtype_fluency/Term;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-static {v0}, Lcom/touchtype_fluency/Prediction$Cache;->access$500(Lcom/touchtype_fluency/Prediction$Cache;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-direct {p0}, Lcom/touchtype_fluency/Prediction;->convertEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/Prediction$Cache;->access$502(Lcom/touchtype_fluency/Prediction$Cache;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-static {v0}, Lcom/touchtype_fluency/Prediction$Cache;->access$500(Lcom/touchtype_fluency/Prediction$Cache;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInput()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-static {v0}, Lcom/touchtype_fluency/Prediction$Cache;->access$400(Lcom/touchtype_fluency/Prediction$Cache;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-direct {p0}, Lcom/touchtype_fluency/Prediction;->convertInput()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/Prediction$Cache;->access$402(Lcom/touchtype_fluency/Prediction$Cache;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-static {v0}, Lcom/touchtype_fluency/Prediction$Cache;->access$400(Lcom/touchtype_fluency/Prediction$Cache;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrediction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-static {v0}, Lcom/touchtype_fluency/Prediction$Cache;->access$000(Lcom/touchtype_fluency/Prediction$Cache;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-direct {p0}, Lcom/touchtype_fluency/Prediction;->convertPrediction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/Prediction$Cache;->access$002(Lcom/touchtype_fluency/Prediction$Cache;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-static {v0}, Lcom/touchtype_fluency/Prediction$Cache;->access$000(Lcom/touchtype_fluency/Prediction$Cache;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProbability()D
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/touchtype_fluency/Prediction;->probability:D

    return-wide v0
.end method

.method public getSeparators()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-static {v0}, Lcom/touchtype_fluency/Prediction$Cache;->access$100(Lcom/touchtype_fluency/Prediction$Cache;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-direct {p0}, Lcom/touchtype_fluency/Prediction;->convertSeparators()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/Prediction$Cache;->access$102(Lcom/touchtype_fluency/Prediction$Cache;[Ljava/lang/String;)[Ljava/lang/String;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-static {v0}, Lcom/touchtype_fluency/Prediction$Cache;->access$100(Lcom/touchtype_fluency/Prediction$Cache;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-static {v0}, Lcom/touchtype_fluency/Prediction$Cache;->access$600(Lcom/touchtype_fluency/Prediction$Cache;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-direct {p0}, Lcom/touchtype_fluency/Prediction;->convertSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/Prediction$Cache;->access$602(Lcom/touchtype_fluency/Prediction$Cache;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-static {v0}, Lcom/touchtype_fluency/Prediction$Cache;->access$600(Lcom/touchtype_fluency/Prediction$Cache;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTags()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-static {v0}, Lcom/touchtype_fluency/Prediction$Cache;->access$800(Lcom/touchtype_fluency/Prediction$Cache;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-direct {p0}, Lcom/touchtype_fluency/Prediction;->convertTags()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/Prediction$Cache;->access$802(Lcom/touchtype_fluency/Prediction$Cache;Ljava/util/Set;)Ljava/util/Set;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-static {v0}, Lcom/touchtype_fluency/Prediction$Cache;->access$800(Lcom/touchtype_fluency/Prediction$Cache;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getTermBreaks()[Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-static {v0}, Lcom/touchtype_fluency/Prediction$Cache;->access$300(Lcom/touchtype_fluency/Prediction$Cache;)[Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-direct {p0}, Lcom/touchtype_fluency/Prediction;->convertTermBreaks()[Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/Prediction$Cache;->access$302(Lcom/touchtype_fluency/Prediction$Cache;[Ljava/lang/Integer;)[Ljava/lang/Integer;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-static {v0}, Lcom/touchtype_fluency/Prediction$Cache;->access$300(Lcom/touchtype_fluency/Prediction$Cache;)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-static {v0}, Lcom/touchtype_fluency/Prediction$Cache;->access$700(Lcom/touchtype_fluency/Prediction$Cache;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-direct {p0}, Lcom/touchtype_fluency/Prediction;->convertVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/Prediction$Cache;->access$702(Lcom/touchtype_fluency/Prediction$Cache;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->cache:Lcom/touchtype_fluency/Prediction$Cache;

    invoke-static {v0}, Lcom/touchtype_fluency/Prediction$Cache;->access$700(Lcom/touchtype_fluency/Prediction$Cache;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native hasWildcards()Z
.end method

.method public native hashCode()I
.end method

.method public native isExactMatchPromoted()Z
.end method

.method public native isExtended()Z
.end method

.method public native isKeypressCorrected()Z
.end method

.method public native isMorpheme()Z
.end method

.method public native isPartial()Z
.end method

.method public native isPrefix()Z
.end method

.method public native isSpaceInferred()Z
.end method

.method public native isVerbatim()Z
.end method

.method public native size()I
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/touchtype_fluency/Prediction;->getProbability()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
