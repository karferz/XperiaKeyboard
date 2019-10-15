.class public final enum Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;
.super Ljava/lang/Enum;
.source "FloatingKeyboardMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

.field public static final enum DOCKED:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

.field public static final enum FLOATING_MINI:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

.field public static final enum FLOATING_SPLIT:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    const-string v1, "DOCKED"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->DOCKED:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .line 35
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    const-string v1, "FLOATING_MINI"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_MINI:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .line 46
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    const-string v1, "FLOATING_SPLIT"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_SPLIT:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->DOCKED:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_MINI:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_SPLIT:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getFloatingKeyboardFromTextual(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;
    .locals 1
    .param p0, "textualFloatingKeyboardMode"    # Ljava/lang/String;

    .prologue
    .line 84
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_MINI:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_MINI:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .line 92
    :goto_0
    return-object v0

    .line 88
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_SPLIT:Ljava/lang/String;

    .line 89
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_SPLIT:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    goto :goto_0

    .line 92
    :cond_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->DOCKED:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    goto :goto_0
.end method

.method public static getFloatingKeyboardMode(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;
    .locals 3
    .param p0, "persistentSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-interface {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getFloatingKeyboardType()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "textualFloatingKeyboardMode":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_MINI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isDeviceSupportingFloatingMiniKeyboard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_MINI:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .line 72
    .local v0, "floatingKeyboardMode":Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;
    :goto_0
    return-object v0

    .line 64
    .end local v0    # "floatingKeyboardMode":Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;
    :cond_0
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_SPLIT:Ljava/lang/String;

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isDeviceSupportingFloatingSplitKeyboard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_SPLIT:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .restart local v0    # "floatingKeyboardMode":Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;
    goto :goto_0

    .line 69
    .end local v0    # "floatingKeyboardMode":Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;
    :cond_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->DOCKED:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .restart local v0    # "floatingKeyboardMode":Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    return-object v0
.end method
