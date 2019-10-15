.class public Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogActivity;
.super Landroid/app/Activity;
.source "PermissionDialogActivity.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DIALOG_TAG:Ljava/lang/String; = "PermissionDialog"

.field private static final KEY_DIALOG_TYPE:Ljava/lang/String; = "dialog_type"

.field private static final KEY_PERMISSION_TYPE:Ljava/lang/String; = "permission_type"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static newIntent(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "dialogType"    # Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "dialog_type"

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->getDialogType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    const-string v1, "permission_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 41
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 43
    const-string v4, "dialog_type"

    sget-object v5, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->Unknown:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    .line 44
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->getDialogType()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 43
    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->get(I)Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    move-result-object v0

    .line 47
    .local v0, "dialogType":Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;
    const-string v4, "permission_type"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "permissions":[Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->newInstance(Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;[Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;

    move-result-object v1

    .line 52
    .local v1, "fragment":Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "PermissionDialog"

    invoke-virtual {v1, v4, v5}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 61
    .end local v0    # "dialogType":Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;
    .end local v1    # "fragment":Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;
    .end local v3    # "permissions":[Ljava/lang/String;
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogActivity;->finish()V

    goto :goto_0
.end method
