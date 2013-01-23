.class public Lcom/android/camera/widget/ImageTextView;
.super Landroid/widget/LinearLayout;
.source "ImageTextView.java"


# instance fields
.field private m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

.field private m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v4, 0x11

    const/4 v3, -0x2

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-virtual {p0, v4}, Lcom/android/camera/widget/ImageTextView;->setGravity(I)V

    .line 53
    new-instance v1, Lcom/android/camera/widget/ColorMultiplyImageView;

    invoke-direct {v1, p1, p2}, Lcom/android/camera/widget/ColorMultiplyImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    .line 54
    iget-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/widget/ImageTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    new-instance v1, Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-direct {v1, p1, p2}, Lcom/android/camera/widget/ColorMultiplyTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    .line 58
    iget-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v1, v4}, Lcom/android/camera/widget/ColorMultiplyTextView;->setGravity(I)V

    .line 59
    iget-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/widget/ImageTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ImageTextView;->setImageTextPadding(I)V

    .line 64
    return-void
.end method


# virtual methods
.method public final applyColorMultiplication(Z)V
    .locals 1
    .parameter "apply"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ColorMultiplyImageView;->applyColorMultiplication(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ColorMultiplyTextView;->applyColorMultiplication(Z)V

    .line 73
    return-void
.end method

.method public final applyImageColorMultiplication(Z)V
    .locals 1
    .parameter "apply"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ColorMultiplyImageView;->applyColorMultiplication(Z)V

    .line 77
    return-void
.end method

.method public final applyTextColorMultiplication(Z)V
    .locals 1
    .parameter "apply"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ColorMultiplyTextView;->applyColorMultiplication(Z)V

    .line 81
    return-void
.end method

.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0}, Lcom/android/camera/widget/ColorMultiplyImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v0}, Lcom/android/camera/widget/ColorMultiplyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/16 v3, 0xff

    const/16 v2, 0x80

    .line 105
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 106
    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/widget/ColorMultiplyImageView;->setAlpha(I)V

    .line 109
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    iget-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v1}, Lcom/android/camera/widget/ColorMultiplyTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ColorMultiplyTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/widget/ColorMultiplyImageView;->setAlpha(I)V

    .line 114
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    iget-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v1}, Lcom/android/camera/widget/ColorMultiplyTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ColorMultiplyTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public final setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ColorMultiplyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/camera/widget/ImageTextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ColorMultiplyImageView;->setAlpha(I)V

    .line 126
    :cond_0
    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ColorMultiplyImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/camera/widget/ImageTextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ColorMultiplyImageView;->setAlpha(I)V

    .line 132
    :cond_0
    return-void
.end method

.method public final setImageResource(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ColorMultiplyImageView;->setImageResource(I)V

    .line 136
    invoke-virtual {p0}, Lcom/android/camera/widget/ImageTextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ColorMultiplyImageView;->setAlpha(I)V

    .line 138
    :cond_0
    return-void
.end method

.method public setImageTextPadding(I)V
    .locals 2
    .parameter "padding"

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v1}, Lcom/android/camera/widget/ColorMultiplyTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 146
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 147
    iget-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v1}, Lcom/android/camera/widget/ColorMultiplyTextView;->requestLayout()V

    .line 148
    invoke-virtual {p0}, Lcom/android/camera/widget/ImageTextView;->requestLayout()V

    .line 149
    return-void
.end method

.method public final setText(I)V
    .locals 1
    .parameter "redId"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ColorMultiplyTextView;->setText(I)V

    .line 161
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ColorMultiplyTextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    return-void
.end method
