.class public Lcom/touchtype_fluency/impl/ArraySet;
.super Ljava/util/AbstractSet;
.source "ArraySet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype_fluency/impl/ArraySet$NonEmptySetIterator;,
        Lcom/touchtype_fluency/impl/ArraySet$EmptySetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final EMPTY:Lcom/touchtype_fluency/impl/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/touchtype_fluency/impl/ArraySet",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field

.field private final mElements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/touchtype_fluency/impl/ArraySet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/touchtype_fluency/impl/ArraySet;->$assertionsDisabled:Z

    .line 19
    new-instance v0, Lcom/touchtype_fluency/impl/ArraySet;

    invoke-direct {v0}, Lcom/touchtype_fluency/impl/ArraySet;-><init>()V

    sput-object v0, Lcom/touchtype_fluency/impl/ArraySet;->EMPTY:Lcom/touchtype_fluency/impl/ArraySet;

    return-void

    .line 16
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/touchtype_fluency/impl/ArraySet;->mComparator:Ljava/util/Comparator;

    .line 24
    iput-object v0, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/touchtype_fluency/impl/ArraySet;->mComparator:Ljava/util/Comparator;

    .line 29
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    .line 30
    return-void

    .line 29
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/touchtype_fluency/impl/ArraySet;->sort([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/touchtype_fluency/impl/ArraySet;->mComparator:Ljava/util/Comparator;

    .line 37
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    .line 38
    return-void

    .line 37
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0, p2}, Lcom/touchtype_fluency/impl/ArraySet;->sort([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/touchtype_fluency/impl/ArraySet;->mComparator:Ljava/util/Comparator;

    .line 46
    array-length v1, p1

    if-nez v1, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    .line 47
    return-void

    .line 46
    :cond_0
    invoke-static {p1, v0}, Lcom/touchtype_fluency/impl/ArraySet;->sort([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/touchtype_fluency/impl/ArraySet;->mComparator:Ljava/util/Comparator;

    .line 56
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    .line 57
    return-void

    .line 56
    :cond_0
    invoke-static {p1, p2}, Lcom/touchtype_fluency/impl/ArraySet;->sort([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;",
            "Ljava/util/Comparator",
            "<-TE;>;Z)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/touchtype_fluency/impl/ArraySet;->mComparator:Ljava/util/Comparator;

    .line 67
    iput-object p1, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    .line 68
    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;Z)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype_fluency/impl/ArraySet;->mComparator:Ljava/util/Comparator;

    .line 62
    iput-object p1, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/touchtype_fluency/impl/ArraySet;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    return-object v0
.end method

.method public static fromSortedArray([Ljava/lang/Comparable;)Lcom/touchtype_fluency/impl/ArraySet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>([TE;)",
            "Lcom/touchtype_fluency/impl/ArraySet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 78
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 79
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p0, v2

    aget-object v3, p0, v0

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 80
    new-instance v0, Lcom/touchtype_fluency/impl/ArraySet;

    invoke-direct {v0, p0}, Lcom/touchtype_fluency/impl/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 83
    :goto_1
    return-object v0

    .line 78
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    new-instance v0, Lcom/touchtype_fluency/impl/ArraySet;

    invoke-direct {v0, p0, v1}, Lcom/touchtype_fluency/impl/ArraySet;-><init>([Ljava/lang/Object;Z)V

    goto :goto_1
.end method

.method public static fromSortedArray([Ljava/lang/Object;Ljava/util/Comparator;)Lcom/touchtype_fluency/impl/ArraySet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "Lcom/touchtype_fluency/impl/ArraySet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 91
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 92
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p0, v2

    aget-object v3, p0, v0

    invoke-interface {p1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 93
    new-instance v0, Lcom/touchtype_fluency/impl/ArraySet;

    invoke-direct {v0, p0, p1}, Lcom/touchtype_fluency/impl/ArraySet;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 96
    :goto_1
    return-object v0

    .line 91
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    new-instance v0, Lcom/touchtype_fluency/impl/ArraySet;

    invoke-direct {v0, p0, p1, v1}, Lcom/touchtype_fluency/impl/ArraySet;-><init>([Ljava/lang/Object;Ljava/util/Comparator;Z)V

    goto :goto_1
.end method

.method private static removeDuplicates([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;",
            "Ljava/util/Comparator",
            "<-TE;>;)[TE;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 101
    sget-boolean v0, Lcom/touchtype_fluency/impl/ArraySet;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 102
    :cond_0
    aget-object v0, p0, v5

    move v2, v1

    move-object v3, v0

    move v0, v1

    .line 104
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_6

    .line 105
    aget-object v4, p0, v0

    .line 106
    if-eqz p1, :cond_3

    invoke-interface {p1, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    .line 109
    :goto_1
    if-nez v3, :cond_1

    .line 110
    add-int/lit8 v3, v2, 0x1

    aput-object v4, p0, v2

    move v2, v3

    .line 104
    :cond_1
    add-int/lit8 v0, v0, 0x1

    move-object v3, v4

    goto :goto_0

    :cond_2
    move v3, v5

    .line 106
    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_4
    if-nez v4, :cond_5

    move v3, v1

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_1

    .line 114
    :cond_6
    array-length v0, p0

    if-ne v2, v0, :cond_7

    :goto_2
    return-object p0

    :cond_7
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_2
.end method

.method private static sort([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;",
            "Ljava/util/Comparator",
            "<-TE;>;)[TE;"
        }
    .end annotation

    .prologue
    .line 117
    if-eqz p1, :cond_0

    .line 118
    invoke-static {p0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 122
    :goto_0
    invoke-static {p0, p1}, Lcom/touchtype_fluency/impl/ArraySet;->removeDuplicates([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 134
    :goto_0
    return v1

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/touchtype_fluency/impl/ArraySet;->mComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/touchtype_fluency/impl/ArraySet;->mComparator:Ljava/util/Comparator;

    invoke-static {v2, p1, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    if-ltz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 132
    :cond_2
    iget-object v2, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    invoke-static {v2, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ltz v2, :cond_3

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 133
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 139
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 140
    invoke-virtual {p0, v1}, Lcom/touchtype_fluency/impl/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Lcom/touchtype_fluency/impl/ArraySet$EmptySetIterator;

    invoke-direct {v0}, Lcom/touchtype_fluency/impl/ArraySet$EmptySetIterator;-><init>()V

    .line 170
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/touchtype_fluency/impl/ArraySet$NonEmptySetIterator;

    invoke-direct {v0, p0}, Lcom/touchtype_fluency/impl/ArraySet$NonEmptySetIterator;-><init>(Lcom/touchtype_fluency/impl/ArraySet;)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    array-length v0, v0

    goto :goto_0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 188
    iget-object v0, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 189
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 197
    :cond_0
    :goto_0
    return-object p1

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    array-length v0, v0

    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 193
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    array-length v0, v0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/touchtype_fluency/impl/ArraySet;->mElements:[Ljava/lang/Object;

    array-length v1, v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    goto :goto_0
.end method
