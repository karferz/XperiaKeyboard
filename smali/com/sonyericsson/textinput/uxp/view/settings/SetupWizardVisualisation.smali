.class public Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;
.super Ljava/lang/Object;
.source "SetupWizardVisualisation.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/textinput/uxp/controller/IForceCreate;
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$Factory;
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

.field private static final WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;


# instance fields
.field private mAccessPersonalizationGuideInfoDialog:Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;

.field private mActive:Z

.field private mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private final mForceSetupWizardDecision:Z

.field private mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v3

    const-class v1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/sonyericsson/ned/controller/IBurstHandler;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->REQUIRED:[Ljava/lang/Class;

    .line 50
    new-array v0, v4, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "start-personalization-guide"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "showSpecialDialog"    # Z

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mForceSetupWizardDecision:Z

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;)Lcom/sonyericsson/ned/controller/IBurstHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mActive:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->setSetupWizardShown()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->getGuideActivity()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mForceSetupWizardDecision:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;)Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mAccessPersonalizationGuideInfoDialog:Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;

    return-object v0
.end method

.method static synthetic access$700()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private createSetupVisualisation()V
    .locals 5

    .prologue
    .line 138
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    .line 139
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 141
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030013

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 143
    .local v2, "view":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f070088

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 145
    const v3, 0x7f070014

    new-instance v4, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$2;

    invoke-direct {v4, p0}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$2;-><init>(Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    const v3, 0x7f070013

    new-instance v4, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$3;

    invoke-direct {v4, p0}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$3;-><init>(Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 170
    new-instance v3, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$4;

    invoke-direct {v3, p0}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$4;-><init>(Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 181
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 182
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mDialog:Landroid/app/Dialog;

    .line 184
    return-void
.end method

.method private dismissPreviousDialog()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mDialog:Landroid/app/Dialog;

    .line 93
    :cond_0
    return-void
.end method

.method private getGuideActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isLargeTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideActivityLarge;

    .line 194
    :goto_0
    return-object v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isSmallTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/semilarge/GuideActivitySemiLarge;

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isPhoneTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideActivityMedium;

    goto :goto_0

    .line 194
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideActivitySmall;

    goto :goto_0
.end method

.method private setSetupWizardShown()V
    .locals 2

    .prologue
    .line 198
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 199
    .local v0, "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setSetupWizardShown()V

    .line 200
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 201
    return-void
.end method

.method private showSetupWizardDialog()V
    .locals 3

    .prologue
    .line 204
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 205
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 206
    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 207
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 208
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 209
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 210
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 211
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 212
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
    .line 216
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
    .line 221
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_1

    .line 222
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mContext:Landroid/content/Context;

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 223
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    if-ne p2, v0, :cond_2

    .line 224
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    goto :goto_0

    .line 225
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    if-ne p2, v0, :cond_3

    .line 226
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    goto :goto_0

    .line 227
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_3
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;

    if-ne p2, v0, :cond_4

    .line 228
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mAccessPersonalizationGuideInfoDialog:Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;

    goto :goto_0

    .line 229
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_4
    const-class v0, Lcom/sonyericsson/ned/controller/IBurstHandler;

    if-ne p2, v0, :cond_0

    .line 230
    check-cast p1, Lcom/sonyericsson/ned/controller/IBurstHandler;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mActive:Z

    .line 80
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->dismissPreviousDialog()V

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mAccessPersonalizationGuideInfoDialog:Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mAccessPersonalizationGuideInfoDialog:Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 86
    return-void
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 252
    const/16 v0, 0xa

    return v0
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
    .line 236
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mActive:Z

    .line 98
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->dismissPreviousDialog()V

    .line 99
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->createSetupVisualisation()V

    .line 100
    return-void
.end method

.method public initOptional()V
    .locals 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mForceSetupWizardDecision:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mAccessPersonalizationGuideInfoDialog:Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;

    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->showSetupWizardDialog()V

    goto :goto_0
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 1
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->showSetupWizardDialog()V

    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "event"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 75
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 128
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->showSetupWizardDialog()V

    .line 130
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    return-void
.end method
