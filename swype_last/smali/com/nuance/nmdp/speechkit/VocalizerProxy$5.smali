.class Lcom/nuance/nmdp/speechkit/VocalizerProxy$5;
.super Ljava/lang/Object;
.source "VocalizerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/VocalizerProxy;->speakString(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/VocalizerProxy;

.field final synthetic val$context:Ljava/lang/Object;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/VocalizerProxy;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 98
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$5;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerProxy;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$5;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$5;->val$context:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$5;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerProxy;

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerProxy;->_vocalizer:Lcom/nuance/nmdp/speechkit/VocalizerImpl;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/VocalizerProxy;)Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$5;->val$text:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$5;->val$context:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->speakString(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    return-void
.end method
