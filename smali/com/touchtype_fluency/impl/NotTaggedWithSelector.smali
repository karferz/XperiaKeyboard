.class public Lcom/touchtype_fluency/impl/NotTaggedWithSelector;
.super Ljava/lang/Object;
.source "NotTaggedWithSelector.java"

# interfaces
.implements Lcom/touchtype_fluency/TagSelector;


# instance fields
.field private peer:J

.field private withTags:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 54
    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->forceInit()V

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lcom/touchtype_fluency/impl/NotTaggedWithSelector;->peer:J

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/touchtype_fluency/impl/NotTaggedWithSelector;->withTags:Ljava/util/Collection;

    .line 17
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/impl/NotTaggedWithSelector;->createPeer(Ljava/util/Collection;)V

    .line 18
    return-void
.end method

.method private native createPeer(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native destroyPeer()V
.end method


# virtual methods
.method public apply(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/touchtype_fluency/impl/NotTaggedWithSelector;->withTags:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 30
    instance-of v1, p1, Lcom/touchtype_fluency/impl/NotTaggedWithSelector;

    if-eqz v1, :cond_0

    .line 31
    check-cast p1, Lcom/touchtype_fluency/impl/NotTaggedWithSelector;

    .line 33
    iget-object v1, p0, Lcom/touchtype_fluency/impl/NotTaggedWithSelector;->withTags:Ljava/util/Collection;

    iget-object v2, p1, Lcom/touchtype_fluency/impl/NotTaggedWithSelector;->withTags:Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/touchtype_fluency/impl/NotTaggedWithSelector;->withTags:Ljava/util/Collection;

    iget-object v2, p0, Lcom/touchtype_fluency/impl/NotTaggedWithSelector;->withTags:Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 35
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/touchtype_fluency/impl/NotTaggedWithSelector;->destroyPeer()V

    .line 52
    return-void
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x1

    .line 40
    iget-object v1, p0, Lcom/touchtype_fluency/impl/NotTaggedWithSelector;->withTags:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    move v1, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return v1
.end method
