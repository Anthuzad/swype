.class public Lcom/flurry/sdk/ke;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/flurry/sdk/lx;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/flurry/sdk/jw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jw",
            "<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TT;",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/flurry/sdk/ke;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ke;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/flurry/sdk/jw;

    invoke-direct {v0}, Lcom/flurry/sdk/jw;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ke;->b:Lcom/flurry/sdk/jw;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ke;->c:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ke;->d:Ljava/util/HashMap;

    .line 49
    new-instance v0, Lcom/flurry/sdk/ke$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/flurry/sdk/ke$1;-><init>(Lcom/flurry/sdk/ke;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/flurry/sdk/ke;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 108
    iget-object v0, p0, Lcom/flurry/sdk/ke;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/flurry/sdk/ke$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ke$2;-><init>(Lcom/flurry/sdk/ke;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 132
    new-instance v0, Lcom/flurry/sdk/lk;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/lk;-><init>(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/flurry/sdk/ke;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    .line 134
    return-void
.end method

.method static synthetic a(Ljava/lang/Runnable;)Lcom/flurry/sdk/lx;
    .registers 6

    .prologue
    .line 25
    .line 1236
    const/4 v0, 0x0

    .line 1238
    instance-of v1, p0, Lcom/flurry/sdk/kd;

    if-eqz v1, :cond_e

    .line 1239
    check-cast p0, Lcom/flurry/sdk/kd;

    .line 1240
    invoke-virtual {p0}, Lcom/flurry/sdk/kd;->a()Ljava/lang/Runnable;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/lx;

    .line 25
    :goto_d
    return-object v0

    .line 1241
    :cond_e
    instance-of v1, p0, Lcom/flurry/sdk/lx;

    if-eqz v1, :cond_16

    .line 1242
    check-cast p0, Lcom/flurry/sdk/lx;

    move-object v0, p0

    goto :goto_d

    .line 1244
    :cond_16
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/ke;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unknown runnable class: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method static synthetic a(Lcom/flurry/sdk/ke;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/flurry/sdk/ke;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/ke;Lcom/flurry/sdk/lx;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ke;->b(Lcom/flurry/sdk/lx;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/lx;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 158
    monitor-enter p0

    if-nez p1, :cond_5

    .line 178
    :goto_3
    monitor-exit p0

    return-void

    .line 163
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/flurry/sdk/ke;->d:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_23

    .line 164
    :try_start_8
    iget-object v0, p0, Lcom/flurry/sdk/ke;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 165
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_26

    .line 166
    :try_start_11
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ke;->b(Lcom/flurry/sdk/lx;)V

    .line 168
    if-eqz v0, :cond_1a

    .line 169
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 172
    :cond_1a
    new-instance v0, Lcom/flurry/sdk/ke$3;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ke$3;-><init>(Lcom/flurry/sdk/ke;Lcom/flurry/sdk/lx;)V

    .line 177
    invoke-virtual {v0}, Lcom/flurry/sdk/ke$3;->run()V
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_23

    goto :goto_3

    .line 158
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0

    .line 165
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    :try_start_28
    throw v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_23
.end method

.method private declared-synchronized b(Lcom/flurry/sdk/lx;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 226
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/ke;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/flurry/sdk/ke;->c(Ljava/lang/Object;Lcom/flurry/sdk/lx;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 227
    monitor-exit p0

    return-void

    .line 226
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/Object;Lcom/flurry/sdk/lx;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 221
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/ke;->b:Lcom/flurry/sdk/jw;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/flurry/sdk/ke;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 223
    monitor-exit p0

    return-void

    .line 221
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Ljava/lang/Object;Lcom/flurry/sdk/lx;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 230
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/ke;->b:Lcom/flurry/sdk/jw;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/jw;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/flurry/sdk/ke;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 232
    monitor-exit p0

    return-void

    .line 230
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 146
    monitor-enter p0

    if-nez p1, :cond_5

    .line 155
    :cond_3
    monitor-exit p0

    return-void

    .line 150
    :cond_5
    :try_start_5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 151
    iget-object v1, p0, Lcom/flurry/sdk/ke;->b:Lcom/flurry/sdk/jw;

    invoke-virtual {v1, p1}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 152
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/lx;

    .line 153
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ke;->a(Lcom/flurry/sdk/lx;)V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    goto :goto_17

    .line 146
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/Object;Lcom/flurry/sdk/lx;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 137
    monitor-enter p0

    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    .line 143
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 141
    :cond_7
    :try_start_7
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ke;->b(Ljava/lang/Object;Lcom/flurry/sdk/lx;)V

    .line 142
    iget-object v0, p0, Lcom/flurry/sdk/ke;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_10

    goto :goto_5

    .line 137
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method