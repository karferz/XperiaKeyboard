.class public interface abstract Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;
.super Ljava/lang/Object;
.source "CloudLoginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SyncLogin"


# virtual methods
.method public abstract connectAndGetIdToken(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract dispose()V
.end method

.method public abstract getEssentialPermissions()[Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getFlowState()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getOptionalPermissions()[Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)Z
.end method

.method public abstract restoreState(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;)V
    .param p1    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
