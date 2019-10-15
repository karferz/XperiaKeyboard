.class public Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;
.super Landroid/app/DialogFragment;
.source "PermissionDialogFragment.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DUID:Ljava/lang/String; = "DUID"

.field private static final PACKAGE:Ljava/lang/String; = "package:"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBottomMessage:Ljava/lang/String;

.field private mDialogType:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

.field private mMessage:Ljava/lang/String;

.field private mNegativeText:Ljava/lang/String;

.field private mNumberOfPermissions:I

.field private mPermissionContent:Ljava/lang/String;

.field private mPermissions:[Ljava/lang/String;

.field private mPositiveText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->handlePositiveClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->handleNegativeClick()V

    return-void
.end method

.method private addDialogContent(Ljava/lang/String;I)V
    .locals 2
    .param p1, "permissionLabel"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "permissionExplanation"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 140
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mNumberOfPermissions:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mPermissionContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mPermissionContent:Ljava/lang/String;

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mPermissionContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    invoke-virtual {p0, p2}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mPermissionContent:Ljava/lang/String;

    .line 147
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mNumberOfPermissions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mNumberOfPermissions:I

    .line 148
    return-void
.end method

.method private createCustomDialogContent(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 201
    const v4, 0x7f03000c

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 204
    .local v0, "content":Landroid/view/View;
    const v4, 0x7f0f0076

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 206
    .local v2, "messageView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mMessage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const v4, 0x7f0f0077

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 210
    .local v3, "permissionContent":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mPermissionContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const v4, 0x7f0f0078

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 214
    .local v1, "messageBottomView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mBottomMessage:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 215
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mBottomMessage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    :goto_0
    return-object v0

    .line 218
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private handleDialogType()V
    .locals 6

    .prologue
    const v5, 0x7f070055

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mDialogType:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->Rationale:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    const v0, 0x7f070023

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mTitle:Ljava/lang/String;

    .line 154
    const v0, 0x7f070022

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mMessage:Ljava/lang/String;

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mDialogType:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->Information:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mTitle:Ljava/lang/String;

    .line 160
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mMessage:Ljava/lang/String;

    .line 161
    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mBottomMessage:Ljava/lang/String;

    .line 162
    const v0, 0x7f07001e

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mPositiveText:Ljava/lang/String;

    .line 163
    const v0, 0x7f070013

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mNegativeText:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleNegativeClick()V
    .locals 0

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->dismiss()V

    .line 229
    return-void
.end method

.method private handlePermissionTypes()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 102
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mPermissions:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v1, v6, v5

    .line 103
    .local v1, "permission":Ljava/lang/String;
    const-string v0, ""

    .line 104
    .local v0, "label":Ljava/lang/String;
    const/4 v2, 0x0

    .line 105
    .local v2, "resourceId":I
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 131
    :goto_2
    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->addDialogContent(Ljava/lang/String;I)V

    .line 102
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 105
    :sswitch_0
    const-string v8, "android.permission.READ_SMS"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v3, v4

    goto :goto_1

    :sswitch_1
    const-string v8, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v8, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    .line 107
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 108
    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v8, "android.permission-group.SMS"

    .line 107
    invoke-static {v3, v8}, Lcom/sonyericsson/textinput/uxp/util/PermissionUtil;->getPermissionGroupDisplayLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    const v2, 0x7f070026

    .line 110
    goto :goto_2

    .line 113
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 114
    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v8, "android.permission-group.PHONE"

    .line 113
    invoke-static {v3, v8}, Lcom/sonyericsson/textinput/uxp/util/PermissionUtil;->getPermissionGroupDisplayLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    const v2, 0x7f070025

    .line 116
    goto :goto_2

    .line 119
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v8, "android.permission-group.PHONE"

    .line 119
    invoke-static {v3, v8}, Lcom/sonyericsson/textinput/uxp/util/PermissionUtil;->getPermissionGroupDisplayLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    const v2, 0x7f070024

    .line 122
    goto :goto_2

    .line 135
    .end local v0    # "label":Ljava/lang/String;
    .end local v1    # "permission":Ljava/lang/String;
    .end local v2    # "resourceId":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mPermissionContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mPermissionContent:Ljava/lang/String;

    .line 136
    return-void

    .line 105
    :sswitch_data_0
    .sparse-switch
        -0x7aed85b0 -> :sswitch_0
        -0x550ba9 -> :sswitch_1
        0x4bcdda0f -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handlePositiveClick()V
    .locals 3

    .prologue
    .line 235
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mDialogType:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->Information:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    if-ne v1, v2, :cond_0

    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 241
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->dismiss()V

    .line 242
    return-void
.end method

.method private init(Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;[Ljava/lang/String;)V
    .locals 0
    .param p1, "dialogType"    # Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mDialogType:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    .line 76
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mPermissions:[Ljava/lang/String;

    .line 77
    return-void
.end method

.method public static newInstance(Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;[Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;
    .locals 2
    .param p0, "dialogType"    # Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;-><init>()V

    .line 62
    .local v0, "dialogFragment":Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;
    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->init(Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;[Ljava/lang/String;)V

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->setRetainInstance(Z)V

    .line 64
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mDialogType:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mPermissions:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " The dialog type or the permission types where null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " which means that the fragment can\'t work properly. Did you use the"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newInstance()-method?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mNumberOfPermissions:I

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mMessage:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mPermissionContent:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mTitle:Ljava/lang/String;

    .line 92
    const v0, 0x7f070019

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mPositiveText:Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->handlePermissionTypes()V

    .line 98
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->handleDialogType()V

    .line 99
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 173
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 174
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 175
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 176
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->createCustomDialogContent(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mPositiveText:Ljava/lang/String;

    new-instance v3, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment$1;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;)V

    .line 177
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mNegativeText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->mNegativeText:Ljava/lang/String;

    new-instance v2, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment$2;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 251
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 252
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 256
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 258
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 259
    return-void
.end method
