.class synthetic Lcom/localytics/android/MarketingCondition$1;
.super Ljava/lang/Object;
.source "MarketingCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/MarketingCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$localytics$android$MarketingCondition$Opt:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 136
    invoke-static {}, Lcom/localytics/android/MarketingCondition$Opt;->values()[Lcom/localytics/android/MarketingCondition$Opt;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/localytics/android/MarketingCondition$1;->$SwitchMap$com$localytics$android$MarketingCondition$Opt:[I

    :try_start_9
    sget-object v0, Lcom/localytics/android/MarketingCondition$1;->$SwitchMap$com$localytics$android$MarketingCondition$Opt:[I

    sget-object v1, Lcom/localytics/android/MarketingCondition$Opt;->EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

    invoke-virtual {v1}, Lcom/localytics/android/MarketingCondition$Opt;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_7f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/localytics/android/MarketingCondition$1;->$SwitchMap$com$localytics$android$MarketingCondition$Opt:[I

    sget-object v1, Lcom/localytics/android/MarketingCondition$Opt;->NOT_EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

    invoke-virtual {v1}, Lcom/localytics/android/MarketingCondition$Opt;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_7d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/localytics/android/MarketingCondition$1;->$SwitchMap$com$localytics$android$MarketingCondition$Opt:[I

    sget-object v1, Lcom/localytics/android/MarketingCondition$Opt;->IN_LIST:Lcom/localytics/android/MarketingCondition$Opt;

    invoke-virtual {v1}, Lcom/localytics/android/MarketingCondition$Opt;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_7b

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/localytics/android/MarketingCondition$1;->$SwitchMap$com$localytics$android$MarketingCondition$Opt:[I

    sget-object v1, Lcom/localytics/android/MarketingCondition$Opt;->GREATER_THAN:Lcom/localytics/android/MarketingCondition$Opt;

    invoke-virtual {v1}, Lcom/localytics/android/MarketingCondition$Opt;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_79

    :goto_35
    :try_start_35
    sget-object v0, Lcom/localytics/android/MarketingCondition$1;->$SwitchMap$com$localytics$android$MarketingCondition$Opt:[I

    sget-object v1, Lcom/localytics/android/MarketingCondition$Opt;->GREATER_THEN_OR_EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

    invoke-virtual {v1}, Lcom/localytics/android/MarketingCondition$Opt;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_77

    :goto_40
    :try_start_40
    sget-object v0, Lcom/localytics/android/MarketingCondition$1;->$SwitchMap$com$localytics$android$MarketingCondition$Opt:[I

    sget-object v1, Lcom/localytics/android/MarketingCondition$Opt;->LESS_THAN:Lcom/localytics/android/MarketingCondition$Opt;

    invoke-virtual {v1}, Lcom/localytics/android/MarketingCondition$Opt;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_75

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/localytics/android/MarketingCondition$1;->$SwitchMap$com$localytics$android$MarketingCondition$Opt:[I

    sget-object v1, Lcom/localytics/android/MarketingCondition$Opt;->LESS_THAN_OR_EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

    invoke-virtual {v1}, Lcom/localytics/android/MarketingCondition$Opt;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_73

    :goto_56
    :try_start_56
    sget-object v0, Lcom/localytics/android/MarketingCondition$1;->$SwitchMap$com$localytics$android$MarketingCondition$Opt:[I

    sget-object v1, Lcom/localytics/android/MarketingCondition$Opt;->BETWEEN:Lcom/localytics/android/MarketingCondition$Opt;

    invoke-virtual {v1}, Lcom/localytics/android/MarketingCondition$Opt;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_71

    :goto_62
    :try_start_62
    sget-object v0, Lcom/localytics/android/MarketingCondition$1;->$SwitchMap$com$localytics$android$MarketingCondition$Opt:[I

    sget-object v1, Lcom/localytics/android/MarketingCondition$Opt;->INVALID:Lcom/localytics/android/MarketingCondition$Opt;

    invoke-virtual {v1}, Lcom/localytics/android/MarketingCondition$Opt;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6f

    :goto_6e
    return-void

    :catch_6f
    move-exception v0

    goto :goto_6e

    :catch_71
    move-exception v0

    goto :goto_62

    :catch_73
    move-exception v0

    goto :goto_56

    :catch_75
    move-exception v0

    goto :goto_4b

    :catch_77
    move-exception v0

    goto :goto_40

    :catch_79
    move-exception v0

    goto :goto_35

    :catch_7b
    move-exception v0

    goto :goto_2a

    :catch_7d
    move-exception v0

    goto :goto_1f

    :catch_7f
    move-exception v0

    goto :goto_14
.end method
