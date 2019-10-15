.class public Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;
.super Ljava/lang/Object;
.source "CloudNudge.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/textinput/uxp/controller/IForceCreate;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge$Factory;
    }
.end annotation


# static fields
.field private static final DEFAULT_DIM_AMOUNT:F = 0.5f

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->authenticateBackupAndSyncAccount()V

    return-void
.end method

.method static synthetic access$100()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private authenticateBackupAndSyncAccount()V
    .locals 3

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 117
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method private createSetupDialog()V
    .locals 3

    .prologue
    .line 94
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->mDialog:Landroid/app/Dialog;

    if-nez v1, :cond_0

    .line 95
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070058

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 98
    const v1, 0x7f070066

    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 106
    const v1, 0x7f070059

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 107
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 108
    const v1, 0x7f070013

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 109
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->mDialog:Landroid/app/Dialog;

    .line 110
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->mDialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 112
    .end local v0    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->mDialog:Landroid/app/Dialog;

    .line 91
    :cond_0
    return-void
.end method

.method private setCloudNudgeShown()V
    .locals 2

    .prologue
    .line 133
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 134
    .local v0, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setCloudNudgeShown()V

    .line 135
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 136
    return-void
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
    .line 53
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
    .line 42
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_1

    .line 43
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->mContext:Landroid/content/Context;

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 44
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    if-ne p2, v0, :cond_2

    .line 45
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    goto :goto_0

    .line 46
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    if-ne p2, v0, :cond_0

    .line 47
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 83
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->dismissDialog()V

    .line 84
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
    .line 58
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public initOptional()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->showNudge()V

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 141
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->showNudge()V

    .line 142
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    return-void
.end method

.method public showDialog()V
    .locals 3

    .prologue
    .line 122
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 123
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 124
    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 125
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 126
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 127
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 128
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 129
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 130
    return-void
.end method

.method public showNudge()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->createSetupDialog()V

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->showDialog()V

    .line 77
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge;->setCloudNudgeShown()V

    .line 78
    return-void
.end method
