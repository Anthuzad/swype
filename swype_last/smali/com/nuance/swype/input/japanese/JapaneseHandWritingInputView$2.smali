.class Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$2;
.super Ljava/lang/Object;
.source "JapaneseHandWritingInputView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 960
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 964
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    .line 977
    :cond_6
    :goto_6
    return v1

    .line 966
    :pswitch_7
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->performDelayRecognition()V
    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$600(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V

    .line 967
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;
    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$200(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 968
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;
    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$200(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->setNewSession(Z)V

    goto :goto_6

    .line 972
    :pswitch_1e
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->performDelayRecognitionStroke()V
    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$700(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V

    goto :goto_6

    .line 964
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1e
    .end packed-switch
.end method
