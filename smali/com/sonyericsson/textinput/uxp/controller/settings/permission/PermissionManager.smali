.class public Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager$PermissionManagerListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final EMPTY_PERMISSIONS:[Ljava/lang/String;

.field private static final PERMISSIONS_REQUEST:[I

.field private static final REQUEST_DIALOG_RATIONALE:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mEssentialPermissions:[Ljava/lang/String;

.field private final mOptionalPermissions:[Ljava/lang/String;

.field private mPermissionManagerId:I

.field private final mPermissionManagerListener:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager$PermissionManagerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->EMPTY_PERMISSIONS:[Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->TAG:Ljava/lang/String;

    .line 37
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->PERMISSIONS_REQUEST:[I

    .line 38
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->REQUEST_DIALOG_RATIONALE:[I

    return-void

    .line 37
    :array_0
    .array-data 4
        0x2739
        0x2f0a
    .end array-data

    .line 38
    :array_1
    .array-data 4
        0x2b23
        0x32f4
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager$PermissionManagerListener;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "essentialPermissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "optionalPermissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "permissionManagerListener"    # Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager$PermissionManagerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->mActivity:Landroid/app/Activity;

    .line 51
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->mEssentialPermissions:[Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->mOptionalPermissions:[Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->mPermissionManagerListener:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager$PermissionManagerListener;

    .line 54
    return-void
.end method

.method private getAllPermissions()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->mEssentialPermissions:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->mOptionalPermissions:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonyericsson/ned/util/ArrayUtil;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private requestPermissions([Ljava/lang/String;)V
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->PERMISSIONS_REQUEST:[I

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->mPermissionManagerId:I

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 177
    return-void
.end method


# virtual methods
.method public checkPermissions()V
    .locals 8

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->getAllPermissions()[Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "allPermissions":[Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->mActivity:Landroid/app/Activity;

    .line 73
    invoke-static {v5, v0}, Lcom/sonyericsson/textinput/uxp/util/PermissionUtil;->checkPermissions(Landroid/app/Activity;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 75
    .local v1, "deniedPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->mPermissionManagerListener:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager$PermissionManagerListener;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager$PermissionManagerListener;->onPermissionResult(Z)V

    .line 106
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v4, "permissionRationale":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 84
    .local v3, "permission":Landroid/util/Pair;
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 85
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88
    .end local v3    # "permission":Landroid/util/Pair;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 92
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->mActivity:Landroid/app/Activity;

    sget-object v7, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->Rationale:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    .line 94
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 93
    invoke-static {v6, v7, v5}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogActivity;->newIntent(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 96
    .local v2, "dialogIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->mActivity:Landroid/app/Activity;

    sget-object v6, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->REQUEST_DIALOG_RATIONALE:[I

    iget v7, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->mPermissionManagerId:I

    aget v6, v6, v7

    invoke-virtual {v5, v2, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 103
    .end local v2    # "dialogIntent":Landroid/content/Intent;
    :cond_3
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->requestPermissions([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 199
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->REQUEST_DIALOG_RATIONALE:[I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->mPermissionManagerId:I

    aget v0, v0, v1

    if-ne p1, v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->getAllPermissions()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->requestPermissions([Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 123
    sget-object v5, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->PERMISSIONS_REQUEST:[I

    iget v8, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->mPermissionManagerId:I

    aget v5, v5, v8

    if-ne p1, v5, :cond_4

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "deniedEssentialPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p2

    if-ge v2, v5, :cond_2

    .line 126
    aget v5, p3, v2

    if-eqz v5, :cond_1

    .line 128
    aget-object v3, p2, v2

    .line 129
    .local v3, "permission":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->mEssentialPermissions:[Ljava/lang/String;

    array-length v9, v8

    move v5, v7

    :goto_1
    if-ge v5, v9, :cond_1

    aget-object v4, v8, v5

    .line 130
    .local v4, "requiredPermission":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 131
    aget-object v10, p2, v2

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 125
    .end local v3    # "permission":Ljava/lang/String;
    .end local v4    # "requiredPermission":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 143
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->mPermissionManagerListener:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager$PermissionManagerListener;

    invoke-interface {v5, v6}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager$PermissionManagerListener;->onPermissionResult(Z)V

    :goto_2
    move v5, v6

    .line 158
    .end local v0    # "deniedEssentialPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i":I
    :goto_3
    return v5

    .line 150
    .restart local v0    # "deniedEssentialPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "i":I
    :cond_3
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->mActivity:Landroid/app/Activity;

    sget-object v9, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->Information:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    .line 152
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 150
    invoke-static {v8, v9, v5}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogActivity;->newIntent(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 153
    .local v1, "dialogIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 154
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->mPermissionManagerListener:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager$PermissionManagerListener;

    invoke-interface {v5, v7}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager$PermissionManagerListener;->onPermissionResult(Z)V

    goto :goto_2

    .end local v0    # "deniedEssentialPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "dialogIntent":Landroid/content/Intent;
    .end local v2    # "i":I
    :cond_4
    move v5, v7

    .line 158
    goto :goto_3
.end method

.method public setPermissionManagerId(I)V
    .locals 0
    .param p1, "permissionManagerId"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x1L
        .end annotation
    .end param

    .prologue
    .line 63
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->mPermissionManagerId:I

    .line 64
    return-void
.end method
