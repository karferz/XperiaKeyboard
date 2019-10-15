.class public abstract Lcom/sonyericsson/textinput/uxp/controller/cloud/AbstractCloudLoginManagerImpl;
.super Ljava/lang/Object;
.source "AbstractCloudLoginManagerImpl.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;


# instance fields
.field protected final mActivity:Landroid/app/Activity;

.field protected final mListener:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/AbstractCloudLoginManagerImpl;->mActivity:Landroid/app/Activity;

    .line 28
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/AbstractCloudLoginManagerImpl;->mListener:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;

    .line 29
    return-void
.end method
