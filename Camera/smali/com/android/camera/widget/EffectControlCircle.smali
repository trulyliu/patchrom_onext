.class public final Lcom/android/camera/widget/EffectControlCircle;
.super Landroid/view/View;
.source "EffectControlCircle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/EffectControlCircle$OnCenterPointChangedListener;
    }
.end annotation


# static fields
.field private static final CENTER_RADIUS:I = 0x28

.field public static final MIN_BORDER_RADIUS:I = 0x28


# instance fields
.field private m_AllowUserChangeCenter:Z

.field private m_BorderRadius:I

.field private m_Center:Landroid/graphics/Point;

.field private m_OnCenterPointChangedListener:Lcom/android/camera/widget/EffectControlCircle$OnCenterPointChangedListener;

.field private final m_PaintBorder:Landroid/graphics/Paint;

.field private final m_PaintCenter:Landroid/graphics/Paint;

.field private m_ShowBorder:Z

.field private m_ShowCenter:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x1

    const/16 v2, 0xe6

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/camera/widget/EffectControlCircle;->m_BorderRadius:I

    .line 34
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/EffectControlCircle;->m_Center:Landroid/graphics/Point;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/EffectControlCircle;->m_PaintBorder:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/EffectControlCircle;->m_PaintCenter:Landroid/graphics/Paint;

    .line 38
    iput-boolean v3, p0, Lcom/android/camera/widget/EffectControlCircle;->m_ShowBorder:Z

    .line 39
    iput-boolean v3, p0, Lcom/android/camera/widget/EffectControlCircle;->m_ShowCenter:Z

    .line 47
    iget-object v0, p0, Lcom/android/camera/widget/EffectControlCircle;->m_PaintBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 48
    iget-object v0, p0, Lcom/android/camera/widget/EffectControlCircle;->m_PaintBorder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/android/camera/widget/EffectControlCircle;->m_PaintBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    iget-object v0, p0, Lcom/android/camera/widget/EffectControlCircle;->m_PaintBorder:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    iget-object v0, p0, Lcom/android/camera/widget/EffectControlCircle;->m_PaintCenter:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 52
    iget-object v0, p0, Lcom/android/camera/widget/EffectControlCircle;->m_PaintCenter:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    return-void
.end method


# virtual methods
.method public allowUserChangeCenterPoint(Z)V
    .locals 0
    .parameter "isAllowed"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/camera/widget/EffectControlCircle;->m_AllowUserChangeCenter:Z

    .line 61
    return-void
.end method

.method public final getCenterPoint()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/widget/EffectControlCircle;->m_Center:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public final isCenterPointVisible()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/camera/widget/EffectControlCircle;->m_ShowCenter:Z

    return v0
.end method

.method public final isUserChangeCenterPointAllowed()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/camera/widget/EffectControlCircle;->m_AllowUserChangeCenter:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/camera/widget/EffectControlCircle;->m_ShowCenter:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/camera/widget/EffectControlCircle;->m_Center:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/widget/EffectControlCircle;->m_Center:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/high16 v2, 0x4220

    iget-object v3, p0, Lcom/android/camera/widget/EffectControlCircle;->m_PaintCenter:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 98
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/widget/EffectControlCircle;->m_ShowBorder:Z

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/camera/widget/EffectControlCircle;->m_Center:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/widget/EffectControlCircle;->m_Center:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/widget/EffectControlCircle;->m_BorderRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/widget/EffectControlCircle;->m_PaintBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 100
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "mv"

    .prologue
    const/4 v3, 0x1

    .line 109
    iget-boolean v0, p0, Lcom/android/camera/widget/EffectControlCircle;->m_AllowUserChangeCenter:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 110
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/EffectControlCircle;->setCenterPoint(Landroid/graphics/Point;)V

    .line 111
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 112
    return v3
.end method

.method public resetCenterPoint()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/widget/EffectControlCircle;->m_Center:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/camera/widget/EffectControlCircle;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/camera/widget/EffectControlCircle;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 121
    invoke-virtual {p0}, Lcom/android/camera/widget/EffectControlCircle;->invalidate()V

    .line 122
    return-void
.end method

.method public setBorderRadius(I)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 129
    iput p1, p0, Lcom/android/camera/widget/EffectControlCircle;->m_BorderRadius:I

    .line 130
    invoke-virtual {p0}, Lcom/android/camera/widget/EffectControlCircle;->invalidate()V

    .line 131
    return-void
.end method

.method public setBorderVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/camera/widget/EffectControlCircle;->m_ShowBorder:Z

    .line 139
    invoke-virtual {p0}, Lcom/android/camera/widget/EffectControlCircle;->invalidate()V

    .line 140
    return-void
.end method

.method public setCenterPoint(Landroid/graphics/Point;)V
    .locals 6
    .parameter "center"

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 150
    const-string v3, "center"

    invoke-static {v3}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 151
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "center in NULL in setCenterPoint()"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/EffectControlCircle;->getWidth()I

    move-result v2

    .line 156
    .local v2, viewWidth:I
    if-lez v2, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/android/camera/widget/EffectControlCircle;->getPaddingLeft()I

    move-result v0

    .line 159
    .local v0, paddingLeft:I
    invoke-virtual {p0}, Lcom/android/camera/widget/EffectControlCircle;->getPaddingRight()I

    move-result v1

    .line 160
    .local v1, paddingRight:I
    iget v3, p1, Landroid/graphics/Point;->x:I

    if-ge v3, v0, :cond_1

    .line 161
    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 162
    :cond_1
    iget v3, p1, Landroid/graphics/Point;->x:I

    sub-int v4, v2, v1

    if-le v3, v4, :cond_2

    .line 163
    sub-int v3, v2, v1

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 167
    .end local v0           #paddingLeft:I
    .end local v1           #paddingRight:I
    :cond_2
    iget-object v3, p0, Lcom/android/camera/widget/EffectControlCircle;->m_Center:Landroid/graphics/Point;

    iget v4, p1, Landroid/graphics/Point;->x:I

    iget v5, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 168
    invoke-virtual {p0}, Lcom/android/camera/widget/EffectControlCircle;->invalidate()V

    .line 171
    iget-object v3, p0, Lcom/android/camera/widget/EffectControlCircle;->m_OnCenterPointChangedListener:Lcom/android/camera/widget/EffectControlCircle$OnCenterPointChangedListener;

    if-eqz v3, :cond_3

    .line 172
    iget-object v3, p0, Lcom/android/camera/widget/EffectControlCircle;->m_OnCenterPointChangedListener:Lcom/android/camera/widget/EffectControlCircle$OnCenterPointChangedListener;

    invoke-interface {v3, p0, p1}, Lcom/android/camera/widget/EffectControlCircle$OnCenterPointChangedListener;->onCenterChanged(Lcom/android/camera/widget/EffectControlCircle;Landroid/graphics/Point;)V

    .line 173
    :cond_3
    return-void
.end method

.method public setCenterPointVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/android/camera/widget/EffectControlCircle;->m_ShowCenter:Z

    .line 181
    invoke-virtual {p0}, Lcom/android/camera/widget/EffectControlCircle;->invalidate()V

    .line 182
    return-void
.end method

.method public setOnCenterPointChangedListener(Lcom/android/camera/widget/EffectControlCircle$OnCenterPointChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/camera/widget/EffectControlCircle;->m_OnCenterPointChangedListener:Lcom/android/camera/widget/EffectControlCircle$OnCenterPointChangedListener;

    .line 190
    return-void
.end method
