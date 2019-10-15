.class public Lcom/sonyericsson/ned/util/ArrayUtil;
.super Ljava/lang/Object;
.source "ArrayUtil.java"


# static fields
.field public static final ARRAY_OBJECT_NOT_FOUND:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains([CC)Z
    .locals 4
    .param p0, "array"    # [C
    .param p1, "value"    # C

    .prologue
    const/4 v1, 0x0

    .line 42
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v0, p0, v2

    .line 43
    .local v0, "chr":C
    if-ne v0, p1, :cond_1

    .line 44
    const/4 v1, 0x1

    .line 47
    .end local v0    # "chr":C
    :cond_0
    return v1

    .line 42
    .restart local v0    # "chr":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 26
    .local v0, "object":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 27
    const/4 v1, 0x1

    .line 31
    .end local v0    # "object":Ljava/lang/Object;
    :cond_0
    return v1

    .line 25
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "b":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    .line 70
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 71
    :cond_0
    if-eqz p0, :cond_1

    .end local p0    # "a":[Ljava/lang/Object;, "[TT;"
    :goto_0
    move-object v0, p0

    .line 76
    :goto_1
    return-object v0

    .restart local p0    # "a":[Ljava/lang/Object;, "[TT;"
    :cond_1
    move-object p0, p1

    .line 71
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, "newList":Ljava/lang/Object;
    array-length v1, p0

    invoke-static {p0, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    check-cast v0, [Ljava/lang/Object;

    .end local v0    # "newList":Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Object;

    goto :goto_1
.end method

.method public static search([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 61
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 60
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static toStringArray([I)[Ljava/lang/String;
    .locals 4
    .param p0, "intArray"    # [I

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v3, p0

    new-array v2, v3, [Ljava/lang/String;

    .line 89
    .local v2, "newArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 90
    aget v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 91
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-object v2
.end method
