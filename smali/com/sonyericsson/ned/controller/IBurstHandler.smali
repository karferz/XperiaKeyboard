.class public interface abstract Lcom/sonyericsson/ned/controller/IBurstHandler;
.super Ljava/lang/Object;
.source "IBurstHandler.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/Optional;


# virtual methods
.method public abstract notifyUnblocked()V
.end method

.method public abstract onEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z
.end method

.method public abstract setEventBlockHandler(Lcom/sonyericsson/ned/controller/IEventBlockHandler;)V
.end method
