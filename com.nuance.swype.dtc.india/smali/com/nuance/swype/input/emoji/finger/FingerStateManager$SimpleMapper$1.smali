.class Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper$1;
.super Ljava/lang/Object;
.source "FingerStateManager.java"

# interfaces
.implements Lcom/nuance/swype/input/emoji/finger/Fingerable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper$1;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDoubleTapSupported()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper$1;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper;)Z

    move-result v0

    return v0
.end method

.method public isPressHoldSupported()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method
