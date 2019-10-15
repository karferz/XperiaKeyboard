.class Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$SkinGlueRev4;
.super Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;
.source "Rev4SkinGlueFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkinGlueRev4"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;


# direct methods
.method private constructor <init>(Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$SkinGlueRev4;->this$0:Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;

    invoke-direct {p0, p1}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;-><init>(Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;
    .param p2, "x1"    # Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$1;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$SkinGlueRev4;-><init>(Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;)V

    return-void
.end method


# virtual methods
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

    .line 95
    iget-object v3, p0, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$SkinGlueRev4;->this$0:Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;

    invoke-virtual {v3}, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;->init()Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    :goto_0
    return v4

    .line 98
    :cond_0
    new-instance v0, Lcom/sonymobile/runtimeskinning/ExceptionHandler;

    invoke-direct {v0}, Lcom/sonymobile/runtimeskinning/ExceptionHandler;-><init>()V

    .line 99
    .local v0, "eh":Lcom/sonymobile/runtimeskinning/ExceptionHandler;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 100
    .local v1, "ipm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;->access$100()Ljava/lang/reflect/Method;

    move-result-object v5

    const-class v6, Ljava/lang/Boolean;

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    const/4 v8, 0x1

    if-nez p2, :cond_1

    const/4 v3, 0x0

    :goto_1
    aput-object v3, v7, v8

    const/4 v3, 0x2

    aput-object p4, v7, v3

    invoke-static {v5, v1, v0, v6, v7}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 102
    .local v2, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Lcom/sonymobile/runtimeskinning/ExceptionHandler;->reThrow()V

    .line 103
    if-nez v2, :cond_2

    move v3, v4

    :goto_2
    move v4, v3

    goto :goto_0

    .line 100
    .end local v2    # "result":Ljava/lang/Boolean;
    :cond_1
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 103
    .restart local v2    # "result":Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_2
.end method

.method public supportsSelectiveOverlaying()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method
