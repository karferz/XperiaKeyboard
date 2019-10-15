.class Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory;
.super Ljava/lang/Object;
.source "OmsSkinGlueFactory.java"

# interfaces
.implements Lcom/sonymobile/runtimeskinning/SkinGlueFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$1;,
        Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;
    }
.end annotation


# static fields
.field private static final CLASS_NAME_SKIN_MANAGER_SERVICE:Ljava/lang/String; = "com.sonymobile.runtimeskinning.manager.SkinManagerService"

.field private static DEBUG:Z = false

.field private static final DEFAULT_SKIN_METHOD:Ljava/lang/String; = "getDefaultSkin"

.field private static final DEFAULT_SKIN_TAG:Ljava/lang/String; = "defaultSkin"

.field private static final DEFAULT_SKIN_URI:Ljava/lang/String; = "content://com.sonymobile.runtimeskinning.provider.defaultskin"

.field private static final OVERLAY_SERVICE:Ljava/lang/String; = "overlay"

.field private static sInstance:Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory;->DEBUG:Z

    return v0
.end method


# virtual methods
.method getService()Lcom/sonymobile/runtimeskinning/ISkinManager;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory;->sInstance:Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;

    invoke-virtual {v0}, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->getService()Lcom/sonymobile/runtimeskinning/ISkinManager;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    sget-object v0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory;->sInstance:Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;-><init>(Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory;Landroid/content/Context;Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$1;)V

    sput-object v0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory;->sInstance:Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;

    .line 109
    :cond_0
    return-void
.end method

.method public isApplicable(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 94
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 95
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sonymobile.runtimeskinning.core"

    const-string v4, "com.sonymobile.runtimeskinning.manager.SkinManagerService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public produceInstance()Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory;->sInstance:Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;

    return-object v0
.end method

.method public bridge synthetic produceInstance()Lcom/sonymobile/runtimeskinning/SkinGlue;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory;->produceInstance()Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;

    move-result-object v0

    return-object v0
.end method
