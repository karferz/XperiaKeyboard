.class public Lcom/sonymobile/runtimeskinning/RuntimeSkinningUtil;
.super Ljava/lang/Object;
.source "RuntimeSkinningUtil.java"


# static fields
.field public static final FLAG_DO_NOT_SHOW_UI:I = 0x1

.field public static final FLAG_PREFER_LIVE_WALLPAPER:I = 0x4

.field public static final FLAG_RESET_SOUNDS:I = 0x400

.field public static final FLAG_RETAIN_WALLPAPER:I = 0x2

.field public static final FLAG_SET_ALARM_SOUND:I = 0x100

.field public static final FLAG_SET_LOCKSCREEN_WALLPAPER:I = 0x40

.field public static final FLAG_SET_NOTIFICATION_SOUND:I = 0x200

.field public static final FLAG_SET_RINGTONE_SOUND:I = 0x80

.field public static final FLAG_SET_WALLPAPER:I = 0x10

.field public static final FLAG_UPDATE_ENABLED_GROUPS_ONLY:I = 0x800


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method private static getSkinPackageChangedFlag(Landroid/content/Intent;I)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "flag"    # I

    .prologue
    const/4 v1, 0x0

    .line 307
    if-nez p0, :cond_0

    .line 308
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Intent must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 310
    :cond_0
    const-string v2, "com.sonymobile.runtimeskinning.intent.SKIN_CHANGED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 311
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid intent action, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    :cond_1
    const-string v2, "com.sonymobile.runtimeskinning.flags"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 314
    .local v0, "flags":I
    const-string v2, "silent"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 315
    or-int/lit8 v0, v0, 0x1

    .line 317
    :cond_2
    and-int v2, v0, p1

    if-ne v2, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static isInitialSetup(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 296
    const/high16 v0, 0x10000

    invoke-static {p0, v0}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningUtil;->getSkinPackageChangedFlag(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public static isLiveWallpaperUsed(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 266
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningUtil;->getSkinPackageChangedFlag(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public static isStaticWallpaperUsed(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 281
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningUtil;->getSkinPackageChangedFlag(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public static newChangeCurrentSkinAndResourcesIntent(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "skinPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x0

    check-cast v0, [I

    invoke-static {p0, p1, p2, v0}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningUtil;->newChangeCurrentSkinAndResourcesIntent(Landroid/content/Context;Landroid/content/pm/PackageInfo;I[I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static newChangeCurrentSkinAndResourcesIntent(Landroid/content/Context;Landroid/content/pm/PackageInfo;I[I)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "skinPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "flags"    # I
    .param p3, "enabledGroups"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 198
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 199
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameters must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.runtimeskinning.intent.SET_SKIN_PACKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 204
    or-int/lit16 p2, p2, 0x400

    .line 208
    and-int/lit16 v1, p2, 0x800

    if-eqz v1, :cond_2

    .line 209
    and-int/lit8 v1, p2, 0x1

    or-int/lit16 p2, v1, 0x800

    .line 213
    :cond_2
    const-string v2, "silent"

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    const-string v1, "com.sonymobile.runtimeskinning.flags"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    if-eqz p3, :cond_3

    .line 216
    const-string v1, "com.sonymobile.runtimeskinning.enabledgroups"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 218
    :cond_3
    return-object v0

    .line 213
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newGetSkinForColorIntent(FFFFFFI)Landroid/content/Intent;
    .locals 6
    .param p0, "h"    # F
    .param p1, "s"    # F
    .param p2, "v"    # F
    .param p3, "ht"    # F
    .param p4, "st"    # F
    .param p5, "vt"    # F
    .param p6, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 244
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sonymobile.runtimeskinning.intent.PICK_SKIN_PACKAGE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const/4 v4, 0x6

    new-array v0, v4, [F

    aput p0, v0, v3

    aput p1, v0, v2

    const/4 v4, 0x2

    aput p2, v0, v4

    const/4 v4, 0x3

    aput p3, v0, v4

    const/4 v4, 0x4

    aput p4, v0, v4

    const/4 v4, 0x5

    aput p5, v0, v4

    .line 247
    .local v0, "hsvColorAndTolerance":[F
    const-string v4, "com.sonymobile.runtimeskinning.hsvcolorandtolerance"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    .line 249
    const-string v4, "silent"

    and-int/lit8 v5, p6, 0x1

    if-eqz v5, :cond_0

    :goto_0
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    const-string v2, "com.sonymobile.runtimeskinning.flags"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    return-object v1

    :cond_0
    move v2, v3

    .line 249
    goto :goto_0
.end method

.method public static requestSkinVerification(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "skinPackage"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 335
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 336
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameters must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 339
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 340
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sonymobile.runtimeskinning.core"

    const-string v2, "com.sonymobile.runtimeskinning.verification.SkinVerificationService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 344
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 345
    return-void
.end method
