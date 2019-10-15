.class public final enum Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;
.super Ljava/lang/Enum;
.source "AnalyticsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LabelKeyboardHeightOpened"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;

.field public static final enum POPUP:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;

.field public static final enum SETTINGS:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;

.field public static final enum UNDEFINED:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;


# instance fields
.field private final mLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 194
    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;

    const-string v1, "SETTINGS"

    const-string v2, "Started"

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;->SETTINGS:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;

    const-string v1, "POPUP"

    const-string v2, "Popup"

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;->POPUP:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;

    const-string v1, "UNDEFINED"

    const-string v2, "Undefined"

    invoke-direct {v0, v1, v5, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;->UNDEFINED:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;

    .line 193
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;->SETTINGS:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;->POPUP:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;->UNDEFINED:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;->$VALUES:[Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 199
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;->mLabel:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;
    .locals 5
    .param p0, "origin"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;->values()[Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 204
    .local v0, "label":Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 208
    .end local v0    # "label":Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;
    :goto_1
    return-object v0

    .line 203
    .restart local v0    # "label":Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v0    # "label":Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;
    :cond_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;->UNDEFINED:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 193
    const-class v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;->$VALUES:[Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;->mLabel:Ljava/lang/String;

    return-object v0
.end method
