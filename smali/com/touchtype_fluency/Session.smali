.class public interface abstract Lcom/touchtype_fluency/Session;
.super Ljava/lang/Object;
.source "Session.java"


# virtual methods
.method public abstract batchLoad([Lcom/touchtype_fluency/ModelSetDescription;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/InvalidDataException;,
            Lcom/touchtype_fluency/LicenseException;
        }
    .end annotation
.end method

.method public abstract batchUnload([Lcom/touchtype_fluency/ModelSetDescription;)V
.end method

.method public abstract dispose()V
.end method

.method public abstract enableModels(Lcom/touchtype_fluency/TagSelector;)V
.end method

.method public abstract getLoadedSets()[Lcom/touchtype_fluency/ModelSetDescription;
.end method

.method public abstract getParameterSet()Lcom/touchtype_fluency/ParameterSet;
.end method

.method public abstract getPredictor()Lcom/touchtype_fluency/Predictor;
.end method

.method public abstract getPunctuator()Lcom/touchtype_fluency/Punctuator;
.end method

.method public abstract getSentenceSegmenter()Lcom/touchtype_fluency/SentenceSegmenter;
.end method

.method public abstract getTags()[Ljava/lang/String;
.end method

.method public abstract getTags(Lcom/touchtype_fluency/TagSelector;)[Ljava/lang/String;
.end method

.method public abstract getTokenizer()Lcom/touchtype_fluency/Tokenizer;
.end method

.method public abstract getTrainer()Lcom/touchtype_fluency/Trainer;
.end method

.method public abstract load(Lcom/touchtype_fluency/ModelSetDescription;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/InvalidDataException;,
            Lcom/touchtype_fluency/LicenseException;
        }
    .end annotation
.end method

.method public abstract trimMemory()V
.end method

.method public abstract unload(Lcom/touchtype_fluency/ModelSetDescription;)V
.end method

.method public abstract verify(Lcom/touchtype_fluency/ModelSetDescription;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
