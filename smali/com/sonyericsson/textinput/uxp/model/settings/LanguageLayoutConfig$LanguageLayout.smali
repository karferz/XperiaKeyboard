.class Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;
.super Ljava/lang/Object;
.source "LanguageLayoutConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LanguageLayout"
.end annotation


# static fields
.field private static final DEFAULT_12_KEY_TEMPLATE:I = 0x7f05000e

.field private static final DEFAULT_FULL_KEYBOARD_TEMPLATE:I = 0x7f050076

.field private static final LAYOUT_ORDER:I


# instance fields
.field private final mCountryIso2:Ljava/lang/String;

.field private final mIs12KeySupported:Z

.field private final mKeyboardLayoutId:Ljava/lang/String;

.field private mKeyboardLayoutName:Ljava/lang/String;

.field private final mKeyboardLayoutOrder:I

.field private final mKeyboardLayoutXml:I

.field private final mLanguageIso3:Ljava/lang/String;

.field private final mLanguageName:Ljava/lang/String;

.field private mProperties:[Ljava/lang/String;

.field private final mScript:Ljava/lang/String;

.field private final mSecondaryWritingLanguage:Ljava/lang/String;

.field private final mSymbolsShiftedXml:I

.field private final mSymbolsXml:I

.field private final mTemplateLayoutXml:I

.field private final mThirdWritingLanguage:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1009
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1010
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->access$2100(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/textinput/uxp/R$styleable;->Language:[I

    .line 1011
    invoke-virtual {v3, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1012
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mLanguageIso3:Ljava/lang/String;

    .line 1013
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mLanguageName:Ljava/lang/String;

    .line 1014
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mScript:Ljava/lang/String;

    .line 1015
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mCountryIso2:Ljava/lang/String;

    .line 1016
    const/4 v3, 0x5

    .line 1017
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mSecondaryWritingLanguage:Ljava/lang/String;

    .line 1018
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mThirdWritingLanguage:Ljava/lang/String;

    .line 1019
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1020
    .local v2, "propertiesStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1021
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mProperties:[Ljava/lang/String;

    .line 1022
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mProperties:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1024
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1025
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->access$2100(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/textinput/uxp/R$styleable;->LayoutConfig:[I

    invoke-virtual {v3, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1027
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mKeyboardLayoutId:Ljava/lang/String;

    .line 1028
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mKeyboardLayoutOrder:I

    .line 1031
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mKeyboardLayoutName:Ljava/lang/String;

    .line 1032
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mKeyboardLayoutName:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1033
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->access$2100(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->getContextLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    .line 1034
    .local v1, "l":Ljava/util/Locale;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mKeyboardLayoutId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mKeyboardLayoutName:Ljava/lang/String;

    .line 1037
    .end local v1    # "l":Ljava/util/Locale;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mKeyboardLayoutId:Ljava/lang/String;

    const-string v4, "virtual-12key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mIs12KeySupported:Z

    .line 1038
    invoke-virtual {v0, v9, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mKeyboardLayoutXml:I

    .line 1039
    const/4 v4, 0x5

    iget-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mIs12KeySupported:Z

    if-eqz v3, :cond_2

    const v3, 0x7f05000e

    :goto_0
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mTemplateLayoutXml:I

    .line 1042
    const/4 v4, 0x6

    iget-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mIs12KeySupported:Z

    if-eqz v3, :cond_3

    const v3, 0x7f050036

    :goto_1
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mSymbolsXml:I

    .line 1044
    const/4 v4, 0x7

    iget-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mIs12KeySupported:Z

    if-eqz v3, :cond_4

    const v3, 0x7f050036

    :goto_2
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mSymbolsShiftedXml:I

    .line 1047
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1048
    return-void

    .line 1039
    :cond_2
    const v3, 0x7f050076

    goto :goto_0

    .line 1042
    :cond_3
    const v3, 0x7f050093

    goto :goto_1

    .line 1044
    :cond_4
    const v3, 0x7f050099

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    .prologue
    .line 988
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mKeyboardLayoutOrder:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    .prologue
    .line 988
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mSymbolsShiftedXml:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    .prologue
    .line 988
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mLanguageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    .prologue
    .line 988
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mScript:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    .prologue
    .line 988
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mCountryIso2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    .prologue
    .line 988
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mSecondaryWritingLanguage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    .prologue
    .line 988
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mThirdWritingLanguage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    .prologue
    .line 988
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mProperties:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    .prologue
    .line 988
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mLanguageIso3:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    .prologue
    .line 988
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mKeyboardLayoutId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    .prologue
    .line 988
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mIs12KeySupported:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    .prologue
    .line 988
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mKeyboardLayoutXml:I

    return v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    .prologue
    .line 988
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mTemplateLayoutXml:I

    return v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    .prologue
    .line 988
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mKeyboardLayoutName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;

    .prologue
    .line 988
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageLayout;->mSymbolsXml:I

    return v0
.end method
