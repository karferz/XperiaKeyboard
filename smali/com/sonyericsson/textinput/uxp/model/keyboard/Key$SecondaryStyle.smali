.class public final enum Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;
.super Ljava/lang/Enum;
.source "Key.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SecondaryStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;

.field public static final enum extendedSecondaryPrint:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;

.field public static final enum normalSecondaryPrint:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1201
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;

    const-string v1, "normalSecondaryPrint"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;->normalSecondaryPrint:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;

    .line 1202
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;

    const-string v1, "extendedSecondaryPrint"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;->extendedSecondaryPrint:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;

    .line 1200
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;->normalSecondaryPrint:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;->extendedSecondaryPrint:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;->$VALUES:[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;

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
    .line 1200
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1200
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;
    .locals 1

    .prologue
    .line 1200
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;->$VALUES:[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;

    return-object v0
.end method
