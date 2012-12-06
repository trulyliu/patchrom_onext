.class Lcom/htc/music/AudioPreview$2;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/htc/music/AudioPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 747
    iput-object p1, p0, Lcom/htc/music/AudioPreview$2;->this$0:Lcom/htc/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 755
    if-nez p3, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    iget-object v4, p0, Lcom/htc/music/AudioPreview$2;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mDuration:I
    invoke-static {v4}, Lcom/htc/music/AudioPreview;->access$1200(Lcom/htc/music/AudioPreview;)I

    move-result v4

    if-lez v4, :cond_0

    .line 761
    int-to-long v0, p2

    .line 762
    .local v0, pos:J
    iget-object v4, p0, Lcom/htc/music/AudioPreview$2;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mDuration:I
    invoke-static {v4}, Lcom/htc/music/AudioPreview;->access$1200(Lcom/htc/music/AudioPreview;)I

    move-result v4

    int-to-long v4, v4

    sub-long v2, v4, v0

    .line 763
    .local v2, remain:J
    iget-object v4, p0, Lcom/htc/music/AudioPreview$2;->this$0:Lcom/htc/music/AudioPreview;

    #calls: Lcom/htc/music/AudioPreview;->setTime(JJ)V
    invoke-static {v4, v0, v1, v2, v3}, Lcom/htc/music/AudioPreview;->access$1300(Lcom/htc/music/AudioPreview;JJ)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 750
    iget-object v0, p0, Lcom/htc/music/AudioPreview$2;->this$0:Lcom/htc/music/AudioPreview;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/AudioPreview;->mSeeking:Z
    invoke-static {v0, v1}, Lcom/htc/music/AudioPreview;->access$1102(Lcom/htc/music/AudioPreview;Z)Z

    .line 751
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .parameter "bar"

    .prologue
    .line 767
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 770
    .local v0, progress:I
    iget-object v1, p0, Lcom/htc/music/AudioPreview$2;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;
    invoke-static {v1}, Lcom/htc/music/AudioPreview;->access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 771
    iget-object v1, p0, Lcom/htc/music/AudioPreview$2;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;
    invoke-static {v1}, Lcom/htc/music/AudioPreview;->access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->seekTo(I)V

    .line 774
    :cond_0
    iget-object v1, p0, Lcom/htc/music/AudioPreview$2;->this$0:Lcom/htc/music/AudioPreview;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/AudioPreview;->mSeeking:Z
    invoke-static {v1, v2}, Lcom/htc/music/AudioPreview;->access$1102(Lcom/htc/music/AudioPreview;Z)Z

    .line 775
    iget-object v1, p0, Lcom/htc/music/AudioPreview$2;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/AudioPreview;->access$1500(Lcom/htc/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 776
    iget-object v1, p0, Lcom/htc/music/AudioPreview$2;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/AudioPreview;->access$1500(Lcom/htc/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/htc/music/AudioPreview$ProgressRefresher;

    iget-object v3, p0, Lcom/htc/music/AudioPreview$2;->this$0:Lcom/htc/music/AudioPreview;

    invoke-direct {v2, v3}, Lcom/htc/music/AudioPreview$ProgressRefresher;-><init>(Lcom/htc/music/AudioPreview;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 778
    :cond_1
    return-void
.end method
