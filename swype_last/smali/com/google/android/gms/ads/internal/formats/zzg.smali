.class public Lcom/google/android/gms/ads/internal/formats/zzg;
.super Lcom/google/android/gms/ads/internal/formats/zzi;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private zzail:Ljava/lang/Object;

.field private zzbfv:Lcom/google/android/gms/internal/zzgn;

.field private zzbfw:Lcom/google/android/gms/internal/zzgo;

.field private final zzbfx:Lcom/google/android/gms/ads/internal/zzq;

.field private zzbfy:Lcom/google/android/gms/ads/internal/formats/zzh;

.field private zzbfz:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzas;)V
    .registers 13

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/formats/zzi;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzih;Lcom/google/android/gms/internal/zzas;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfz:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzail:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfx:Lcom/google/android/gms/ads/internal/zzq;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzas;Lcom/google/android/gms/internal/zzgn;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/formats/zzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzas;)V

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfv:Lcom/google/android/gms/internal/zzgn;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzas;Lcom/google/android/gms/internal/zzgo;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/formats/zzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzas;)V

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfw:Lcom/google/android/gms/internal/zzgo;

    return-void
.end method


# virtual methods
.method public recordImpression()V
    .registers 4

    .prologue
    .line 0
    const-string/jumbo v0, "recordImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    .line 1000
    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbge:Z

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfy:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfy:Lcom/google/android/gms/ads/internal/formats/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/formats/zzh;->recordImpression()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfx:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->recordImpression()V

    :cond_1a
    :goto_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_3b

    return-void

    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfv:Lcom/google/android/gms/internal/zzgn;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfv:Lcom/google/android/gms/internal/zzgn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgn;->getOverrideImpressionRecording()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfv:Lcom/google/android/gms/internal/zzgn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgn;->recordImpression()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfx:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->recordImpression()V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_32} :catch_33
    .catchall {:try_start_1c .. :try_end_32} :catchall_3b

    goto :goto_1a

    :catch_33
    move-exception v0

    :try_start_34
    const-string/jumbo v2, "Failed to call recordImpression"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_3b

    throw v0

    :cond_3e
    :try_start_3e
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfw:Lcom/google/android/gms/internal/zzgo;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfw:Lcom/google/android/gms/internal/zzgo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgo;->getOverrideImpressionRecording()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfw:Lcom/google/android/gms/internal/zzgo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgo;->recordImpression()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfx:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->recordImpression()V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_54} :catch_33
    .catchall {:try_start_3e .. :try_end_54} :catchall_3b

    goto :goto_1a
.end method

.method public zza(Landroid/view/View$OnClickListener;)Lcom/google/android/gms/ads/internal/formats/zzb;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public zza(Landroid/view/View;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfz:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_2e

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfv:Lcom/google/android/gms/internal/zzgn;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfv:Lcom/google/android/gms/internal/zzgn;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzgn;->zzl(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_26
    .catchall {:try_start_6 .. :try_end_13} :catchall_2e

    :cond_13
    :goto_13
    const/4 v0, 0x0

    :try_start_14
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfz:Z

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_2e

    return-void

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfw:Lcom/google/android/gms/internal/zzgo;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfw:Lcom/google/android/gms/internal/zzgo;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzgo;->zzl(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_25} :catch_26
    .catchall {:try_start_18 .. :try_end_25} :catchall_2e

    goto :goto_13

    :catch_26
    move-exception v0

    :try_start_27
    const-string/jumbo v2, "Failed to call prepareAd"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public zza(Landroid/view/View;Ljava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "performClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzail:Ljava/lang/Object;

    monitor-enter v6

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfy:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfy:Lcom/google/android/gms/ads/internal/formats/zzh;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/formats/zzh;->zza(Landroid/view/View;Ljava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfx:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->onAdClicked()V

    :cond_1c
    :goto_1c
    monitor-exit v6
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_5b

    return-void

    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfv:Lcom/google/android/gms/internal/zzgn;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfv:Lcom/google/android/gms/internal/zzgn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgn;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfv:Lcom/google/android/gms/internal/zzgn;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzgn;->zzk(Lcom/google/android/gms/dynamic/zzd;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfx:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->onAdClicked()V

    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfw:Lcom/google/android/gms/internal/zzgo;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfw:Lcom/google/android/gms/internal/zzgo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgo;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfw:Lcom/google/android/gms/internal/zzgo;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzgo;->zzk(Lcom/google/android/gms/dynamic/zzd;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfx:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->onAdClicked()V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_52} :catch_53
    .catchall {:try_start_1e .. :try_end_52} :catchall_5b

    goto :goto_1c

    :catch_53
    move-exception v0

    :try_start_54
    const-string/jumbo v1, "Failed to call performClick"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c

    :catchall_5b
    move-exception v0

    monitor-exit v6
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_5b

    throw v0
.end method

.method public zzb(Landroid/view/View;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfv:Lcom/google/android/gms/internal/zzgn;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfv:Lcom/google/android/gms/internal/zzgn;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzgn;->zzm(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_20
    .catchall {:try_start_3 .. :try_end_10} :catchall_28

    :cond_10
    :goto_10
    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_28

    return-void

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfw:Lcom/google/android/gms/internal/zzgo;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfw:Lcom/google/android/gms/internal/zzgo;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzgo;->zzm(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1f} :catch_20
    .catchall {:try_start_12 .. :try_end_1f} :catchall_28

    goto :goto_10

    :catch_20
    move-exception v0

    :try_start_21
    const-string/jumbo v2, "Failed to call untrackView"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public zzc(Lcom/google/android/gms/ads/internal/formats/zzh;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfy:Lcom/google/android/gms/ads/internal/formats/zzh;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzkz()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfz:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzla()Lcom/google/android/gms/ads/internal/formats/zzh;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfy:Lcom/google/android/gms/ads/internal/formats/zzh;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzlb()Lcom/google/android/gms/internal/zzlh;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
