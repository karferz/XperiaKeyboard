.class public Lcom/touchtype_fluency/Term;
.super Ljava/lang/Object;
.source "Term.java"


# instance fields
.field private final encodings:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final term:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/touchtype_fluency/Term;->encodings:Ljava/util/HashSet;

    .line 28
    iput-object p1, p0, Lcom/touchtype_fluency/Term;->term:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/touchtype_fluency/Term;->encodings:Ljava/util/HashSet;

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/touchtype_fluency/Term;->encodings:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    iput-object p2, p0, Lcom/touchtype_fluency/Term;->term:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/touchtype_fluency/Term;->encodings:Ljava/util/HashSet;

    .line 54
    iput-object p2, p0, Lcom/touchtype_fluency/Term;->term:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 76
    instance-of v1, p1, Lcom/touchtype_fluency/Term;

    if-eqz v1, :cond_0

    .line 77
    check-cast p1, Lcom/touchtype_fluency/Term;

    .line 78
    iget-object v1, p0, Lcom/touchtype_fluency/Term;->term:Ljava/lang/String;

    iget-object v2, p1, Lcom/touchtype_fluency/Term;->term:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/touchtype_fluency/Term;->encodings:Ljava/util/HashSet;

    iget-object v2, p1, Lcom/touchtype_fluency/Term;->encodings:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 79
    :cond_0
    return v0
.end method

.method public getEncodings()Ljava/util/Set;
    .locals 1
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
    .line 70
    iget-object v0, p0, Lcom/touchtype_fluency/Term;->encodings:Ljava/util/HashSet;

    return-object v0
.end method

.method public getTerm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/touchtype_fluency/Term;->term:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/touchtype_fluency/Term;->term:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/touchtype_fluency/Term;->encodings:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->hashCode()I

    move-result v1

    mul-int/lit16 v1, v1, 0xad

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0xad

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    const-string v0, "[%s %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/touchtype_fluency/Term;->encodings:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/touchtype_fluency/Term;->term:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
