.class public Lcom/sonyericsson/ned/controller/multitap/CDigitSelector;
.super Ljava/lang/Object;
.source "CDigitSelector.java"

# interfaces
.implements Lcom/sonyericsson/ned/controller/IMultitapBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/ned/controller/multitap/CDigitSelector$Factory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextIndex([Lcom/sonyericsson/ned/model/CodePointString;IZ)I
    .locals 7
    .param p1, "choices"    # [Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "index"    # I
    .param p3, "longPress"    # Z

    .prologue
    const/4 v2, 0x0

    .line 22
    if-eqz p3, :cond_5

    array-length v3, p1

    if-ge p2, v3, :cond_5

    .line 26
    if-gez p2, :cond_1

    move v1, v2

    .line 45
    :cond_0
    :goto_0
    return v1

    .line 29
    :cond_1
    move v1, p2

    .line 30
    .local v1, "offset":I
    array-length v4, p1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v0, p1, v3

    .line 31
    .local v0, "choice":Lcom/sonyericsson/ned/model/CodePointString;
    aget-object v5, p1, v1

    invoke-virtual {v5}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    aget-object v5, p1, v1

    .line 32
    invoke-virtual {v5, v2}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 35
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 36
    array-length v5, p1

    if-ne v1, v5, :cond_3

    .line 37
    const/4 v1, 0x0

    .line 30
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "choice":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_4
    move v1, p2

    .line 40
    goto :goto_0

    .line 42
    .end local v1    # "offset":I
    :cond_5
    add-int/lit8 v3, p2, 0x1

    array-length v4, p1

    if-lt v3, v4, :cond_6

    move v1, v2

    .line 43
    goto :goto_0

    .line 45
    :cond_6
    add-int/lit8 v1, p2, 0x1

    goto :goto_0
.end method

.method public getReorderedChoices([[Lcom/sonyericsson/ned/model/CodePointString;)[[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 0
    .param p1, "choices"    # [[Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 51
    return-object p1
.end method
