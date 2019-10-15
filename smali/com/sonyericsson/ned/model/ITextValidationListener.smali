.class public interface abstract Lcom/sonyericsson/ned/model/ITextValidationListener;
.super Ljava/lang/Object;
.source "ITextValidationListener.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/Optional;


# virtual methods
.method public abstract onInvalidDeletion(Ljava/lang/Object;II)V
.end method

.method public abstract onInvalidInsertion(Ljava/lang/Object;ILjava/lang/String;)V
.end method

.method public abstract onValidationFailure(Ljava/lang/Object;[Ljava/lang/String;)V
.end method

.method public abstract onValidationOk(Ljava/lang/Object;)V
.end method
