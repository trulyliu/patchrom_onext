.class Lcom/htc/music/lyrics/widget/LyricsView$4;
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
.field final synthetic this$0:Lcom/htc/music/lyrics/widget/LyricsView;


# direct methods
.method constructor <init>(Lcom/htc/music/lyrics/widget/LyricsView;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/htc/music/lyrics/widget/LyricsView$4;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 336
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView$4;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mLyrics:Lcom/htc/music/lyrics/Lyrics;
    invoke-static {v2}, Lcom/htc/music/lyrics/widget/LyricsView;->access$000(Lcom/htc/music/lyrics/widget/LyricsView;)Lcom/htc/music/lyrics/Lyrics;

    move-result-object v2

    if-nez v2, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v0

    .line 341
    :cond_1
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView$4;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mLyrics:Lcom/htc/music/lyrics/Lyrics;
    invoke-static {v2}, Lcom/htc/music/lyrics/widget/LyricsView;->access$000(Lcom/htc/music/lyrics/widget/LyricsView;)Lcom/htc/music/lyrics/Lyrics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/lyrics/Lyrics;->getLyricType()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 343
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView$4;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mConfigIsSupportScroll:Z
    invoke-static {v2}, Lcom/htc/music/lyrics/widget/LyricsView;->access$100(Lcom/htc/music/lyrics/widget/LyricsView;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 344
    goto :goto_0

    .line 346
    :cond_2
    if-eqz p2, :cond_0

    .line 347
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 350
    :pswitch_0
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView$4;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/lyrics/widget/LyricsView;->access$300(Lcom/htc/music/lyrics/widget/LyricsView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/lyrics/widget/LyricsView$4;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mSimpleFinishScrollLyricsRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/htc/music/lyrics/widget/LyricsView;->access$1200(Lcom/htc/music/lyrics/widget/LyricsView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 351
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView$4;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #setter for: Lcom/htc/music/lyrics/widget/LyricsView;->mIsUserScrolling:Z
    invoke-static {v2, v1}, Lcom/htc/music/lyrics/widget/LyricsView;->access$402(Lcom/htc/music/lyrics/widget/LyricsView;Z)Z

    goto :goto_0

    .line 355
    :pswitch_1
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView$4;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/lyrics/widget/LyricsView;->access$300(Lcom/htc/music/lyrics/widget/LyricsView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView$4;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mSimpleFinishScrollLyricsRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/htc/music/lyrics/widget/LyricsView;->access$1200(Lcom/htc/music/lyrics/widget/LyricsView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 356
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView$4;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/lyrics/widget/LyricsView;->access$300(Lcom/htc/music/lyrics/widget/LyricsView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView$4;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mSimpleFinishScrollLyricsRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/htc/music/lyrics/widget/LyricsView;->access$1200(Lcom/htc/music/lyrics/widget/LyricsView;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
