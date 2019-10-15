.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyDataMap;
.super Ljava/lang/Object;
.source "KeyDataMap.java"

# interfaces
.implements Lcom/sonyericsson/ned/model/IManagedKeyMap;


# instance fields
.field private final mCandidatesHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            "[",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;"
        }
    .end annotation
.end field

.field private final mProperties:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;[Ljava/lang/String;)V
    .locals 3
    .param p2, "properties"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            "[",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "layout":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;>;"
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyDataMap;->mCandidatesHashMap:Ljava/util/HashMap;

    .line 23
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyDataMap;->mProperties:[Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyDataMap;->mProperties:[Ljava/lang/String;

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    return-void
.end method


# virtual methods
.method public getCharactersForKey(Lcom/sonyericsson/ned/controller/VirtualKey;Z)[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 3
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;
    .param p2, "visual"    # Z

    .prologue
    .line 36
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyDataMap;->mCandidatesHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/VirtualKey;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/ned/model/CodePointString;

    .line 37
    .local v0, "candidates":[Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v0, :cond_0

    .end local v0    # "candidates":[Lcom/sonyericsson/ned/model/CodePointString;
    :goto_0
    return-object v0

    .restart local v0    # "candidates":[Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method

.method public getCharactersHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            "[",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyDataMap;->mCandidatesHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getProperties()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 29
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyDataMap;->mProperties:[Ljava/lang/String;

    array-length v1, v1

    new-array v0, v1, [Ljava/lang/String;

    .line 30
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyDataMap;->mProperties:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyDataMap;->mProperties:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    return-object v0
.end method
