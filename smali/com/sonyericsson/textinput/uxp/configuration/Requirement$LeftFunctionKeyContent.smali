.class public final enum Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;
.super Ljava/lang/Enum;
.source "Requirement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/configuration/Requirement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LeftFunctionKeyContent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

.field public static final enum EMAIL_URL:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

.field public static final enum NONE:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

.field public static final enum SMILEY:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

.field public static final enum WEB_EDIT:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

.field public static final enum WEB_PASSWORD_ADDRESS:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->NONE:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    const-string v1, "SMILEY"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->SMILEY:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    const-string v1, "WEB_PASSWORD_ADDRESS"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->WEB_PASSWORD_ADDRESS:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    const-string v1, "EMAIL_URL"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->EMAIL_URL:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    const-string v1, "WEB_EDIT"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->WEB_EDIT:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->NONE:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->SMILEY:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->WEB_PASSWORD_ADDRESS:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->EMAIL_URL:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->WEB_EDIT:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->$VALUES:[Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->$VALUES:[Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    return-object v0
.end method
