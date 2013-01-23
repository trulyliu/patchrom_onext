.class public Lcom/android/camera/widget/DrawFaceAnimationView;
.super Landroid/view/View;
.source "DrawFaceAnimationView.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "DrawFaceAnimationView"

.field private static final MSG_ANIMATE:I = 0x7d0

.field private static final MSG_DRAW_FACES:I = 0x7d1

.field private static final STROKE_COLOR:I = -0x1000000

.field private static final STROKE_WIDTH:I = 0x5


# instance fields
.field private mFaceNum:S

.field private mFacesBmp:Landroid/graphics/Bitmap;

.field private mFramePaint:Landroid/graphics/Paint;

.field private mFrametest:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mReplacedRect:[Landroid/graphics/Rect;

.field private m_Aphla:I

.field private m_CropFaceBmp:Landroid/graphics/Bitmap;

.field private m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

.field private m_FaceIndex:I

.field private m_Handler:Landroid/os/Handler;

.field private volatile m_IsAnimating:Z

.field private m_facesRectFrame:[Landroid/graphics/Rect;

.field private m_isMergeImageFadeIn:Z

.field private m_mergeBmpRect:Landroid/graphics/Rect;

.field private m_redrawIndex:I

.field private m_replaceFaceCnt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/widget/DrawFaceAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v2, 0x40a0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    .line 33
    iput-short v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFaceNum:S

    .line 36
    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mPaint:Landroid/graphics/Paint;

    .line 37
    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFramePaint:Landroid/graphics/Paint;

    .line 38
    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFrametest:Landroid/graphics/Paint;

    .line 39
    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    .line 45
    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_facesRectFrame:[Landroid/graphics/Rect;

    .line 48
    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_replaceFaceCnt:I

    .line 49
    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    .line 50
    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_redrawIndex:I

    .line 51
    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Aphla:I

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_isMergeImageFadeIn:Z

    .line 67
    new-instance v0, Lcom/android/camera/widget/DrawFaceAnimationView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/DrawFaceAnimationView$1;-><init>(Lcom/android/camera/widget/DrawFaceAnimationView;)V

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Handler:Landroid/os/Handler;

    .line 77
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mPaint:Landroid/graphics/Paint;

    .line 82
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFramePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFramePaint:Landroid/graphics/Paint;

    .line 88
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFramePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFramePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFrametest:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFrametest:Landroid/graphics/Paint;

    .line 96
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFrametest:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFrametest:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFrametest:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    :cond_3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    .line 33
    iput-short v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFaceNum:S

    .line 36
    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mPaint:Landroid/graphics/Paint;

    .line 37
    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFramePaint:Landroid/graphics/Paint;

    .line 38
    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFrametest:Landroid/graphics/Paint;

    .line 39
    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    .line 45
    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_facesRectFrame:[Landroid/graphics/Rect;

    .line 48
    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_replaceFaceCnt:I

    .line 49
    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    .line 50
    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_redrawIndex:I

    .line 51
    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Aphla:I

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_isMergeImageFadeIn:Z

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/DrawFaceAnimationView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/camera/widget/DrawFaceAnimationView;->doAnimate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/widget/DrawFaceAnimationView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    return v0
.end method

.method private doAnimate()V
    .locals 6

    .prologue
    const/16 v5, 0x7d1

    const/16 v4, 0xff

    const/4 v3, 0x0

    .line 256
    iget-boolean v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_IsAnimating:Z

    if-nez v1, :cond_0

    .line 290
    :goto_0
    return-void

    .line 259
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 260
    .local v0, invalidateRect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_mergeBmpRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 261
    iget-boolean v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_isMergeImageFadeIn:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 262
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_mergeBmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 266
    :goto_1
    iget v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Aphla:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Aphla:I

    .line 269
    :cond_1
    iget v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Aphla:I

    if-lt v1, v4, :cond_4

    .line 271
    iput-boolean v3, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_IsAnimating:Z

    .line 272
    iput v4, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Aphla:I

    .line 274
    iget v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    .line 275
    iget v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_redrawIndex:I

    .line 276
    iget v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    iget v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_replaceFaceCnt:I

    if-lt v1, v2, :cond_3

    .line 277
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 278
    iput v3, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    goto :goto_0

    .line 264
    :cond_2
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 282
    :cond_3
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 286
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/camera/widget/DrawFaceAnimationView;->invalidate(Landroid/graphics/Rect;)V

    .line 289
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Handler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private getFaceStretchBounds(Landroid/graphics/Rect;Z)V
    .locals 5
    .parameter "rect"
    .parameter "bStretch"

    .prologue
    .line 219
    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 220
    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 221
    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 222
    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 224
    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CropFaceBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 225
    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CropFaceBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 227
    :cond_0
    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_4

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int v1, v2, v3

    .line 229
    .local v1, nCropWidth:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_5

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 232
    .local v0, nCropHeight:I
    :goto_1
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 233
    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int v1, v2, v3

    .line 234
    :cond_1
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 235
    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 236
    :cond_2
    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3, v4, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CropFaceBmp:Landroid/graphics/Bitmap;

    .line 239
    if-eqz p2, :cond_3

    .line 240
    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, -0x32

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 241
    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, -0x32

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 242
    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x32

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 243
    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0x32

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 246
    :cond_3
    return-void

    .line 227
    .end local v0           #nCropHeight:I
    .end local v1           #nCropWidth:I
    :cond_4
    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int v1, v2, v3

    goto :goto_0

    .line 229
    .restart local v1       #nCropWidth:I
    :cond_5
    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    goto :goto_1
.end method


# virtual methods
.method public enlargeFaceRect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 140
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, -0x1e

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 144
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, -0x1e

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 145
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1e

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 146
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1e

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 148
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gez v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gez v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 140
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_2
    return-void
.end method

.method public getFaceNum()I
    .locals 1

    .prologue
    .line 173
    iget-short v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFaceNum:S

    return v0
.end method

.method public getFaceRect()[Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_facesRectFrame:[Landroid/graphics/Rect;

    return-object v0
.end method

.method public getMergedImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRect()[Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    return-object v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_mergeBmpRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    .line 297
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mPaint:Landroid/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 301
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 303
    iget-boolean v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_isMergeImageFadeIn:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 305
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Aphla:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 306
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_mergeBmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 331
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 310
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CropFaceBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Aphla:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 313
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CropFaceBmp:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 316
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_redrawIndex:I

    if-ge v0, v1, :cond_4

    .line 318
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFramePaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 319
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_facesRectFrame:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 323
    :cond_4
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFramePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Aphla:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 324
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_facesRectFrame:[Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public resetFace()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    .line 157
    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    .line 158
    iput-short v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFaceNum:S

    .line 159
    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    .line 160
    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_facesRectFrame:[Landroid/graphics/Rect;

    .line 161
    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_redrawIndex:I

    .line 162
    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_mergeBmpRect:Landroid/graphics/Rect;

    .line 163
    return-void
.end method

.method public setFace(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "sourceImage"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_mergeBmpRect:Landroid/graphics/Rect;

    .line 110
    return-void
.end method

.method public setFace(Landroid/graphics/Bitmap;[Landroid/graphics/Rect;[Landroid/graphics/Rect;S)V
    .locals 3
    .parameter "sourceImage"
    .parameter "replaceRect"
    .parameter "faceRect"
    .parameter "num"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    .line 114
    iput-object p2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    .line 116
    array-length v1, p2

    new-array v1, v1, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_facesRectFrame:[Landroid/graphics/Rect;

    .line 117
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_mergeBmpRect:Landroid/graphics/Rect;

    .line 119
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_facesRectFrame:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 122
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_facesRectFrame:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    aget-object v2, p3, v0

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 123
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_facesRectFrame:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    aget-object v2, p3, v0

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 124
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_facesRectFrame:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    aget-object v2, p3, v0

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 125
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_facesRectFrame:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    aget-object v2, p3, v0

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    iput-short p4, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFaceNum:S

    .line 129
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    .line 130
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    if-nez v1, :cond_1

    .line 131
    const-string v1, "DrawFaceAnimationView"

    const-string v2, "setFace mReplacedRect == null:"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_1
    return-void

    .line 134
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_replaceFaceCnt:I

    .line 135
    invoke-virtual {p0}, Lcom/android/camera/widget/DrawFaceAnimationView;->enlargeFaceRect()V

    goto :goto_1
.end method

.method public showFacesAnimation(I)V
    .locals 4
    .parameter "nfaceIndex"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 188
    iget-boolean v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_isMergeImageFadeIn:Z

    if-ne v0, v3, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_mergeBmpRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 191
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_mergeBmpRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 192
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_mergeBmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 193
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_mergeBmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 203
    :goto_0
    iput v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Aphla:I

    .line 204
    iput-boolean v3, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_IsAnimating:Z

    .line 206
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 208
    :cond_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, v2}, Lcom/android/camera/widget/DrawFaceAnimationView;->getFaceStretchBounds(Landroid/graphics/Rect;Z)V

    goto :goto_0
.end method

.method public startFacesAnimation()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    .line 182
    iget v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/DrawFaceAnimationView;->showFacesAnimation(I)V

    .line 184
    return-void
.end method

.method public stopFacesAnimation()V
    .locals 2

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_IsAnimating:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    invoke-direct {p0}, Lcom/android/camera/widget/DrawFaceAnimationView;->doAnimate()V

    .line 215
    :cond_0
    return-void
.end method
