.class public Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;
.super Ljava/lang/Object;
.source "ChineseCloudPrediction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$ChinesePredictionListener;
    }
.end annotation


# static fields
.field private static final MSG_POST_CHINESE_PREDICTION_TIMEOUT:I = 0x68

.field private static final MSG_START_CHINESE_PREDICTION:I = 0x67

.field private static final MSG_UPDATE_CHINESE_PREDICTION_RESULT:I = 0x66

.field private static volatile instance:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private chinesePredictionCallback:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;

.field private final chinesePredictionHandlerCallback:Landroid/os/Handler$Callback;

.field private final mChinesePredictionHandler:Landroid/os/Handler;

.field private mChinesePredictionID:Ljava/lang/String;

.field mChinesePredictionListenerWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$ChinesePredictionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mChinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

.field private mRequestCldInputData:[B

.field private mbChinsePredictionSessionStarted:Z

.field protected startRequestPredictionTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 18
    const-string/jumbo v0, "ChineseCloudPrediction"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 22
    sput-object v1, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->instance:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    .line 23
    sput-object v1, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mbChinsePredictionSessionStarted:Z

    .line 32
    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mRequestCldInputData:[B

    .line 38
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$1;-><init>(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->chinesePredictionHandlerCallback:Landroid/os/Handler$Callback;

    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->chinesePredictionHandlerCallback:Landroid/os/Handler$Callback;

    .line 72
    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$2;-><init>(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->chinesePredictionCallback:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;

    .line 20
    return-void
.end method

.method static synthetic access$000()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;)[B
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mRequestCldInputData:[B

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;[B)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;
    .param p1, "x1"    # [B

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->requestChinesePrediction([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;I)V
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;
    .param p3, "x3"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->postChinesePredictionResult(ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized doCancelPrediction()V
    .registers 5

    .prologue
    .line 261
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 262
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Cancel Chinese Prediction request ID:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;->cancelPrediction(Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 266
    :cond_22
    monitor-exit p0

    return-void

    .line 261
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized doLogResultSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V
    .registers 13
    .param p1, "predictionId"    # Ljava/lang/String;
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "spell"    # Ljava/lang/String;
    .param p4, "fullSpell"    # Ljava/lang/String;
    .param p5, "attributes"    # [I

    .prologue
    .line 306
    monitor-enter p0

    if-nez p2, :cond_2e

    if-nez p3, :cond_2e

    if-nez p4, :cond_2e

    if-nez p5, :cond_2e

    .line 308
    :try_start_9
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;->logResultSelection(Ljava/lang/String;)V

    .line 309
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "logResultSelection Prediction ID:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_1f
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_9 .. :try_end_1f} :catch_21
    .catchall {:try_start_9 .. :try_end_1f} :catchall_2b

    .line 329
    :goto_1f
    monitor-exit p0

    return-void

    .line 310
    :catch_21
    move-exception v6

    .line 311
    .local v6, "e":Lcom/nuance/swypeconnect/ac/ACException;
    :try_start_22
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "logChinesePredictionID...ACException: "

    invoke-interface {v0, v1, v6}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2b

    goto :goto_1f

    .line 306
    .end local v6    # "e":Lcom/nuance/swypeconnect/ac/ACException;
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 313
    :cond_2e
    if-nez p4, :cond_57

    if-nez p5, :cond_57

    .line 315
    :try_start_32
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;->logResultSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "logResultSelection ID:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_4c
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_32 .. :try_end_4c} :catch_4d
    .catchall {:try_start_32 .. :try_end_4c} :catchall_2b

    goto :goto_1f

    .line 317
    :catch_4d
    move-exception v6

    .line 318
    .restart local v6    # "e":Lcom/nuance/swypeconnect/ac/ACException;
    :try_start_4e
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "logSelectedWordForChinesePrediction...ACException: "

    invoke-interface {v0, v1, v6}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_2b

    goto :goto_1f

    .line 322
    .end local v6    # "e":Lcom/nuance/swypeconnect/ac/ACException;
    :cond_57
    :try_start_57
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "logResultSelection ID:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 323
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;->logResultSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V
    :try_end_72
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_57 .. :try_end_72} :catch_73
    .catchall {:try_start_57 .. :try_end_72} :catchall_2b

    goto :goto_1f

    .line 325
    :catch_73
    move-exception v6

    .line 326
    .restart local v6    # "e":Lcom/nuance/swypeconnect/ac/ACException;
    :try_start_74
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "logSelectedWordForChinesePrediction...ACException: "

    invoke-interface {v0, v1, v6}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_7c
    .catchall {:try_start_74 .. :try_end_7c} :catchall_2b

    goto :goto_1f
.end method

.method private declared-synchronized doRegisterCallback()V
    .registers 4

    .prologue
    .line 251
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->chinesePredictionCallback:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;

    invoke-interface {v1, v2}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_21

    .line 253
    :try_start_8
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    const/16 v2, 0x1e

    invoke-interface {v1, v2}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;->setIdleTimeout(I)V

    .line 254
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;->setPredictionResults(I)V
    :try_end_15
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_8 .. :try_end_15} :catch_17
    .catchall {:try_start_8 .. :try_end_15} :catchall_21

    .line 258
    :goto_15
    monitor-exit p0

    return-void

    .line 255
    :catch_17
    move-exception v0

    .line 256
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    :try_start_18
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "registerCallback...ACException: "

    invoke-interface {v1, v2, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_21

    goto :goto_15

    .line 251
    .end local v0    # "e":Lcom/nuance/swypeconnect/ac/ACException;
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized doRequestPrediction([B)Ljava/lang/String;
    .registers 9
    .param p1, "requestCldInputData"    # [B

    .prologue
    .line 195
    monitor-enter p0

    const/4 v1, 0x0

    .line 197
    .local v1, "id":Ljava/lang/String;
    :try_start_2
    sget-object v3, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "begin requesting Prediction ID"

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 198
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    invoke-interface {v3, p1}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;->requestPrediction([B)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->startRequestPredictionTime:J

    .line 200
    sget-object v3, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "requested Prediction ID:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_2d
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_2 .. :try_end_2d} :catch_30
    .catchall {:try_start_2 .. :try_end_2d} :catchall_3b

    move-object v2, v1

    .line 204
    .end local v1    # "id":Ljava/lang/String;
    .local v2, "id":Ljava/lang/String;
    :goto_2e
    monitor-exit p0

    return-object v2

    .line 201
    .end local v2    # "id":Ljava/lang/String;
    .restart local v1    # "id":Ljava/lang/String;
    :catch_30
    move-exception v0

    .line 202
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    :try_start_31
    sget-object v3, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "requested Prediction ID...ACException: "

    invoke-interface {v3, v4, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_3b

    move-object v2, v1

    .line 204
    .end local v1    # "id":Ljava/lang/String;
    .restart local v2    # "id":Ljava/lang/String;
    goto :goto_2e

    .end local v0    # "e":Lcom/nuance/swypeconnect/ac/ACException;
    .end local v2    # "id":Ljava/lang/String;
    .restart local v1    # "id":Ljava/lang/String;
    :catchall_3b
    move-exception v3

    move-object v2, v1

    .end local v1    # "id":Ljava/lang/String;
    .restart local v2    # "id":Ljava/lang/String;
    goto :goto_2e
.end method

.method private declared-synchronized doStartSession(II)V
    .registers 7
    .param p1, "languageId"    # I
    .param p2, "characterSet"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    .prologue
    .line 268
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Start session"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 269
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;->startSession(II)V

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mbChinsePredictionSessionStarted:Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 271
    monitor-exit p0

    return-void

    .line 268
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->instance:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    if-nez v0, :cond_d

    .line 77
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    invoke-direct {v0}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->instance:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    .line 78
    sput-object p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mContext:Landroid/content/Context;

    .line 80
    :cond_d
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->instance:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    return-object v0
.end method

.method private logChinesePredictionID()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 283
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mbChinsePredictionSessionStarted:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 291
    :cond_d
    :goto_d
    return-void

    .line 287
    :cond_e
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 290
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->doLogResultSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_d
.end method

.method private postChinesePredictionResult(ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;I)V
    .registers 10
    .param p1, "show"    # Z
    .param p2, "result"    # Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;
    .param p3, "delayMs"    # I

    .prologue
    const/16 v4, 0x66

    const/4 v1, 0x0

    .line 278
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionHandler:Landroid/os/Handler;

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {v3, v4, v0, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v4, p3

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 280
    return-void

    :cond_18
    move v0, v1

    .line 279
    goto :goto_f
.end method

.method private requestChinesePrediction([B)Ljava/lang/String;
    .registers 7
    .param p1, "requestCldInputData"    # [B

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0x68

    .line 174
    if-eqz p1, :cond_8

    array-length v1, p1

    if-gtz v1, :cond_9

    .line 191
    :cond_8
    :goto_8
    return-object v0

    .line 178
    :cond_9
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 182
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->doRequestPrediction([B)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "id":Ljava/lang/String;
    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;

    .line 186
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->logChinesePredictionID()V

    .line 188
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 189
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8
.end method


# virtual methods
.method public cancelChinesePrediction()V
    .registers 3

    .prologue
    .line 273
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->startRequestPredictionTime:J

    .line 274
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 275
    return-void
.end method

.method public destroy()V
    .registers 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->finish()V

    .line 130
    return-void
.end method

.method public finish()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->startRequestPredictionTime:J

    .line 106
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "begin finishing service"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    if-eqz v0, :cond_73

    .line 108
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mbChinsePredictionSessionStarted:Z

    if-eqz v0, :cond_40

    .line 109
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "end session"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;->endSession()V

    .line 112
    :cond_40
    iput-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mbChinsePredictionSessionStarted:Z

    .line 114
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;

    if-eqz v0, :cond_59

    .line 115
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "cancel prediction"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;->cancelPrediction(Ljava/lang/String;)V

    .line 119
    :cond_59
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->chinesePredictionCallback:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;

    if-eqz v0, :cond_70

    .line 120
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "unregister Callback"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->chinesePredictionCallback:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;

    invoke-interface {v0, v1}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;->unregisterCallback(Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;)V

    .line 124
    :cond_70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    .line 126
    :cond_73
    return-void
.end method

.method public getChinesePredictionListener()Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$ChinesePredictionListener;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionListenerWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    .line 96
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$ChinesePredictionListener;

    .line 98
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public logSelectedWordForChinesePrediction(Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;)V
    .registers 8
    .param p1, "chinesePrediction"    # Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    .prologue
    .line 331
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mbChinsePredictionSessionStarted:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 338
    :cond_e
    :goto_e
    return-void

    .line 335
    :cond_f
    invoke-interface {p1}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getPredictionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getPhrase()Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-interface {p1}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getSpell()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getFullSpell()Ljava/lang/String;

    move-result-object v4

    .line 337
    invoke-interface {p1}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getAttributes()[I

    move-result-object v5

    move-object v0, p0

    .line 335
    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->doLogResultSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_e
.end method

.method public logSelectedWordForChinesePrediction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "spell"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 294
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mbChinsePredictionSessionStarted:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 302
    :cond_f
    :goto_f
    return-void

    .line 298
    :cond_10
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 301
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionID:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->doLogResultSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_f
.end method

.method public requestChinesePrediction([BII)V
    .registers 10
    .param p1, "requestData"    # [B
    .param p2, "coreLanguageID"    # I
    .param p3, "cldPredicitonCharacterSet"    # I

    .prologue
    const/16 v5, 0x67

    .line 212
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    if-nez v1, :cond_26

    .line 213
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getChinesePredictionService()Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    .line 215
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    if-nez v1, :cond_17

    .line 248
    :cond_16
    :goto_16
    return-void

    .line 219
    :cond_17
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 223
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->doRegisterCallback()V

    .line 226
    :cond_26
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mbChinsePredictionSessionStarted:Z

    if-nez v1, :cond_2d

    .line 228
    :try_start_2a
    invoke-direct {p0, p2, p3}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->doStartSession(II)V
    :try_end_2d
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_2a .. :try_end_2d} :catch_59

    .line 237
    :cond_2d
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 238
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    :goto_3a
    if-eqz p1, :cond_43

    .line 244
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mRequestCldInputData:[B

    .line 246
    :cond_43
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "New Chinese Prediction request created."

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 247
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_16

    .line 229
    :catch_59
    move-exception v0

    .line 230
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "start session...ACException: "

    invoke-interface {v1, v2, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_16

    .line 240
    .end local v0    # "e":Lcom/nuance/swypeconnect/ac/ACException;
    :cond_63
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->doCancelPrediction()V

    goto :goto_3a
.end method

.method public setChinesePredictionListener(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$ChinesePredictionListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$ChinesePredictionListener;

    .prologue
    .line 91
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->mChinesePredictionListenerWeakRef:Ljava/lang/ref/WeakReference;

    .line 92
    return-void
.end method
