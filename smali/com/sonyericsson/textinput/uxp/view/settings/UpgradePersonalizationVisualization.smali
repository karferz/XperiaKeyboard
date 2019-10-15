.class public Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;
.super Ljava/lang/Object;
.source "UpgradePersonalizationVisualization.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/textinput/uxp/controller/IForceCreate;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization$Factory;
    }
.end annotation


# static fields
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
.field private mActive:Z

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
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

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mActive:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->getGuideActivity()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->setUpgradeVisualizationWizardShown()V

    return-void
.end method

.method static synthetic access$400()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private createSetupVisualisation()V
    .locals 4

    .prologue
    .line 113
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f070055

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 116
    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;)V

    .line 138
    .local v1, "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    const v2, 0x7f070014

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 139
    const v2, 0x7f070013

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    const v2, 0x7f07008c

    .line 141
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 142
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 143
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mDialog:Landroid/app/Dialog;

    .line 144
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mDialog:Landroid/app/Dialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 145
    return-void
.end method

.method private dismissPreviousDialog()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mDialog:Landroid/app/Dialog;

    .line 110
    :cond_0
    return-void
.end method

.method private getGuideActivity()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isLargeTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/upgrade/UpgradeGuideActivityLarge;

    .line 159
    :goto_0
    return-object v0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isSmallTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported case, there cannot be a Small Tablet device with an old prediction engine"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isPhoneTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported case, there cannot be a Phone Tablet device with an old prediction engine"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/upgrade/UpgradeGuideActivitySmall;

    goto :goto_0
.end method

.method private setUpgradeVisualizationWizardShown()V
    .locals 2

    .prologue
    .line 163
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 164
    .local v0, "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setUpgradeVisualizationShown()V

    .line 165
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 166
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
    .line 50
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
    .line 55
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_1

    .line 56
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mContext:Landroid/content/Context;

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 57
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    if-ne p2, v0, :cond_2

    .line 58
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    goto :goto_0

    .line 59
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    if-ne p2, v0, :cond_0

    .line 60
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mActive:Z

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 91
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->dismissPreviousDialog()V

    .line 92
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
    .line 66
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mActive:Z

    .line 73
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->dismissPreviousDialog()V

    .line 74
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->createSetupVisualisation()V

    .line 75
    return-void
.end method

.method public initOptional()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->showUpgradeDialog()V

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->showUpgradeDialog()V

    .line 98
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    return-void
.end method

.method public showUpgradeDialog()V
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 170
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 171
    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 172
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 173
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 174
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 175
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 176
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 177
    return-void
.end method
