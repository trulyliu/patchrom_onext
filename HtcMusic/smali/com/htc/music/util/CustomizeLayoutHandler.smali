.class public Lcom/htc/music/util/CustomizeLayoutHandler;
.super Ljava/lang/Object;
.source "CustomizeLayoutHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomSkinColorResId(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "resName"
    .parameter "defResId"

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0
    .parameter "context"
    .parameter "resName"
    .parameter "defResId"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    goto :goto_0
.end method

.method public static setButtonTopImageBottomLabel(Landroid/view/View;II)V
    .locals 0
    .parameter "btn"
    .parameter "imageResID"
    .parameter "textResId"

    .prologue
    .line 46
    return-void
.end method

.method public static setButtonTopImageBottomLabel(Landroid/view/View;III)V
    .locals 0
    .parameter "btn"
    .parameter "imageResID"
    .parameter "alpha"
    .parameter "textResId"

    .prologue
    .line 65
    return-void
.end method

.method public static setGlanceTitlebarBackground(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .parameter "context"
    .parameter "titlebar"

    .prologue
    .line 101
    return-void
.end method

.method public static setRepeatListener(Landroid/view/View;Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;J)V
    .locals 0
    .parameter "btn"
    .parameter "listener"
    .parameter "interval"

    .prologue
    .line 76
    return-void
.end method
