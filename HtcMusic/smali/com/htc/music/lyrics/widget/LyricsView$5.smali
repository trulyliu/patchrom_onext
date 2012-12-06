.class Lcom/htc/music/lyrics/widget/LyricsView$5;
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
    .line 386
    iput-object p1, p0, Lcom/htc/music/lyrics/widget/LyricsView$5;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView$5;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsView$5;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mDisplayLyricIndex:I
    invoke-static {v1}, Lcom/htc/music/lyrics/widget/LyricsView;->access$900(Lcom/htc/music/lyrics/widget/LyricsView;)I

    move-result v1

    const/4 v2, 0x1

    #calls: Lcom/htc/music/lyrics/widget/LyricsView;->scrollToCurrentLyrics(IZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/music/lyrics/widget/LyricsView;->access$1300(Lcom/htc/music/lyrics/widget/LyricsView;IZ)V

    .line 392
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView$5;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/lyrics/widget/LyricsView;->mIsUserScrolling:Z
    invoke-static {v0, v1}, Lcom/htc/music/lyrics/widget/LyricsView;->access$402(Lcom/htc/music/lyrics/widget/LyricsView;Z)Z

    .line 393
    return-void
.end method
