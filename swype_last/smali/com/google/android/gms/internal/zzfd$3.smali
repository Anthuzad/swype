.class final Lcom/google/android/gms/internal/zzfd$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfd;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbjh:Ljava/lang/String;

.field final synthetic zzbji:Ljava/lang/String;

.field final synthetic zzbjm:Lcom/google/android/gms/internal/zzfd;

.field final synthetic zzbjn:Ljava/lang/String;

.field final synthetic zzbjo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfd$3;->zzbjm:Lcom/google/android/gms/internal/zzfd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfd$3;->zzbjh:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfd$3;->zzbji:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzfd$3;->zzbjn:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzfd$3;->zzbjo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "event"

    const-string/jumbo v1, "precacheCanceled"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "src"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfd$3;->zzbjh:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfd$3;->zzbji:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string/jumbo v0, "cachedSrc"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfd$3;->zzbji:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    const-string/jumbo v3, "type"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfd$3;->zzbjn:Ljava/lang/String;

    .line 2000
    const-string/jumbo v0, "internal"

    const/4 v1, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_e4

    :cond_36
    :goto_36
    packed-switch v1, :pswitch_data_10e

    .line 0
    :goto_39
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "reason"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfd$3;->zzbjn:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfd$3;->zzbjo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    const-string/jumbo v0, "message"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfd$3;->zzbjo:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfd$3;->zzbjm:Lcom/google/android/gms/internal/zzfd;

    const-string/jumbo v1, "onPrecacheEvent"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzfd;->zza(Lcom/google/android/gms/internal/zzfd;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 2000
    :sswitch_5d
    const-string/jumbo v5, "error"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    const/4 v1, 0x0

    goto :goto_36

    :sswitch_68
    const-string/jumbo v5, "playerFailed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    const/4 v1, 0x1

    goto :goto_36

    :sswitch_73
    const-string/jumbo v5, "inProgress"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    const/4 v1, 0x2

    goto :goto_36

    :sswitch_7e
    const-string/jumbo v5, "contentLengthMissing"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    const/4 v1, 0x3

    goto :goto_36

    :sswitch_89
    const-string/jumbo v5, "noCacheDir"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    const/4 v1, 0x4

    goto :goto_36

    :sswitch_94
    const-string/jumbo v5, "expireFailed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    const/4 v1, 0x5

    goto :goto_36

    :sswitch_9f
    const-string/jumbo v5, "badUrl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    const/4 v1, 0x6

    goto :goto_36

    :sswitch_aa
    const-string/jumbo v5, "downloadTimeout"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    const/4 v1, 0x7

    goto :goto_36

    :sswitch_b5
    const-string/jumbo v5, "sizeExceeded"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    const/16 v1, 0x8

    goto/16 :goto_36

    :sswitch_c2
    const-string/jumbo v5, "externalAbort"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    const/16 v1, 0x9

    goto/16 :goto_36

    :pswitch_cf
    const-string/jumbo v0, "internal"

    goto/16 :goto_39

    :pswitch_d4
    const-string/jumbo v0, "io"

    goto/16 :goto_39

    :pswitch_d9
    const-string/jumbo v0, "network"

    goto/16 :goto_39

    :pswitch_de
    const-string/jumbo v0, "policy"

    goto/16 :goto_39

    nop

    :sswitch_data_e4
    .sparse-switch
        -0x533f68d6 -> :sswitch_9f
        -0x5049c18e -> :sswitch_73
        -0x36c40c47 -> :sswitch_aa
        -0x274d4859 -> :sswitch_7e
        -0x26475182 -> :sswitch_68
        -0x151a598c -> :sswitch_b5
        -0x1e989db -> :sswitch_c2
        0x5c4d208 -> :sswitch_5d
        0x2293ea3c -> :sswitch_94
        0x2b3e368c -> :sswitch_89
    .end sparse-switch

    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_cf
        :pswitch_cf
        :pswitch_cf
        :pswitch_cf
        :pswitch_d4
        :pswitch_d4
        :pswitch_d9
        :pswitch_d9
        :pswitch_de
        :pswitch_de
    .end packed-switch
.end method
