.class public interface abstract Lcom/sonyericsson/ned/model/IUserDictionary;
.super Ljava/lang/Object;
.source "IUserDictionary.java"


# virtual methods
.method public abstract addWord(Lcom/sonyericsson/ned/model/CodePointString;)V
.end method

.method public abstract getWords()[Ljava/lang/String;
.end method

.method public abstract isInDictionary(Ljava/lang/String;)Z
.end method

.method public abstract isInStaticDictionary(Ljava/lang/String;)Z
.end method

.method public abstract isReadyToGetWords(Lcom/sonyericsson/textinput/uxp/model/swiftkey/OnDictionaryReadyListener;)Z
    .param p1    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/OnDictionaryReadyListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract removeWord(Lcom/sonyericsson/ned/model/CodePointString;)V
.end method

.method public abstract removeWords(Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;)V"
        }
    .end annotation
.end method
