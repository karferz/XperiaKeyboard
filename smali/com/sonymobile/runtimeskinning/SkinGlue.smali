.class interface abstract Lcom/sonymobile/runtimeskinning/SkinGlue;
.super Ljava/lang/Object;
.source "SkinGlue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/runtimeskinning/SkinGlue$1;,
        Lcom/sonymobile/runtimeskinning/SkinGlue$GlueStub;
    }
.end annotation


# static fields
.field public static final DISABLED:Lcom/sonymobile/runtimeskinning/SkinGlue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/sonymobile/runtimeskinning/SkinGlue$GlueStub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/runtimeskinning/SkinGlue$GlueStub;-><init>(Lcom/sonymobile/runtimeskinning/SkinGlue$1;)V

    sput-object v0, Lcom/sonymobile/runtimeskinning/SkinGlue;->DISABLED:Lcom/sonymobile/runtimeskinning/SkinGlue;

    return-void
.end method


# virtual methods
.method public abstract getDefaultSkin(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getSkin(Landroid/content/Context;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isResourceOverlaid(Landroid/content/Context;Landroid/content/res/Resources;II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isSkin(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isSkinConfigurationChanged(Landroid/content/Context;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isTrusted(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isUserSkinningAvailable()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isVerified(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract myUserId(Landroid/content/Context;)I
.end method

.method public abstract setSkin(Landroid/content/Context;Landroid/content/pm/PackageInfo;I[I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract supportsInstallableSkins(Landroid/content/Context;)Z
.end method

.method public abstract supportsSelectiveOverlaying()Z
.end method
