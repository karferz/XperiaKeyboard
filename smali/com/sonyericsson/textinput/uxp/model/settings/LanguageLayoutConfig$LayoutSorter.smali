.class Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LayoutSorter;
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
    name = "LayoutSorter"
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
.field final mLanguageIso3:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Ljava/lang/String;)V
    .locals 0
    .param p2, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LayoutSorter;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1071
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LayoutSorter;->mLanguageIso3:Ljava/lang/String;

    .line 1072
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1067
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LayoutSorter;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "layoutId1"    # Ljava/lang/String;
    .param p2, "layoutId2"    # Ljava/lang/String;

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LayoutSorter;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LayoutSorter;->mLanguageIso3:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->access$2200(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LayoutSorter;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$LayoutSorter;->mLanguageIso3:Ljava/lang/String;

    invoke-static {v1, v2, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->access$2200(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
