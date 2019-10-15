.class public interface abstract Lcom/touchtype_fluency/Tokenizer;
.super Ljava/lang/Object;
.source "Tokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype_fluency/Tokenizer$Mode;
    }
.end annotation


# virtual methods
.method public abstract split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;
.end method

.method public abstract split(Ljava/lang/String;Lcom/touchtype_fluency/Tokenizer$Mode;)Lcom/touchtype_fluency/Sequence;
.end method

.method public abstract splitAt(Ljava/lang/String;IIILcom/touchtype_fluency/Tokenizer$Mode;)Lcom/touchtype_fluency/SequenceTermMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract splitContextCurrentWord(Ljava/lang/String;I)Lcom/touchtype_fluency/ContextCurrentWord;
.end method

.method public abstract splitContextCurrentWord(Ljava/lang/String;IZ)Lcom/touchtype_fluency/ContextCurrentWord;
.end method
