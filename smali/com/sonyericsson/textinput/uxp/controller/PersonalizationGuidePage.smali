.class public abstract Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;
.super Ljava/lang/Object;
.source "PersonalizationGuidePage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final EMPTY_ARRAY:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHasBeenFullyShown:Z

.field protected final mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

.field protected final mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

.field protected final mPageListener:Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;

.field protected final mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->EMPTY_ARRAY:[I

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;)V
    .locals 1
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p2, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .param p3, "languageLayoutConfig"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    .param p4, "listener"    # Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->mHasBeenFullyShown:Z

    .line 32
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 33
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 34
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .line 35
    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->mPageListener:Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;

    .line 36
    return-void
.end method


# virtual methods
.method public abstract createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end method

.method public getGlowingKeys()[I
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->EMPTY_ARRAY:[I

    return-object v0
.end method

.method public abstract getTitleId()I
.end method

.method public hasBeenFullyShown()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->mHasBeenFullyShown:Z

    return v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onPageChange()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public postBind(Lcom/sonyericsson/collaboration/ObjectBinder;)V
    .locals 0
    .param p1, "binder"    # Lcom/sonyericsson/collaboration/ObjectBinder;

    .prologue
    .line 73
    return-void
.end method

.method public setHasBeenFullyShown()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->mHasBeenFullyShown:Z

    .line 63
    return-void
.end method

.method public shallBeShown()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public showKeyboard()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method
