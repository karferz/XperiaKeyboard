.class public Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;
.super Ljava/lang/Object;
.source "PhonepadInputMethodToggler.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;
.implements Lcom/sonyericsson/ned/model/IPrimaryLanguageChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler$Factory;
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
.field private final mCurrentInputMethod:Ljava/lang/String;

.field private mIBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

.field private final mIsEmailInputMode:Z

.field private final mIsPredictionTextField:Z

.field private mIsSingletapKeyEnabledForOldLanguage:Z

.field private mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

.field private final mRebind:[Lcom/sonyericsson/ned/controller/EventObject;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private final mWantedEvents:[Lcom/sonyericsson/ned/controller/EventObject;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/ned/controller/IBurstHandler;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "currentInputMethod"    # Ljava/lang/String;
    .param p2, "inputMode"    # Ljava/lang/String;
    .param p3, "isPredictionTextField"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array v2, v1, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v3, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "toggle-single-tap"

    invoke-direct {v3, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->mWantedEvents:[Lcom/sonyericsson/ned/controller/EventObject;

    .line 31
    new-array v2, v1, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v3, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "reinitialize"

    invoke-direct {v3, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->mRebind:[Lcom/sonyericsson/ned/controller/EventObject;

    .line 41
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->mCurrentInputMethod:Ljava/lang/String;

    .line 42
    const-string v2, "input-mode-email"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "input-mode-web-email"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->mIsEmailInputMode:Z

    .line 44
    iput-boolean p3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->mIsPredictionTextField:Z

    .line 45
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public static isSingletapKeyEnabled(ZLcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)Z
    .locals 1
    .param p0, "isPredictionTextField"    # Z
    .param p1, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .prologue
    .line 49
    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->isActiveLanguageSuitableForPrediction()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPhonepadInputMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "newInputMethod"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 114
    .local v0, "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->mIsEmailInputMode:Z

    if-eqz v1, :cond_0

    .line 115
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setInputMethodEmail(Ljava/lang/String;)V

    .line 119
    :goto_0
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 120
    return-void

    .line 117
    :cond_0
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setInputMethod(Ljava/lang/String;)V

    goto :goto_0
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
    .line 54
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
    .line 59
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/controller/IBurstHandler;

    if-ne p2, v0, :cond_1

    .line 60
    check-cast p1, Lcom/sonyericsson/ned/controller/IBurstHandler;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->mIBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 61
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    if-ne p2, v0, :cond_2

    .line 62
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    goto :goto_0

    .line 63
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    if-ne p2, v0, :cond_0

    .line 64
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

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
    .line 70
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->mWantedEvents:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->mIsPredictionTextField:Z

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->isSingletapKeyEnabled(ZLcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->mIsSingletapKeyEnabledForOldLanguage:Z

    .line 81
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 2
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 99
    const-string v0, "toggle-single-tap"

    invoke-virtual {p1, v0}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->mCurrentInputMethod:Ljava/lang/String;

    const-string v1, "multitap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "singletap"

    :goto_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->setPhonepadInputMethod(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->mIBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->mRebind:[Lcom/sonyericsson/ned/controller/EventObject;

    invoke-interface {v0, v1}, Lcom/sonyericsson/ned/controller/IBurstHandler;->onEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z

    .line 103
    const/4 v0, 0x1

    .line 105
    :goto_1
    return v0

    .line 100
    :cond_0
    const-string v0, "multitap"

    goto :goto_0

    .line 105
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "event"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 110
    return-void
.end method

.method public onPrimaryLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "primaryLanguageIso3"    # Ljava/lang/String;
    .param p2, "primaryLanguageLayout"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->mIsPredictionTextField:Z

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->isSingletapKeyEnabled(ZLcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)Z

    move-result v0

    .line 126
    .local v0, "isSingletapKeyEnabledForNewLanguage":Z
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->mIsSingletapKeyEnabledForOldLanguage:Z

    if-eq v1, v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->mIBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->mRebind:[Lcom/sonyericsson/ned/controller/EventObject;

    invoke-interface {v1, v2}, Lcom/sonyericsson/ned/controller/IBurstHandler;->onEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z

    .line 130
    :cond_0
    return-void
.end method
