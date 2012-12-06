.class public Lcom/htc/music/lyrics/widget/LyricsView;
.super Landroid/widget/RelativeLayout;
.source "LyricsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/lyrics/widget/LyricsView$OnScrollSeekListener;
    }
.end annotation


# static fields
.field private static DURATIONTIME:I = 0x0

.field private static final DURATION_NOT_SEEK:I = 0x0

.field public static final TAG:Ljava/lang/String; = "[LyricsView]"

.field private static final TIME_SHOW_CURRENT_LYRICS:I = 0x1f4


# instance fields
.field private handler:Landroid/os/Handler;

.field public logger:Lcom/htc/music/online/sinamusic/MyLogger;

.field private mAllStepArray:[Ljava/lang/Integer;

.field private mBlankLineCount:I

.field private mBoundDivider:Landroid/view/View;

.field private mConfigIsDividerVisible:Z

.field private mConfigIsSupportScroll:Z

.field private mConfigIsSupportSeek:Z

.field private mConfigIsSupportTransparent:Z

.field private mConfigNowPlayingColor:Landroid/text/style/ForegroundColorSpan;

.field private mConfigScrollLineColor:Landroid/text/style/ForegroundColorSpan;

.field private mContext:Landroid/content/Context;

.field private mDisplayLyricIndex:I

.field private mDivider:Landroid/view/View;

.field private mEmptyView:Landroid/widget/TextView;

.field private mFinishScrollLyricsSeekRunnable:Ljava/lang/Runnable;

.field private mIsUserScrolling:Z

.field private mLyrics:Lcom/htc/music/lyrics/Lyrics;

.field private mLyricsPanel:Landroid/widget/RelativeLayout;

.field private mMarkedString:Landroid/text/SpannableString;

.field private mOnScrollSeekListener:Lcom/htc/music/lyrics/widget/LyricsView$OnScrollSeekListener;

.field private mOnSeekTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnSimpleTouchListener:Landroid/view/View$OnTouchListener;

.field private mScrollLyricsIndex:I

.field private mScrollView:Lcom/htc/music/lyrics/widget/LyricsScrollView;

.field private mSimpleFinishScrollLyricsRunnable:Ljava/lang/Runnable;

.field private mSingleLineHeight:I

.field private mTextViewLyric:Landroid/widget/TextView;

.field private mViewHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x12c

    sput v0, Lcom/htc/music/lyrics/widget/LyricsView;->DURATIONTIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 6
    .parameter "context"
    .parameter "params"

    .prologue
    const v5, 0x3f99999a

    const/4 v4, -0x1

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-static {}, Lcom/htc/music/online/sinamusic/MyLogger;->kLog()Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    .line 29
    iput v4, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mDisplayLyricIndex:I

    .line 30
    iput v4, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mScrollLyricsIndex:I

    .line 244
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->handler:Landroid/os/Handler;

    .line 245
    new-instance v2, Lcom/htc/music/lyrics/widget/LyricsView$2;

    invoke-direct {v2, p0}, Lcom/htc/music/lyrics/widget/LyricsView$2;-><init>(Lcom/htc/music/lyrics/widget/LyricsView;)V

    iput-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mOnSeekTouchListener:Landroid/view/View$OnTouchListener;

    .line 308
    new-instance v2, Lcom/htc/music/lyrics/widget/LyricsView$3;

    invoke-direct {v2, p0}, Lcom/htc/music/lyrics/widget/LyricsView$3;-><init>(Lcom/htc/music/lyrics/widget/LyricsView;)V

    iput-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mFinishScrollLyricsSeekRunnable:Ljava/lang/Runnable;

    .line 332
    new-instance v2, Lcom/htc/music/lyrics/widget/LyricsView$4;

    invoke-direct {v2, p0}, Lcom/htc/music/lyrics/widget/LyricsView$4;-><init>(Lcom/htc/music/lyrics/widget/LyricsView;)V

    iput-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mOnSimpleTouchListener:Landroid/view/View$OnTouchListener;

    .line 386
    new-instance v2, Lcom/htc/music/lyrics/widget/LyricsView$5;

    invoke-direct {v2, p0}, Lcom/htc/music/lyrics/widget/LyricsView$5;-><init>(Lcom/htc/music/lyrics/widget/LyricsView;)V

    iput-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mSimpleFinishScrollLyricsRunnable:Ljava/lang/Runnable;

    .line 57
    invoke-virtual {p0, p2}, Lcom/htc/music/lyrics/widget/LyricsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iput-object p1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mContext:Landroid/content/Context;

    .line 59
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v3, "[TrackLyrics] + Constructor + Begin"

    invoke-virtual {v2, v3}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 61
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030033

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mLyricsPanel:Landroid/widget/RelativeLayout;

    .line 63
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mLyricsPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Lcom/htc/music/lyrics/widget/LyricsView;->addView(Landroid/view/View;)V

    .line 65
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mBoundDivider:Landroid/view/View;

    .line 66
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mBoundDivider:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/htc/music/lyrics/widget/LyricsView;->addView(Landroid/view/View;)V

    .line 68
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mEmptyView:Landroid/widget/TextView;

    .line 69
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 70
    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mEmptyView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 72
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mEmptyView:Landroid/widget/TextView;

    const v3, 0x7f0600e5

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mEmptyView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mEmptyView:Landroid/widget/TextView;

    const/high16 v3, 0x7f0d

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 75
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mEmptyView:Landroid/widget/TextView;

    const v3, -0xe3e3e4

    invoke-virtual {v2, v5, v5, v5, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 76
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/htc/music/lyrics/widget/LyricsView;->addView(Landroid/view/View;)V

    .line 79
    new-instance v2, Lcom/htc/music/lyrics/widget/LyricsView$1;

    invoke-direct {v2, p0}, Lcom/htc/music/lyrics/widget/LyricsView$1;-><init>(Lcom/htc/music/lyrics/widget/LyricsView;)V

    invoke-virtual {p0, v2}, Lcom/htc/music/lyrics/widget/LyricsView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/htc/music/lyrics/widget/LyricsView;->init(Landroid/content/Context;)V

    .line 86
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v3, "[TrackLyrics] + Constructor + End"

    invoke-virtual {v2, v3}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/lyrics/widget/LyricsView;)Lcom/htc/music/lyrics/Lyrics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mLyrics:Lcom/htc/music/lyrics/Lyrics;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/lyrics/widget/LyricsView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mConfigIsSupportScroll:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/music/lyrics/widget/LyricsView;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/lyrics/widget/LyricsView;->drawLyricsByLine(IIZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/music/lyrics/widget/LyricsView;)Lcom/htc/music/lyrics/widget/LyricsView$OnScrollSeekListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mOnScrollSeekListener:Lcom/htc/music/lyrics/widget/LyricsView$OnScrollSeekListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/lyrics/widget/LyricsView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mSimpleFinishScrollLyricsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/lyrics/widget/LyricsView;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/htc/music/lyrics/widget/LyricsView;->scrollToCurrentLyrics(IZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/music/lyrics/widget/LyricsView;)Lcom/htc/music/lyrics/widget/LyricsScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mScrollView:Lcom/htc/music/lyrics/widget/LyricsScrollView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/lyrics/widget/LyricsView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mFinishScrollLyricsSeekRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/lyrics/widget/LyricsView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/music/lyrics/widget/LyricsView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mIsUserScrolling:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/music/lyrics/widget/LyricsView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/music/lyrics/widget/LyricsView;->showDivider(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/lyrics/widget/LyricsView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mSingleLineHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/music/lyrics/widget/LyricsView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/music/lyrics/widget/LyricsView;->getLyricsLineByScrollPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/music/lyrics/widget/LyricsView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mScrollLyricsIndex:I

    return v0
.end method

.method static synthetic access$802(Lcom/htc/music/lyrics/widget/LyricsView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mScrollLyricsIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/htc/music/lyrics/widget/LyricsView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mDisplayLyricIndex:I

    return v0
.end method

.method private caculateSteps(Lcom/htc/music/lyrics/Lyrics;)V
    .locals 7
    .parameter "lyrics"

    .prologue
    .line 427
    invoke-virtual {p1}, Lcom/htc/music/lyrics/Lyrics;->GetLyricCount()I

    move-result v4

    .line 428
    .local v4, totalLyricCount:I
    new-array v5, v4, [Ljava/lang/Integer;

    iput-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mAllStepArray:[Ljava/lang/Integer;

    .line 429
    const-string v3, ""

    .line 431
    .local v3, strLyric:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 432
    invoke-virtual {p1, v0}, Lcom/htc/music/lyrics/Lyrics;->getLyricByIndex(I)Ljava/lang/String;

    move-result-object v3

    .line 433
    if-nez v3, :cond_0

    .line 434
    const-string v3, ""

    .line 436
    :cond_0
    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    .line 437
    .local v2, nOldLineCount:I
    if-nez v0, :cond_1

    .line 438
    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 445
    :goto_1
    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->invalidate()V

    .line 446
    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    .line 447
    .local v1, nNewLineCount:I
    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mAllStepArray:[Ljava/lang/Integer;

    sub-int v6, v1, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    .end local v1           #nNewLineCount:I
    :cond_1
    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 449
    .end local v2           #nOldLineCount:I
    :cond_2
    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    return-void
.end method

.method private customizeLyricsView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x3f99999a

    .line 151
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/music/lyrics/widget/LyricsConfig;->readConfig(Landroid/content/Context;)Lcom/htc/music/lyrics/widget/LyricsConfig;

    move-result-object v0

    .line 152
    .local v0, config:Lcom/htc/music/lyrics/widget/LyricsConfig;
    if-nez v0, :cond_0

    .line 153
    const-string v4, "[LyricsView]"

    const-string v5, "[customizeLyricsView]config is null "

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {v0}, Lcom/htc/music/lyrics/widget/LyricsConfig;->isSupportSeek()Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mConfigIsSupportSeek:Z

    .line 159
    iget-boolean v4, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mConfigIsSupportSeek:Z

    if-eqz v4, :cond_4

    .line 160
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mScrollView:Lcom/htc/music/lyrics/widget/LyricsScrollView;

    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mOnSeekTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 166
    :goto_1
    invoke-virtual {v0}, Lcom/htc/music/lyrics/widget/LyricsConfig;->getFontStyleRes()I

    move-result v2

    .line 167
    .local v2, resid:I
    if-eqz v2, :cond_1

    .line 168
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 172
    :cond_1
    invoke-virtual {v0}, Lcom/htc/music/lyrics/widget/LyricsConfig;->getLineHeight()I

    move-result v1

    .line 173
    .local v1, lineSpacing:I
    if-lez v1, :cond_2

    .line 174
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    int-to-float v5, v1

    invoke-virtual {v4, v5, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 178
    :cond_2
    invoke-virtual {v0}, Lcom/htc/music/lyrics/widget/LyricsConfig;->getFontSize()F

    move-result v3

    .line 179
    .local v3, textSize:F
    cmpl-float v4, v3, v7

    if-lez v4, :cond_3

    .line 180
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 183
    :cond_3
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    const v5, -0xe3e3e4

    invoke-virtual {v4, v6, v6, v6, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 188
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0}, Lcom/htc/music/lyrics/widget/LyricsConfig;->getColorNowPlaying()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mConfigNowPlayingColor:Landroid/text/style/ForegroundColorSpan;

    .line 192
    invoke-virtual {v0}, Lcom/htc/music/lyrics/widget/LyricsConfig;->isViewTransparent()Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mConfigIsSupportTransparent:Z

    .line 193
    iget-boolean v4, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mConfigIsSupportTransparent:Z

    if-eqz v4, :cond_5

    .line 194
    const/high16 v4, -0x4000

    invoke-virtual {p0, v4}, Lcom/htc/music/lyrics/widget/LyricsView;->setBackgroundColor(I)V

    .line 201
    :goto_2
    invoke-virtual {v0}, Lcom/htc/music/lyrics/widget/LyricsConfig;->isSupportScroll()Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mConfigIsSupportScroll:Z

    .line 204
    invoke-virtual {v0}, Lcom/htc/music/lyrics/widget/LyricsConfig;->isDividerVisible()Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mConfigIsDividerVisible:Z

    goto :goto_0

    .line 162
    .end local v1           #lineSpacing:I
    .end local v2           #resid:I
    .end local v3           #textSize:F
    :cond_4
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mScrollView:Lcom/htc/music/lyrics/widget/LyricsScrollView;

    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mOnSimpleTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 196
    .restart local v1       #lineSpacing:I
    .restart local v2       #resid:I
    .restart local v3       #textSize:F
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/music/lyrics/widget/LyricsView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2080001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/music/lyrics/widget/LyricsView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private drawLyricsByLine(IIZ)V
    .locals 5
    .parameter "nowPlayingLine"
    .parameter "scrollLine"
    .parameter "doAnimation"

    .prologue
    const/16 v4, 0x21

    .line 508
    const/4 v0, 0x0

    .line 509
    .local v0, beginPos:I
    const/4 v1, 0x0

    .line 513
    .local v1, endPos:I
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mLyrics:Lcom/htc/music/lyrics/Lyrics;

    invoke-virtual {v2, p1}, Lcom/htc/music/lyrics/Lyrics;->startIndexOf(I)I

    move-result v0

    .line 514
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mLyrics:Lcom/htc/music/lyrics/Lyrics;

    invoke-virtual {v2, p1}, Lcom/htc/music/lyrics/Lyrics;->endIndexOf(I)I

    move-result v1

    .line 515
    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    .line 516
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mMarkedString:Landroid/text/SpannableString;

    iget-object v3, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mConfigNowPlayingColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 522
    :cond_0
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mLyrics:Lcom/htc/music/lyrics/Lyrics;

    invoke-virtual {v2, p2}, Lcom/htc/music/lyrics/Lyrics;->startIndexOf(I)I

    move-result v0

    .line 523
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mLyrics:Lcom/htc/music/lyrics/Lyrics;

    invoke-virtual {v2, p2}, Lcom/htc/music/lyrics/Lyrics;->endIndexOf(I)I

    move-result v1

    .line 524
    if-ltz v0, :cond_1

    if-ltz v1, :cond_1

    .line 525
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mMarkedString:Landroid/text/SpannableString;

    iget-object v3, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mConfigScrollLineColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 528
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/lyrics/widget/LyricsView;->drawString()V

    .line 530
    iget-boolean v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mIsUserScrolling:Z

    if-nez v2, :cond_2

    .line 531
    iget v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mDisplayLyricIndex:I

    if-eq v2, p1, :cond_2

    .line 532
    invoke-direct {p0, p1, p3}, Lcom/htc/music/lyrics/widget/LyricsView;->scrollToCurrentLyrics(IZ)V

    .line 535
    :cond_2
    return-void
.end method

.method private drawString()V
    .locals 3

    .prologue
    .line 472
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mBlankLineCount:I

    if-ge v0, v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mMarkedString:Landroid/text/SpannableString;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 477
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mBlankLineCount:I

    if-ge v0, v1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 480
    :cond_1
    return-void
.end method

.method private getIndexBySteps(I)I
    .locals 4
    .parameter "steps"

    .prologue
    .line 583
    const/4 v1, 0x0

    .line 584
    .local v1, index:I
    const/4 v2, 0x0

    .line 585
    .local v2, tempSteps:I
    const/4 v0, 0x0

    .line 586
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mAllStepArray:[Ljava/lang/Integer;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 587
    iget-object v3, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mAllStepArray:[Ljava/lang/Integer;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    .line 588
    if-le v2, p1, :cond_1

    .line 589
    move v1, v0

    .line 593
    :cond_0
    return v1

    .line 586
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getLyricsLineByScrollPosition(I)I
    .locals 3
    .parameter "pixelPos"

    .prologue
    .line 370
    iget v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mSingleLineHeight:I

    div-int v1, p1, v2

    .line 371
    .local v1, steps:I
    invoke-direct {p0, v1}, Lcom/htc/music/lyrics/widget/LyricsView;->getIndexBySteps(I)I

    move-result v0

    .line 373
    .local v0, index:I
    return v0
.end method

.method private getStepsByIndex(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 574
    const/4 v1, 0x0

    .line 576
    .local v1, step:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 577
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mAllStepArray:[Ljava/lang/Integer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    .line 576
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 579
    :cond_0
    return v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 90
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v2, "[init] + Begin"

    invoke-virtual {v1, v2}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 91
    const v1, 0x7f070076

    invoke-virtual {p0, v1}, Lcom/htc/music/lyrics/widget/LyricsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    .line 93
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 94
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 95
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 97
    const v1, 0x7f070075

    invoke-virtual {p0, v1}, Lcom/htc/music/lyrics/widget/LyricsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/music/lyrics/widget/LyricsScrollView;

    iput-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mScrollView:Lcom/htc/music/lyrics/widget/LyricsScrollView;

    .line 98
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mScrollView:Lcom/htc/music/lyrics/widget/LyricsScrollView;

    sget v2, Lcom/htc/music/lyrics/widget/LyricsView;->DURATIONTIME:I

    invoke-virtual {v1, v2}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->setScrollDuration(I)V

    .line 99
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mScrollView:Lcom/htc/music/lyrics/widget/LyricsScrollView;

    invoke-virtual {v1, v5}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->setFocusable(Z)V

    .line 100
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mScrollView:Lcom/htc/music/lyrics/widget/LyricsScrollView;

    invoke-virtual {v1, v5}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->setClickable(Z)V

    .line 101
    invoke-direct {p0}, Lcom/htc/music/lyrics/widget/LyricsView;->customizeLyricsView()V

    .line 102
    invoke-direct {p0}, Lcom/htc/music/lyrics/widget/LyricsView;->initParameters()V

    .line 103
    invoke-direct {p0}, Lcom/htc/music/lyrics/widget/LyricsView;->initLayout()V

    .line 105
    const v1, 0x7f070077

    invoke-virtual {p0, v1}, Lcom/htc/music/lyrics/widget/LyricsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mDivider:Landroid/view/View;

    .line 106
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 107
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mBlankLineCount:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    add-double/2addr v1, v3

    iget v3, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mSingleLineHeight:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 108
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v2, "[init] + End"

    invoke-virtual {v1, v2}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method private initLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mLyricsPanel:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mLyricsPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 117
    .restart local v0       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_2

    .line 119
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 120
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 121
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 122
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mLyricsPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mBoundDivider:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_3

    .line 135
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mBoundDivider:Landroid/view/View;

    const v2, 0x2080041

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 136
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mBoundDivider:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 137
    .restart local v0       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 138
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 139
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 148
    :cond_1
    :goto_1
    return-void

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 126
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 127
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 128
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 141
    :cond_3
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mBoundDivider:Landroid/view/View;

    const v2, 0x2080036

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 142
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mBoundDivider:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 143
    .restart local v0       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 144
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 145
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1
.end method

.method private initParameters()V
    .locals 3

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 209
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mViewHeight:I

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    iput v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mSingleLineHeight:I

    .line 213
    iget v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mViewHeight:I

    iget v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mSingleLineHeight:I

    div-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mBlankLineCount:I

    .line 214
    return-void
.end method

.method private scrollToCurrentLyrics(IZ)V
    .locals 3
    .parameter "currentIndex"
    .parameter "doAnimation"

    .prologue
    .line 540
    invoke-direct {p0, p1}, Lcom/htc/music/lyrics/widget/LyricsView;->getStepsByIndex(I)I

    move-result v1

    iget v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mSingleLineHeight:I

    mul-int v0, v1, v2

    .line 559
    .local v0, yPos:I
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mScrollView:Lcom/htc/music/lyrics/widget/LyricsScrollView;

    new-instance v2, Lcom/htc/music/lyrics/widget/LyricsView$6;

    invoke-direct {v2, p0, p2, v0}, Lcom/htc/music/lyrics/widget/LyricsView$6;-><init>(Lcom/htc/music/lyrics/widget/LyricsView;ZI)V

    invoke-virtual {v1, v2}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->post(Ljava/lang/Runnable;)Z

    .line 571
    return-void
.end method

.method private showDivider(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mConfigIsDividerVisible:Z

    if-eqz v0, :cond_0

    .line 378
    if-eqz p1, :cond_1

    .line 379
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mDivider:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clearResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 597
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v1, "[clearResource] + Begin"

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 598
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iput-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    .line 600
    iput-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mScrollView:Lcom/htc/music/lyrics/widget/LyricsScrollView;

    .line 601
    iput-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mMarkedString:Landroid/text/SpannableString;

    .line 602
    iput-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mAllStepArray:[Ljava/lang/Integer;

    .line 603
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsView;->removeAllViewsInLayout()V

    .line 604
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v1, "[clearResource] + End"

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 605
    return-void
.end method

.method public drawLyrics(JZ)J
    .locals 5
    .parameter "lPos"
    .parameter "doAnimation"

    .prologue
    const-wide/16 v1, 0x0

    .line 483
    iget-object v3, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mLyrics:Lcom/htc/music/lyrics/Lyrics;

    if-nez v3, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-wide v1

    .line 486
    :cond_1
    iget-object v3, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mLyrics:Lcom/htc/music/lyrics/Lyrics;

    invoke-virtual {v3}, Lcom/htc/music/lyrics/Lyrics;->getLyricType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 487
    invoke-direct {p0}, Lcom/htc/music/lyrics/widget/LyricsView;->drawString()V

    goto :goto_0

    .line 491
    :cond_2
    iget-object v3, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mLyrics:Lcom/htc/music/lyrics/Lyrics;

    invoke-virtual {v3, p1, p2}, Lcom/htc/music/lyrics/Lyrics;->getIndexByTime(J)I

    move-result v0

    .line 492
    .local v0, nLyricIndex:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 495
    iget v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mDisplayLyricIndex:I

    if-eq v0, v1, :cond_3

    .line 496
    iget-boolean v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mConfigIsSupportSeek:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mIsUserScrolling:Z

    if-eqz v1, :cond_4

    .line 497
    iget v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mScrollLyricsIndex:I

    invoke-direct {p0, v0, v1, p3}, Lcom/htc/music/lyrics/widget/LyricsView;->drawLyricsByLine(IIZ)V

    .line 501
    :goto_1
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mLyrics:Lcom/htc/music/lyrics/Lyrics;

    invoke-virtual {v1, p1, p2}, Lcom/htc/music/lyrics/Lyrics;->setCurrentPos(J)V

    .line 503
    :cond_3
    iput v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mDisplayLyricIndex:I

    .line 504
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mLyrics:Lcom/htc/music/lyrics/Lyrics;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/music/lyrics/Lyrics;->getTimeByIndex(I)I

    move-result v1

    int-to-long v1, v1

    sub-long/2addr v1, p1

    goto :goto_0

    .line 499
    :cond_4
    invoke-direct {p0, v0, v0, p3}, Lcom/htc/music/lyrics/widget/LyricsView;->drawLyricsByLine(IIZ)V

    goto :goto_1
.end method

.method public hideEmptyView()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mScrollView:Lcom/htc/music/lyrics/widget/LyricsScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->setVisibility(I)V

    .line 469
    :cond_0
    return-void
.end method

.method public initEnv()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v1, "[initEnv] + Begin"

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 399
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v1, "[initEnv] + End"

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 403
    return-void
.end method

.method public initLyricsView(Lcom/htc/music/lyrics/Lyrics;)Z
    .locals 5
    .parameter "lyrics"

    .prologue
    .line 406
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v3, "[openLyricFile] + Begin"

    invoke-virtual {v2, v3}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 409
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mContext:Landroid/content/Context;

    const-string v3, "multiply_color"

    const/high16 v4, 0x206

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 410
    .local v1, colorBackgroundId:I
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mConfigScrollLineColor:Landroid/text/style/ForegroundColorSpan;

    .line 412
    const/4 v2, 0x6

    iput v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mDisplayLyricIndex:I

    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, bResult:Z
    iput-object p1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mLyrics:Lcom/htc/music/lyrics/Lyrics;

    .line 415
    if-eqz p1, :cond_0

    .line 416
    invoke-direct {p0, p1}, Lcom/htc/music/lyrics/widget/LyricsView;->caculateSteps(Lcom/htc/music/lyrics/Lyrics;)V

    .line 417
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lcom/htc/music/lyrics/Lyrics;->getLyricStr()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mMarkedString:Landroid/text/SpannableString;

    .line 418
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsView;->hideEmptyView()V

    .line 423
    :goto_0
    return v0

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsView;->showEmptyView()V

    goto :goto_0
.end method

.method public isTransparent()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mConfigIsSupportTransparent:Z

    return v0
.end method

.method public setFontSize(I)V
    .locals 0
    .parameter "fontSize"

    .prologue
    .line 232
    return-void
.end method

.method public setIsTransparent(Z)V
    .locals 2
    .parameter "isTransParent"

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mConfigIsSupportTransparent:Z

    .line 222
    iget-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mConfigIsSupportTransparent:Z

    if-eqz v0, :cond_0

    .line 223
    const/high16 v0, -0x4000

    invoke-virtual {p0, v0}, Lcom/htc/music/lyrics/widget/LyricsView;->setBackgroundColor(I)V

    .line 228
    :goto_0
    return-void

    .line 225
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/lyrics/widget/LyricsView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/lyrics/widget/LyricsView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setOnScrollSeekListener(Lcom/htc/music/lyrics/widget/LyricsView$OnScrollSeekListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mOnScrollSeekListener:Lcom/htc/music/lyrics/widget/LyricsView$OnScrollSeekListener;

    .line 241
    return-void
.end method

.method public showEmptyView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 453
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mLyrics:Lcom/htc/music/lyrics/Lyrics;

    .line 455
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 456
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mTextViewLyric:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 458
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView;->mScrollView:Lcom/htc/music/lyrics/widget/LyricsScrollView;

    invoke-virtual {v0, v3}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->setVisibility(I)V

    .line 461
    :cond_0
    return-void
.end method
