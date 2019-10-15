.class public interface abstract Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;
.super Ljava/lang/Object;
.source "CloudLoginManagerListener.java"


# virtual methods
.method public abstract onFlowEnd(Ljava/lang/String;Z)V
.end method

.method public abstract onTokenReceived(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;)V
    .param p1    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
