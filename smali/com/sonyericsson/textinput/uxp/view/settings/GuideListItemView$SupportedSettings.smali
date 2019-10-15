.class public final enum Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;
.super Ljava/lang/Enum;
.source "GuideListItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SupportedSettings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

.field public static final enum NUMERIC_KEYS:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

.field public static final enum SECONDARY_PRINTS:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

.field public static final enum SMILEY:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

.field public static final enum VOICE:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 293
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    const-string v1, "SMILEY"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->SMILEY:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    const-string v1, "VOICE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->VOICE:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    const-string v1, "SECONDARY_PRINTS"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->SECONDARY_PRINTS:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    const-string v1, "NUMERIC_KEYS"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->NUMERIC_KEYS:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    .line 292
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->SMILEY:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->VOICE:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->SECONDARY_PRINTS:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->NUMERIC_KEYS:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 292
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 292
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;
    .locals 1

    .prologue
    .line 292
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    return-object v0
.end method
