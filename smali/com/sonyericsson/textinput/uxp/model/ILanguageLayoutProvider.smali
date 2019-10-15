.class public interface abstract Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;
.super Ljava/lang/Object;
.source "ILanguageLayoutProvider.java"


# static fields
.field public static final PROPERTY_SHIFTED:Ljava/lang/String; = "shifted"

.field public static final PROPERTY_UNSHIFTED:Ljava/lang/String; = "unshifted"

.field public static final SCRIPT_ARMENIAN:Ljava/lang/String; = "armenian-script"

.field public static final SCRIPT_CYRILLIC:Ljava/lang/String; = "cyrillic-script"

.field public static final SCRIPT_GEORGIAN:Ljava/lang/String; = "georgian-script"

.field public static final SCRIPT_GREEK:Ljava/lang/String; = "greek-script"

.field public static final SCRIPT_HINDI:Ljava/lang/String; = "hindi-script"

.field public static final SCRIPT_LATIN:Ljava/lang/String; = "latin-script"

.field public static final SCRIPT_PUNJABI:Ljava/lang/String; = "punjabi-script"

.field public static final SCRIPT_TAMIL:Ljava/lang/String; = "tamil-script"

.field public static final SCRIPT_THAI:Ljava/lang/String; = "thai-script"


# virtual methods
.method public abstract getDefaultLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDirection(Ljava/lang/String;)I
.end method

.method public abstract getKeyboardLayoutXmlId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getKeyboardSymbolsShiftedXmlId(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getKeyboardSymbolsXmlId(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getLanguageIso3s()[Ljava/lang/String;
.end method

.method public abstract getLanguageName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLanguageProperties(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getLayoutIds(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getScript(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSecondaryWritingLanguage(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getThirdWritingLanguage(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getValidWritingLanguage(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isCaseLanguage(Ljava/lang/String;)Z
.end method
