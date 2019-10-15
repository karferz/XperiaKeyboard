.class public Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;
.super Landroid/preference/Preference;
.source "PersonalizerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference$IPersonalizationCreator;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final ID:I

.field private final mDefaultSummary:Ljava/lang/CharSequence;

.field private mPersonalizationCreator:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference$IPersonalizationCreator;

.field private mPersonalizer:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->getPersonalizerKeyToIdTable(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->ID:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->mPersonalizer:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;

    .line 43
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->mDefaultSummary:Ljava/lang/CharSequence;

    .line 44
    return-void
.end method


# virtual methods
.method public clearSummary()V
    .locals 1

    .prologue
    .line 99
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method

.method public getPersonalizer()Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->mPersonalizer:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;

    return-object v0
.end method

.method public setPersonalizationStarter(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference$IPersonalizationCreator;)V
    .locals 0
    .param p1, "personalizationCreator"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference$IPersonalizationCreator;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->mPersonalizationCreator:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference$IPersonalizationCreator;

    .line 57
    return-void
.end method

.method public startParsing()V
    .locals 5

    .prologue
    .line 66
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->mPersonalizer:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;

    if-nez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->mPersonalizationCreator:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference$IPersonalizationCreator;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->ID:I

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference$IPersonalizationCreator;->createPersonalizer(Landroid/content/Context;I)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->mPersonalizer:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->mPersonalizer:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    .line 76
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->mPersonalizer:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;->requiresInternet()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 80
    .local v0, "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->mPersonalizer:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;

    .line 82
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;->getServiceName()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushLearnedWordsFromSourceEvent(Ljava/lang/String;)V

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->mPersonalizer:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;->run()V

    .line 93
    .end local v0    # "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    :cond_3
    :goto_0
    return-void

    .line 88
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0700f2

    const/4 v3, 0x1

    const/16 v4, 0x11

    .line 87
    invoke-static {v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/util/NoSpamToast;->makeToastIfNeededAndShow(Landroid/content/Context;III)Landroid/widget/Toast;

    goto :goto_0
.end method

.method public updateSummary(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->mDefaultSummary:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference;->setSummary(I)V

    goto :goto_0
.end method
