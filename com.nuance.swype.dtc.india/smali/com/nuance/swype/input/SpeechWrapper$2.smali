.class Lcom/nuance/swype/input/SpeechWrapper$2;
.super Ljava/lang/Object;
.source "SpeechWrapper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/SpeechWrapper;->showNoSpeechDetectionAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/SpeechWrapper;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/nuance/swype/input/SpeechWrapper$2;->this$0:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 477
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper$2;->this$0:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-static {v1}, Lcom/nuance/swype/input/SpeechWrapper;->access$000(Lcom/nuance/swype/input/SpeechWrapper;)Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 478
    .local v0, "hostView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 479
    iget-object v1, v0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->hideDictationLanguageMenu()V

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper$2;->this$0:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v1}, Lcom/nuance/swype/input/SpeechWrapper;->hidePopupSpeech()V

    .line 482
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper$2;->this$0:Lcom/nuance/swype/input/SpeechWrapper;

    sget-object v2, Lcom/nuance/swype/input/SpeechWrapper$State;->Stopped:Lcom/nuance/swype/input/SpeechWrapper$State;

    invoke-static {v1, v2}, Lcom/nuance/swype/input/SpeechWrapper;->access$102(Lcom/nuance/swype/input/SpeechWrapper;Lcom/nuance/swype/input/SpeechWrapper$State;)Lcom/nuance/swype/input/SpeechWrapper$State;

    .line 483
    return-void
.end method
