.class public Lcom/htc/music/MusicPluginManager$MusicPlugin;
.super Ljava/lang/Object;
.source "MusicPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MusicPluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MusicPlugin"
.end annotation


# instance fields
.field private mArtMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mArtMapShuffle:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Landroid/content/ServiceConnection;

.field private mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;

.field private mNotifyIcon:Landroid/graphics/Bitmap;

.field private mPlayAtBeginning:Z

.field private mPluginClass:Ljava/lang/String;

.field private mPluginDescription:Ljava/lang/String;

.field private mPluginIcon:Landroid/graphics/Bitmap;

.field private mPluginName:Ljava/lang/String;

.field private mPluginPackage:Ljava/lang/String;

.field private mService:Lcom/htc/music/IMusicPluginService;

.field private mStartActivity:Z

.field final synthetic this$0:Lcom/htc/music/MusicPluginManager;


# direct methods
.method public constructor <init>(Lcom/htc/music/MusicPluginManager;)V
    .locals 1
    .parameter

    .prologue
    .line 1350
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1346
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;

    .line 1347
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;

    .line 1348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;

    .line 1351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mStartActivity:Z

    .line 1352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPlayAtBeginning:Z

    .line 1353
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/music/MusicPluginManager$MusicPlugin;Lcom/htc/music/MusicPluginPlayer;)Lcom/htc/music/MusicPluginPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1335
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/music/MusicPluginManager$MusicPlugin;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1335
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public createMusicPluginPlayer()V
    .locals 2

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1472
    const-string v0, "[MusicPluginManager]"

    const-string v1, "createMusicPluginPlayer plugin name is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    :cond_0
    :goto_0
    return-void

    .line 1475
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;

    const-class v1, Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1476
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;

    if-nez v0, :cond_0

    .line 1477
    new-instance v0, Lcom/htc/music/dlna/DmpMusicPlayer;

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->this$0:Lcom/htc/music/MusicPluginManager;

    #getter for: Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager;->access$900(Lcom/htc/music/MusicPluginManager;)Lcom/htc/music/MediaPlaybackService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;

    goto :goto_0

    .line 1479
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;

    const-class v1, Lcom/htc/music/dlna/DmcMusicPlayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1480
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;

    if-nez v0, :cond_0

    .line 1481
    new-instance v0, Lcom/htc/music/dlna/DmcMusicPlayer;

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->this$0:Lcom/htc/music/MusicPluginManager;

    #getter for: Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager;->access$900(Lcom/htc/music/MusicPluginManager;)Lcom/htc/music/MediaPlaybackService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/music/dlna/DmcMusicPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;

    goto :goto_0

    .line 1484
    :cond_3
    const-string v0, "[MusicPluginManager]"

    const-string v1, "Unknown music plugin player"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getConnection()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method public getNotifyIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPlayAtBeginning()Z
    .locals 1

    .prologue
    .line 1436
    iget-boolean v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPlayAtBeginning:Z

    return v0
.end method

.method public getPluginClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPluginName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginName:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getService()Lcom/htc/music/IMusicPluginService;
    .locals 1

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;

    return-object v0
.end method

.method public getStartActivity()Z
    .locals 1

    .prologue
    .line 1428
    iget-boolean v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mStartActivity:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1444
    iput-object v1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginName:Ljava/lang/String;

    .line 1445
    iput-object v1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;

    .line 1446
    iput-object v1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;

    .line 1447
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;

    invoke-interface {v0}, Lcom/htc/music/MusicPluginPlayer;->release()V

    .line 1449
    iput-object v1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;

    .line 1451
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1452
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1453
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1455
    :cond_1
    iput-object v1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    .line 1457
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 1458
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1459
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1461
    :cond_3
    iput-object v1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    .line 1463
    :cond_4
    iput-object v1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;

    .line 1464
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1465
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mStartActivity:Z

    .line 1467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPlayAtBeginning:Z

    .line 1468
    return-void
.end method

.method public setConnection(Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter "mConnection"

    .prologue
    .line 1416
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;

    .line 1417
    return-void
.end method

.method public setNotifyIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "notifyIcon"

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    .line 1404
    :cond_0
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    .line 1405
    return-void
.end method

.method public setPlayAtBeginning(Z)V
    .locals 0
    .parameter "playAtBeginning"

    .prologue
    .line 1440
    iput-boolean p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPlayAtBeginning:Z

    .line 1441
    return-void
.end method

.method public setPluginClass(Ljava/lang/String;)V
    .locals 0
    .parameter "pluginClasse"

    .prologue
    .line 1368
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;

    .line 1369
    return-void
.end method

.method public setPluginDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 1420
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;

    .line 1421
    return-void
.end method

.method public setPluginIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "pluginIcon"

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    .line 1392
    :cond_0
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    .line 1393
    return-void
.end method

.method public setPluginName(Ljava/lang/String;)V
    .locals 0
    .parameter "pluginName"

    .prologue
    .line 1360
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginName:Ljava/lang/String;

    .line 1361
    return-void
.end method

.method public setPluginPackage(Ljava/lang/String;)V
    .locals 0
    .parameter "pluginPackage"

    .prologue
    .line 1424
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginPackage:Ljava/lang/String;

    .line 1425
    return-void
.end method

.method public setService(Lcom/htc/music/IMusicPluginService;)V
    .locals 0
    .parameter "mediaPluginService"

    .prologue
    .line 1408
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;

    .line 1409
    return-void
.end method

.method public setStartActivity(Z)V
    .locals 0
    .parameter "startActivity"

    .prologue
    .line 1432
    iput-boolean p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mStartActivity:Z

    .line 1433
    return-void
.end method
