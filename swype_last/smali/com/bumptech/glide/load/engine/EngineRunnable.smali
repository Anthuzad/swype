.class public final Lcom/bumptech/glide/load/engine/EngineRunnable;
.super Ljava/lang/Object;
.source "EngineRunnable.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/executor/Prioritized;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;,
        Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
    }
.end annotation


# instance fields
.field public final decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<***>;"
        }
    .end annotation
.end field

.field public volatile isCancelled:Z

.field private final manager:Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;

.field private final priority:Lcom/bumptech/glide/Priority;

.field private stage:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/Priority;)V
    .registers 5
    .param p1, "manager"    # Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;
    .param p3, "priority"    # Lcom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;",
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<***>;",
            "Lcom/bumptech/glide/Priority;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "decodeJob":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<***>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->manager:Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;

    .line 39
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 40
    sget-object v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->CACHE:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->stage:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    .line 41
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->priority:Lcom/bumptech/glide/Priority;

    .line 42
    return-void
.end method

.method private decodeFromCache()Lcom/bumptech/glide/load/engine/Resource;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x2

    .line 111
    const/4 v1, 0x0

    .line 113
    .local v1, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    :try_start_3
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 4080
    iget-object v3, v4, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 5035
    iget-boolean v3, v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_4c

    .line 4080
    if-nez v3, :cond_18

    move-object v1, v2

    .line 120
    :cond_c
    :goto_c
    if-nez v1, :cond_17

    .line 121
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 5104
    iget-object v4, v3, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 6028
    iget-boolean v4, v4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource:Z

    .line 5104
    if-nez v4, :cond_63

    move-object v1, v2

    .line 123
    :cond_17
    :goto_17
    return-object v1

    .line 4084
    :cond_18
    :try_start_18
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v6

    .line 4085
    iget-object v3, v4, Lcom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-virtual {v4, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->loadFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v3

    .line 4086
    const-string/jumbo v5, "DecodeJob"

    const/4 v8, 0x2

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 4087
    const-string/jumbo v5, "Decoded transformed from cache"

    invoke-virtual {v4, v5, v6, v7}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 4089
    :cond_32
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v6

    .line 4090
    invoke-virtual {v4, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v3

    .line 4091
    const-string/jumbo v5, "DecodeJob"

    const/4 v8, 0x2

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 4092
    const-string/jumbo v5, "Transcoded transformed from cache"

    invoke-virtual {v4, v5, v6, v7}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_4a} :catch_4c

    :cond_4a
    move-object v1, v3

    .line 4094
    goto :goto_c

    .line 114
    :catch_4c
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "EngineRunnable"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Exception decoding result from cache: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 5108
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_63
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v4

    .line 5109
    iget-object v2, v3, Lcom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/EngineKey;->getOriginalKey()Lcom/bumptech/glide/load/Key;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->loadFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    .line 5110
    const-string/jumbo v6, "DecodeJob"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 5111
    const-string/jumbo v6, "Decoded source from cache"

    invoke-virtual {v3, v6, v4, v5}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 5113
    :cond_80
    invoke-virtual {v3, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->transformEncodeAndTranscode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v1

    goto :goto_17
.end method

.method private isDecodingFromCache()Z
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->stage:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    sget-object v1, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->CACHE:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public final getPriority()I
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->priority:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result v0

    return v0
.end method

.method public final run()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    .line 51
    iget-boolean v3, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->isCancelled:Z

    if-eqz v3, :cond_6

    .line 2096
    :cond_5
    :goto_5
    return-void

    .line 55
    :cond_6
    const/4 v1, 0x0

    .line 56
    .local v1, "exception":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 1103
    .local v2, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    :try_start_8
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineRunnable;->isDecodingFromCache()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1104
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineRunnable;->decodeFromCache()Lcom/bumptech/glide/load/engine/Resource;
    :try_end_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_11} :catch_27
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_11} :catch_40

    move-result-object v2

    .line 71
    :goto_12
    iget-boolean v3, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->isCancelled:Z

    if-eqz v3, :cond_55

    .line 72
    if-eqz v2, :cond_5

    .line 73
    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    goto :goto_5

    .line 1127
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 1128
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeSource()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v4

    .line 1129
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/engine/DecodeJob;->transformEncodeAndTranscode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_25
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1c .. :try_end_25} :catch_27
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_25} :catch_40

    move-result-object v2

    goto :goto_12

    .line 59
    :catch_27
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v3, "EngineRunnable"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 61
    const-string/jumbo v3, "EngineRunnable"

    const-string/jumbo v4, "Out Of Memory Error decoding"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :cond_3a
    new-instance v1, Lcom/bumptech/glide/load/engine/ErrorWrappingGlideException;

    .end local v1    # "exception":Ljava/lang/Exception;
    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/engine/ErrorWrappingGlideException;-><init>(Ljava/lang/Error;)V

    .line 69
    .restart local v1    # "exception":Ljava/lang/Exception;
    goto :goto_12

    .line 64
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_40
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "EngineRunnable"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 66
    const-string/jumbo v3, "EngineRunnable"

    const-string/jumbo v4, "Exception decoding"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :cond_53
    move-object v1, v0

    goto :goto_12

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_55
    if-nez v2, :cond_6d

    .line 2094
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineRunnable;->isDecodingFromCache()Z

    move-result v3

    if-eqz v3, :cond_67

    .line 2095
    sget-object v3, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->SOURCE:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    iput-object v3, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->stage:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    .line 2096
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->manager:Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;

    invoke-interface {v3, p0}, Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;->submitForSource(Lcom/bumptech/glide/load/engine/EngineRunnable;)V

    goto :goto_5

    .line 2098
    :cond_67
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->manager:Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;

    invoke-interface {v3, v1}, Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;->onException(Ljava/lang/Exception;)V

    goto :goto_5

    .line 3090
    :cond_6d
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->manager:Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;

    invoke-interface {v3, v2}, Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V

    goto :goto_5
.end method
