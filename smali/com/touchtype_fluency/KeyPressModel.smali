.class public interface abstract Lcom/touchtype_fluency/KeyPressModel;
.super Ljava/lang/Object;
.source "KeyPressModel.java"


# virtual methods
.method public abstract addTag(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract closestKey(Lcom/touchtype_fluency/Point;)[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getTag(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract loadFile(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract mostLikelyKey(Lcom/touchtype_fluency/Point;)[Ljava/lang/String;
.end method

.method public abstract removeAllTags()V
.end method

.method public abstract removeTag(Ljava/lang/String;)V
.end method

.method public abstract saveFile(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/FileNotWritableException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract set()V
.end method

.method public abstract setKeys(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/touchtype_fluency/KeyShape;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateKeyCharacters([Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract updateKeyShape(Lcom/touchtype_fluency/KeyShape;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
