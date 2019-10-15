.class public Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;
.super Ljava/lang/Object;
.source "RuntimeSkinningHelper.java"


# static fields
.field private static final FACTORIES:[Lcom/sonymobile/runtimeskinning/SkinGlueFactory;


# instance fields
.field private mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonymobile/runtimeskinning/SkinGlueFactory;

    const/4 v1, 0x0

    new-instance v2, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory;

    invoke-direct {v2}, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;

    invoke-direct {v2}, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;

    invoke-direct {v2}, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;

    invoke-direct {v2}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->FACTORIES:[Lcom/sonymobile/runtimeskinning/SkinGlueFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method constructor <init>(Lcom/sonymobile/runtimeskinning/SkinGlue;)V
    .locals 0
    .param p1, "glue"    # Lcom/sonymobile/runtimeskinning/SkinGlue;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;

    .line 47
    return-void
.end method


# virtual methods
.method public getCurrentSkin(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 111
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->getSkinGlue(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinGlue;

    move-result-object v0

    .line 112
    .local v0, "glue":Lcom/sonymobile/runtimeskinning/SkinGlue;
    invoke-interface {v0, p1}, Lcom/sonymobile/runtimeskinning/SkinGlue;->myUserId(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v0, p1, v4}, Lcom/sonymobile/runtimeskinning/SkinGlue;->getSkin(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 114
    .local v3, "skinPackage":Landroid/content/pm/PackageInfo;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 117
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 122
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return-object v3

    .line 118
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public getDefaultSkin(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->getSkinGlue(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinGlue;

    move-result-object v0

    .line 212
    .local v0, "glue":Lcom/sonymobile/runtimeskinning/SkinGlue;
    invoke-interface {v0, p1}, Lcom/sonymobile/runtimeskinning/SkinGlue;->getDefaultSkin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method final declared-synchronized getSkinGlue(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinGlue;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->init(Landroid/content/Context;)V

    .line 199
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 61
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;

    if-nez v4, :cond_1

    .line 62
    sget-object v0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->FACTORIES:[Lcom/sonymobile/runtimeskinning/SkinGlueFactory;

    .local v0, "arr$":[Lcom/sonymobile/runtimeskinning/SkinGlueFactory;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 63
    .local v1, "factory":Lcom/sonymobile/runtimeskinning/SkinGlueFactory;
    invoke-interface {v1, p1}, Lcom/sonymobile/runtimeskinning/SkinGlueFactory;->isApplicable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    invoke-interface {v1, p1}, Lcom/sonymobile/runtimeskinning/SkinGlueFactory;->init(Landroid/content/Context;)V

    .line 65
    invoke-interface {v1}, Lcom/sonymobile/runtimeskinning/SkinGlueFactory;->produceInstance()Lcom/sonymobile/runtimeskinning/SkinGlue;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;

    .line 71
    .end local v0    # "arr$":[Lcom/sonymobile/runtimeskinning/SkinGlueFactory;
    .end local v1    # "factory":Lcom/sonymobile/runtimeskinning/SkinGlueFactory;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    :goto_1
    return-void

    .line 62
    .restart local v0    # "arr$":[Lcom/sonymobile/runtimeskinning/SkinGlueFactory;
    .restart local v1    # "factory":Lcom/sonymobile/runtimeskinning/SkinGlueFactory;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "factory":Lcom/sonymobile/runtimeskinning/SkinGlueFactory;
    :cond_3
    sget-object v4, Lcom/sonymobile/runtimeskinning/SkinGlue;->DISABLED:Lcom/sonymobile/runtimeskinning/SkinGlue;

    iput-object v4, p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;

    goto :goto_1
.end method

.method public isSkin(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "skinPackage"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 87
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 88
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 90
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->getSkinGlue(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinGlue;

    move-result-object v0

    .line 91
    .local v0, "glue":Lcom/sonymobile/runtimeskinning/SkinGlue;
    invoke-interface {v0, p1}, Lcom/sonymobile/runtimeskinning/SkinGlue;->myUserId(Landroid/content/Context;)I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/sonymobile/runtimeskinning/SkinGlue;->isSkin(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z

    move-result v1

    return v1
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
    .line 140
    if-nez p1, :cond_0

    .line 141
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 143
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->getSkinGlue(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinGlue;

    move-result-object v0

    .line 144
    .local v0, "glue":Lcom/sonymobile/runtimeskinning/SkinGlue;
    invoke-interface {v0, p1, p2}, Lcom/sonymobile/runtimeskinning/SkinGlue;->isSkinConfigurationChanged(Landroid/content/Context;I)Z

    move-result v1

    return v1
.end method

.method public isUserSkinningAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 157
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->getSkinGlue(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinGlue;

    move-result-object v0

    .line 158
    .local v0, "glue":Lcom/sonymobile/runtimeskinning/SkinGlue;
    invoke-interface {v0}, Lcom/sonymobile/runtimeskinning/SkinGlue;->isUserSkinningAvailable()Z

    move-result v1

    return v1
.end method

.method public supportsInstallableSkins(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 187
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->getSkinGlue(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinGlue;

    move-result-object v0

    .line 188
    .local v0, "glue":Lcom/sonymobile/runtimeskinning/SkinGlue;
    invoke-interface {v0, p1}, Lcom/sonymobile/runtimeskinning/SkinGlue;->supportsInstallableSkins(Landroid/content/Context;)Z

    move-result v1

    return v1
.end method

.method public supportsSelectiveOverlaying(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 170
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 172
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->getSkinGlue(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinGlue;

    move-result-object v0

    .line 173
    .local v0, "glue":Lcom/sonymobile/runtimeskinning/SkinGlue;
    invoke-interface {v0}, Lcom/sonymobile/runtimeskinning/SkinGlue;->supportsSelectiveOverlaying()Z

    move-result v1

    return v1
.end method
