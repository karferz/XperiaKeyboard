.class public interface abstract Lcom/sonyericsson/ned/controller/IWordSuggesterListener;
.super Ljava/lang/Object;
.source "IWordSuggesterListener.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/Optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;,
        Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;
    }
.end annotation


# virtual methods
.method public abstract onCandidateSelection(Ljava/lang/Object;ILcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;)V
.end method

.method public abstract onCandidatesCanceled(Ljava/lang/Object;)V
.end method

.method public abstract onCandidatesChanged(Ljava/lang/Object;III[Lcom/sonyericsson/ned/model/CodePointString;IILcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;)V
.end method
