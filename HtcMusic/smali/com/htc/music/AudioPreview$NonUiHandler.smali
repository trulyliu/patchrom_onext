.class final Lcom/htc/music/AudioPreview$NonUiHandler;
.super Landroid/os/Handler;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/AudioPreview;


# direct methods
.method public constructor <init>(Lcom/htc/music/AudioPreview;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1645
    iput-object p1, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    .line 1646
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1647
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    .line 1651
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 1749
    const-string v5, "[AudioPreview]"

    const-string v6, "Something wrong in NonUiHandler.handleMessage()."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    :goto_0
    return-void

    .line 1655
    :pswitch_0
    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/htc/music/AudioPreview;->access$200(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/htc/music/AudioPreview;->access$300(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1657
    const-string v5, "[AudioPreview]"

    const-string v6, "get metadata from MediaMetadataRetriever"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1660
    .local v2, mmr:Landroid/media/MediaMetadataRetriever;
    if-eqz v2, :cond_0

    .line 1663
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    iget-object v6, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/htc/music/AudioPreview;->access$1800(Lcom/htc/music/AudioPreview;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1665
    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    const/4 v6, 0x7

    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/htc/music/AudioPreview;->mTrackName:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/htc/music/AudioPreview;->access$2202(Lcom/htc/music/AudioPreview;Ljava/lang/String;)Ljava/lang/String;

    .line 1667
    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/htc/music/AudioPreview;->mArtistName:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/htc/music/AudioPreview;->access$2302(Lcom/htc/music/AudioPreview;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1673
    :goto_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1678
    .end local v2           #mmr:Landroid/media/MediaMetadataRetriever;
    :cond_0
    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    new-instance v6, Lcom/htc/music/AudioPreview$NonUiHandler$1;

    invoke-direct {v6, p0}, Lcom/htc/music/AudioPreview$NonUiHandler$1;-><init>(Lcom/htc/music/AudioPreview$NonUiHandler;)V

    invoke-virtual {v5, v6}, Lcom/htc/music/AudioPreview;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1669
    .restart local v2       #mmr:Landroid/media/MediaMetadataRetriever;
    :catch_0
    move-exception v1

    .line 1670
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "[AudioPreview]"

    const-string v6, "Retrieve metadata fail"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1711
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #mmr:Landroid/media/MediaMetadataRetriever;
    :pswitch_1
    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mAlbumArt:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/htc/music/AudioPreview;->access$2400(Lcom/htc/music/AudioPreview;)Landroid/widget/ImageView;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1712
    const-string v5, "[AudioPreview]"

    const-string v6, "mAlbumArt == null in SET_ALBUMART"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1716
    :cond_1
    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    invoke-virtual {v5}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1717
    .local v4, resources:Landroid/content/res/Resources;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1718
    .local v3, option:Landroid/graphics/BitmapFactory$Options;
    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1719
    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1720
    const v5, 0x7f020047

    invoke-static {v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1722
    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    iget-object v6, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mAlbumID:I
    invoke-static {v6}, Lcom/htc/music/AudioPreview;->access$400(Lcom/htc/music/AudioPreview;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/music/AudioPreview;->getAlbumArtPath(I)Ljava/lang/String;

    move-result-object v0

    .line 1723
    .local v0, albumArtPath:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v6, v7}, Lcom/htc/music/util/MusicUtils;->getAlbumArtBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v6

    #setter for: Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5, v6}, Lcom/htc/music/AudioPreview;->access$2502(Lcom/htc/music/AudioPreview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1726
    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    new-instance v6, Lcom/htc/music/AudioPreview$NonUiHandler$2;

    invoke-direct {v6, p0}, Lcom/htc/music/AudioPreview$NonUiHandler$2;-><init>(Lcom/htc/music/AudioPreview$NonUiHandler;)V

    invoke-virtual {v5, v6}, Lcom/htc/music/AudioPreview;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1736
    .end local v0           #albumArtPath:Ljava/lang/String;
    .end local v3           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #resources:Landroid/content/res/Resources;
    :pswitch_2
    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mAlbumArt:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/htc/music/AudioPreview;->access$2400(Lcom/htc/music/AudioPreview;)Landroid/widget/ImageView;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1737
    const-string v5, "[AudioPreview]"

    const-string v6, "mAlbumArt == null in SET_DEFAULT_ALBUMART"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1741
    :cond_2
    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    new-instance v6, Lcom/htc/music/AudioPreview$NonUiHandler$3;

    invoke-direct {v6, p0}, Lcom/htc/music/AudioPreview$NonUiHandler$3;-><init>(Lcom/htc/music/AudioPreview$NonUiHandler;)V

    invoke-virtual {v5, v6}, Lcom/htc/music/AudioPreview;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1651
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
