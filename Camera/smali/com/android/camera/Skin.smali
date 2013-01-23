.class public final Lcom/android/camera/Skin;
.super Ljava/lang/Object;
.source "Skin.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .parameter "context"
    .parameter "colorName"
    .parameter "defaultColorResId"

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    const/high16 v1, -0x100

    .line 31
    :goto_0
    return v1

    .line 27
    :cond_0
    if-eqz p1, :cond_1

    .line 28
    invoke-static {p0, p1, p2}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 31
    .local v0, resId:I
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    .line 30
    .end local v0           #resId:I
    :cond_1
    move v0, p2

    .restart local v0       #resId:I
    goto :goto_1
.end method

.method public static getDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "drawableName"
    .parameter "defaultDrawableResId"

    .prologue
    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 v1, 0x0

    .line 49
    :goto_0
    return-object v1

    .line 45
    :cond_0
    if-eqz p1, :cond_1

    .line 46
    invoke-static {p0, p1, p2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 49
    .local v0, resId:I
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 48
    .end local v0           #resId:I
    :cond_1
    move v0, p2

    .restart local v0       #resId:I
    goto :goto_1
.end method
