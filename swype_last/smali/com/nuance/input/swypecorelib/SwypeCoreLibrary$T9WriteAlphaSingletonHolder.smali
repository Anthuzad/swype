.class Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteAlphaSingletonHolder;
.super Ljava/lang/Object;
.source "SwypeCoreLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "T9WriteAlphaSingletonHolder"
.end annotation


# static fields
.field private static final T9WRITE_ALPHA_INSTANCE:Lcom/nuance/input/swypecorelib/T9WriteAlpha;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 196
    new-instance v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-direct {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;-><init>()V

    sput-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteAlphaSingletonHolder;->T9WRITE_ALPHA_INSTANCE:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/nuance/input/swypecorelib/T9WriteAlpha;
    .registers 1

    .prologue
    .line 195
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteAlphaSingletonHolder;->T9WRITE_ALPHA_INSTANCE:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    return-object v0
.end method
