.class public Lcom/touchtype_fluency/impl/NoModelSelector;
.super Ljava/lang/Object;
.source "NoModelSelector.java"

# interfaces
.implements Lcom/touchtype_fluency/TagSelector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public apply(Ljava/util/Set;)Z
    .locals 1
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
    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 18
    instance-of v0, p1, Lcom/touchtype_fluency/impl/NoModelSelector;

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 22
    const v0, -0x70fa3a90

    return v0
.end method
