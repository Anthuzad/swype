.class final Lcom/nuance/speech/DictationLanguageListAdapter$1;
.super Ljava/lang/Object;
.source "DictationLanguageListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/speech/DictationLanguageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/speech/DictationLanguageListAdapter$1;->c:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;)I
    .registers 6
    .param p1, "lhs"    # Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;
    .param p2, "rhs"    # Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/speech/DictationLanguageListAdapter$1;->c:Ljava/text/Collator;

    iget-object v1, p1, Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;->displayName:Ljava/lang/String;

    iget-object v2, p2, Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 31
    check-cast p1, Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;

    check-cast p2, Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;

    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/DictationLanguageListAdapter$1;->compare(Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;)I

    move-result v0

    return v0
.end method
