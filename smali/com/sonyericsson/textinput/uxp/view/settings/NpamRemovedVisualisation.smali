.class public Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;
.super Ljava/lang/Object;
.source "NpamRemovedVisualisation.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/textinput/uxp/controller/IForceCreate;
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation$Factory;
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
.field private mActive:Z

.field private mCheckbox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private final mShowNpamRemovedDialog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->REQUIRED:[Ljava/lang/Class;

    .line 41
    new-array v0, v3, [Lcom/sonyericsson/ned/controller/EventObject;

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "showSpecialDialog"    # Z

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mShowNpamRemovedDialog:Z

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->onButtonClick(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->onDialogCancel()V

    return-void
.end method

.method static synthetic access$200()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private createSetupVisualisation()V
    .locals 5

    .prologue
    .line 106
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    .line 107
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 108
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03003c

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 109
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0f00d8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mCheckbox:Landroid/widget/CheckBox;

    .line 111
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f070055

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 113
    const v3, 0x7f070014

    new-instance v4, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    const v3, 0x7f070013

    new-instance v4, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation$2;

    invoke-direct {v4, p0}, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation$2;-><init>(Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    new-instance v3, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation$3;

    invoke-direct {v3, p0}, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation$3;-><init>(Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 135
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 136
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mDialog:Landroid/app/Dialog;

    .line 137
    return-void
.end method

.method private dismissPreviousDialog()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mDialog:Landroid/app/Dialog;

    .line 71
    :cond_0
    return-void
.end method

.method private onButtonClick(Z)V
    .locals 4
    .param p1, "positive"    # Z

    .prologue
    .line 140
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_1

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 142
    .local v0, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setNpamRemovedDialogShown()V

    .line 143
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 146
    .end local v0    # "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    :cond_1
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mActive:Z

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 147
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 148
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 149
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 151
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 153
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method private onDialogCancel()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->onButtonClick(Z)V

    .line 158
    return-void
.end method

.method private showNpamRemovedDialog()V
    .locals 3

    .prologue
    .line 161
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 162
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 163
    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 164
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 165
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 166
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 167
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 168
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 169
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
    .line 173
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
    .line 178
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_1

    .line 179
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mContext:Landroid/content/Context;

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 180
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    if-ne p2, v0, :cond_2

    .line 181
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    goto :goto_0

    .line 182
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    if-ne p2, v0, :cond_0

    .line 183
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mActive:Z

    .line 61
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->dismissPreviousDialog()V

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 64
    return-void
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 204
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
    .line 189
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mActive:Z

    .line 76
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->dismissPreviousDialog()V

    .line 77
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->createSetupVisualisation()V

    .line 78
    return-void
.end method

.method public initOptional()V
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mShowNpamRemovedDialog:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->showNpamRemovedDialog()V

    goto :goto_0
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 1
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "event"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 56
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 96
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->showNpamRemovedDialog()V

    .line 98
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    return-void
.end method
