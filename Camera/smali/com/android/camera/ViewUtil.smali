.class public Lcom/android/camera/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableImageView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 26
    if-eqz p0, :cond_0

    .line 27
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 28
    :cond_0
    return-void
.end method

.method public static disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V
    .locals 2
    .parameter "view"
    .parameter "btn"

    .prologue
    const/4 v1, 0x0

    .line 55
    if-eqz p0, :cond_0

    .line 56
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 58
    :cond_0
    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 60
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setPressed(Z)V

    .line 62
    :cond_1
    return-void
.end method

.method public static disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 1
    .parameter "view"
    .parameter "btn"
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-static {p0}, Lcom/android/camera/ViewUtil;->disableImageView(Landroid/widget/ImageView;)V

    .line 114
    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 116
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setPressed(Z)V

    .line 119
    :cond_0
    invoke-static {p2}, Lcom/android/camera/ViewUtil;->disableTextView(Landroid/widget/TextView;)V

    .line 120
    return-void
.end method

.method public static disableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V
    .locals 1
    .parameter "view"
    .parameter "btn"

    .prologue
    const/4 v0, 0x0

    .line 80
    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    .line 83
    :cond_0
    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 85
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setPressed(Z)V

    .line 87
    :cond_1
    return-void
.end method

.method public static disableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 1
    .parameter "view"
    .parameter "btn"
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 134
    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    .line 137
    :cond_0
    if-eqz p1, :cond_1

    .line 138
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 139
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setPressed(Z)V

    .line 142
    :cond_1
    invoke-static {p2}, Lcom/android/camera/ViewUtil;->disableTextView(Landroid/widget/TextView;)V

    .line 143
    return-void
.end method

.method public static disableMainButton(Lcom/htc/widget/HtcIconButton;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 66
    if-eqz p0, :cond_0

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcIconButton;->setEnabled(Z)V

    .line 68
    :cond_0
    return-void
.end method

.method public static disableTextView(Landroid/widget/TextView;)V
    .locals 2
    .parameter "textView"

    .prologue
    .line 91
    if-eqz p0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 93
    :cond_0
    return-void
.end method

.method public static enableImageView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 21
    if-eqz p0, :cond_0

    .line 22
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 23
    :cond_0
    return-void
.end method

.method public static enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V
    .locals 1
    .parameter "view"
    .parameter "btn"

    .prologue
    .line 31
    if-eqz p0, :cond_0

    .line 32
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 34
    :cond_0
    if-eqz p1, :cond_1

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 36
    :cond_1
    return-void
.end method

.method public static enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 1
    .parameter "view"
    .parameter "btn"
    .parameter "text"

    .prologue
    .line 103
    invoke-static {p0}, Lcom/android/camera/ViewUtil;->enableImageView(Landroid/widget/ImageView;)V

    .line 105
    if-eqz p1, :cond_0

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    :cond_0
    invoke-static {p2}, Lcom/android/camera/ViewUtil;->enableTextView(Landroid/widget/TextView;)V

    .line 109
    return-void
.end method

.method public static enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V
    .locals 1
    .parameter "view"
    .parameter "btn"

    .prologue
    const/4 v0, 0x1

    .line 72
    if-eqz p0, :cond_0

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    .line 75
    :cond_0
    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 77
    :cond_1
    return-void
.end method

.method public static enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 1
    .parameter "view"
    .parameter "btn"
    .parameter "text"

    .prologue
    const/4 v0, 0x1

    .line 124
    if-eqz p0, :cond_0

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    .line 127
    :cond_0
    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 130
    :cond_1
    invoke-static {p2}, Lcom/android/camera/ViewUtil;->enableTextView(Landroid/widget/TextView;)V

    .line 131
    return-void
.end method

.method public static enableMainButton(Lcom/htc/widget/HtcIconButton;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 40
    if-eqz p0, :cond_0

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcIconButton;->setEnabled(Z)V

    .line 42
    :cond_0
    return-void
.end method

.method public static enableTextView(Landroid/widget/TextView;)V
    .locals 2
    .parameter "textView"

    .prologue
    .line 97
    if-eqz p0, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 99
    :cond_0
    return-void
.end method

.method public static getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "resStrId"
    .parameter "resId"

    .prologue
    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 240
    .local v0, skin_rid:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getHtcInternalResourceId(Ljava/lang/String;)I
    .locals 4
    .parameter "idname"

    .prologue
    .line 247
    invoke-static {p0}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v0

    .line 248
    .local v0, nResID:I
    if-nez v0, :cond_0

    .line 249
    const-string v1, "ViewUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internal id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is missed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_0
    return v0
.end method

.method public static refreshButtonEnableStatus(Lcom/htc/widget/HtcIconButton;)V
    .locals 1
    .parameter "btn"

    .prologue
    .line 49
    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/htc/widget/HtcIconButton;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcIconButton;->setEnabled(Z)V

    .line 51
    :cond_0
    return-void
.end method

.method public static setHeight(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "height"

    .prologue
    .line 160
    if-nez p0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 164
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 166
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public static setMargin(Landroid/view/View;IIII)V
    .locals 2
    .parameter "view"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 187
    if-nez p0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 191
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 193
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v0           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public static setSize(Landroid/view/View;II)V
    .locals 1
    .parameter "view"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 173
    if-nez p0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 177
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 179
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 180
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public static setWidth(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "width"

    .prologue
    .line 147
    if-nez p0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 151
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 153
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method
