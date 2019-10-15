.class Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle$TextStyleId;
.super Ljava/lang/Object;
.source "TextStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextStyleId"
.end annotation


# instance fields
.field private final colorStyleId:I

.field private final styleId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "styleId"    # I
    .param p2, "colorStyleId"    # I

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle$TextStyleId;->styleId:I

    .line 188
    iput p2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle$TextStyleId;->colorStyleId:I

    .line 189
    return-void
.end method


# virtual methods
.method public equals(Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle$TextStyleId;)Z
    .locals 2
    .param p1, "other"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle$TextStyleId;

    .prologue
    .line 197
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle$TextStyleId;->styleId:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle$TextStyleId;->styleId:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle$TextStyleId;->colorStyleId:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle$TextStyleId;->colorStyleId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 193
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle$TextStyleId;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle$TextStyleId;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle$TextStyleId;->equals(Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle$TextStyleId;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 202
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle$TextStyleId;->styleId:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle$TextStyleId;->colorStyleId:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    return v0
.end method
