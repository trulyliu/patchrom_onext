.class public Lcom/htc/music/widget/gridview/MusicGridViewItem;
.super Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
.source "MusicGridViewItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/gridview/MusicGridViewItem$FolderViewSharedTexture;,
        Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewImageGetter;,
        Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;
    }
.end annotation


# static fields
.field protected static final SPRITE_LAYER_COUNT:I = 0x2

.field protected static final SPRITE_LAYER_FOLDER_NAME:I = 0x0

.field protected static final SPRITE_LAYER_SELECTOR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[MusicGridViewItem]"


# instance fields
.field protected FOLDER_LAYER_COUNT:I

.field protected FOLDER_LAYER_COVER:I

.field protected FOLDER_LAYER_THUMB:I

.field private mBGTexture:Lcom/htc/sunnyCore/Texture;

.field protected mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field private mBkSprite:Lcom/htc/sunnyCore/Sprite;

.field protected mChildParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

.field mCurrentBackgroundTexture:Lcom/htc/sunnyCore/Texture;

.field private mDataIndex:I

.field protected mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

.field protected mFolderSprite:Lcom/htc/sunnyCore/Sprite;

.field protected mHeight:I

.field protected mIsBinded:Z

.field private mNumFolderImage:I

.field protected mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

.field mRunnableToSetViewItemVisible:Ljava/lang/Runnable;

.field mSelected:Z

.field private mShareTextureKey:Ljava/lang/String;

.field protected mSharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

.field protected mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field protected mTextViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

.field mTextViewGeometryInit:Z

.field protected mTextViewImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewImageGetter;

.field protected mThumbnailParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field private mViewContainer:Landroid/view/View;

.field private mViewTextureContainer:Lcom/htc/sunnyCore/Texture;

