.class final Landroid/support/v7/widget/RtlSpacingHelper;
.super Ljava/lang/Object;
.source "RtlSpacingHelper.java"


# instance fields
.field mEnd:I

.field mExplicitLeft:I

.field mExplicitRight:I

.field mIsRelative:Z

.field mIsRtl:Z

.field mLeft:I

.field mRight:I

.field mStart:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    .line 29
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    .line 30
    iput v1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    .line 31
    iput v1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    .line 32
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    .line 33
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    .line 35
    iput-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    .line 36
    iput-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRelative:Z

    return-void
.end method


# virtual methods
.method public final setAbsolute(II)V
    .registers 5
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRelative:Z

    .line 69
    if-eq p1, v1, :cond_b

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    .line 70
    :cond_b
    if-eq p2, v1, :cond_11

    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    .line 71
    :cond_11
    return-void
.end method

.method public final setRelative(II)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 55
    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    .line 56
    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRelative:Z

    .line 58
    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v0, :cond_16

    .line 59
    if-eq p2, v1, :cond_11

    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    .line 60
    :cond_11
    if-eq p1, v1, :cond_15

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    .line 65
    :cond_15
    :goto_15
    return-void

    .line 62
    :cond_16
    if-eq p1, v1, :cond_1a

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    .line 63
    :cond_1a
    if-eq p2, v1, :cond_15

    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    goto :goto_15
.end method
