.class public Lcom/sonyericsson/textinput/uxp/model/settings/Customization;
.super Ljava/lang/Object;
.source "Customization.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;
.implements Lcom/sonyericsson/collaboration/ManagedBindable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/settings/Customization$Factory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final KEYBOARD_LAYOUT_VARIANT_DEFAULT:Ljava/lang/String; = "default"

.field static final KEYBOARD_LAYOUT_VARIANT_TEAM_MOBILE:Ljava/lang/String; = "tmo"

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExcludedLanguages:[Ljava/lang/String;

.field private mKeyboardLayoutVariant:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

.field private mLayoutIdPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/model/settings/Customization;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/Customization;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/Customization;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Customization;->mExcludedLanguages:[Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;->DEFAULT:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Customization;->mKeyboardLayoutVariant:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/Customization;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private static equalsISOLanguageCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "isoLanguageCode"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 49
    :try_start_0
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 54
    :goto_0
    return v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/util/MissingResourceException;
    const/4 v1, 0x0

    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/util/MissingResourceException;
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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
    .line 111
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
    .line 116
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_0

    .line 117
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Customization;->mContext:Landroid/content/Context;

    .line 119
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public getKeyboardLayoutVariant()Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Customization;->mKeyboardLayoutVariant:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    return-object v0
.end method

.method public getLayoutIdPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Customization;->mLayoutIdPrefix:Ljava/lang/String;

    return-object v0
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
    .line 123
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/Customization;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 85
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Customization;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 87
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x7f0e0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Customization;->mExcludedLanguages:[Ljava/lang/String;

    .line 89
    const v2, 0x7f0701a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "keyboardLayoutVariant":Ljava/lang/String;
    const-string v2, "tmo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;->T_MOBILE:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Customization;->mKeyboardLayoutVariant:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    .line 92
    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Customization;->mLayoutIdPrefix:Ljava/lang/String;

    .line 103
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string v2, "default"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;->DEFAULT:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Customization;->mKeyboardLayoutVariant:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    goto :goto_0

    .line 100
    :cond_1
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;->OTHER:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Customization;->mKeyboardLayoutVariant:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    .line 101
    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Customization;->mLayoutIdPrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public isExcludedLanguage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "langCode"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Customization;->mExcludedLanguages:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 67
    .local v0, "language":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Customization;->equalsISOLanguageCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    const/4 v1, 0x1

    .line 71
    .end local v0    # "language":Ljava/lang/String;
    :cond_0
    return v1

    .line 66
    .restart local v0    # "language":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
