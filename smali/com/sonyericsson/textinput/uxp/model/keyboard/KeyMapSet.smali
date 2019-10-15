.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyMapSet;
.super Ljava/lang/Object;
.source "KeyMapSet.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/keyboard/IManagedKeyMapSet;


# instance fields
.field private final mKeyMapVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonyericsson/ned/model/KeyMap;",
            ">;"
        }
    .end annotation
.end field

.field private final mProperties:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyMapSet;->mProperties:Ljava/util/Vector;

    .line 22
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyMapSet;->mKeyMapVector:Ljava/util/Vector;

    .line 23
    return-void
.end method


# virtual methods
.method public addKeyMap(Lcom/sonyericsson/ned/model/KeyMap;)V
    .locals 5
    .param p1, "keyMap"    # Lcom/sonyericsson/ned/model/KeyMap;

    .prologue
    .line 27
    invoke-interface {p1}, Lcom/sonyericsson/ned/model/KeyMap;->getProperties()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 28
    .local v0, "property":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyMapSet;->mProperties:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 29
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyMapSet;->mProperties:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    .end local v0    # "property":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyMapSet;->mKeyMapVector:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public addProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyMapSet;->mProperties:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public getKeyMap([Ljava/lang/String;)Lcom/sonyericsson/ned/model/KeyMap;
    .locals 12
    .param p1, "properties"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 51
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyMapSet;->mKeyMapVector:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/model/KeyMap;

    .line 52
    .local v0, "keyMap":Lcom/sonyericsson/ned/model/KeyMap;
    const/4 v2, 0x0

    .line 53
    .local v2, "nbrFoundProperties":I
    array-length v8, p1

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_4

    aget-object v3, p1, v6

    .line 54
    .local v3, "wantedProperty":Ljava/lang/String;
    invoke-interface {v0}, Lcom/sonyericsson/ned/model/KeyMap;->getProperties()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v4, v5

    :goto_1
    if-ge v4, v10, :cond_2

    aget-object v1, v9, v4

    .line 55
    .local v1, "keyMapProperty":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 53
    .end local v1    # "keyMapProperty":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 54
    .restart local v1    # "keyMapProperty":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 61
    .end local v1    # "keyMapProperty":Ljava/lang/String;
    .end local v3    # "wantedProperty":Ljava/lang/String;
    :cond_4
    array-length v4, p1

    if-ne v2, v4, :cond_1

    .line 65
    .end local v0    # "keyMap":Lcom/sonyericsson/ned/model/KeyMap;
    .end local v2    # "nbrFoundProperties":I
    :goto_2
    return-object v0

    :cond_5
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyDataMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-array v5, v5, [Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyDataMap;-><init>(Ljava/util/HashMap;[Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getProperties()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyMapSet;->mProperties:Ljava/util/Vector;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyMapSet;->mProperties:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
