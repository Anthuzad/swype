.class Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$3;
.super Ljava/lang/Object;
.source "ChineseHandWritingInputView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 1311
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 1314
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    .line 1328
    :cond_6
    :goto_6
    return v1

    .line 1316
    :pswitch_7
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->performDelayRecognition()V
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$1500(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V

    .line 1317
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$700(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1318
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$700(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setNewSession(Z)V

    goto :goto_6

    .line 1322
    :pswitch_1e
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->performDelayRecognitionStroke()V
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$1600(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V

    goto :goto_6

    .line 1314
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1e
    .end packed-switch
.end method
