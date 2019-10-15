.class public Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;
.super Ljava/lang/Object;
.source "AccessPersonalizationGuideInfoDialog.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/textinput/uxp/controller/IForceCreate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog$Factory;
    }
.end annotation


# static fields
.field private static final DEFAULT_DIM:F = 0.5f

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

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mWindowToken:Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private createSetupDialog()V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070055

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 88
    const v1, 0x7f070019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    const v1, 0x7f07006f

    .line 90
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 92
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->mDialog:Landroid/app/Dialog;

    .line 94
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->mDialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 95
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->mDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 103
    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->mDialog:Landroid/app/Dialog;

    .line 82
    :cond_0
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
    .line 41
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_1

    .line 42
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->mContext:Landroid/content/Context;

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 43
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    if-ne p2, v0, :cond_0

    .line 44
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->mWindowToken:Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->dismissDialog()V

    .line 75
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
    .line 55
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 118
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->createSetupDialog()V

    .line 69
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->showDialog()V

    .line 70
    return-void
.end method

.method public showDialog()V
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 107
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->mWindowToken:Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;->getToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 108
    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 109
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 110
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 111
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 112
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 113
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 114
    return-void
.end method
