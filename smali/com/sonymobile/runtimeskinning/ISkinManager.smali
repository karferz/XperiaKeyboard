.class public interface abstract Lcom/sonymobile/runtimeskinning/ISkinManager;
.super Ljava/lang/Object;
.source "ISkinManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/runtimeskinning/ISkinManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getSkin()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