.field protected mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 6
    .parameter "context"
    .parameter "sContext"
    .parameter "parentParams"

    .prologue
    const/4 v4, 0x0

    .line 154
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 6
    .parameter "context"
    .parameter "sContext"
    .parameter "parentParams"
    .parameter "childParams"

    .prologue
    .line 158
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "sContext"
    .parameter "parentParams"
    .parameter "childParams"
    .parameter "prototypeKey"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x40

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 113
    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->FOLDER_LAYER_THUMB:I

    .line 114
    iput v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->FOLDER_LAYER_COVER:I

    .line 115
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->FOLDER_LAYER_COUNT:I

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mDataIndex:I

    .line 382
    iput-boolean v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextViewGeometryInit:Z

    .line 500
    iput-boolean v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mCurrentBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    .line 539
    iput-boolean v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSelected:Z

    .line 620
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItem$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItem$1;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mRunnableToSetViewItemVisible:Ljava/lang/Runnable;

    .line 167
    if-nez p3, :cond_0

    .line 168
    new-instance p3, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    .end local p3
    invoke-direct {p3, p1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 169
    .restart local p3
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v0, v2, v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>(II)V

    invoke-virtual {p3, v0, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 170
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    const/16 v1, 0x20

    invoke-direct {v0, v2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>(II)V

    invoke-virtual {p3, v0, v5}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 171
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v0, v2, v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>(II)V

    invoke-virtual {p3, v0, v4}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 172
    const/16 v0, 0x60

    invoke-virtual {p3, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 173
    const/16 v0, 0x50

    invoke-virtual {p3, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 175
    :cond_0
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;

    invoke-direct {v0}, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setItemAnimation(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;)V

    .line 176
    iput-object p3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    .line 177
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-virtual {v0, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getViewItemParams(I)Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 179
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-virtual {v0, v4}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getViewItemParams(I)Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mThumbnailParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 180
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-virtual {v0, v5}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getViewItemParams(I)Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 181
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getWidth(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mWidth:I

    .line 182
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getHeight(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mHeight:I

    .line 183
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getNumFolderImage()I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mNumFolderImage:I

    .line 185
    if-eqz p4, :cond_1

    .line 186
    iput-object p4, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mChildParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    .line 189
    :cond_1
    if-nez p5, :cond_3

    .line 190
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    if-eqz v0, :cond_2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MusicGridViewItem]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mShareTextureKey:Ljava/lang/String;

    .line 200
    :goto_0
    return-void

    .line 193
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MusicGridViewItem]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mShareTextureKey:Ljava/lang/String;

    .line 194
    const-string v0, "[MusicGridViewItem]"

    const-string v1, "@@!!! mSunnyContext is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_3
    iput-object p5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mShareTextureKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "sContext"
    .parameter "parentParams"
    .parameter "prototypeKey"

    .prologue
    .line 162
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Lcom/htc/sunnyCore/RenderThreadHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Lcom/htc/sunnyCore/RenderThreadHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    return-object v0
.end method

.method private createSAnimationController(Lcom/htc/sunnyCore/view/SView;I)Lcom/htc/sunnyCore/view/animation/SAnimationController;
    .locals 6
    .parameter "view"
    .parameter "delayTime"

    .prologue
    const/4 v5, 0x0

    .line 824
    new-instance v1, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    .line 826
    .local v1, controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    invoke-virtual {p1}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v2

    .line 828
    .local v2, pos:Lcom/htc/sunnyCore/view/Vector3F;
    sget-object v3, Lcom/htc/sunnyCore/widget/gridview/animation/IntroAnimDropIn;->DURATION_FOLDER_INTRO_ITEM_SCALE_BEGIN:Lcom/htc/sunnyCore/view/Vector3F;

    sget-object v4, Lcom/htc/sunnyCore/widget/gridview/animation/IntroAnimDropIn;->DURATION_FOLDER_INTRO_ITEM_SCALE_END:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 831
    invoke-virtual {p1}, Lcom/htc/sunnyCore/view/SView;->getAlpha()F

    move-result v0

    .line 832
    .local v0, alpha:F
    const/high16 v3, 0x437f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v1, v5, v3}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 834
    int-to-long v3, p2

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setStartOffset(J)V

    .line 836
    invoke-virtual {v1, v5}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 837
    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    .line 838
    sget-object v3, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v1, v3}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 839
    new-instance v3, Lcom/htc/music/widget/gridview/MusicGridViewItem$2;

    invoke-direct {v3, p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewItem$2;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewItem;Lcom/htc/sunnyCore/view/SView;)V

    invoke-virtual {v1, v3}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 855
    return-object v1
.end method

.method private setItemView(ILcom/htc/sunnyCore/IMediaData;)V
    .locals 6
    .parameter "dataIndex"
    .parameter "mediaData"

    .prologue
    const/4 v5, 0x0

    .line 519
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:Lcom/htc/sunnyCore/Sprite;

    .line 520
    .local v1, s:Lcom/htc/sunnyCore/Sprite;
    iget v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->FOLDER_LAYER_COVER:I

    invoke-virtual {v1, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 521
    .local v0, layer:Lcom/htc/sunnyCore/Sprite$Layer;
    if-eqz v0, :cond_0

    .line 522
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    invoke-interface {v3, p1, v5, p2}, Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;->isUseExtraBackgroundImage(IILcom/htc/sunnyCore/IMediaData;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 523
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    const-string v4, "NAME_TEXTURE_BACKGROUND_EXTRA"

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    .line 524
    .local v2, texture:Lcom/htc/sunnyCore/Texture;
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mCurrentBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v3, v2, :cond_0

    .line 525
    invoke-virtual {v0, v5, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 526
    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mCurrentBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    .line 535
    .end local v2           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextView(ILcom/htc/sunnyCore/IMediaData;)V

    .line 536
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->bindFolderTexture(ILcom/htc/sunnyCore/IMediaData;)V

    .line 537
    return-void

    .line 529
    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mCurrentBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v3, v4, :cond_0

    .line 530
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    iput-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mCurrentBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    .line 531
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0, v5, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    goto :goto_0
.end method

.method private setTextView(ILcom/htc/sunnyCore/IMediaData;)V
    .locals 11
    .parameter "dataIndex"
    .parameter "mediaData"

    .prologue
    const/high16 v5, 0x3f00

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 386
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    if-nez v1, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v9}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 396
    .local v0, layer:Lcom/htc/sunnyCore/Sprite$Layer;
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextViewImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewImageGetter;

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextViewImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewImageGetter;

    invoke-interface {v1, p1, v9, p2}, Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewImageGetter;->getTextViewImage(IILcom/htc/sunnyCore/IMediaData;)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    .line 398
    .local v8, texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v8, :cond_5

    .line 399
    iget-boolean v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextViewGeometryInit:Z

    if-nez v1, :cond_4

    .line 400
    invoke-virtual {v8}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v7

    .line 401
    .local v7, textViewWidth:I
    invoke-virtual {v8}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v6

    .line 402
    .local v6, height:I
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mHeight:I

    sub-int v1, v6, v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float v4, v1, v2

    .line 403
    .local v4, posY:F
    const/4 v3, 0x0

    .line 405
    .local v3, posX:F
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v1, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v2, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v4, v1

    .line 406
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v1, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    int-to-float v1, v1

    sub-float/2addr v3, v1

    .line 407
    rem-int/lit8 v1, v7, 0x2

    if-eqz v1, :cond_2

    .line 408
    add-float/2addr v3, v5

    .line 410
    :cond_2
    rem-int/lit8 v1, v6, 0x2

    if-eqz v1, :cond_3

    .line 411
    int-to-float v1, v6

    add-float/2addr v1, v5

    float-to-int v6, v1

    .line 414
    :cond_3
    int-to-float v1, v7

    int-to-float v2, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 415
    iput-boolean v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextViewGeometryInit:Z

    .line 417
    .end local v3           #posX:F
    .end local v4           #posY:F
    .end local v6           #height:I
    .end local v7           #textViewWidth:I
    :cond_4
    invoke-virtual {v0, v9, v8}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 418
    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite$Layer;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    invoke-virtual {v0, v10}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    .line 421
    :cond_5
    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite$Layer;->isVisible()Z

    move-result v1

    if-ne v1, v10, :cond_0

    .line 422
    invoke-virtual {v0, v9}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected bindFolderTexture(ILcom/htc/sunnyCore/IMediaData;)V
    .locals 3
    .parameter "dataIndex"
    .parameter "mediaData"

    .prologue
    const/4 v2, 0x0

    .line 504
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    invoke-interface {v1, p1, v2, p2}, Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;->getThumbnailImage(IILcom/htc/sunnyCore/IMediaData;)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 505
    .local v0, texture:Lcom/htc/sunnyCore/Texture;
    if-nez v0, :cond_0

    .line 506
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    invoke-interface {v1, p1, v2, p2}, Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;->isUseExtraThumbnailImage(IILcom/htc/sunnyCore/IMediaData;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 507
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    const-string v2, "NAME_TEXTURE_THUMBNAIL_EXTRA"

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 512
    :cond_0
    :goto_0
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->FOLDER_LAYER_THUMB:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setThumbnail(Lcom/htc/sunnyCore/Texture;I)V

    .line 513
    return-void

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    const-string v2, "NAME_TEXTURE_THUMBNAIL"

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    goto :goto_0
.end method

.method public bindMediaData(ILcom/htc/sunnyCore/IMediaData;)V
    .locals 7
    .parameter "dataIndex"
    .parameter "mediaData"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 543
    if-nez p2, :cond_1

    .line 545
    const-string v3, "[MusicGridViewItem]"

    const-string v4, "MediaData is null at bindMediaData"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    iput p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mDataIndex:I

    .line 552
    invoke-interface {p2}, Lcom/htc/sunnyCore/IMediaData;->isSelected()Z

    move-result v2

    .line 554
    .local v2, selected:Z
    iget-boolean v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSelected:Z

    if-eq v2, v3, :cond_3

    .line 555
    iput-boolean v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSelected:Z

    .line 556
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 557
    .local v0, layer:Lcom/htc/sunnyCore/Sprite$Layer;
    if-eqz v0, :cond_2

    .line 558
    iget-boolean v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSelected:Z

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 560
    :cond_2
    iget-boolean v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSelected:Z

    if-eqz v3, :cond_6

    .line 561
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:Lcom/htc/sunnyCore/Sprite;

    const v4, 0x3ecccccd

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->setAlpha(F)V

    .line 568
    .end local v0           #layer:Lcom/htc/sunnyCore/Sprite$Layer;
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    if-eqz v3, :cond_0

    move-object v1, p2

    .line 578
    check-cast v1, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    .line 582
    .local v1, musicMediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    iget-boolean v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    invoke-interface {v3}, Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;->isGridViewInitFinish()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->isItemDataReady()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->getDecodeStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 584
    :cond_4
    invoke-direct {p0, p1, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setItemView(ILcom/htc/sunnyCore/IMediaData;)V

    .line 586
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    .line 587
    invoke-virtual {p0, v5}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setVisibility(Z)V

    .line 588
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    invoke-interface {v3}, Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;->isGridViewInitFinish()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    if-nez v3, :cond_5

    .line 589
    iput-boolean v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    .line 591
    :cond_5
    iget-boolean v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    if-nez v3, :cond_0

    .line 592
    invoke-direct {p0, p0, v6}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->createSAnimationController(Lcom/htc/sunnyCore/view/SView;I)Lcom/htc/sunnyCore/view/animation/SAnimationController;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 593
    iput-boolean v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    goto :goto_0

    .line 564
    .end local v1           #musicMediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    .restart local v0       #layer:Lcom/htc/sunnyCore/Sprite$Layer;
    :cond_6
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:Lcom/htc/sunnyCore/Sprite;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->setAlpha(F)V

    goto :goto_1

    .line 597
    .end local v0           #layer:Lcom/htc/sunnyCore/Sprite$Layer;
    .restart local v1       #musicMediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    :cond_7
    invoke-virtual {p0, v6}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setVisibility(Z)V

    .line 598
    invoke-direct {p0, p1, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setItemView(ILcom/htc/sunnyCore/IMediaData;)V

    .line 599
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mRunnableToSetViewItemVisible:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunnyCore/RenderThreadHandler;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_0
.end method

.method public create()Lcom/htc/sunnyCore/ViewItem;
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->create(Z)Lcom/htc/sunnyCore/ViewItem;

    move-result-object v0

    return-object v0
.end method

.method public create(Z)Lcom/htc/sunnyCore/ViewItem;
    .locals 6
    .parameter "isChild"

    .prologue
    .line 210
    if-eqz p1, :cond_2

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, childParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mChildParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mChildParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->clone()Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    move-result-object v0

    .line 215
    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    if-eqz v2, :cond_1

    .line 216
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "child[MusicGridViewItem]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)V

    .line 221
    .local v1, gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    .line 225
    .end local v0           #childParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    :goto_1
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    iput-object v2, v1, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    .line 226
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    iput-object v2, v1, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    .line 227
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextViewImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewImageGetter;

    iput-object v2, v1, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextViewImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewImageGetter;

    .line 228
    return-object v1

    .line 218
    .end local v1           #gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    .restart local v0       #childParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    :cond_1
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "child[MusicGridViewItem]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)V

    .line 219
    .restart local v1       #gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    const-string v2, "[MusicGridViewItem]"

    const-string v3, "@@!!! mSunnyContext is null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    .end local v0           #childParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    .end local v1           #gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    :cond_2
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->clone()Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .restart local v1       #gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    goto :goto_1
.end method

.method protected createFolderResource()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 243
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->FOLDER_LAYER_COUNT:I

    invoke-static {v1}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:Lcom/htc/sunnyCore/Sprite;

    .line 244
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 247
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mHeight:I

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v2, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v4, v1

    .line 248
    .local v4, posY:F
    const/4 v3, 0x0

    .line 249
    .local v3, posX:F
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v5, v4, v5}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    .line 251
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:Lcom/htc/sunnyCore/Sprite;

    iget v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->FOLDER_LAYER_COVER:I

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 252
    .local v0, layer:Lcom/htc/sunnyCore/Sprite$Layer;
    if-eqz v0, :cond_0

    .line 253
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v1, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    int-to-float v4, v1

    .line 254
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v1, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    neg-int v1, v1

    int-to-float v3, v1

    .line 255
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v1, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v2, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    int-to-float v2, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:Lcom/htc/sunnyCore/Sprite;

    iget v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->FOLDER_LAYER_THUMB:I

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_1

    .line 269
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mThumbnailParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v1, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    int-to-float v4, v1

    .line 270
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mThumbnailParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v1, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    neg-int v1, v1

    int-to-float v3, v1

    .line 271
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mThumbnailParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v1, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mThumbnailParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v2, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    int-to-float v2, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 272
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 275
    :cond_1
    return-void
.end method

.method public createResource()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v1, 0x0

    .line 279
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->createResource()V

    .line 280
    const-string v2, "[MusicGridViewItem]"

    const-string v7, "createResource+"

    invoke-static {v2, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v2, "[MusicGridViewItem]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mShareTextureKey = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mShareTextureKey:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    .line 284
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    if-nez v2, :cond_0

    .line 285
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItem$FolderViewSharedTexture;

    iget-object v7, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mThumbnailParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v2, p0, v7, v9, v10}, Lcom/htc/music/widget/gridview/MusicGridViewItem$FolderViewSharedTexture;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewItem;Landroid/content/Context;Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;)V

    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    .line 286
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    iput v11, v2, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 287
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mShareTextureKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    invoke-static {v2, v7}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setSharedTexture(Ljava/lang/String;Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;)V

    .line 288
    const-string v2, "[MusicGridViewItem]"

    const-string v7, "mSharedTexture == null, create new one"

    invoke-static {v2, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    iget v7, v2, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 292
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    const-string v7, "NAME_TEXTURE_BACKGROUND"

    invoke-virtual {v2, v7}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    .line 293
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v2, :cond_1

    .line 294
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    .line 295
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 297
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v2, v1, v1, v1}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    .line 298
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v2, :cond_2

    .line 299
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->createFolderResource()V

    .line 303
    :cond_2
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v2, v1, v1, v1}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    .line 306
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v2, v11}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 307
    .local v0, layer:Lcom/htc/sunnyCore/Sprite$Layer;
    if-eqz v0, :cond_3

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 308
    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 309
    invoke-virtual {v0, v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 311
    :cond_3
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_4

    .line 313
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    const-string v7, "NAME_TEXTUREE_SELECTED"

    invoke-virtual {v2, v7}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    .line 314
    .local v8, texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v8, :cond_4

    .line 315
    invoke-virtual {v8}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v2

    int-to-float v4, v2

    .line 316
    .local v4, height:F
    invoke-virtual {v8}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v2

    int-to-float v3, v2

    .line 317
    .local v3, width:F
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v2, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v7, 0x4000

    div-float v6, v2, v7

    .line 318
    .local v6, posY:F
    const/4 v5, 0x0

    .line 319
    .local v5, posX:F
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v2, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    int-to-float v2, v2

    add-float/2addr v6, v2

    .line 320
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v2, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    int-to-float v2, v2

    sub-float/2addr v5, v2

    move-object v2, v0

    move v7, v1

    .line 321
    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 322
    invoke-virtual {v0, v11, v8}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 323
    invoke-virtual {v0, v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 327
    .end local v3           #width:F
    .end local v4           #height:F
    .end local v5           #posX:F
    .end local v6           #posY:F
    .end local v8           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_4
    const-string v1, "[MusicGridViewItem]"

    const-string v2, "createResource-"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public freeResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 334
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewTextureContainer:Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewTextureContainer:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 336
    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewTextureContainer:Lcom/htc/sunnyCore/Texture;

    .line 339
    :cond_0
    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewContainer:Landroid/view/View;

    .line 343
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 351
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 352
    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:Lcom/htc/sunnyCore/Sprite;

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v1, :cond_2

    .line 356
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 357
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 358
    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    .line 361
    :cond_2
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v0

    .line 362
    .local v0, sharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    if-eqz v0, :cond_3

    .line 363
    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 364
    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    if-nez v1, :cond_3

    .line 365
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->removeSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    .line 366
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->release()V

    .line 370
    :cond_3
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->freeResource()V

    .line 371
    return-void
.end method

.method public getFolderItemCount()I
    .locals 1

    .prologue
    .line 683
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mNumFolderImage:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 647
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mWidth:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 375
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mWidth:I

    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setMeasuredDimension(II)V

    .line 376
    return-void
.end method

.method public setBackground(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 809
    return-void
.end method

.method public setContentGetter(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;)V
    .locals 0
    .parameter "contentGetter"

    .prologue
    .line 821
    return-void
.end method

.method public setStyle(I)V
    .locals 0
    .parameter "style"

    .prologue
    .line 653
    return-void
.end method

.method public setTextViewBindListener(Lcom/htc/music/widget/gridview/IViewBinder;)V
    .locals 0
    .parameter "binder"

    .prologue
    .line 379
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    .line 380
    return-void
.end method

.method public setTextViewImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewImageGetter;)V
    .locals 0
    .parameter "getter"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextViewImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewImageGetter;

    .line 237
    return-void
.end method

.method public setThumbTexture(Lcom/htc/sunnyCore/Texture;)V
    .locals 0
    .parameter "texture"

    .prologue
    .line 815
    return-void
.end method

.method public setThumbnail(Lcom/htc/sunnyCore/Texture;)V
    .locals 1
    .parameter "texture"

    .prologue
    .line 660
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->FOLDER_LAYER_THUMB:I

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setThumbnail(Lcom/htc/sunnyCore/Texture;I)V

    .line 661
    return-void
.end method

.method public setThumbnail(Lcom/htc/sunnyCore/Texture;I)V
    .locals 5
    .parameter "texture"
    .parameter "idx"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 664
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:Lcom/htc/sunnyCore/Sprite;

    .line 666
    .local v1, s:Lcom/htc/sunnyCore/Sprite;
    invoke-virtual {v1, p2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 667
    .local v0, layer:Lcom/htc/sunnyCore/Sprite$Layer;
    if-eqz v0, :cond_0

    .line 668
    if-nez p1, :cond_1

    .line 669
    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite$Layer;->isVisible()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 670
    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    invoke-virtual {v0, v3, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 674
    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite$Layer;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 675
    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public setViewItemImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;)V
    .locals 0
    .parameter "getter"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    .line 233
    return-void
.end method

.method public unbindMediaData()V
    .locals 1

    .prologue
    .line 637
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mDataIndex:I

    .line 638
    return-void
.end method
