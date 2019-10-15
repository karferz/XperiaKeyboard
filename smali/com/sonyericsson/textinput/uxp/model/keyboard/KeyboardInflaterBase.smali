.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase;
.super Ljava/lang/Object;
.source "KeyboardInflaterBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;,
        Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;
    }
.end annotation


# instance fields
.field protected final ORIENTATION_LANDSCAPE:I

.field protected final ORIENTATION_PORTRAIT:I

.field protected final ORIENTATION_UNDEFINED:I

.field protected final mBottomRowSettings:Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

.field protected final mContext:Landroid/content/Context;

.field protected final mRes:Landroid/content/res/Resources;

.field protected final mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bottomRowSettings"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;
    .param p3, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase;->mContext:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase;->mRes:Landroid/content/res/Resources;

    .line 44
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase;->mBottomRowSettings:Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase;->ORIENTATION_UNDEFINED:I

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase;->ORIENTATION_PORTRAIT:I

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase;->ORIENTATION_LANDSCAPE:I

    .line 48
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .line 49
    return-void
.end method

.method protected static createParserWrapper(Landroid/content/Context;ILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I
    .param p2, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "name":Ljava/lang/String;
    invoke-interface {p2, v0}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getLayoutXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 55
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    invoke-direct {v2, v1, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;-><init>(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method protected createParserWrapper(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-static {v0, p1, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase;->createParserWrapper(Landroid/content/Context;ILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    move-result-object v0

    return-object v0
.end method

.method protected moveToTag(Ljava/lang/String;ILcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)Z
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "parserWrapper"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    .prologue
    .line 64
    const/4 v2, 0x0

    .line 65
    .local v2, "tagFound":Z
    iget-object v1, p3, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mParser:Landroid/content/res/XmlResourceParser;

    .line 67
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .local v0, "event":I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    .line 68
    if-ne v0, p2, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    const/4 v2, 0x1

    .line 77
    .end local v0    # "event":I
    :cond_1
    :goto_0
    return v2

    .line 73
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0
.end method
