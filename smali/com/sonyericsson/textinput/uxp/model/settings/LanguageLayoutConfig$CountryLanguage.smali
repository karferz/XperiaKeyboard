.class Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;
.super Ljava/lang/Object;
.source "LanguageLayoutConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountryLanguage"
.end annotation


# instance fields
.field private final mCountryIso2:Ljava/lang/String;

.field private final mLanguageIso3:Ljava/lang/String;

.field private final mLayoutId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 941
    sget-object v1, Lcom/sonyericsson/textinput/uxp/R$styleable;->LayoutConfig:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 943
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;->mCountryIso2:Ljava/lang/String;

    .line 944
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;->mLayoutId:Ljava/lang/String;

    .line 945
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 946
    sget-object v1, Lcom/sonyericsson/textinput/uxp/R$styleable;->Language:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 947
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;->mLanguageIso3:Ljava/lang/String;

    .line 949
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 950
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;

    .prologue
    .line 931
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;->mLanguageIso3:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;

    .prologue
    .line 931
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;->mLayoutId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;

    .prologue
    .line 931
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$CountryLanguage;->mCountryIso2:Ljava/lang/String;

    return-object v0
.end method
