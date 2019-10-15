.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;
.super Ljava/lang/Object;
.source "KeyboardInflaterBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ParserWrapper"
.end annotation


# instance fields
.field public final mName:Ljava/lang/String;

.field public final mParser:Landroid/content/res/XmlResourceParser;


# direct methods
.method public constructor <init>(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V
    .locals 0
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mParser:Landroid/content/res/XmlResourceParser;

    .line 87
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflaterBase$ParserWrapper;->mName:Ljava/lang/String;

    .line 88
    return-void
.end method
