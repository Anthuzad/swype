.class public final Lcom/google/android/gms/internal/zzlp;
.super Lcom/google/android/gms/internal/zzli;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlh;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzli;-><init>(Lcom/google/android/gms/internal/zzlh;Z)V

    return-void
.end method


# virtual methods
.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 11

    .prologue
    .line 0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mraid.js"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/zzli;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    .line 5000
    :goto_16
    return-object v2

    .line 0
    :cond_17
    instance-of v2, p1, Lcom/google/android/gms/internal/zzlh;

    if-nez v2, :cond_26

    const-string/jumbo v2, "Tried to intercept request from a WebView that wasn\'t an AdWebView."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/zzli;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    goto :goto_16

    :cond_26
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzlh;

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlh;->zzuj()Lcom/google/android/gms/internal/zzli;

    move-result-object v3

    .line 1000
    iget-object v4, v3, Lcom/google/android/gms/internal/zzli;->zzail:Ljava/lang/Object;

    monitor-enter v4
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_31} :catch_d4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_31} :catch_139
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_31} :catch_137
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_31} :catch_13b

    const/4 v5, 0x0

    :try_start_32
    iput-boolean v5, v3, Lcom/google/android/gms/internal/zzli;->zzcoo:Z

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/google/android/gms/internal/zzli;->zzark:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    new-instance v5, Lcom/google/android/gms/internal/zzli$2;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/zzli$2;-><init>(Lcom/google/android/gms/internal/zzli;)V

    invoke-static {v5}, Lcom/google/android/gms/internal/zzkh;->runOnUiThread(Ljava/lang/Runnable;)V

    monitor-exit v4
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_d1

    .line 0
    :try_start_43
    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlh;->zzdn()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaus:Z

    if-eqz v3, :cond_f3

    sget-object v3, Lcom/google/android/gms/internal/zzdc;->zzazd:Lcom/google/android/gms/internal/zzcy;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v3

    .line 0
    check-cast v3, Ljava/lang/String;

    move-object v4, v3

    :goto_58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x18

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "shouldInterceptRequest("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlh;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzlp;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzlh;->zzum()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    .line 5000
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v5, "User-Agent"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Lcom/google/android/gms/internal/zzkh;->zzg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Cache-Control"

    const-string/jumbo v5, "max-stale=3600"

    invoke-interface {v7, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/android/gms/internal/zzkn;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/zzkn;-><init>(Landroid/content/Context;)V

    .line 7000
    new-instance v5, Lcom/google/android/gms/internal/zzkn$zzc;

    const/4 v2, 0x0

    invoke-direct {v5, v3, v2}, Lcom/google/android/gms/internal/zzkn$zzc;-><init>(Lcom/google/android/gms/internal/zzkn;B)V

    new-instance v6, Lcom/google/android/gms/internal/zzkn$2;

    invoke-direct {v6, v3, v4, v5}, Lcom/google/android/gms/internal/zzkn$2;-><init>(Lcom/google/android/gms/internal/zzkn;Ljava/lang/String;Lcom/google/android/gms/internal/zzkn$zzc;)V

    new-instance v2, Lcom/google/android/gms/internal/zzkn$3;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzkn$3;-><init>(Lcom/google/android/gms/internal/zzkn;Ljava/lang/String;Lcom/google/android/gms/internal/zzm$zzb;Lcom/google/android/gms/internal/zzm$zza;Ljava/util/Map;)V

    sget-object v3, Lcom/google/android/gms/internal/zzkn;->zzcmc:Lcom/google/android/gms/internal/zzl;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzl;->zze(Lcom/google/android/gms/internal/zzk;)Lcom/google/android/gms/internal/zzk;

    .line 5000
    const-wide/16 v2, 0x3c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v2, v3, v4}, Lcom/google/android/gms/internal/zzky;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_cc} :catch_d4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_43 .. :try_end_cc} :catch_139
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_cc} :catch_137
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_43 .. :try_end_cc} :catch_13b

    if-nez v2, :cond_117

    const/4 v2, 0x0

    goto/16 :goto_16

    .line 1000
    :catchall_d1
    move-exception v2

    :try_start_d2
    monitor-exit v4
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    :try_start_d3
    throw v2
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d4} :catch_d4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d3 .. :try_end_d4} :catch_139
    .catch Ljava/lang/InterruptedException; {:try_start_d3 .. :try_end_d4} :catch_137
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d3 .. :try_end_d4} :catch_13b

    .line 0
    :catch_d4
    move-exception v2

    :goto_d5
    const-string/jumbo v3, "Could not fetch MRAID JS. "

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_131

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_ea
    invoke-static {v2}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/zzli;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    goto/16 :goto_16

    :cond_f3
    :try_start_f3
    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlh;->zzun()Z

    move-result v3

    if-eqz v3, :cond_108

    sget-object v3, Lcom/google/android/gms/internal/zzdc;->zzazc:Lcom/google/android/gms/internal/zzcy;

    .line 3000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v3

    .line 0
    check-cast v3, Ljava/lang/String;

    move-object v4, v3

    goto/16 :goto_58

    :cond_108
    sget-object v3, Lcom/google/android/gms/internal/zzdc;->zzazb:Lcom/google/android/gms/internal/zzcy;

    .line 4000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v3

    .line 0
    check-cast v3, Ljava/lang/String;

    move-object v4, v3

    goto/16 :goto_58

    .line 5000
    :cond_117
    new-instance v3, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v4, "application/javascript"

    const-string/jumbo v5, "UTF-8"

    new-instance v6, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4, v5, v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_12e
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_12e} :catch_d4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f3 .. :try_end_12e} :catch_139
    .catch Ljava/lang/InterruptedException; {:try_start_f3 .. :try_end_12e} :catch_137
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_f3 .. :try_end_12e} :catch_13b

    move-object v2, v3

    .line 0
    goto/16 :goto_16

    :cond_131
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_ea

    :catch_137
    move-exception v2

    goto :goto_d5

    :catch_139
    move-exception v2

    goto :goto_d5

    :catch_13b
    move-exception v2

    goto :goto_d5
.end method
