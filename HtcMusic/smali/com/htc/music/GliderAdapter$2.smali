.class Lcom/htc/music/GliderAdapter$2;
.super Ljava/lang/Object;
.source "GliderAdapter.java"

# interfaces
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/GliderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/GliderAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/GliderAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 631
    iput-object p1, p0, Lcom/htc/music/GliderAdapter$2;->this$0:Lcom/htc/music/GliderAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs declared-synchronized onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 13
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 634
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/htc/music/GliderAdapter$2;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mSelectedPos:I
    invoke-static {v10}, Lcom/htc/music/GliderAdapter;->access$400(Lcom/htc/music/GliderAdapter;)I

    move-result v10

    if-ne v10, p1, :cond_0

    .line 635
    iget-object v10, p0, Lcom/htc/music/GliderAdapter$2;->this$0:Lcom/htc/music/GliderAdapter;

    const/4 v11, 0x1

    #setter for: Lcom/htc/music/GliderAdapter;->mCanUpdateSelectedItem:Z
    invoke-static {v10, v11}, Lcom/htc/music/GliderAdapter;->access$002(Lcom/htc/music/GliderAdapter;Z)Z

    .line 638
    :cond_0
    if-eqz p2, :cond_1

    if-ltz p1, :cond_1

    iget-object v10, p0, Lcom/htc/music/GliderAdapter$2;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v10}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/htc/music/GliderAdapter$2;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v10}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v10

    array-length v10, v10

    if-ge p1, v10, :cond_1

    iget-object v10, p0, Lcom/htc/music/GliderAdapter$2;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;
    invoke-static {v10}, Lcom/htc/music/GliderAdapter;->access$100(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/HtcMusic;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/htc/music/GliderAdapter$2;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;
    invoke-static {v10}, Lcom/htc/music/GliderAdapter;->access$500(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-result-object v10

    if-nez v10, :cond_5

    .line 641
    :cond_1
    const/4 v10, 0x1

    iget-object v11, p0, Lcom/htc/music/GliderAdapter$2;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mCanUpdateSelectedItem:Z
    invoke-static {v11}, Lcom/htc/music/GliderAdapter;->access$000(Lcom/htc/music/GliderAdapter;)Z

    move-result v11

    if-ne v10, v11, :cond_2

    iget-object v10, p0, Lcom/htc/music/GliderAdapter$2;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mSelectedPos:I
    invoke-static {v10}, Lcom/htc/music/GliderAdapter;->access$400(Lcom/htc/music/GliderAdapter;)I

    move-result v10

    if-ne v10, p1, :cond_2

    iget-object v10, p0, Lcom/htc/music/GliderAdapter$2;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;
    invoke-static {v10}, Lcom/htc/music/GliderAdapter;->access$100(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/HtcMusic;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 642
    iget-object v10, p0, Lcom/htc/music/GliderAdapter$2;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;
    invoke-static {v10}, Lcom/htc/music/GliderAdapter;->access$100(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/HtcMusic;

    move-result-object v10

    iget-object v10, v10, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v10, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyUpdateItem(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    :cond_2
    if-nez p2, :cond_4

    .line 715
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 649
    :cond_4
    if-eqz p2, :cond_3

    .line 650
    :try_start_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 651
    const/4 p2, 0x0

    goto :goto_0

    .line 656
    :cond_5
    iget-object v10, p0, Lcom/htc/music/GliderAdapter$2;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;
    invoke-static {v10}, Lcom/htc/music/GliderAdapter;->access$500(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-result-object v10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/SBitmap;

    .line 657
    .local v2, bmp3D:Lcom/htc/sunnyCore/SBitmap;
    const/4 v1, 0x1

    .line 659
    .local v1, bAddToCache:Z
    if-eqz p5, :cond_8

    move-object/from16 v0, p5

    array-length v10, v0

    const/4 v11, 0x1

    if-le v10, v11, :cond_8

    const/4 v10, 0x1

    aget-object v10, p5, v10

    if-eqz v10, :cond_8

    .line 660
    const/4 v1, 0x0

    .line 702
    :cond_6
    :goto_1
    const/4 v10, 0x1

    if-ne v10, v1, :cond_7

    .line 703
    invoke-static {p2}, Lcom/htc/sunnyCore/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunnyCore/SBitmap;

    move-result-object v2

    .line 704
    if-eqz v2, :cond_7

    .line 705
    iget-object v10, p0, Lcom/htc/music/GliderAdapter$2;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;
    invoke-static {v10}, Lcom/htc/music/GliderAdapter;->access$500(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-result-object v10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v2}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 706
    iget-object v10, p0, Lcom/htc/music/GliderAdapter$2;->this$0:Lcom/htc/music/GliderAdapter;

    iget-object v10, v10, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/music/GliderAdapter$2;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v12}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v12

    aget-object v12, v12, p1

    iget v12, v12, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    iget-object v10, p0, Lcom/htc/music/GliderAdapter$2;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;
    invoke-static {v10}, Lcom/htc/music/GliderAdapter;->access$100(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/HtcMusic;

    move-result-object v10

    iget-object v10, v10, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v10, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyUpdateItem(I)V

    .line 711
    :cond_7
    if-eqz p2, :cond_3

    .line 712
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 713
    const/4 p2, 0x0

    goto :goto_0

    .line 663
    :cond_8
    const/4 v3, 0x0

    .line 664
    .local v3, currentMode:I
    iget-object v10, p0, Lcom/htc/music/GliderAdapter$2;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;
    invoke-static {v10}, Lcom/htc/music/GliderAdapter;->access$100(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/HtcMusic;

    move-result-object v10

    iget-object v7, v10, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
    .local v7, service:Lcom/htc/music/IMediaPlaybackService;
    if-eqz v7, :cond_9

    .line 667
    :try_start_2
    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getCurrentMode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    .line 673
    :cond_9
    :goto_2
    if-nez v3, :cond_b

    .line 674
    if-eqz p5, :cond_a

    const/4 v10, 0x0

    :try_start_3
    aget-object v10, p5, v10

    if-eqz v10, :cond_a

    const/4 v10, 0x0

    aget-object v10, p5, v10

    instance-of v10, v10, Ljava/lang/Integer;

    if-eqz v10, :cond_a

    .line 675
    const/4 v10, 0x0

    aget-object v10, p5, v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 676
    .local v6, nRequestAlbumId:I
    iget-object v10, p0, Lcom/htc/music/GliderAdapter$2;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v10}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v10

    aget-object v10, v10, p1

    iget v10, v10, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    if-eq v6, v10, :cond_6

    .line 677
    const/4 v1, 0x0

    goto :goto_1

    .line 668
    .end local v6           #nRequestAlbumId:I
    :catch_0
    move-exception v5

    .line 669
    .local v5, ex:Landroid/os/RemoteException;
    const-string v10, "[GliderAdapter]"

    const-string v11, "Removet exception in onImageDecode() getCurrentmode "

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 634
    .end local v1           #bAddToCache:Z
    .end local v2           #bmp3D:Lcom/htc/sunnyCore/SBitmap;
    .end local v3           #currentMode:I
    .end local v5           #ex:Landroid/os/RemoteException;
    .end local v7           #service:Lcom/htc/music/IMediaPlaybackService;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 680
    .restart local v1       #bAddToCache:Z
    .restart local v2       #bmp3D:Lcom/htc/sunnyCore/SBitmap;
    .restart local v3       #currentMode:I
    .restart local v7       #service:Lcom/htc/music/IMediaPlaybackService;
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 683
    :cond_b
    const/4 v9, 0x0

    .line 685
    .local v9, szRequestAlbumPath:Ljava/lang/String;
    if-eqz v7, :cond_c

    .line 686
    :try_start_4
    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v9

    .line 690
    :cond_c
    :goto_3
    if-eqz p5, :cond_d

    const/4 v10, 0x0

    :try_start_5
    aget-object v10, p5, v10

    if-eqz v10, :cond_d

    const/4 v10, 0x0

    aget-object v10, p5, v10

    instance-of v10, v10, Ljava/lang/String;

    if-eqz v10, :cond_d

    .line 691
    const/4 v10, 0x0

    aget-object v8, p5, v10

    check-cast v8, Ljava/lang/String;

    .line 692
    .local v8, szDecodedAlbumArtPath:Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 693
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 687
    .end local v8           #szDecodedAlbumArtPath:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 688
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 696
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_1
.end method
