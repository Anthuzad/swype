.class Lcom/nuance/swype/input/FunctionBarListView$2;
.super Ljava/lang/Object;
.source "FunctionBarListView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/FunctionBarListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/FunctionBarListView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/FunctionBarListView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/FunctionBarListView;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/nuance/swype/input/FunctionBarListView$2;->this$0:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0x8

    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3c

    .line 162
    :cond_7
    :goto_7
    const/4 v0, 0x1

    return v0

    .line 150
    :pswitch_9
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView$2;->this$0:Lcom/nuance/swype/input/FunctionBarListView;

    iget-object v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView$2;->this$0:Lcom/nuance/swype/input/FunctionBarListView;

    iget-object v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView$2;->this$0:Lcom/nuance/swype/input/FunctionBarListView;

    iget-object v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_7

    .line 155
    :pswitch_20
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView$2;->this$0:Lcom/nuance/swype/input/FunctionBarListView;

    iget-object v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView$2;->this$0:Lcom/nuance/swype/input/FunctionBarListView;

    iget-object v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 157
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView$2;->this$0:Lcom/nuance/swype/input/FunctionBarListView;

    iget v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mTouchX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 158
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView$2;->this$0:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->removeHighlight()V

    goto :goto_7

    .line 148
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_20
    .end packed-switch
.end method
