.class Lcom/htc/music/AudioPreview$3;
.super Landroid/os/Handler;
.source "AudioPreview.java"


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
    .line 801
    iput-object p1, p0, Lcom/htc/music/AudioPreview$3;->this$0:Lcom/htc/music/AudioPreview;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 804
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 813
    :goto_0
    return-void

    .line 806
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/AudioPreview$3;->this$0:Lcom/htc/music/AudioPreview;

    #setter for: Lcom/htc/music/AudioPreview;->mDrmConsumed:Z
    invoke-static {v0, v1}, Lcom/htc/music/AudioPreview;->access$1602(Lcom/htc/music/AudioPreview;Z)Z

    .line 807
    iget-object v0, p0, Lcom/htc/music/AudioPreview$3;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/htc/music/AudioPreview$3;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/music/AudioPreview$PreviewPlayer;->seekTo(I)V

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/htc/music/AudioPreview$3;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$1400(Lcom/htc/music/AudioPreview;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 810
    iget-object v0, p0, Lcom/htc/music/AudioPreview$3;->this$0:Lcom/htc/music/AudioPreview;

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/htc/music/AudioPreview$3;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mDuration:I
    invoke-static {v3}, Lcom/htc/music/AudioPreview;->access$1200(Lcom/htc/music/AudioPreview;)I

    move-result v3

    int-to-long v3, v3

    #calls: Lcom/htc/music/AudioPreview;->setTime(JJ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/music/AudioPreview;->access$1300(Lcom/htc/music/AudioPreview;JJ)V

    .line 811
    iget-object v0, p0, Lcom/htc/music/AudioPreview$3;->this$0:Lcom/htc/music/AudioPreview;

    const/4 v1, 0x1

    #calls: Lcom/htc/music/AudioPreview;->setPlayPause(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/AudioPreview;->access$1700(Lcom/htc/music/AudioPreview;Z)V

    goto :goto_0

    .line 804
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
