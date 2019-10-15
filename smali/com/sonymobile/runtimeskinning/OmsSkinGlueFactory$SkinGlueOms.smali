.class Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;
.super Ljava/lang/Object;
.source "OmsSkinGlueFactory.java"

# interfaces
.implements Lcom/sonymobile/runtimeskinning/SkinGlue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkinGlueOms"
.end annotation


# static fields
.field private static final PERMISSION_RUNTIME_SKIN:Ljava/lang/String; = "com.sonymobile.permission.RUNTIME_SKIN"

.field private static final TAG:Ljava/lang/String; = "SkinGlueOMS"


# instance fields
.field private final mConnectionInitialized:Ljava/util/concurrent/CountDownLatch;

.field private final mContext:Landroid/content/Context;

.field private volatile mService:Lcom/sonymobile/runtimeskinning/ISkinManager;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private final mServiceConnectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field final synthetic this$0:Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory;


# direct methods
.method private constructor <init>(Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->this$0:Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->mConnectionInitialized:Ljava/util/concurrent/CountDownLatch;

    .line 150
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->mServiceConnectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 161
    new-instance v0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms$1;-><init>(Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;)V

    iput-object v0, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 207
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->mContext:Landroid/content/Context;

    .line 208
    invoke-direct {p0}, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->bindToService()V

    .line 209
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory;Landroid/content/Context;Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$1;

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;-><init>(Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;)Lcom/sonymobile/runtimeskinning/ISkinManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->mService:Lcom/sonymobile/runtimeskinning/ISkinManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;Lcom/sonymobile/runtimeskinning/ISkinManager;)Lcom/sonymobile/runtimeskinning/ISkinManager;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;
    .param p1, "x1"    # Lcom/sonymobile/runtimeskinning/ISkinManager;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->mService:Lcom/sonymobile/runtimeskinning/ISkinManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->mServiceConnectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->mConnectionInitialized:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->bindToService()V

    return-void
.end method

.method private bindToService()V
    .locals 5

    .prologue
    .line 215
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 216
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sonymobile.runtimeskinning.core"

    const-string v3, "com.sonymobile.runtimeskinning.manager.SkinManagerService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 219
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 220
    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 221
    return-void
.end method

.method private isSystemApp(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p1, "pinf"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 301
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDefaultSkin(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 399
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 400
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v1, :cond_0

    .line 401
    const-string v3, "content://com.sonymobile.runtimeskinning.provider.defaultskin"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "getDefaultSkin"

    invoke-virtual {v1, v3, v4, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 403
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 404
    const-string v2, "defaultSkin"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 407
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-object v2
.end method

.method getService()Lcom/sonymobile/runtimeskinning/ISkinManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 422
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 423
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getService is not allowed to run on the main thread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 428
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->mServiceConnectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 429
    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->mService:Lcom/sonymobile/runtimeskinning/ISkinManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 433
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->mConnectionInitialized:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->mService:Lcom/sonymobile/runtimeskinning/ISkinManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 441
    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->mServiceConnectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "SkinGlueOMS"

    const-string v2, "Unable to retrieve ISkinManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 441
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->mServiceConnectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public getSkin(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-static {}, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    const-string v1, "SkinGlueOMS"

    const-string v2, "getSkin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->getService()Lcom/sonymobile/runtimeskinning/ISkinManager;

    move-result-object v0

    .line 351
    .local v0, "service":Lcom/sonymobile/runtimeskinning/ISkinManager;
    if-nez v0, :cond_1

    .line 352
    const/4 v1, 0x0

    .line 354
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Lcom/sonymobile/runtimeskinning/ISkinManager;->getSkin()Ljava/lang/String;

    move-result-object v1

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

    .line 312
    :try_start_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 313
    .local v2, "tv":Landroid/util/TypedValue;
    const/4 v5, 0x1

    invoke-virtual {p2, p3, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 314
    iget v0, v2, Landroid/util/TypedValue;->assetCookie:I

    .line 315
    .local v0, "cookie":I
    const/4 v5, 0x1

    invoke-virtual {p2, p4, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 316
    iget v5, v2, Landroid/util/TypedValue;->assetCookie:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v5, v0, :cond_0

    .line 318
    .end local v0    # "cookie":I
    .end local v2    # "tv":Landroid/util/TypedValue;
    :goto_0
    return v3

    .restart local v0    # "cookie":I
    .restart local v2    # "tv":Landroid/util/TypedValue;
    :cond_0
    move v3, v4

    .line 316
    goto :goto_0

    .line 317
    .end local v0    # "cookie":I
    .end local v2    # "tv":Landroid/util/TypedValue;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    move v3, v4

    .line 318
    goto :goto_0
.end method

.method public isSkin(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pinf"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 230
    if-nez p2, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v5

    .line 234
    :cond_1
    iget-object v6, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v6, :cond_2

    .line 236
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x1000

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 242
    :cond_2
    iget-object v6, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 246
    const/4 v5, 0x0

    .line 249
    .local v5, "skin":Z
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 250
    .local v4, "permission":Ljava/lang/String;
    const-string v6, "com.sonymobile.permission.RUNTIME_SKIN"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 251
    const/4 v5, 0x1

    .line 256
    .end local v4    # "permission":Ljava/lang/String;
    :cond_3
    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 257
    invoke-direct {p0, p2}, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->isSystemApp(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    goto :goto_0

    .line 238
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "skin":Z
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 249
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "permission":Ljava/lang/String;
    .restart local v5    # "skin":Z
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public isSkinConfigurationChanged(Landroid/content/Context;I)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 328
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 281
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->isVerified(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 283
    invoke-direct {p0, p2}, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->isSystemApp(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v0

    .line 287
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 290
    goto :goto_0
.end method

.method public isUserSkinningAvailable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 390
    const/4 v0, 0x1

    return v0
.end method

.method public isVerified(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pinf"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public myUserId(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 363
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public setSkin(Landroid/content/Context;Landroid/content/pm/PackageInfo;I[I)Z
    .locals 2
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
    .line 338
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsInstallableSkins(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSelectiveOverlaying()Z
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x1

    return v0
.end method
