.class final Landroid/support/v7/widget/AppCompatCompoundButtonHelper;
.super Ljava/lang/Object;
.source "AppCompatCompoundButtonHelper.java"


# instance fields
.field mButtonTintList:Landroid/content/res/ColorStateList;

.field mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

.field private mHasButtonTint:Z

.field private mHasButtonTintMode:Z

.field private mSkipNextApply:Z

.field private final mView:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Landroid/widget/CompoundButton;Landroid/support/v7/widget/AppCompatDrawableManager;)V
    .registers 5
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "drawableManager"    # Landroid/support/v7/widget/AppCompatDrawableManager;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;

    .line 37
    iput-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 38
    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    .line 39
    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    .line 51
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 52
    iput-object p2, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 53
    return-void
.end method

.method private applyButtonTint()V
    .registers 3

    .prologue
    .line 115
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-static {v1}, Landroid/support/v4/widget/CompoundButtonCompat;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 117
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3e

    iget-boolean v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    if-nez v1, :cond_10

    iget-boolean v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    if-eqz v1, :cond_3e

    .line 118
    :cond_10
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 120
    iget-boolean v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    if-eqz v1, :cond_21

    .line 121
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 123
    :cond_21
    iget-boolean v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    if-eqz v1, :cond_2a

    .line 124
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 128
    :cond_2a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 129
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 131
    :cond_39
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    :cond_3e
    return-void
.end method


# virtual methods
.method final getCompoundPaddingLeft(I)I
    .registers 5
    .param p1, "superValue"    # I

    .prologue
    .line 136
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_13

    .line 139
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-static {v1}, Landroid/support/v4/widget/CompoundButtonCompat;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 140
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_13

    .line 141
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr p1, v1

    .line 144
    .end local v0    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_13
    return p1
.end method

.method final loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x0

    .line 56
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->CompoundButton:[I

    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_d
    sget v2, Landroid/support/v7/appcompat/R$styleable;->CompoundButton_android_button:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 60
    sget v2, Landroid/support/v7/appcompat/R$styleable;->CompoundButton_android_button:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 62
    .local v1, "resourceId":I
    if-eqz v1, :cond_30

    .line 63
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    iget-object v3, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    iget-object v4, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 64
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1181
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 63
    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    .end local v1    # "resourceId":I
    :cond_30
    sget v2, Landroid/support/v7/appcompat/R$styleable;->CompoundButton_buttonTint:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 68
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    sget v3, Landroid/support/v7/appcompat/R$styleable;->CompoundButton_buttonTint:I

    .line 69
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 68
    invoke-static {v2, v3}, Landroid/support/v4/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 71
    :cond_43
    sget v2, Landroid/support/v7/appcompat/R$styleable;->CompoundButton_buttonTintMode:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 72
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    sget v3, Landroid/support/v7/appcompat/R$styleable;->CompoundButton_buttonTintMode:I

    const/4 v4, -0x1

    .line 74
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v4, 0x0

    .line 73
    invoke-static {v3, v4}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 72
    invoke-static {v2, v3}, Landroid/support/v4/widget/CompoundButtonCompat;->setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_5c
    .catchall {:try_start_d .. :try_end_5c} :catchall_60

    .line 78
    :cond_5c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    return-void

    .line 78
    :catchall_60
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method final onSetButtonDrawable()V
    .registers 2

    .prologue
    .line 105
    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mSkipNextApply:Z

    if-eqz v0, :cond_8

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mSkipNextApply:Z

    .line 112
    :goto_7
    return-void

    .line 110
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mSkipNextApply:Z

    .line 111
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->applyButtonTint()V

    goto :goto_7
.end method

.method final setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 83
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    .line 86
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->applyButtonTint()V

    .line 87
    return-void
.end method

.method final setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 94
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    .line 97
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->applyButtonTint()V

    .line 98
    return-void
.end method
