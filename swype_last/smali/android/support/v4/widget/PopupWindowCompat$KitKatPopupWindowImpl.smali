.class Landroid/support/v4/widget/PopupWindowCompat$KitKatPopupWindowImpl;
.super Landroid/support/v4/widget/PopupWindowCompat$GingerbreadPopupWindowImpl;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KitKatPopupWindowImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/v4/widget/PopupWindowCompat$GingerbreadPopupWindowImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .registers 6
    .param p1, "popup"    # Landroid/widget/PopupWindow;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "gravity"    # I

    .prologue
    .line 102
    .line 1030
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 103
    return-void
.end method
