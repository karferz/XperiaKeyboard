.class public interface abstract Lcom/touchtype_fluency/InputMapper;
.super Ljava/lang/Object;
.source "InputMapper.java"


# virtual methods
.method public abstract addCharacterMap(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Lcom/touchtype_fluency/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract addCharacterMap(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/touchtype_fluency/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract addCharacterMap(Ljava/util/Map;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract addCharacterMap(Ljava/util/Map;ZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addCharacterMapFromFile(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;,
            Lcom/touchtype_fluency/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract disableCharacterMaps(Lcom/touchtype_fluency/TagSelector;)V
.end method

.method public abstract enableCharacterMaps(Lcom/touchtype_fluency/TagSelector;)V
.end method

.method public abstract getAccentedVariantsOf(Ljava/lang/String;Ljava/util/Set;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getLayout()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeAllCharacterMaps()V
.end method

.method public abstract removeCharacterMaps(Lcom/touchtype_fluency/TagSelector;)V
.end method

.method public abstract setLayout(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Lcom/touchtype_fluency/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract setLayout(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/touchtype_fluency/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract setLayout(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLayoutFromFile(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;,
            Lcom/touchtype_fluency/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract summariseMappings()Ljava/lang/String;
.end method
