.class public abstract Lcom/nuance/android/compat/NotificationCompat$Style;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/android/compat/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field mBigContentTitle:Ljava/lang/CharSequence;

.field mBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/android/compat/NotificationCompat$Style;->mSummaryTextSet:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Lcom/nuance/android/compat/NotificationCompat$Style;->mBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/nuance/android/compat/NotificationCompat$Style;->mBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v1}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 601
    :cond_0
    return-object v0
.end method

.method public setBuilder(Lcom/nuance/android/compat/NotificationCompat$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/nuance/android/compat/NotificationCompat$Builder;

    .prologue
    .line 588
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Style;->mBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eq v0, p1, :cond_0

    .line 589
    iput-object p1, p0, Lcom/nuance/android/compat/NotificationCompat$Style;->mBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 590
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Style;->mBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Style;->mBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v0, p0}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setStyle(Lcom/nuance/android/compat/NotificationCompat$Style;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 594
    :cond_0
    return-void
.end method
