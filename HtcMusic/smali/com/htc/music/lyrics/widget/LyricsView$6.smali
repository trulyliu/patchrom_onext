.class Lcom/htc/music/lyrics/widget/LyricsView$6;
.super Ljava/lang/Object;
.source "LyricsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/lyrics/widget/LyricsView;->scrollToCurrentLyrics(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/lyrics/widget/LyricsView;

.field final synthetic val$doAnimation:Z

.field final synthetic val$yPos:I


# direct methods
.method constructor <init>(Lcom/htc/music/lyrics/widget/LyricsView;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/htc/music/lyrics/widget/LyricsView$6;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    iput-boolean p2, p0, Lcom/htc/music/lyrics/widget/LyricsView$6;->val$doAnimation:Z

    iput p3, p0, Lcom/htc/music/lyrics/widget/LyricsView$6;->val$yPos:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 562
    iget-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsView$6;->val$doAnimation:Z

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView$6;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mScrollView:Lcom/htc/music/lyrics/widget/LyricsScrollView;
    invoke-static {v0}, Lcom/htc/music/lyrics/widget/LyricsView;->access$1400(Lcom/htc/music/lyrics/widget/LyricsView;)Lcom/htc/music/lyrics/widget/LyricsScrollView;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/lyrics/widget/LyricsView$6;->val$yPos:I

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->smoothScrollTo(II)V

    .line 569
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsView$6;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    #getter for: Lcom/htc/music/lyrics/widget/LyricsView;->mScrollView:Lcom/htc/music/lyrics/widget/LyricsScrollView;
    invoke-static {v0}, Lcom/htc/music/lyrics/widget/LyricsView;->access$1400(Lcom/htc/music/lyrics/widget/LyricsView;)Lcom/htc/music/lyrics/widget/LyricsScrollView;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/lyrics/widget/LyricsView$6;->val$yPos:I

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->scrollToImmediately(II)V

    goto :goto_0
.end method
