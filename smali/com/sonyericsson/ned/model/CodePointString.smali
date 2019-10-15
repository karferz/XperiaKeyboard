.class public final Lcom/sonyericsson/ned/model/CodePointString;
.super Ljava/lang/Object;
.source "CodePointString.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/ned/model/CodePointString$CodePointIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sonyericsson/ned/model/CodePointString;",
        ">;"
    }
.end annotation


# static fields
.field private static final UNINITIALIZED_LENGTH:I = -0x1


# instance fields
.field private mIterator:Lcom/sonyericsson/ned/model/CodePointString$CodePointIterator;

.field private mLength:I

.field private final mString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/ned/model/CodePointString;->mLength:I

    .line 29
    if-nez p1, :cond_0

    .line 30
    const-string p1, ""

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/ned/model/CodePointString;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 44
    if-eqz p0, :cond_0

    .line 45
    new-instance v0, Lcom/sonyericsson/ned/model/CodePointString;

    invoke-direct {v0, p0}, Lcom/sonyericsson/ned/model/CodePointString;-><init>(Ljava/lang/String;)V

    .line 48
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toCodePointStringArray([Ljava/lang/String;)[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 3
    .param p0, "strings"    # [Ljava/lang/String;

    .prologue
    .line 58
    array-length v2, p0

    new-array v1, v2, [Lcom/sonyericsson/ned/model/CodePointString;

    .line 59
    .local v1, "result":[Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 60
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    aput-object v2, v1, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-object v1
.end method

.method public static toIntArray(Ljava/lang/String;)[I
    .locals 9
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 72
    .local v4, "length":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v3, "integerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "offset":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 74
    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 75
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v5, v7

    .line 77
    goto :goto_0

    .line 79
    .end local v0    # "codePoint":I
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [I

    .line 80
    .local v6, "result":[I
    const/4 v1, 0x0

    .line 81
    .local v1, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 82
    .local v2, "integer":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v1

    .line 83
    add-int/lit8 v1, v1, 0x1

    .line 84
    goto :goto_1

    .line 86
    .end local v2    # "integer":Ljava/lang/Integer;
    :cond_1
    return-object v6
.end method

.method public static toStringArray([I)[Ljava/lang/String;
    .locals 4
    .param p0, "codePoints"    # [I

    .prologue
    .line 111
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 112
    .local v1, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 113
    new-instance v2, Ljava/lang/String;

    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    aput-object v2, v1, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    return-object v1
.end method

.method public static toStringArray([III)[Ljava/lang/String;
    .locals 6
    .param p0, "codePoints"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 133
    if-nez p0, :cond_0

    .line 134
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "codePoints is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 136
    :cond_0
    if-le p1, p2, :cond_1

    .line 137
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start > end (start="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", end="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 140
    :cond_1
    if-ltz p1, :cond_2

    array-length v3, p0

    if-le p1, v3, :cond_4

    .line 141
    :cond_2
    if-gez p1, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start < 0 (start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "message":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 141
    .end local v1    # "message":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start > codePoints.length (start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", codePoints.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 147
    :cond_4
    sub-int v3, p2, p1

    new-array v2, v3, [Ljava/lang/String;

    .line 148
    .local v2, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_5

    .line 149
    new-instance v3, Ljava/lang/String;

    add-int v4, v0, p1

    aget v4, p0, v4

    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    aput-object v3, v2, v0

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    :cond_5
    return-object v2
.end method

.method public static toStringArray([Lcom/sonyericsson/ned/model/CodePointString;)[Ljava/lang/String;
    .locals 3
    .param p0, "codePointStrings"    # [Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 96
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 97
    .local v1, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 98
    aget-object v2, p0, v0

    iget-object v2, v2, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    return-object v1
.end method


# virtual methods
.method public append(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 3
    .param p1, "codePointString"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 443
    new-instance v0, Lcom/sonyericsson/ned/model/CodePointString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/ned/model/CodePointString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public append(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 432
    new-instance v0, Lcom/sonyericsson/ned/model/CodePointString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/ned/model/CodePointString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public codePointAt(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "indexInCodePointString":I
    const/4 v1, 0x0

    .line 193
    .local v1, "offset":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 194
    if-ne v0, p1, :cond_0

    .line 195
    iget-object v2, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    return v2

    .line 197
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 198
    iget-object v2, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 201
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "codePointAt (index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") for string=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public compareTo(Lcom/sonyericsson/ned/model/CodePointString;)I
    .locals 2
    .param p1, "another"    # Lcom/sonyericsson/ned/model/CodePointString;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 502
    iget-object v0, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    check-cast p1, Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/ned/model/CodePointString;->compareTo(Lcom/sonyericsson/ned/model/CodePointString;)I

    move-result v0

    return v0
.end method

.method public contains(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 2
    .param p1, "codePointString"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    iget-object v1, p1, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public contains([C)Z
    .locals 6
    .param p1, "characters"    # [C

    .prologue
    const/4 v1, 0x0

    .line 225
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v0, p1, v2

    .line 226
    .local v0, "c":C
    iget-object v4, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_1

    .line 227
    const/4 v1, 0x1

    .line 230
    .end local v0    # "c":C
    :cond_0
    return v1

    .line 225
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public endsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 2
    .param p1, "suffix"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    iget-object v1, p1, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 1
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public equals(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 2
    .param p1, "s"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 406
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 396
    instance-of v0, p1, Lcom/sonyericsson/ned/model/CodePointString;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sonyericsson/ned/model/CodePointString;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equalsExpectingDifference(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 2
    .param p1, "s"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 417
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equalsIgnoreCase(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 2
    .param p1, "codePointString"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    iget-object v1, p1, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public firstCodePoint()I
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 495
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isNoContentString()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/ned/util/StringUtil;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sonyericsson/ned/model/CodePointString;->mIterator:Lcom/sonyericsson/ned/model/CodePointString$CodePointIterator;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/sonyericsson/ned/model/CodePointString$CodePointIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/ned/model/CodePointString$CodePointIterator;-><init>(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString$1;)V

    iput-object v0, p0, Lcom/sonyericsson/ned/model/CodePointString;->mIterator:Lcom/sonyericsson/ned/model/CodePointString$CodePointIterator;

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/ned/model/CodePointString;->mIterator:Lcom/sonyericsson/ned/model/CodePointString$CodePointIterator;

    return-object v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/ned/model/CodePointString;->mIterator:Lcom/sonyericsson/ned/model/CodePointString$CodePointIterator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/ned/model/CodePointString$CodePointIterator;->access$102(Lcom/sonyericsson/ned/model/CodePointString$CodePointIterator;I)I

    goto :goto_0
.end method

.method public lastCodePoint()I
    .locals 3

    .prologue
    .line 478
    iget-object v1, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 479
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 481
    :cond_0
    const/4 v0, 0x1

    .line 482
    .local v0, "offset":I
    iget-object v1, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 483
    iget-object v1, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    .line 485
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    return v1
.end method

.method public lastIndexOf(Lcom/sonyericsson/ned/model/CodePointString;)I
    .locals 2
    .param p1, "codePointString"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 516
    iget-object v0, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    iget-object v1, p1, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/model/CodePointString;->toCodePointIndex(I)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 3

    .prologue
    .line 170
    iget v1, p0, Lcom/sonyericsson/ned/model/CodePointString;->mLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 171
    iget v1, p0, Lcom/sonyericsson/ned/model/CodePointString;->mLength:I

    .line 180
    :goto_0
    return v1

    .line 174
    :cond_0
    const/4 v0, 0x0

    .line 175
    .local v0, "offset":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/ned/model/CodePointString;->mLength:I

    .line 176
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 177
    iget v1, p0, Lcom/sonyericsson/ned/model/CodePointString;->mLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonyericsson/ned/model/CodePointString;->mLength:I

    .line 178
    iget-object v1, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 180
    :cond_1
    iget v1, p0, Lcom/sonyericsson/ned/model/CodePointString;->mLength:I

    goto :goto_0
.end method

.method public startsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 2
    .param p1, "prefix"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    iget-object v1, p1, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public substring(I)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .param p1, "start"    # I

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/ned/model/CodePointString;->toCharIndex(I)I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/sonyericsson/ned/model/CodePointString;->toCharIndex(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    return-object v0
.end method

.method public toCharIndex(I)I
    .locals 3
    .param p1, "codePointIndex"    # I

    .prologue
    .line 311
    if-gez p1, :cond_0

    .line 326
    .end local p1    # "codePointIndex":I
    :goto_0
    return p1

    .line 315
    .restart local p1    # "codePointIndex":I
    :cond_0
    const/4 v1, 0x0

    .line 316
    .local v1, "offset":I
    const/4 v0, 0x0

    .line 318
    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 319
    if-ne v0, p1, :cond_1

    move p1, v1

    .line 320
    goto :goto_0

    .line 322
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 326
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0
.end method

.method public toCodePointIndex(I)I
    .locals 3
    .param p1, "charIndex"    # I

    .prologue
    .line 285
    if-gez p1, :cond_1

    move v0, p1

    .line 299
    :cond_0
    return v0

    .line 289
    :cond_1
    const/4 v1, 0x0

    .line 290
    .local v1, "offset":I
    const/4 v0, 0x0

    .line 292
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 293
    if-eq p1, v1, :cond_0

    .line 296
    iget-object v2, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toIntArray()[I
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->toIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/sonyericsson/ned/model/CodePointString;->mString:Ljava/lang/String;

    return-object v0
.end method
