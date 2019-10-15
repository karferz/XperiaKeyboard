.class Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;
.super Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;
.source "Rev4SkinGlueFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$1;,
        Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$SkinGlueRev4;
    }
.end annotation


# static fields
.field private static final VERSION_CODE_M:I = 0x17

.field private static sInstance:Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$SkinGlueRev4;

.field private static sMethodSetRuntimeSkin2:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;-><init>()V

    .line 87
    return-void
.end method

.method static synthetic access$100()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;->sMethodSetRuntimeSkin2:Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    return-void
.end method

.method protected declared-synchronized init()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;->sMethodSetRuntimeSkin2:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 76
    const-class v2, Landroid/content/pm/IPackageManager;

    const-string v3, "setRuntimeSkin2"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, [I

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;->sMethodSetRuntimeSkin2:Ljava/lang/reflect/Method;

    .line 80
    :cond_0
    invoke-super {p0}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->init()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;->sMethodSetRuntimeSkin2:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isApplicable(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;->init()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic produceInstance()Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;->produceInstance()Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$SkinGlueRev4;

    move-result-object v0

    return-object v0
.end method

.method public produceInstance()Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$SkinGlueRev4;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;->sInstance:Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$SkinGlueRev4;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$SkinGlueRev4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$SkinGlueRev4;-><init>(Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$1;)V

    sput-object v0, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;->sInstance:Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$SkinGlueRev4;

    .line 53
    :cond_0
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;->sInstance:Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$SkinGlueRev4;

    return-object v0
.end method

.method public bridge synthetic produceInstance()Lcom/sonymobile/runtimeskinning/SkinGlue;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;->produceInstance()Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$SkinGlueRev4;

    move-result-object v0

    return-object v0
.end method
