.class Lcom/nuance/swype/input/chinese/ChineseInputView$5;
.super Lcom/nuance/swype/input/KeyboardViewEx$KeyboardActionAdapter;
.source "ChineseInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/chinese/ChineseInputView;->showGridCandidatesView(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

.field final synthetic val$keyboard:Lcom/nuance/swype/input/KeyboardEx;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseInputView;Lcom/nuance/swype/input/KeyboardEx;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 3358
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iput-object p2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$5;->val$keyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx$KeyboardActionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onRelease(I)V
    .registers 3
    .param p1, "primaryCode"    # I

    .prologue
    .line 3391
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$5;->val$keyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->clearStickyKeys()V

    .line 3392
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .registers 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    const/4 v5, 0x1

    .line 3362
    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "Chinese inputview onText:"

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3365
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->gridViewFunctionButtonPressed:Z
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v1

    if-nez v1, :cond_1d

    if-nez p1, :cond_1e

    .line 3387
    :cond_1d
    :goto_1d
    return-void

    .line 3369
    :cond_1e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupDataList:Ljava/util/List;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5a

    .line 3370
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupDataList:Ljava/util/List;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 3371
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isExactKeyboardShowable()Z

    move-result v2

    if-eqz v2, :cond_53

    add-int/lit8 v0, v0, 0x1

    .end local v0    # "i":I
    :cond_53
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1, v0, p1, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 3377
    :cond_5a
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->hideGridCandidatesView()V
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3300(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    .line 3378
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v1

    if-eqz v1, :cond_82

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    .line 3379
    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isMixedInput()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 3380
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->nextBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    goto :goto_1d

    .line 3369
    .restart local v0    # "i":I
    :cond_7f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 3381
    .end local v0    # "i":I
    :cond_82
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v1

    if-eqz v1, :cond_a6

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4700(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 3382
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v1, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 3383
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    goto/16 :goto_1d

    .line 3385
    :cond_a6
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v1, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    goto/16 :goto_1d
.end method
