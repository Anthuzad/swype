.class public interface abstract Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACNewWordSyllablePairDLMEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDLMEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACDLMEventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ACNewWordSyllablePairDLMEvent"
.end annotation


# virtual methods
.method public abstract getCategoryId()I
.end method

.method public abstract getLanguageId()I
.end method

.method public abstract getSyllables()Ljava/lang/String;
.end method

.method public abstract getWord()Ljava/lang/String;
.end method
