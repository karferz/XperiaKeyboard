.class public final enum Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;
.super Ljava/lang/Enum;
.source "AnalyticsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LabelSettingsButtonUsed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;

.field public static final enum LONGPRESS:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;

.field public static final enum SYMBOL_LAYOUT:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;


# instance fields
.field private final mLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 177
    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;

    const-string v1, "SYMBOL_LAYOUT"

    const-string v2, "SymbolsLayout"

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;->SYMBOL_LAYOUT:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;

    const-string v1, "LONGPRESS"

    const-string v2, "LongPress"

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;->LONGPRESS:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;

    .line 176
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;->SYMBOL_LAYOUT:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;->LONGPRESS:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;->$VALUES:[Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "buttonUsed"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 182
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;->mLabel:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 176
    const-class v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;->$VALUES:[Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;->mLabel:Ljava/lang/String;

    return-object v0
.end method
