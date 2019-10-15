.class Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageSorter;
.super Ljava/lang/Object;
.source "LanguageLayoutConfig.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LanguageSorter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final mCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Ljava/util/Locale;)V
    .locals 2
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageSorter;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1055
    invoke-static {p2}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    invoke-static {p2}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageSorter;->mCollator:Ljava/text/Collator;

    .line 1057
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageSorter;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 1058
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1051
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageSorter;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "object1"    # Ljava/lang/String;
    .param p2, "object2"    # Ljava/lang/String;

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageSorter;->mCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageSorter;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LanguageSorter;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    invoke-virtual {v2, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
