.class Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$SkinGlueRev3a;
.super Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;
.source "Rev3aSkinGlueFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkinGlueRev3a"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;


# direct methods
.method private constructor <init>(Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$SkinGlueRev3a;->this$0:Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;

    invoke-direct {p0, p1}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;-><init>(Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;
    .param p2, "x1"    # Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$1;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$SkinGlueRev3a;-><init>(Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;)V

    return-void
.end method


# virtual methods
.method public isUserSkinningAvailable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v3, p0, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$SkinGlueRev3a;->this$0:Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;

    invoke-virtual {v3}, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;->init()Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    invoke-super {p0}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;->isUserSkinningAvailable()Z

    move-result v2

    .line 84
    :goto_0
    return v2

    .line 79
    :cond_0
    new-instance v0, Lcom/sonymobile/runtimeskinning/ExceptionHandler;

    invoke-direct {v0}, Lcom/sonymobile/runtimeskinning/ExceptionHandler;-><init>()V

    .line 80
    .local v0, "eh":Lcom/sonymobile/runtimeskinning/ExceptionHandler;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 81
    .local v1, "ipm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;->access$100()Ljava/lang/reflect/Method;

    move-result-object v4

    const-class v5, Ljava/lang/Boolean;

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v4, v1, v0, v5, v3}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 83
    .local v2, "result":Z
    invoke-virtual {v0}, Lcom/sonymobile/runtimeskinning/ExceptionHandler;->reThrow()V

    goto :goto_0
.end method
