.class public final Lcom/google/android/gms/internal/zzbh;
.super Lcom/google/android/gms/internal/zzbp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzae$zza;I)V
    .registers 13

    const/16 v6, 0x18

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbp;-><init>(Lcom/google/android/gms/internal/zzax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzae$zza;II)V

    return-void
.end method


# virtual methods
.method protected final zzcu()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbh;->zzaey:Lcom/google/android/gms/internal/zzax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzax;->zzci()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbh;->zzaey:Lcom/google/android/gms/internal/zzax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzax;->zzcr()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    move-result-object v0

    if-eqz v0, :cond_3b

    :try_start_10
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getInfo()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzay;->zzo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3b

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbh;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    monitor-enter v2
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_21} :catch_3f

    :try_start_21
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbh;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    iput-object v1, v3, Lcom/google/android/gms/internal/zzae$zza;->zzeg:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbh;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/zzae$zza;->zzei:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbh;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzae$zza;->zzeh:Ljava/lang/Integer;

    monitor-exit v2

    .line 2000
    :cond_3b
    :goto_3b
    return-void

    .line 1000
    :catchall_3c
    move-exception v0

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_21 .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw v0
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_3f} :catch_3f

    :catch_3f
    move-exception v0

    goto :goto_3b

    .line 2000
    :cond_41
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbh;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    monitor-enter v1

    :try_start_44
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbh;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbh;->zzahh:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzbh;->zzaey:Lcom/google/android/gms/internal/zzax;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzax;->getContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/zzae$zza;->zzeg:Ljava/lang/String;

    monitor-exit v1

    goto :goto_3b

    :catchall_5f
    move-exception v0

    monitor-exit v1
    :try_end_61
    .catchall {:try_start_44 .. :try_end_61} :catchall_5f

    throw v0
.end method
