.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParseException;
.super Landroid/view/InflateException;
.source "KeyboardInflaterBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ParseException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "parserWrapper"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 96
    return-void
.end method
