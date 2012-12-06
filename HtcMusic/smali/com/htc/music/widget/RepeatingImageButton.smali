.class public Lcom/htc/music/widget/RepeatingImageButton;
.super Lcom/htc/widget/HtcRimImageButton;
.source "RepeatingImageButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;
    }
.end annotation


# instance fields
.field private mInterval:J

.field private mListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

.field private mRepeatCount:I

.field private mRepeater:Ljava/lang/Runnable;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcRimImageButton;-><init>(Landroid/content/Context;)V

    .line 40
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/htc/music/widget/RepeatingImageButton;->mInterval:J

    .line 96
    new-instance v0, Lcom/htc/music/widget/RepeatingImageButton$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/RepeatingImageButton$1;-><init>(Lcom/htc/music/widget/RepeatingImageButton;)V

    iput-object v0, p0, Lcom/htc/music/widget/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2
    .parameter "context"
    .parameter "backgroundMode"
    .parameter "isContentMultiply"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcRimImageButton;-><init>(Landroid/content/Context;IZ)V

    .line 40
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/htc/music/widget/RepeatingImageButton;->mInterval:J

    .line 96
    new-instance v0, Lcom/htc/music/widget/RepeatingImageButton$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/RepeatingImageButton$1;-><init>(Lcom/htc/music/widget/RepeatingImageButton;)V

    iput-object v0, p0, Lcom/htc/music/widget/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcRimImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/htc/music/widget/RepeatingImageButton;->mInterval:J

    .line 96
    new-instance v0, Lcom/htc/music/widget/RepeatingImageButton$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/RepeatingImageButton$1;-><init>(Lcom/htc/music/widget/RepeatingImageButton;)V

    iput-object v0, p0, Lcom/htc/music/widget/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcRimImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/htc/music/widget/RepeatingImageButton;->mInterval:J

    .line 96
    new-instance v0, Lcom/htc/music/widget/RepeatingImageButton$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/RepeatingImageButton$1;-><init>(Lcom/htc/music/widget/RepeatingImageButton;)V

    iput-object v0, p0, Lcom/htc/music/widget/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/widget/RepeatingImageButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/htc/music/widget/RepeatingImageButton;->doRepeat(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/widget/RepeatingImageButton;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/htc/music/widget/RepeatingImageButton;->mInterval:J

    return-wide v0
.end method

.method private doRepeat(Z)V
    .locals 7
    .parameter "last"

    .prologue
    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 107
    .local v0, now:J
    iget-object v2, p0, Lcom/htc/music/widget/RepeatingImageButton;->mListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

    if-eqz v2, :cond_0

    .line 108
    iget-object v3, p0, Lcom/htc/music/widget/RepeatingImageButton;->mListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

    iget-wide v4, p0, Lcom/htc/music/widget/RepeatingImageButton;->mStartTime:J

    sub-long v4, v0, v4

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    :goto_0
    invoke-interface {v3, p0, v4, v5, v2}, Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;->onRepeat(Landroid/view/View;JI)V

    .line 110
    :cond_0
    return-void

    .line 108
    :cond_1
    iget v2, p0, Lcom/htc/music/widget/RepeatingImageButton;->mRepeatCount:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/htc/music/widget/RepeatingImageButton;->mRepeatCount:I

    goto :goto_0
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v2, 0x0

    .line 83
    sparse-switch p1, :sswitch_data_0

    .line 93
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcRimImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 87
    :sswitch_0
    iget-object v0, p0, Lcom/htc/music/widget/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 88
    iget-wide v0, p0, Lcom/htc/music/widget/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/widget/RepeatingImageButton;->doRepeat(Z)V

    .line 90
    iput-wide v2, p0, Lcom/htc/music/widget/RepeatingImageButton;->mStartTime:J

    goto :goto_0

    .line 83
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 73
    iget-wide v0, p0, Lcom/htc/music/widget/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0, v2}, Lcom/htc/music/widget/RepeatingImageButton;->doRepeat(Z)V

    .line 75
    iput-wide v3, p0, Lcom/htc/music/widget/RepeatingImageButton;->mStartTime:J

    .line 78
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcRimImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/music/widget/RepeatingImageButton;->mListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/widget/RepeatingImageButton;->mStartTime:J

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/widget/RepeatingImageButton;->mRepeatCount:I

    .line 62
    iget-object v0, p0, Lcom/htc/music/widget/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/RepeatingImageButton;->post(Ljava/lang/Runnable;)Z

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/htc/widget/HtcRimImageButton;->performLongClick()Z

    move-result v0

    goto :goto_0
.end method

.method public setRepeatListener(Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;J)V
    .locals 1
    .parameter "l"
    .parameter "interval"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/music/widget/RepeatingImageButton;->mListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

    .line 51
    iput-wide p2, p0, Lcom/htc/music/widget/RepeatingImageButton;->mInterval:J

    .line 52
    if-eqz p1, :cond_0

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/RepeatingImageButton;->setLongClickable(Z)V

    .line 55
    :cond_0
    return-void
.end method
