.class Lcom/htc/music/HtcMusic$5;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 670
    iput-object p1, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .parameter "brightness"
    .parameter "nProgress"
    .parameter "arg2"

    .prologue
    const/4 v5, 0x0

    .line 675
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3, p2}, Lcom/htc/music/IMediaPlaybackService;->setVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :goto_0
    if-nez p2, :cond_1

    .line 680
    iget-object v3, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v3}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 681
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 682
    iget-object v3, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v3, v5, v0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setImageViewDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 683
    const/4 v2, 0x1

    .line 684
    .local v2, silent:Z
    iget-object v3, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 698
    .end local v2           #silent:Z
    :goto_1
    iget-object v3, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->resetTimeout()V
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$700(Lcom/htc/music/HtcMusic;)V

    .line 699
    return-void

    .line 676
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 677
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 686
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    const-string v3, "[HtcMusic]"

    const-string v4, "zzzz_icon_launcher_profile_silent is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 689
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v3, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v3}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 690
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 691
    iget-object v3, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v3, v5, v0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setImageViewDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 692
    const/4 v2, 0x0

    .line 693
    .restart local v2       #silent:Z
    iget-object v3, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 695
    .end local v2           #silent:Z
    :cond_2
    const-string v3, "[HtcMusic]"

    const-string v4, "zzzz_icon_launcher_sound_display is nulll"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 703
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "brightness"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->resetTimeout()V
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$700(Lcom/htc/music/HtcMusic;)V

    .line 708
    return-void
.end method
