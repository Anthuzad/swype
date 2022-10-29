.class abstract Landroid/support/v7/view/menu/MenuPopup;
.super Ljava/lang/Object;
.source "MenuPopup.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;
.implements Landroid/support/v7/view/menu/ShowableListMenu;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field mEpicenterBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
    .registers 14
    .param p0, "adapter"    # Landroid/widget/ListAdapter;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "maxAllowedWidth"    # I

    .prologue
    const/4 v9, 0x0

    .line 138
    const/4 v6, 0x0

    .line 139
    .local v6, "maxWidth":I
    const/4 v4, 0x0

    .line 140
    .local v4, "itemView":Landroid/view/View;
    const/4 v3, 0x0

    .line 142
    .local v3, "itemType":I
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 143
    .local v8, "widthMeasureSpec":I
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 144
    .local v1, "heightMeasureSpec":I
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 145
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v0, :cond_36

    .line 146
    invoke-interface {p0, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v7

    .line 147
    .local v7, "positionType":I
    if-eq v7, v3, :cond_1b

    .line 148
    move v3, v7

    .line 149
    const/4 v4, 0x0

    .line 152
    :cond_1b
    if-nez p1, :cond_22

    .line 153
    new-instance p1, Landroid/widget/FrameLayout;

    .end local p1    # "parent":Landroid/view/ViewGroup;
    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 156
    .restart local p1    # "parent":Landroid/view/ViewGroup;
    :cond_22
    invoke-interface {p0, v2, v4, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 157
    invoke-virtual {v4, v8, v1}, Landroid/view/View;->measure(II)V

    .line 159
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 160
    .local v5, "itemWidth":I
    if-lt v5, p3, :cond_30

    .line 167
    .end local v5    # "itemWidth":I
    .end local v7    # "positionType":I
    .end local p3    # "maxAllowedWidth":I
    :goto_2f
    return p3

    .line 162
    .restart local v5    # "itemWidth":I
    .restart local v7    # "positionType":I
    .restart local p3    # "maxAllowedWidth":I
    :cond_30
    if-le v5, v6, :cond_33

    .line 163
    move v6, v5

    .line 145
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .end local v5    # "itemWidth":I
    .end local v7    # "positionType":I
    :cond_36
    move p3, v6

    .line 167
    goto :goto_2f
.end method

.method protected static shouldPreserveIconSpacing(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .registers 6
    .param p0, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 197
    const/4 v3, 0x0

    .line 198
    .local v3, "preserveIconSpacing":Z
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v1

    .line 200
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_19

    .line 201
    invoke-virtual {p0, v2}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 202
    .local v0, "childItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 203
    const/4 v3, 0x1

    .line 208
    .end local v0    # "childItem":Landroid/view/MenuItem;
    :cond_19
    return v3

    .line 200
    .restart local v0    # "childItem":Landroid/view/MenuItem;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method protected static toMenuAdapter(Landroid/widget/ListAdapter;)Landroid/support/v7/view/menu/MenuAdapter;
    .registers 2
    .param p0, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 179
    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_d

    .line 180
    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    .end local p0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuAdapter;

    .line 182
    :goto_c
    return-object v0

    .restart local p0    # "adapter":Landroid/widget/ListAdapter;
    :cond_d
    check-cast p0, Landroid/support/v7/view/menu/MenuAdapter;

    .end local p0    # "adapter":Landroid/widget/ListAdapter;
    move-object v0, p0

    goto :goto_c
.end method


# virtual methods
.method public abstract addMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
.end method

.method public final collapseItemActionView$5c2da31d(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 3
    .param p1, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public final expandItemActionView$5c2da31d(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 3
    .param p1, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public final initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 97
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 122
    .local v0, "outerAdapter":Landroid/widget/ListAdapter;
    invoke-static {v0}, Landroid/support/v7/view/menu/MenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Landroid/support/v7/view/menu/MenuAdapter;

    move-result-object v1

    .line 126
    iget-object v2, v1, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 127
    return-void
.end method

.method public abstract setAnchorView(Landroid/view/View;)V
.end method

.method public abstract setForceShowIcon(Z)V
.end method

.method public abstract setGravity(I)V
.end method

.method public abstract setHorizontalOffset(I)V
.end method

.method public abstract setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
.end method

.method public abstract setShowTitle(Z)V
.end method

.method public abstract setVerticalOffset(I)V
.end method
