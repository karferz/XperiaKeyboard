.class public Lcom/sonyericsson/ned/controller/multitap/CSimpleSelector;
.super Ljava/lang/Object;
.source "CSimpleSelector.java"

# interfaces
.implements Lcom/sonyericsson/ned/controller/IMultitapBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/ned/controller/multitap/CSimpleSelector$Factory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextIndex([Lcom/sonyericsson/ned/model/CodePointString;IZ)I
    .locals 2
    .param p1, "choices"    # [Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "index"    # I
    .param p3, "longPress"    # Z

    .prologue
    .line 16
    add-int/lit8 v0, p2, 0x1

    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    goto :goto_0
.end method

.method public getReorderedChoices([[Lcom/sonyericsson/ned/model/CodePointString;)[[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 0
    .param p1, "choices"    # [[Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 25
    return-object p1
.end method
