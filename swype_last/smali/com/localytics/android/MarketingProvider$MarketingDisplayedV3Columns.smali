.class final Lcom/localytics/android/MarketingProvider$MarketingDisplayedV3Columns;
.super Ljava/lang/Object;
.source "MarketingProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/MarketingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MarketingDisplayedV3Columns"
.end annotation


# static fields
.field static final CAMPAIGN_ID:Ljava/lang/String; = "campaign_id"

.field static final TABLE_NAME:Ljava/lang/String; = "marketing_displayed"


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
