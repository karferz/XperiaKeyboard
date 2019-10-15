.class Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;
.super Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;
.source "Rev3aSkinGlueFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$1;,
        Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$SkinGlueRev3a;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$SkinGlueRev3a;

.field private static sMethodIsUserSkinningAvailable:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;-><init>()V

    .line 69
    return-void
.end method

.method static synthetic access$100()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;->sMethodIsUserSkinningAvailable:Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    return-void
.end method

.method protected declared-synchronized init()Z
    .locals 4

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;->sMethodIsUserSkinningAvailable:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 58
    const-class v1, Landroid/content/pm/IPackageManager;

    const-string v2, "isUserSkinningAvailable"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-static {v1, v2, v3, v0}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;->sMethodIsUserSkinningAvailable:Ljava/lang/reflect/Method;

    .line 62
    :cond_0
    invoke-super {p0}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->init()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;->sMethodIsUserSkinningAvailable:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic produceInstance()Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;->produceInstance()Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$SkinGlueRev3a;

    move-result-object v0

    return-object v0
.end method

.method public produceInstance()Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$SkinGlueRev3a;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;->sInstance:Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$SkinGlueRev3a;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$SkinGlueRev3a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$SkinGlueRev3a;-><init>(Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$1;)V

    sput-object v0, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;->sInstance:Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$SkinGlueRev3a;

    .line 43
    :cond_0
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;->sInstance:Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$SkinGlueRev3a;

    return-object v0
.end method

.method public bridge synthetic produceInstance()Lcom/sonymobile/runtimeskinning/SkinGlue;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;->produceInstance()Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$SkinGlueRev3a;

    move-result-object v0

    return-object v0
.end method
