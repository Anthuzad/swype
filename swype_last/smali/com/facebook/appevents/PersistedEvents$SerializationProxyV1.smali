.class Lcom/facebook/appevents/PersistedEvents$SerializationProxyV1;
.super Ljava/lang/Object;
.source "PersistedEvents.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/PersistedEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerializationProxyV1"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4b1aac909L


# instance fields
.field private final proxyEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/facebook/appevents/AccessTokenAppIdPair;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/facebook/appevents/AccessTokenAppIdPair;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "events":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/facebook/appevents/AccessTokenAppIdPair;Ljava/util/List<Lcom/facebook/appevents/AppEvent;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/facebook/appevents/PersistedEvents$SerializationProxyV1;->proxyEvents:Ljava/util/HashMap;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Lcom/facebook/appevents/PersistedEvents$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/HashMap;
    .param p2, "x1"    # Lcom/facebook/appevents/PersistedEvents$1;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/facebook/appevents/PersistedEvents$SerializationProxyV1;-><init>(Ljava/util/HashMap;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 70
    new-instance v0, Lcom/facebook/appevents/PersistedEvents;

    iget-object v1, p0, Lcom/facebook/appevents/PersistedEvents$SerializationProxyV1;->proxyEvents:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lcom/facebook/appevents/PersistedEvents;-><init>(Ljava/util/HashMap;)V

    return-object v0
.end method
