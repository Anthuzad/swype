.class public final Lcom/google/android/gms/internal/zzkk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field private mState:I

.field private final zzbre:F

.field public zzcll:Ljava/lang/String;

.field private zzclm:F

.field private zzcln:F

.field private zzclo:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzkk;->mState:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkk;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/gms/internal/zzkk;->zzbre:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzkk;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzkk;->zzcll:Ljava/lang/String;

    return-void
.end method

.method private zza(IFF)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzkk;->mState:I

    iput p2, p0, Lcom/google/android/gms/internal/zzkk;->zzclm:F

    iput p3, p0, Lcom/google/android/gms/internal/zzkk;->zzcln:F

    iput p3, p0, Lcom/google/android/gms/internal/zzkk;->zzclo:F

    .line 1000
    :cond_0
    :goto_0
    return-void

    .line 0
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzkk;->mState:I

    if-eq v0, v5, :cond_0

    if-ne p1, v4, :cond_b

    iget v0, p0, Lcom/google/android/gms/internal/zzkk;->zzcln:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_3

    iput p3, p0, Lcom/google/android/gms/internal/zzkk;->zzcln:F

    :cond_2
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/zzkk;->zzcln:F

    iget v1, p0, Lcom/google/android/gms/internal/zzkk;->zzclo:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x41f00000    # 30.0f

    iget v2, p0, Lcom/google/android/gms/internal/zzkk;->zzbre:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iput v5, p0, Lcom/google/android/gms/internal/zzkk;->mState:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzkk;->zzclo:F

    cmpg-float v0, p3, v0

    if-gez v0, :cond_2

    iput p3, p0, Lcom/google/android/gms/internal/zzkk;->zzclo:F

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/zzkk;->mState:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/gms/internal/zzkk;->mState:I

    if-ne v0, v4, :cond_8

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/zzkk;->zzclm:F

    sub-float v0, p2, v0

    const/high16 v1, 0x42480000    # 50.0f

    iget v2, p0, Lcom/google/android/gms/internal/zzkk;->zzbre:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    iput p2, p0, Lcom/google/android/gms/internal/zzkk;->zzclm:F

    iget v0, p0, Lcom/google/android/gms/internal/zzkk;->mState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzkk;->mState:I

    :cond_6
    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/zzkk;->mState:I

    if-eq v0, v3, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/zzkk;->mState:I

    if-ne v0, v6, :cond_a

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/zzkk;->zzclm:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    iput p2, p0, Lcom/google/android/gms/internal/zzkk;->zzclm:F

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/zzkk;->mState:I

    if-eq v0, v3, :cond_9

    iget v0, p0, Lcom/google/android/gms/internal/zzkk;->mState:I

    if-ne v0, v6, :cond_6

    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/zzkk;->zzclm:F

    sub-float v0, p2, v0

    const/high16 v1, -0x3db80000    # -50.0f

    iget v2, p0, Lcom/google/android/gms/internal/zzkk;->zzbre:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    iput p2, p0, Lcom/google/android/gms/internal/zzkk;->zzclm:F

    iget v0, p0, Lcom/google/android/gms/internal/zzkk;->mState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzkk;->mState:I

    goto :goto_2

    :cond_a
    iget v0, p0, Lcom/google/android/gms/internal/zzkk;->mState:I

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzkk;->zzclm:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    iput p2, p0, Lcom/google/android/gms/internal/zzkk;->zzclm:F

    goto/16 :goto_0

    :cond_b
    if-ne p1, v3, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzkk;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkk;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_c

    const-string/jumbo v0, "Can not create dialog without Activity Context"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcw(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkk;->zzcll:Ljava/lang/String;

    .line 2000
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string/jumbo v1, "\\+"

    const-string/jumbo v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzf(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\n\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1000
    :goto_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkk;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v2, "Ad Information"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v2, "Share"

    new-instance v3, Lcom/google/android/gms/internal/zzkk$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzkk$1;-><init>(Lcom/google/android/gms/internal/zzkk;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v0, "Close"

    new-instance v2, Lcom/google/android/gms/internal/zzkk$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzkk$2;-><init>(Lcom/google/android/gms/internal/zzkk;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 2000
    :cond_e
    const-string/jumbo v0, "No debug information"

    goto :goto_4
.end method


# virtual methods
.method public final zze(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v4

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/gms/internal/zzkk;->zza(IFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzkk;->zza(IFF)V

    return-void
.end method
