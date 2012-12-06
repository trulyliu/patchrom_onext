.class Lcom/htc/music/HtcMusic$6;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
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
    .line 714
    iput-object p1, p0, Lcom/htc/music/HtcMusic$6;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 718
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 743
    :cond_0
    :goto_0
    return v1

    .line 720
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 721
    const/4 v0, 0x0

    .line 722
    .local v0, iVolume:I
    iget-object v3, p0, Lcom/htc/music/HtcMusic$6;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getSeekbar(I)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 724
    add-int/lit8 v0, v0, 0x7

    .line 725
    const/16 v3, 0x64

    if-le v0, v3, :cond_1

    .line 726
    const/16 v0, 0x64

    .line 728
    :cond_1
    iget-object v3, p0, Lcom/htc/music/HtcMusic$6;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getSeekbar(I)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 732
    .end local v0           #iVolume:I
    :pswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 733
    const/4 v0, 0x0

    .line 734
    .restart local v0       #iVolume:I
    iget-object v3, p0, Lcom/htc/music/HtcMusic$6;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getSeekbar(I)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 735
    add-int/lit8 v0, v0, -0x7

    .line 736
    if-gez v0, :cond_2

    .line 737
    const/4 v0, 0x0

    .line 739
    :cond_2
    iget-object v3, p0, Lcom/htc/music/HtcMusic$6;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getSeekbar(I)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 718
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
