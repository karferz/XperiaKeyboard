.class public final enum Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;
.super Ljava/lang/Enum;
.source "ICustomization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyboardLayoutVariant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

.field public static final enum DEFAULT:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

.field public static final enum OTHER:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

.field public static final enum T_MOBILE:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;->DEFAULT:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    const-string v1, "T_MOBILE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;->T_MOBILE:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;->OTHER:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;->DEFAULT:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;->T_MOBILE:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;->OTHER:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;->$VALUES:[Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;->$VALUES:[Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    return-object v0
.end method
