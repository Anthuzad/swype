.class final Landroid/support/v7/view/menu/StandardMenuPopup$1;
.super Ljava/lang/Object;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/StandardMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/view/menu/StandardMenuPopup;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/StandardMenuPopup;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/v7/view/menu/StandardMenuPopup;

    .prologue
    .line 58
    iput-object p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup$1;->this$0:Landroid/support/v7/view/menu/StandardMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 3

    .prologue
    .line 64
    iget-object v1, p0, Landroid/support/v7/view/menu/StandardMenuPopup$1;->this$0:Landroid/support/v7/view/menu/StandardMenuPopup;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroid/support/v7/view/menu/StandardMenuPopup$1;->this$0:Landroid/support/v7/view/menu/StandardMenuPopup;

    # getter for: Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;
    invoke-static {v1}, Landroid/support/v7/view/menu/StandardMenuPopup;->access$000(Landroid/support/v7/view/menu/StandardMenuPopup;)Landroid/support/v7/widget/MenuPopupWindow;

    move-result-object v1

    .line 1339
    iget-boolean v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    .line 64
    if-nez v1, :cond_25

    .line 65
    iget-object v1, p0, Landroid/support/v7/view/menu/StandardMenuPopup$1;->this$0:Landroid/support/v7/view/menu/StandardMenuPopup;

    # getter for: Landroid/support/v7/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;
    invoke-static {v1}, Landroid/support/v7/view/menu/StandardMenuPopup;->access$100(Landroid/support/v7/view/menu/StandardMenuPopup;)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_26

    .line 67
    :cond_20
    iget-object v1, p0, Landroid/support/v7/view/menu/StandardMenuPopup$1;->this$0:Landroid/support/v7/view/menu/StandardMenuPopup;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/StandardMenuPopup;->dismiss()V

    .line 73
    .end local v0    # "anchor":Landroid/view/View;
    :cond_25
    :goto_25
    return-void

    .line 70
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_26
    iget-object v1, p0, Landroid/support/v7/view/menu/StandardMenuPopup$1;->this$0:Landroid/support/v7/view/menu/StandardMenuPopup;

    # getter for: Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;
    invoke-static {v1}, Landroid/support/v7/view/menu/StandardMenuPopup;->access$000(Landroid/support/v7/view/menu/StandardMenuPopup;)Landroid/support/v7/widget/MenuPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    goto :goto_25
.end method
