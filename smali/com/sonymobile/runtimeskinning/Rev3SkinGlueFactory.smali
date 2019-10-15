.class Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;
.super Ljava/lang/Object;
.source "Rev3SkinGlueFactory.java"

# interfaces
.implements Lcom/sonymobile/runtimeskinning/SkinGlueFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;
    }
.end annotation


# static fields
.field private static sFieldConfigSkinPackage:Ljava/lang/reflect/Field;

.field private static sFieldIsSkin:Ljava/lang/reflect/Field;

.field private static sFieldIsVerifiedSkin:Ljava/lang/reflect/Field;

.field private static sInstance:Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;

.field private static sMethodGetRuntimeSkin:Ljava/lang/reflect/Method;

.field private static sMethodSetRuntimeSkin:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    return-void
.end method

.method static synthetic access$000()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sFieldIsSkin:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sFieldIsVerifiedSkin:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sFieldConfigSkinPackage:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sMethodSetRuntimeSkin:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sMethodGetRuntimeSkin:Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    return-void
.end method

.method protected declared-synchronized init()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sFieldIsSkin:Ljava/lang/reflect/Field;

    if-nez v2, :cond_0

    .line 104
    const-class v2, Landroid/content/pm/PackageInfo;

    const-string v3, "isSkin"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sFieldIsSkin:Ljava/lang/reflect/Field;

    .line 106
    :cond_0
    sget-object v2, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sFieldIsVerifiedSkin:Ljava/lang/reflect/Field;

    if-nez v2, :cond_1

    .line 107
    const-class v2, Landroid/content/pm/PackageInfo;

    const-string v3, "isVerifiedSkin"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sFieldIsVerifiedSkin:Ljava/lang/reflect/Field;

    .line 110
    :cond_1
    sget-object v2, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sFieldConfigSkinPackage:Ljava/lang/reflect/Field;

    if-nez v2, :cond_2

    .line 111
    const-class v2, Landroid/content/pm/ActivityInfo;

    const-string v3, "CONFIG_SKIN_PACKAGE"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sFieldConfigSkinPackage:Ljava/lang/reflect/Field;

    .line 114
    :cond_2
    sget-object v2, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sMethodGetRuntimeSkin:Ljava/lang/reflect/Method;

    if-nez v2, :cond_3

    .line 115
    const-class v2, Landroid/content/pm/IPackageManager;

    const-string v3, "getRuntimeSkin"

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sMethodGetRuntimeSkin:Ljava/lang/reflect/Method;

    .line 118
    :cond_3
    sget-object v2, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sMethodSetRuntimeSkin:Ljava/lang/reflect/Method;

    if-nez v2, :cond_4

    .line 119
    const-class v2, Landroid/content/pm/IPackageManager;

    const-string v3, "setRuntimeSkin"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sMethodSetRuntimeSkin:Ljava/lang/reflect/Method;

    .line 123
    :cond_4
    sget-object v2, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sFieldIsSkin:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sFieldIsVerifiedSkin:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sFieldConfigSkinPackage:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sMethodGetRuntimeSkin:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sMethodSetRuntimeSkin:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    :goto_0
    monitor-exit p0

    return v0

    :cond_5
    move v0, v1

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isApplicable(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->init()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public produceInstance()Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sInstance:Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;

    invoke-direct {v0, p0}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;-><init>(Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;)V

    sput-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sInstance:Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;

    .line 80
    :cond_0
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sInstance:Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;

    return-object v0
.end method

.method public bridge synthetic produceInstance()Lcom/sonymobile/runtimeskinning/SkinGlue;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->produceInstance()Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;

    move-result-object v0

    return-object v0
.end method
