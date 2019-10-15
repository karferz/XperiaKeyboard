.class public Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "SwapPunctuationHintVisualisation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 185
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 186
    const-string v0, "smart-punctuation"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 187
    const-string v0, "punctuation-show-swap-hint"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 188
    const-string v0, "maximum-times-punctuation-swap-hint"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 193
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;

    const-string v1, "maximum-times-punctuation-swap-hint"

    .line 194
    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$Factory;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;-><init>(I)V

    return-object v0
.end method
