.class public final Landroid/support/v4/view/NestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "NestedScrollingChildHelper.java"


# instance fields
.field public mIsNestedScrollingEnabled:Z

.field private mNestedScrollingParent:Landroid/view/ViewParent;

.field private mTempNestedScrollConsumed:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 48
    return-void
.end method


# virtual methods
.method public final dispatchNestedFling(FFZ)Z
    .registers 6
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    .line 234
    .line 4076
    iget-boolean v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 234
    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_11

    .line 235
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    .line 238
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public final dispatchNestedPreFling(FF)Z
    .registers 5
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 251
    .line 5076
    iget-boolean v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 251
    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_11

    .line 252
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/view/ViewParentCompat;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    .line 255
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public final dispatchNestedPreScroll(II[I[I)Z
    .registers 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    .line 3076
    iget-boolean v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 190
    if-eqz v4, :cond_4d

    iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v4, :cond_4d

    .line 191
    if-nez p1, :cond_e

    if-eqz p2, :cond_4e

    .line 192
    :cond_e
    const/4 v0, 0x0

    .line 193
    .local v0, "startX":I
    const/4 v1, 0x0

    .line 194
    .local v1, "startY":I
    if-eqz p4, :cond_1b

    .line 195
    iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v4, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 196
    aget v0, p4, v2

    .line 197
    aget v1, p4, v3

    .line 200
    :cond_1b
    if-nez p3, :cond_28

    .line 201
    iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    if-nez v4, :cond_26

    .line 202
    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 204
    :cond_26
    iget-object p3, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 206
    :cond_28
    aput v2, p3, v2

    .line 207
    aput v2, p3, v3

    .line 208
    iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v5, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v4, v5, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    .line 210
    if-eqz p4, :cond_44

    .line 211
    iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v4, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 212
    aget v4, p4, v2

    sub-int/2addr v4, v0

    aput v4, p4, v2

    .line 213
    aget v4, p4, v3

    sub-int/2addr v4, v1

    aput v4, p4, v3

    .line 215
    :cond_44
    aget v4, p3, v2

    if-nez v4, :cond_4c

    aget v4, p3, v3

    if-eqz v4, :cond_4d

    :cond_4c
    move v2, v3

    .line 221
    .end local v0    # "startX":I
    .end local v1    # "startY":I
    :cond_4d
    :goto_4d
    return v2

    .line 216
    :cond_4e
    if-eqz p4, :cond_4d

    .line 217
    aput v2, p4, v2

    .line 218
    aput v2, p4, v3

    goto :goto_4d
.end method

.method public final dispatchNestedScroll(IIII[I)Z
    .registers 16
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 152
    .line 2076
    iget-boolean v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 152
    if-eqz v0, :cond_43

    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_43

    .line 153
    if-nez p1, :cond_12

    if-nez p2, :cond_12

    if-nez p3, :cond_12

    if-eqz p4, :cond_3d

    .line 154
    :cond_12
    const/4 v6, 0x0

    .line 155
    .local v6, "startX":I
    const/4 v7, 0x0

    .line 156
    .local v7, "startY":I
    if-eqz p5, :cond_1f

    .line 157
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 158
    aget v6, p5, v9

    .line 159
    aget v7, p5, v8

    .line 162
    :cond_1f
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    .line 165
    if-eqz p5, :cond_3b

    .line 166
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 167
    aget v0, p5, v9

    sub-int/2addr v0, v6

    aput v0, p5, v9

    .line 168
    aget v0, p5, v8

    sub-int/2addr v0, v7

    aput v0, p5, v8

    :cond_3b
    move v0, v8

    .line 177
    .end local v6    # "startX":I
    .end local v7    # "startY":I
    :goto_3c
    return v0

    .line 171
    :cond_3d
    if-eqz p5, :cond_43

    .line 173
    aput v9, p5, v9

    .line 174
    aput v9, p5, v8

    :cond_43
    move v0, v9

    .line 177
    goto :goto_3c
.end method

.method public final hasNestedScrollingParent()Z
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final setNestedScrollingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 60
    iget-boolean v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    if-eqz v0, :cond_9

    .line 61
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 63
    :cond_9
    iput-boolean p1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 64
    return-void
.end method

.method public final startNestedScroll(I)Z
    .registers 6
    .param p1, "axes"    # I

    .prologue
    const/4 v2, 0x1

    .line 105
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 124
    :goto_7
    return v2

    .line 1076
    :cond_8
    iget-boolean v3, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 109
    if-eqz v3, :cond_32

    .line 110
    iget-object v3, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 111
    .local v1, "p":Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 112
    .local v0, "child":Landroid/view/View;
    :goto_14
    if-eqz v1, :cond_32

    .line 113
    iget-object v3, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v1, v0, v3, p1}, Landroid/support/v4/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 114
    iput-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    .line 115
    iget-object v3, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v1, v0, v3, p1}, Landroid/support/v4/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_7

    .line 118
    :cond_26
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2d

    move-object v0, v1

    .line 119
    check-cast v0, Landroid/view/View;

    .line 121
    :cond_2d
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_14

    .line 124
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_32
    const/4 v2, 0x0

    goto :goto_7
.end method

.method public final stopNestedScroll()V
    .registers 3

    .prologue
    .line 135
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_e

    .line 136
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    .line 139
    :cond_e
    return-void
.end method
