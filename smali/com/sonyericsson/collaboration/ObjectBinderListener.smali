.class public interface abstract Lcom/sonyericsson/collaboration/ObjectBinderListener;
.super Ljava/lang/Object;
.source "ObjectBinderListener.java"


# virtual methods
.method public abstract bondAdded(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract bondRemoved(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract componentAdded(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract componentRemoved(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract startupSequenceUpdated(Ljava/lang/Object;[Ljava/lang/Object;)V
.end method
