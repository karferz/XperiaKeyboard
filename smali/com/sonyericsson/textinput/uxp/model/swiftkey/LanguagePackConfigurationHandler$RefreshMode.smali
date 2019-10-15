.class final enum Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;
.super Ljava/lang/Enum;
.source "LanguagePackConfigurationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RefreshMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

.field public static final enum FORCED:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

.field public static final enum NORMAL:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

.field public static final enum UPDATE_CHECK:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 674
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->NORMAL:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    const-string v1, "FORCED"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->FORCED:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    const-string v1, "UPDATE_CHECK"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->UPDATE_CHECK:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    .line 673
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->NORMAL:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->FORCED:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->UPDATE_CHECK:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->$VALUES:[Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

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
    .line 673
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 673
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;
    .locals 1

    .prologue
    .line 673
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->$VALUES:[Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    return-object v0
.end method
