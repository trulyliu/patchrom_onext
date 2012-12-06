.class public Lcom/htc/music/lyrics/widget/LyricsConfig;
.super Ljava/lang/Object;
.source "LyricsConfig.java"


# static fields
.field private static config:Lcom/htc/music/lyrics/widget/LyricsConfig;


# instance fields
.field private mColorNowPlaying:I

.field private mColorScrollLine:I

.field private mFontSize:F

.field private mFontStyleRes:I

.field private mIsAutoScroll:Z

.field private mIsDividerVisible:Z

.field private mIsSupportScroll:Z

.field private mIsSupportSeek:Z

.field private mIsViewTransparent:Z

.field private mLineHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/lyrics/widget/LyricsConfig;->config:Lcom/htc/music/lyrics/widget/LyricsConfig;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/htc/music/lyrics/widget/LyricsConfig;->read(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public static readConfig(Landroid/content/Context;)Lcom/htc/music/lyrics/widget/LyricsConfig;
    .locals 2
    .parameter "context"

    .prologue
    .line 30
    sget-object v0, Lcom/htc/music/lyrics/widget/LyricsConfig;->config:Lcom/htc/music/lyrics/widget/LyricsConfig;

    if-nez v0, :cond_1

    .line 31
    const-class v1, Lcom/htc/music/lyrics/widget/LyricsConfig;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/htc/music/lyrics/widget/LyricsConfig;->config:Lcom/htc/music/lyrics/widget/LyricsConfig;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/htc/music/lyrics/widget/LyricsConfig;

    invoke-direct {v0, p0}, Lcom/htc/music/lyrics/widget/LyricsConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/music/lyrics/widget/LyricsConfig;->config:Lcom/htc/music/lyrics/widget/LyricsConfig;

    .line 34
    sget-object v0, Lcom/htc/music/lyrics/widget/LyricsConfig;->config:Lcom/htc/music/lyrics/widget/LyricsConfig;

    monitor-exit v1

    .line 38
    :goto_0
    return-object v0

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lcom/htc/music/lyrics/widget/LyricsConfig;->config:Lcom/htc/music/lyrics/widget/LyricsConfig;

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static saveConfig(Lcom/htc/music/lyrics/widget/LyricsConfig;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 43
    return-void
.end method


# virtual methods
.method public getColorNowPlaying()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/htc/music/lyrics/widget/LyricsConfig;->mColorNowPlaying:I

    return v0
.end method

.method public getColorScrollLine()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/htc/music/lyrics/widget/LyricsConfig;->mColorScrollLine:I

    return v0
.end method

.method public getFontSize()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/music/lyrics/widget/LyricsConfig;->mFontSize:F

    return v0
.end method

.method public getFontStyleRes()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/htc/music/lyrics/widget/LyricsConfig;->mFontStyleRes:I

    return v0
.end method

.method public getLineHeight()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/htc/music/lyrics/widget/LyricsConfig;->mLineHeight:I

    return v0
.end method

.method public isAutoScroll()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsConfig;->mIsAutoScroll:Z

    return v0
.end method

.method public isDividerVisible()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsConfig;->mIsDividerVisible:Z

    return v0
.end method

.method public isSupportScroll()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsConfig;->mIsSupportScroll:Z

    return v0
.end method

.method public isSupportSeek()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsConfig;->mIsSupportSeek:Z

    return v0
.end method

.method public isViewTransparent()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsConfig;->mIsViewTransparent:Z

    return v0
.end method

.method public read(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 59
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsConfig;->mIsSupportScroll:Z

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsConfig;->mIsSupportSeek:Z

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsConfig;->mIsViewTransparent:Z

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsConfig;->mIsAutoScroll:Z

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsConfig;->mIsDividerVisible:Z

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/htc/music/lyrics/widget/LyricsConfig;->mFontSize:F

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/lyrics/widget/LyricsConfig;->mColorNowPlaying:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/lyrics/widget/LyricsConfig;->mColorScrollLine:I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/lyrics/widget/LyricsConfig;->mLineHeight:I

    .line 58
    const/high16 v0, 0x7f0d

    iput v0, p0, Lcom/htc/music/lyrics/widget/LyricsConfig;->mFontStyleRes:I

    goto :goto_0
.end method
