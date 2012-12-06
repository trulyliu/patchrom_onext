.class Lcom/htc/music/lyrics/widget/LyricsView$3;
.super Ljava/lang/Object;
.source "LyricsView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 308
    iput-object p1, p0, Lcom/htc/music/lyrics/widget/LyricsView$3;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 313
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView$3;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #calls: Lcom/htc/music/lyrics/widget/LyricsView;->showDivider(Z)V
    invoke-static {v2, v3}, Lcom/htc/music/lyrics/widget/LyricsView;->access$500(Lcom/htc/music/lyrics/widget/LyricsView;Z)V

    .line 314
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView$3;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #setter for: Lcom/htc/music/lyrics/widget/LyricsView;->mIsUserScrolling:Z
    invoke-static {v2, v3}, Lcom/htc/music/lyrics/widget/LyricsView;->access$402(Lcom/htc/music/lyrics/widget/LyricsView;Z)Z

    .line 315
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView$3;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mOnScrollSeekListener:Lcom/htc/music/lyrics/widget/LyricsView$OnScrollSeekListener;
    invoke-static {v2}, Lcom/htc/music/lyrics/widget/LyricsView;->access$1100(Lcom/htc/music/lyrics/widget/LyricsView;)Lcom/htc/music/lyrics/widget/LyricsView$OnScrollSeekListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 317
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView$3;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mScrollLyricsIndex:I
    invoke-static {v2}, Lcom/htc/music/lyrics/widget/LyricsView;->access$800(Lcom/htc/music/lyrics/widget/LyricsView;)I

    move-result v0

    .line 318
    .local v0, index:I
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView$3;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mScrollLyricsIndex:I
    invoke-static {v2}, Lcom/htc/music/lyrics/widget/LyricsView;->access$800(Lcom/htc/music/lyrics/widget/LyricsView;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/lyrics/widget/LyricsView$3;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mDisplayLyricIndex:I
    invoke-static {v3}, Lcom/htc/music/lyrics/widget/LyricsView;->access$900(Lcom/htc/music/lyrics/widget/LyricsView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView$3;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mDisplayLyricIndex:I
    invoke-static {v2}, Lcom/htc/music/lyrics/widget/LyricsView;->access$900(Lcom/htc/music/lyrics/widget/LyricsView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    if-ge v0, v2, :cond_1

    .line 320
    :cond_0
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView$3;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mLyrics:Lcom/htc/music/lyrics/Lyrics;
    invoke-static {v2}, Lcom/htc/music/lyrics/widget/LyricsView;->access$000(Lcom/htc/music/lyrics/widget/LyricsView;)Lcom/htc/music/lyrics/Lyrics;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/music/lyrics/Lyrics;->getTimeByIndex(I)I

    move-result v1

    .line 321
    .local v1, pos:I
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView$3;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mOnScrollSeekListener:Lcom/htc/music/lyrics/widget/LyricsView$OnScrollSeekListener;
    invoke-static {v2}, Lcom/htc/music/lyrics/widget/LyricsView;->access$1100(Lcom/htc/music/lyrics/widget/LyricsView;)Lcom/htc/music/lyrics/widget/LyricsView$OnScrollSeekListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/htc/music/lyrics/widget/LyricsView$OnScrollSeekListener;->onSeek(I)V

    .line 322
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView$3;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/music/lyrics/widget/LyricsView;->drawLyrics(JZ)J

    .line 327
    .end local v0           #index:I
    .end local v1           #pos:I
    :cond_1
    :goto_0
    return-void

    .line 325
    :cond_2
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsView$3;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    iget-object v3, p0, Lcom/htc/music/lyrics/widget/LyricsView$3;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mDisplayLyricIndex:I
    invoke-static {v3}, Lcom/htc/music/lyrics/widget/LyricsView;->access$900(Lcom/htc/music/lyrics/widget/LyricsView;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/music/lyrics/widget/LyricsView;->drawLyrics(JZ)J

    goto :goto_0
.end method
