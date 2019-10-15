.class Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageCandidates;
.super Ljava/lang/Object;
.source "LanguageLayoutConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LanguageCandidates"
.end annotation


# instance fields
.field private final mLanguageCandidatesXml:I

.field private final mLanguageIso3:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 964
    sget-object v1, Lcom/sonyericsson/textinput/uxp/R$styleable;->Language:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 966
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageCandidates;->mLanguageCandidatesXml:I

    .line 968
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageCandidates;->mLanguageIso3:Ljava/lang/String;

    .line 969
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 970
    return-void
.end method

.method static synthetic access$1800(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageCandidates;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageCandidates;

    .prologue
    .line 957
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageCandidates;->mLanguageCandidatesXml:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageCandidates;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageCandidates;

    .prologue
    .line 957
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageCandidates;->mLanguageIso3:Ljava/lang/String;

    return-object v0
.end method
