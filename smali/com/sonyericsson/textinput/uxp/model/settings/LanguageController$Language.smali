.class Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController$Language;
.super Ljava/lang/Object;
.source "LanguageController.java"

# interfaces
.implements Lcom/sonyericsson/ned/model/ILanguage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Language"
.end annotation


# instance fields
.field private final mIso:Ljava/lang/String;

.field private final mLayout:Ljava/lang/String;

.field private final mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .param p1, "iso"    # Ljava/lang/String;
    .param p2, "layout"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController$Language;->mIso:Ljava/lang/String;

    .line 405
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController$Language;->mLayout:Ljava/lang/String;

    .line 406
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController$Language;->mLocale:Ljava/util/Locale;

    .line 407
    return-void
.end method


# virtual methods
.method public getIso3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController$Language;->mIso:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController$Language;->mLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController$Language;->mLocale:Ljava/util/Locale;

    return-object v0
.end method
