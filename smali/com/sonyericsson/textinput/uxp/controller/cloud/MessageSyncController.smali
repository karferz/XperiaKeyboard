.class public Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;
.super Ljava/lang/Object;
.source "MessageSyncController.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/textinput/uxp/controller/IForceCreate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController$Factory;
    }
.end annotation


# static fields
.field private static final CLEAR:Ljava/lang/String; = "clear"

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final SYNC:Ljava/lang/String; = "sync"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabase:Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private final mSyncType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "syncType"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->mSyncType:Ljava/lang/String;

    .line 45
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public bindMany(ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    if-ne p2, v0, :cond_1

    .line 50
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;

    if-ne p2, v0, :cond_2

    .line 52
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->mDatabase:Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;

    goto :goto_0

    .line 53
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_0

    .line 54
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public getNeeds()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 65
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public init()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    .line 70
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCloudLoginIdToken()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    move-result-object v2

    .line 71
    .local v2, "token":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;
    if-eqz v2, :cond_1

    .line 72
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;->getCloudLoginType()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->isTypeDepricated(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 73
    .local v0, "communicationDepricated":Z
    :goto_0
    if-nez v0, :cond_0

    .line 74
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->mSyncType:Ljava/lang/String;

    const-string v5, "clear"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 75
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v1

    .line 76
    .local v1, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v1, v6, v7}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setLastSyncTime(J)V

    .line 77
    invoke-interface {v1, v6, v7}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setLastBackupTimeDynamicModel(J)V

    .line 78
    invoke-interface {v1, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setOldBackupAndSyncDataExists(Z)V

    .line 79
    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 80
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->mDatabase:Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;

    if-eqz v3, :cond_0

    .line 81
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->mDatabase:Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->mContext:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;->clearDatabase(Landroid/content/Context;)V

    .line 93
    .end local v1    # "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    :cond_0
    :goto_1
    return-void

    .end local v0    # "communicationDepricated":Z
    :cond_1
    move v0, v3

    .line 72
    goto :goto_0

    .line 83
    .restart local v0    # "communicationDepricated":Z
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->mSyncType:Ljava/lang/String;

    const-string v4, "sync"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    if-eqz v2, :cond_0

    .line 85
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getLastSyncTime()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 86
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->runSyncInit(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;)V

    goto :goto_1

    .line 88
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->mDatabase:Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;

    invoke-static {v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->runSync(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;)V

    goto :goto_1
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method
