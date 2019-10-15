.class public Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyUserDictionary;
.super Ljava/lang/Object;
.source "SwiftKeyUserDictionary.java"

# interfaces
.implements Lcom/sonyericsson/ned/model/IUserDictionary;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyUserDictionary;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public addWord(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 1
    .param p1, "word"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyUserDictionary;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->addWord(Lcom/sonyericsson/ned/model/CodePointString;Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public getWords()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyUserDictionary;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getWords(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInDictionary(Ljava/lang/String;)Z
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyUserDictionary;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isInDictionary(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isInStaticDictionary(Ljava/lang/String;)Z
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyUserDictionary;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isInStaticDictionary(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isReadyToGetWords(Lcom/sonyericsson/textinput/uxp/model/swiftkey/OnDictionaryReadyListener;)Z
    .locals 1
    .param p1, "readyListener"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/OnDictionaryReadyListener;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyUserDictionary;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isReadyToGetWords(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/swiftkey/OnDictionaryReadyListener;)Z

    move-result v0

    return v0
.end method

.method public removeWord(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 1
    .param p1, "word"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyUserDictionary;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->removeWord(Lcom/sonyericsson/ned/model/CodePointString;Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public removeWords(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "words":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonyericsson/ned/model/CodePointString;>;"
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyUserDictionary;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->removeWords(Ljava/util/HashSet;Landroid/content/Context;)V

    .line 40
    return-void
.end method
