.class Lcom/htc/music/AudioPreview$ProgressRefresher;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressRefresher"
.end annotation


# instance fields
.field mSmoothrefreshtime:J

.field final synthetic this$0:Lcom/htc/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/htc/music/AudioPreview;)V
    .locals 2
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 681
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->mSmoothrefreshtime:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x3e8

    const-wide/16 v9, 0x14

    .line 684
    iget-object v7, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;
    invoke-static {v7}, Lcom/htc/music/AudioPreview;->access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mSeeking:Z
    invoke-static {v7}, Lcom/htc/music/AudioPreview;->access$1100(Lcom/htc/music/AudioPreview;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mDuration:I
    invoke-static {v7}, Lcom/htc/music/AudioPreview;->access$1200(Lcom/htc/music/AudioPreview;)I

    move-result v7

    if-eqz v7, :cond_2

    .line 686
    iget-object v7, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;
    invoke-static {v7}, Lcom/htc/music/AudioPreview;->access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/music/AudioPreview$PreviewPlayer;->getCurrentPosition()I

    move-result v7

    int-to-long v0, v7

    .line 687
    .local v0, pos:J
    iget-object v7, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mDuration:I
    invoke-static {v7}, Lcom/htc/music/AudioPreview;->access$1200(Lcom/htc/music/AudioPreview;)I

    move-result v7

    int-to-long v7, v7

    sub-long v2, v7, v0

    .line 688
    .local v2, remain:J
    iget-object v7, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    #calls: Lcom/htc/music/AudioPreview;->setTime(JJ)V
    invoke-static {v7, v0, v1, v2, v3}, Lcom/htc/music/AudioPreview;->access$1300(Lcom/htc/music/AudioPreview;JJ)V

    .line 689
    iget-object v7, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v7}, Lcom/htc/music/AudioPreview;->access$1400(Lcom/htc/music/AudioPreview;)Landroid/widget/SeekBar;

    move-result-object v7

    long-to-int v8, v0

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 693
    rem-long v7, v0, v11

    sub-long v4, v11, v7

    .line 697
    .local v4, remaining:J
    iget-object v7, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v7}, Lcom/htc/music/AudioPreview;->access$1400(Lcom/htc/music/AudioPreview;)Landroid/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getWidth()I

    move-result v6

    .line 698
    .local v6, width:I
    if-nez v6, :cond_0

    const/16 v6, 0x140

    .line 699
    :cond_0
    iget-object v7, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mDuration:I
    invoke-static {v7}, Lcom/htc/music/AudioPreview;->access$1200(Lcom/htc/music/AudioPreview;)I

    move-result v7

    div-int/2addr v7, v6

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->mSmoothrefreshtime:J

    .line 701
    iget-wide v7, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->mSmoothrefreshtime:J

    cmp-long v7, v7, v4

    if-lez v7, :cond_1

    .line 702
    iput-wide v4, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->mSmoothrefreshtime:J

    .line 703
    :cond_1
    iget-wide v7, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->mSmoothrefreshtime:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_2

    .line 704
    iput-wide v9, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->mSmoothrefreshtime:J

    .line 706
    .end local v0           #pos:J
    .end local v2           #remain:J
    .end local v4           #remaining:J
    .end local v6           #width:I
    :cond_2
    iget-object v7, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/music/AudioPreview;->access$1500(Lcom/htc/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 707
    iget-object v7, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/music/AudioPreview;->access$1500(Lcom/htc/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/htc/music/AudioPreview$ProgressRefresher;

    iget-object v9, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    invoke-direct {v8, v9}, Lcom/htc/music/AudioPreview$ProgressRefresher;-><init>(Lcom/htc/music/AudioPreview;)V

    iget-wide v9, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->mSmoothrefreshtime:J

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 708
    return-void
.end method
