.class Lcom/htc/music/HtcMusic$4;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->createVolumeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 654
    iput-object p1, p0, Lcom/htc/music/HtcMusic$4;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "speakerIcon"

    .prologue
    const/4 v4, 0x0

    .line 657
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 658
    .local v0, silent:Z
    if-eqz v0, :cond_0

    .line 659
    iget-object v1, p0, Lcom/htc/music/HtcMusic$4;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v1, v1, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getSeekbar(I)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic$4;->this$0:Lcom/htc/music/HtcMusic;

    iget v2, v2, Lcom/htc/music/HtcMusic;->mVolumeProgress:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 665
    :goto_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic$4;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->resetTimeout()V
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$700(Lcom/htc/music/HtcMusic;)V

    .line 666
    return-void

    .line 661
    :cond_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic$4;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, p0, Lcom/htc/music/HtcMusic$4;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, v2, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getSeekbar(I)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iput v2, v1, Lcom/htc/music/HtcMusic;->mVolumeProgress:I

    .line 662
    const-string v1, "[HtcMusic]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Soar mVolumeProgress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic$4;->this$0:Lcom/htc/music/HtcMusic;

    iget v3, v3, Lcom/htc/music/HtcMusic;->mVolumeProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object v1, p0, Lcom/htc/music/HtcMusic$4;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v1, v1, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getSeekbar(I)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
