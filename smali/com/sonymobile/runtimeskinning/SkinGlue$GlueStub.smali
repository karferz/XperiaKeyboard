.class public final Lcom/sonymobile/runtimeskinning/SkinGlue$GlueStub;
.super Ljava/lang/Object;
.source "SkinGlue.java"

# interfaces
.implements Lcom/sonymobile/runtimeskinning/SkinGlue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/runtimeskinning/SkinGlue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlueStub"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/runtimeskinning/SkinGlue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/runtimeskinning/SkinGlue$1;

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/sonymobile/runtimeskinning/SkinGlue$GlueStub;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultSkin(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 268
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSkin(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 236
    const/4 v0, 0x0

    return-object v0
.end method

.method public isResourceOverlaid(Landroid/content/Context;Landroid/content/res/Resources;II)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "referenceResId"    # I
    .param p4, "resId"    # I

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public isSkin(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pinf"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public isSkinConfigurationChanged(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diff"    # I

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public isTrusted(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pinf"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public isUserSkinningAvailable()Z
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public isVerified(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pinf"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public myUserId(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public setSkin(Landroid/content/Context;Landroid/content/pm/PackageInfo;I[I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pinf"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I
    .param p4, "enabledGroups"    # [I

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public supportsInstallableSkins(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSelectiveOverlaying()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method
