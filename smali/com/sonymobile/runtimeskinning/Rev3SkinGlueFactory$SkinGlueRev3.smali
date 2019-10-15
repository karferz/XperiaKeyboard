.class public Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;
.super Ljava/lang/Object;
.source "Rev3SkinGlueFactory.java"

# interfaces
.implements Lcom/sonymobile/runtimeskinning/SkinGlue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SkinGlueRev3"
.end annotation


# static fields
.field private static final RUNTIME_SKINNING_LIB:Ljava/lang/String; = "com.sonymobile.runtimeskinning"


# instance fields
.field final synthetic this$0:Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;->this$0:Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isSystemApp(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p1, "pinf"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x1

    .line 201
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDefaultSkin(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 321
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 322
    .local v1, "res":Landroid/content/res/Resources;
    const-string v3, "config_defaultSkinPackage"

    const-string v4, "string"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 324
    .local v2, "resId":I
    const/4 v0, 0x0

    .line 326
    .local v0, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    .line 327
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getSkin(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v3, p0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;->this$0:Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;

    invoke-virtual {v3}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->init()Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    const/4 v2, 0x0

    .line 271
    :goto_0
    return-object v2

    .line 266
    :cond_0
    new-instance v0, Lcom/sonymobile/runtimeskinning/ExceptionHandler;

    invoke-direct {v0}, Lcom/sonymobile/runtimeskinning/ExceptionHandler;-><init>()V

    .line 267
    .local v0, "eh":Lcom/sonymobile/runtimeskinning/ExceptionHandler;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 268
    .local v1, "ipm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->access$400()Ljava/lang/reflect/Method;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v1, v0, v4, v5}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 270
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sonymobile/runtimeskinning/ExceptionHandler;->reThrow()V

    goto :goto_0
.end method

.method public isResourceOverlaid(Landroid/content/Context;Landroid/content/res/Resources;II)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "referenceResId"    # I
    .param p4, "resId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 212
    :try_start_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 213
    .local v2, "tv":Landroid/util/TypedValue;
    const/4 v5, 0x1

    invoke-virtual {p2, p3, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 214
    iget v0, v2, Landroid/util/TypedValue;->assetCookie:I

    .line 215
    .local v0, "cookie":I
    const/4 v5, 0x1

    invoke-virtual {p2, p4, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 216
    iget v5, v2, Landroid/util/TypedValue;->assetCookie:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v5, v0, :cond_0

    .line 218
    .end local v0    # "cookie":I
    .end local v2    # "tv":Landroid/util/TypedValue;
    :goto_0
    return v3

    .restart local v0    # "cookie":I
    .restart local v2    # "tv":Landroid/util/TypedValue;
    :cond_0
    move v3, v4

    .line 216
    goto :goto_0

    .line 217
    .end local v0    # "cookie":I
    .end local v2    # "tv":Landroid/util/TypedValue;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    move v3, v4

    .line 218
    goto :goto_0
.end method

.method public isSkin(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pinf"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 145
    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;->this$0:Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;

    invoke-virtual {v1}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->init()Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->access$000()Ljava/lang/reflect/Field;

    move-result-object v1

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v1, p2, v2}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 151
    .local v0, "isSkin":Z
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-direct {p0, p2}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;->isSystemApp(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public isSkinConfigurationChanged(Landroid/content/Context;I)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->access$200()Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Integer;

    invoke-static {v1, v2, v3}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 229
    .local v0, "flag":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 230
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    .line 232
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTrusted(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pinf"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 177
    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;->this$0:Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;

    invoke-virtual {v2}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->init()Z

    move-result v2

    if-nez v2, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v1

    .line 181
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;->isVerified(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-direct {p0, p2}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;->isSystemApp(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    .line 184
    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public isUserSkinningAvailable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 313
    const/4 v0, 0x1

    return v0
.end method

.method public isVerified(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pinf"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;->this$0:Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;

    invoke-virtual {v0}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->init()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;->isSkin(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->access$100()Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v0, p2, v2}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public myUserId(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public setSkin(Landroid/content/Context;Landroid/content/pm/PackageInfo;I[I)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pinf"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I
    .param p4, "enabledGroups"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 243
    if-nez p4, :cond_0

    .line 244
    iget-object v3, p0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;->this$0:Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;

    invoke-virtual {v3}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->init()Z

    move-result v3

    if-nez v3, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v4

    .line 247
    :cond_1
    new-instance v0, Lcom/sonymobile/runtimeskinning/ExceptionHandler;

    invoke-direct {v0}, Lcom/sonymobile/runtimeskinning/ExceptionHandler;-><init>()V

    .line 248
    .local v0, "eh":Lcom/sonymobile/runtimeskinning/ExceptionHandler;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 249
    .local v1, "ipm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->access$300()Ljava/lang/reflect/Method;

    move-result-object v5

    const-class v6, Ljava/lang/Boolean;

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    const/4 v8, 0x1

    if-nez p2, :cond_2

    const/4 v3, 0x0

    :goto_1
    aput-object v3, v7, v8

    invoke-static {v5, v1, v0, v6, v7}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 251
    .local v2, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Lcom/sonymobile/runtimeskinning/ExceptionHandler;->reThrow()V

    .line 252
    if-nez v2, :cond_3

    move v3, v4

    :goto_2
    move v4, v3

    goto :goto_0

    .line 249
    .end local v2    # "result":Ljava/lang/Boolean;
    :cond_2
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 252
    .restart local v2    # "result":Ljava/lang/Boolean;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_2
.end method

.method public supportsInstallableSkins(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, "sharedLibraries":[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 290
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 291
    .local v3, "lib":Ljava/lang/String;
    const-string v5, "com.sonymobile.runtimeskinning"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 292
    const/4 v5, 0x1

    .line 297
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "lib":Ljava/lang/String;
    :goto_1
    return v5

    .line 290
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "lib":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "lib":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public supportsSelectiveOverlaying()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method
