.class Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser$1;
.super Ljava/lang/Object;
.source "LanguageSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->getSelectableLayouts(Ljava/lang/String;)Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;

    .prologue
    .line 691
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser$1;->this$1:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 691
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser$1;->compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 694
    .local p1, "a":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "b":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
