.class Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider$LanguageReplacements;
.super Ljava/lang/Object;
.source "TextReplaceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LanguageReplacements"
.end annotation


# static fields
.field private static final LANGUAGES:[Ljava/lang/String;

.field private static final NEW:[Lcom/sonyericsson/ned/model/CodePointString;

.field private static final ORIGINAL:[Lcom/sonyericsson/ned/model/CodePointString;

.field private static final SEPARATORS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "${all-languages}"

    aput-object v1, v0, v2

    const-string v1, "${all-languages}"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider$LanguageReplacements;->LANGUAGES:[Ljava/lang/String;

    .line 61
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "${letter-or-digit}"

    aput-object v1, v0, v2

    const-string v1, ""

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider$LanguageReplacements;->SEPARATORS:[Ljava/lang/String;

    .line 63
    new-array v0, v4, [Lcom/sonyericsson/ned/model/CodePointString;

    const-string v1, "..com"

    .line 64
    invoke-static {v1}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider;->access$400()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider$LanguageReplacements;->ORIGINAL:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 67
    new-array v0, v4, [Lcom/sonyericsson/ned/model/CodePointString;

    const-string v1, ".com"

    .line 68
    invoke-static {v1}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider;->access$500()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider$LanguageReplacements;->NEW:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 67
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider$LanguageReplacements;->LANGUAGES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider$LanguageReplacements;->ORIGINAL:[Lcom/sonyericsson/ned/model/CodePointString;

    return-object v0
.end method

.method static synthetic access$200()[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider$LanguageReplacements;->NEW:[Lcom/sonyericsson/ned/model/CodePointString;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider$LanguageReplacements;->SEPARATORS:[Ljava/lang/String;

    return-object v0
.end method
