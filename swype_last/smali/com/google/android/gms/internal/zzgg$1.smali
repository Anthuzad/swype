.class final Lcom/google/android/gms/internal/zzgg$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgg;->zzd(Ljava/util/List;)Lcom/google/android/gms/internal/zzge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/zzge;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbpa:Lcom/google/android/gms/internal/zzgd;

.field final synthetic zzbpb:Lcom/google/android/gms/internal/zzgg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgg;Lcom/google/android/gms/internal/zzgd;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgg$1;->zzbpb:Lcom/google/android/gms/internal/zzgg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgg$1;->zzbpa:Lcom/google/android/gms/internal/zzgd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zzmn()Lcom/google/android/gms/internal/zzge;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg$1;->zzbpb:Lcom/google/android/gms/internal/zzgg;

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzgg;->zzail:Ljava/lang/Object;

    .line 0
    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg$1;->zzbpb:Lcom/google/android/gms/internal/zzgg;

    .line 2000
    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzgg;->zzbox:Z

    .line 0
    if-eqz v0, :cond_e

    const/4 v0, 0x0

    monitor-exit v1

    :goto_d
    return-object v0

    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg$1;->zzbpa:Lcom/google/android/gms/internal/zzgd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgg$1;->zzbpb:Lcom/google/android/gms/internal/zzgg;

    .line 3000
    iget-wide v2, v1, Lcom/google/android/gms/internal/zzgg;->zzbou:J

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzgg$1;->zzbpb:Lcom/google/android/gms/internal/zzgg;

    .line 4000
    iget-wide v4, v1, Lcom/google/android/gms/internal/zzgg;->zzbov:J

    .line 0
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzgd;->zza(JJ)Lcom/google/android/gms/internal/zzge;

    move-result-object v0

    goto :goto_d

    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgg$1;->zzmn()Lcom/google/android/gms/internal/zzge;

    move-result-object v0

    return-object v0
.end method
