.class public Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;
.super Ljava/lang/Object;
.source "FloatingToggleHandler.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;
.implements Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$IOnSelectionChangeListener;
.implements Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster$DimmedKeyboardTouchedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler$DelayedDockedToMiniToggle;,
        Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler$Factory;
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

.field private static final TOGGLE_FLOATING_EVENT:Lcom/sonyericsson/ned/controller/Command;

.field private static final WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;


# instance fields
.field private mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

.field private mContext:Landroid/content/Context;

.field private mDelayedDockedToMiniToggle:Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler$DelayedDockedToMiniToggle;

.field private mFloatingKeyboardTypeSelectorPopup:Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;

.field private final mHandler:Landroid/os/Handler;

.field private mIsActive:Z

.field private mIsKeyboardDimmedDueToPopup:Z

.field private mKeyboardDimTouchBroadcaster:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster;

.field private mKeyboardModeAnimator:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;

.field private mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

.field private mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

.field private final mRebind:[Lcom/sonyericsson/ned/controller/EventObject;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v1, "toggle-floating"

    invoke-direct {v0, v1}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->TOGGLE_FLOATING_EVENT:Lcom/sonyericsson/ned/controller/Command;

    .line 41
    new-array v0, v3, [Lcom/sonyericsson/ned/controller/EventObject;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->TOGGLE_FLOATING_EVENT:Lcom/sonyericsson/ned/controller/Command;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    .line 44
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    aput-object v1, v0, v2

    const-class v1, Lcom/sonyericsson/ned/controller/IBurstHandler;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mHandler:Landroid/os/Handler;

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sonyericsson/ned/controller/EventObject;

    const/4 v1, 0x0

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "rebind"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mRebind:[Lcom/sonyericsson/ned/controller/EventObject;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->setFloatingKeyboardType(Ljava/lang/String;)V

    return-void
.end method

.method private closeDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mFloatingKeyboardTypeSelectorPopup:Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mFloatingKeyboardTypeSelectorPopup:Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->hide()V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mIsKeyboardDimmedDueToPopup:Z

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;->MAIN_AREA_AND_CANDIDATE_BAR:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setKeyboardDisabledState(ZLcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;)V

    .line 166
    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mIsKeyboardDimmedDueToPopup:Z

    .line 168
    :cond_1
    return-void
.end method

.method private setFloatingKeyboardType(Ljava/lang/String;)V
    .locals 3
    .param p1, "newFloatingKeyboardType"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mDelayedDockedToMiniToggle:Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler$DelayedDockedToMiniToggle;

    .line 86
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 88
    .local v0, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getFloatingKeyboardType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setPreviousFloatingKeyboardType(Ljava/lang/String;)V

    .line 89
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setFloatingKeyboardType(Ljava/lang/String;)V

    .line 90
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 92
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v1

    .line 93
    invoke-virtual {v1, p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushFloatingKeyboardEvent(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mRebind:[Lcom/sonyericsson/ned/controller/EventObject;

    invoke-interface {v1, v2}, Lcom/sonyericsson/ned/controller/IBurstHandler;->onEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z

    .line 97
    .end local v0    # "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
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
    .line 81
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
    .line 101
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    if-ne p2, v0, :cond_1

    .line 102
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 103
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/ned/controller/IBurstHandler;

    if-ne p2, v0, :cond_2

    .line 104
    check-cast p1, Lcom/sonyericsson/ned/controller/IBurstHandler;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    goto :goto_0

    .line 105
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;

    if-ne p2, v0, :cond_3

    .line 106
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mKeyboardModeAnimator:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;

    goto :goto_0

    .line 107
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_3
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_4

    .line 108
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 109
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_4
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    if-ne p2, v0, :cond_5

    .line 110
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    goto :goto_0

    .line 111
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_5
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster;

    if-ne p2, v0, :cond_6

    .line 112
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mKeyboardDimTouchBroadcaster:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster;

    goto :goto_0

    .line 113
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_6
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    if-ne p2, v0, :cond_7

    .line 114
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    goto :goto_0

    .line 115
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_7
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    if-ne p2, v0, :cond_0

    .line 116
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mIsActive:Z

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mDelayedDockedToMiniToggle:Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler$DelayedDockedToMiniToggle;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mDelayedDockedToMiniToggle:Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler$DelayedDockedToMiniToggle;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler$DelayedDockedToMiniToggle;->cancel()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mDelayedDockedToMiniToggle:Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler$DelayedDockedToMiniToggle;

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->closeDialog()V

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mFloatingKeyboardTypeSelectorPopup:Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->dispose()V

    .line 157
    return-void
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 127
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
    .line 122
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;-><init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mFloatingKeyboardTypeSelectorPopup:Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mFloatingKeyboardTypeSelectorPopup:Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->addPopupContainerEventListener(Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;)V

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mFloatingKeyboardTypeSelectorPopup:Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->setOnSelectionChangeListener(Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$IOnSelectionChangeListener;)V

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mKeyboardDimTouchBroadcaster:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster;->addDimmedKeyboardTouchedListener(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster$DimmedKeyboardTouchedListener;)V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mIsActive:Z

    .line 142
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public onDimmedKeyboardTouched()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->closeDialog()V

    .line 195
    return-void
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 6
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    const/4 v2, 0x1

    .line 172
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mIsActive:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->TOGGLE_FLOATING_EVENT:Lcom/sonyericsson/ned/controller/Command;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mFloatingKeyboardTypeSelectorPopup:Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;

    .line 173
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    if-eqz v1, :cond_0

    .line 174
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mFloatingKeyboardTypeSelectorPopup:Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;

    check-cast p1, Lcom/sonyericsson/ned/controller/Command;

    .line 175
    .end local p1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/Command;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 176
    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getFloatingKeyboardType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 177
    invoke-interface {v5}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getPreviousFloatingKeyboardType()Ljava/lang/String;

    move-result-object v5

    .line 174
    invoke-virtual {v3, v1, v4, v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->show(Landroid/graphics/Point;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 178
    .local v0, "isShowSuccess":Z
    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;->MAIN_AREA_AND_CANDIDATE_BAR:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setKeyboardDisabledState(ZLcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;)V

    .line 181
    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mIsKeyboardDimmedDueToPopup:Z

    move v1, v2

    .line 185
    .end local v0    # "isShowSuccess":Z
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "event"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 190
    return-void
.end method

.method public onSelectionChange(Ljava/lang/String;)V
    .locals 4
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getFloatingKeyboardType()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "oldFloatingKeyboardType":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mKeyboardModeAnimator:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;

    .line 202
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->getFloatingKeyboardFromTextual(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v2

    .line 203
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->getFloatingKeyboardFromTextual(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v3

    .line 201
    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;->prepareAnimation(Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)V

    .line 204
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_DOCKED:Ljava/lang/String;

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_MINI:Ljava/lang/String;

    .line 206
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mDelayedDockedToMiniToggle:Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler$DelayedDockedToMiniToggle;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mDelayedDockedToMiniToggle:Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler$DelayedDockedToMiniToggle;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler$DelayedDockedToMiniToggle;->cancel()V

    .line 210
    :cond_0
    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler$DelayedDockedToMiniToggle;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler$DelayedDockedToMiniToggle;-><init>(Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;)V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->mDelayedDockedToMiniToggle:Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler$DelayedDockedToMiniToggle;

    .line 215
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->closeDialog()V

    .line 216
    return-void

    .line 212
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->setFloatingKeyboardType(Ljava/lang/String;)V

    goto :goto_0
.end method
