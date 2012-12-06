.class Lcom/htc/music/lyrics/widget/LyricsView$2;
.super Ljava/lang/Object;
.source "LyricsView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/lyrics/widget/LyricsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsActionCancel:Z

.field final synthetic this$0:Lcom/htc/music/lyrics/widget/LyricsView;


# direct methods
.method constructor <init>(Lcom/htc/music/lyrics/widget/LyricsView;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/htc/music/lyrics/widget/LyricsView$2;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 250
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsView$2;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mLyrics:Lcom/htc/music/lyrics/Lyrics;
    invoke-static {v4}, Lcom/htc/music/lyrics/widget/LyricsView;->access$000(Lcom/htc/music/lyrics/widget/LyricsView;)Lcom/htc/music/lyrics/Lyrics;

    move-result-object v4

    if-nez v4, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v2

    .line 254
    :cond_1
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsView$2;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mLyrics:Lcom/htc/music/lyrics/Lyrics;
    invoke-static {v4}, Lcom/htc/music/lyrics/widget/LyricsView;->access$000(Lcom/htc/music/lyrics/widget/LyricsView;)Lcom/htc/music/lyrics/Lyrics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/music/lyrics/Lyrics;->getLyricType()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 256
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsView$2;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mConfigIsSupportScroll:Z
    invoke-static {v4}, Lcom/htc/music/lyrics/widget/LyricsView;->access$100(Lcom/htc/music/lyrics/widget/LyricsView;)Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    .line 257
    goto :goto_0

    .line 259
    :cond_2
    if-eqz p2, :cond_0

    .line 260
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 262
    :pswitch_0
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsView$2;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/lyrics/widget/LyricsView;->access$300(Lcom/htc/music/lyrics/widget/LyricsView;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsView$2;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mFinishScrollLyricsSeekRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/htc/music/lyrics/widget/LyricsView;->access$200(Lcom/htc/music/lyrics/widget/LyricsView;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 263
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsView$2;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #setter for: Lcom/htc/music/lyrics/widget/LyricsView;->mIsUserScrolling:Z
    invoke-static {v4, v3}, Lcom/htc/music/lyrics/widget/LyricsView;->access$402(Lcom/htc/music/lyrics/widget/LyricsView;Z)Z

    .line 264
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsView$2;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #calls: Lcom/htc/music/lyrics/widget/LyricsView;->showDivider(Z)V
    invoke-static {v4, v3}, Lcom/htc/music/lyrics/widget/LyricsView;->access$500(Lcom/htc/music/lyrics/widget/LyricsView;Z)V

    goto :goto_0

    .line 268
    :pswitch_1
    iget-boolean v3, p0, Lcom/htc/music/lyrics/widget/LyricsView$2;->mIsActionCancel:Z

    if-nez v3, :cond_0

    .line 269
    iget-object v3, p0, Lcom/htc/music/lyrics/widget/LyricsView$2;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/lyrics/widget/LyricsView;->access$300(Lcom/htc/music/lyrics/widget/LyricsView;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsView$2;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mFinishScrollLyricsSeekRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/htc/music/lyrics/widget/LyricsView;->access$200(Lcom/htc/music/lyrics/widget/LyricsView;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 270
    iget-object v3, p0, Lcom/htc/music/lyrics/widget/LyricsView$2;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/lyrics/widget/LyricsView;->access$300(Lcom/htc/music/lyrics/widget/LyricsView;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsView$2;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mFinishScrollLyricsSeekRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/htc/music/lyrics/widget/LyricsView;->access$200(Lcom/htc/music/lyrics/widget/LyricsView;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 288
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsView$2;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mSingleLineHeight:I
    invoke-static {v5}, Lcom/htc/music/lyrics/widget/LyricsView;->access$600(Lcom/htc/music/lyrics/widget/LyricsView;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v1, v4, v5

    .line 289
    .local v1, pixelPos:I
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsView$2;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #calls: Lcom/htc/music/lyrics/widget/LyricsView;->getLyricsLineByScrollPosition(I)I
    invoke-static {v4, v1}, Lcom/htc/music/lyrics/widget/LyricsView;->access$700(Lcom/htc/music/lyrics/widget/LyricsView;I)I

    move-result v0

    .line 290
    .local v0, index:I
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsView$2;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mScrollLyricsIndex:I
    invoke-static {v4}, Lcom/htc/music/lyrics/widget/LyricsView;->access$800(Lcom/htc/music/lyrics/widget/LyricsView;)I

    move-result v4

    if-eq v0, v4, :cond_0

    .line 292
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsView$2;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsView$2;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mDisplayLyricIndex:I
    invoke-static {v5}, Lcom/htc/music/lyrics/widget/LyricsView;->access$900(Lcom/htc/music/lyrics/widget/LyricsView;)I

    move-result v5

    #calls: Lcom/htc/music/lyrics/widget/LyricsView;->drawLyricsByLine(IIZ)V
    invoke-static {v4, v5, v0, v3}, Lcom/htc/music/lyrics/widget/LyricsView;->access$1000(Lcom/htc/music/lyrics/widget/LyricsView;IIZ)V

    .line 293
    iget-object v3, p0, Lcom/htc/music/lyrics/widget/LyricsView$2;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #setter for: Lcom/htc/music/lyrics/widget/LyricsView;->mScrollLyricsIndex:I
    invoke-static {v3, v0}, Lcom/htc/music/lyrics/widget/LyricsView;->access$802(Lcom/htc/music/lyrics/widget/LyricsView;I)I

    goto/16 :goto_0

    .line 298
    .end local v0           #index:I
    .end local v1           #pixelPos:I
    :pswitch_3
    iput-boolean v3, p0, Lcom/htc/music/lyrics/widget/LyricsView$2;->mIsActionCancel:Z

    goto/16 :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
