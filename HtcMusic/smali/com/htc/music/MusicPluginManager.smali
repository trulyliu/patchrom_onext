.class public Lcom/htc/music/MusicPluginManager;
.super Ljava/lang/Object;
.source "MusicPluginManager.java"

# interfaces
.implements Lcom/htc/music/IPluginIPCNotify;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/MusicPluginManager$NonUiHandler;,
        Lcom/htc/music/MusicPluginManager$MusicPlugin;,
        Lcom/htc/music/MusicPluginManager$Plugin;
    }
.end annotation


# static fields
.field private static final DELETE_ART_FILE_CACHE:I = 0x1

.field private static final DELETE_TIME_DELAY:I = 0x1388

.field public static final EXTRA_ERROR_ID:Ljava/lang/String; = "error_id"

.field private static final MAX_FILE_CACHE:I = 0x64

.field private static final MAX_ICON_SIZE:I = 0x40

.field public static final PLUGIN_ALBUM_ART_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.albumartchanged"

.field public static final PLUGIN_DMC_META_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.dmcmetachanged"

.field public static final PLUGIN_META_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.metachanged"

.field public static final PLUGIN_PLAYBACK_COMPLETE:Ljava/lang/String; = "com.htc.music.plugin.playbackcomplete"

.field public static final PLUGIN_PLAYSTATE_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.statechanged"

.field public static final PLUGIN_PLAYSTATE_CHANGED_BUFFERING:Ljava/lang/String; = "com.htc.music.plugin.statechanged.buffering"

.field public static final PLUGIN_PLAYSTATE_CHANGED_WAITING:Ljava/lang/String; = "com.htc.music.plugin.statechanged.waiting"

.field public static final PLUGIN_PLAY_NEXT:Ljava/lang/String; = "com.htc.music.plugin.playnext"

.field public static final PLUGIN_QUEUE_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.queuechanged"

.field private static final REFRESH_PLUGINS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[MusicPluginManager]"


# instance fields
.field private final mBinder:Lcom/htc/music/IPluginIPCNotify$Stub;

.field private mBindingClass:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsBinding:Z

.field private mLastPluginClass:Ljava/lang/String;

.field private mMainService:Lcom/htc/music/MediaPlaybackService;

.field private mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

.field private mPluginCount:I

.field private mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

.field private mStopActivePluginWhenBinding:Z


# direct methods
.method public constructor <init>(Lcom/htc/music/MediaPlaybackService;Landroid/content/Context;)V
    .locals 2
    .parameter "service"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    .line 53
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 55
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 57
    iput v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    .line 59
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 61
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    .line 63
    iput-boolean v1, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    .line 65
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    .line 69
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mLastPluginClass:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z

    .line 496
    new-instance v0, Lcom/htc/music/MusicPluginManager$1;

    invoke-direct {v0, p0}, Lcom/htc/music/MusicPluginManager$1;-><init>(Lcom/htc/music/MusicPluginManager;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBinder:Lcom/htc/music/IPluginIPCNotify$Stub;

    .line 77
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    .line 79
    invoke-virtual {p0}, Lcom/htc/music/MusicPluginManager;->refreshPlugins()V

    .line 80
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlbumArtFileDeleteWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 81
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v0, Lcom/htc/music/MusicPluginManager$NonUiHandler;

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/MusicPluginManager$NonUiHandler;-><init>(Lcom/htc/music/MusicPluginManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    .line 83
    iput-object p2, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "service"
    .parameter "serviceToBind"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    .line 53
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 55
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 57
    iput v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    .line 59
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 61
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    .line 63
    iput-boolean v1, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    .line 65
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    .line 69
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mLastPluginClass:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z

    .line 496
    new-instance v0, Lcom/htc/music/MusicPluginManager$1;

    invoke-direct {v0, p0}, Lcom/htc/music/MusicPluginManager$1;-><init>(Lcom/htc/music/MusicPluginManager;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBinder:Lcom/htc/music/IPluginIPCNotify$Stub;

    .line 89
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    .line 91
    invoke-virtual {p0}, Lcom/htc/music/MusicPluginManager;->refreshPlugins()V

    .line 92
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlbumArtFileDeleteWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 93
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 94
    new-instance v0, Lcom/htc/music/MusicPluginManager$NonUiHandler;

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/MusicPluginManager$NonUiHandler;-><init>(Lcom/htc/music/MusicPluginManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    .line 95
    iput-object p3, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    .line 103
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/music/MusicPluginManager;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/htc/music/MusicPluginManager;)Lcom/htc/music/MediaPlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    return-object v0
.end method

.method private bindPluginService(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "className"
    .parameter "startActivity"

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method private getPlugins()[Lcom/htc/music/MusicPluginManager$Plugin;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1266
    const/4 v3, 0x2

    new-array v2, v3, [Lcom/htc/music/MusicPluginManager$Plugin;

    .line 1269
    .local v2, plugins:[Lcom/htc/music/MusicPluginManager$Plugin;
    new-instance v3, Lcom/htc/music/MusicPluginManager$Plugin;

    invoke-direct {v3, p0}, Lcom/htc/music/MusicPluginManager$Plugin;-><init>(Lcom/htc/music/MusicPluginManager;)V

    aput-object v3, v2, v5

    .line 1270
    aget-object v3, v2, v5

    const-class v4, Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$Plugin;->setClassName(Ljava/lang/String;)V

    .line 1271
    const-class v3, Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 1272
    .local v1, dmpPackage:Ljava/lang/Package;
    if-eqz v1, :cond_0

    .line 1273
    aget-object v3, v2, v5

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$Plugin;->setPackageName(Ljava/lang/String;)V

    .line 1276
    :goto_0
    aget-object v3, v2, v5

    const-class v4, Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$Plugin;->setShortClassName(Ljava/lang/String;)V

    .line 1277
    aget-object v3, v2, v5

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$Plugin;->setDescription(Ljava/lang/String;)V

    .line 1280
    new-instance v3, Lcom/htc/music/MusicPluginManager$Plugin;

    invoke-direct {v3, p0}, Lcom/htc/music/MusicPluginManager$Plugin;-><init>(Lcom/htc/music/MusicPluginManager;)V

    aput-object v3, v2, v6

    .line 1281
    aget-object v3, v2, v6

    const-class v4, Lcom/htc/music/dlna/DmcMusicPlayer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$Plugin;->setClassName(Ljava/lang/String;)V

    .line 1282
    const-class v3, Lcom/htc/music/dlna/DmcMusicPlayer;

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 1283
    .local v0, dmcPackage:Ljava/lang/Package;
    if-eqz v0, :cond_1

    .line 1284
    aget-object v3, v2, v6

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$Plugin;->setPackageName(Ljava/lang/String;)V

    .line 1287
    :goto_1
    aget-object v3, v2, v6

    const-class v4, Lcom/htc/music/dlna/DmcMusicPlayer;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$Plugin;->setShortClassName(Ljava/lang/String;)V

    .line 1288
    aget-object v3, v2, v6

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$Plugin;->setDescription(Ljava/lang/String;)V

    .line 1290
    return-object v2

    .line 1275
    .end local v0           #dmcPackage:Ljava/lang/Package;
    :cond_0
    aget-object v3, v2, v5

    const-string v4, "com.htc.music"

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$Plugin;->setPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 1286
    .restart local v0       #dmcPackage:Ljava/lang/Package;
    :cond_1
    aget-object v3, v2, v6

    const-string v4, "com.htc.music"

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$Plugin;->setPackageName(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBinder:Lcom/htc/music/IPluginIPCNotify$Stub;

    return-object v0
.end method

.method protected bindPluginService(Ljava/lang/String;ZZ)Z
    .locals 1
    .parameter "actionName"
    .parameter "startActivity"
    .parameter "playSongAtBeginning"

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public clearAlbumArtRequests()V
    .locals 2

    .prologue
    .line 1109
    monitor-enter p0

    .line 1110
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1112
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/MusicPluginPlayer;->clearAlbumArtRequests()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1117
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1118
    return-void

    .line 1113
    :catch_0
    move-exception v0

    .line 1114
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1117
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public clearNowplayingQueueRequests()V
    .locals 2

    .prologue
    .line 1149
    monitor-enter p0

    .line 1150
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1152
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/MusicPluginPlayer;->clearNowplayingQueueRequests()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1157
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1158
    return-void

    .line 1153
    :catch_0
    move-exception v0

    .line 1154
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1157
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 735
    monitor-enter p0

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/music/MusicPluginPlayer;->duration()J

    move-result-wide v0

    monitor-exit p0

    .line 740
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 741
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbumArtPathByPosition(I)Ljava/lang/String;
    .locals 9
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 1000
    monitor-enter p0

    .line 1001
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-eqz v7, :cond_4

    if-ltz p1, :cond_4

    .line 1002
    const/4 v3, 0x0

    .line 1004
    .local v3, isDmcOrPush:Z
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/music/MusicPluginPlayer;->isDmcOrPushMode()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 1009
    :goto_0
    if-eqz v3, :cond_0

    .line 1010
    const/4 v5, 0x0

    .line 1012
    .local v5, path:Ljava/lang/String;
    :try_start_2
    iget-object v6, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v6}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/htc/music/MusicPluginPlayer;->getAlbumArtPathByPosition(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 1016
    :goto_1
    :try_start_3
    monitor-exit p0

    .line 1040
    .end local v3           #isDmcOrPush:Z
    .end local v5           #path:Ljava/lang/String;
    :goto_2
    return-object v5

    .line 1005
    .restart local v3       #isDmcOrPush:Z
    :catch_0
    move-exception v1

    .line 1006
    .local v1, e1:Ljava/lang/NullPointerException;
    const-string v7, "[MusicPluginManager]"

    const-string v8, "exception in getAlbumArtPathByPosition isDmcOrPush"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1041
    .end local v1           #e1:Ljava/lang/NullPointerException;
    .end local v3           #isDmcOrPush:Z
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 1013
    .restart local v3       #isDmcOrPush:Z
    .restart local v5       #path:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1014
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_4
    const-string v6, "[MusicPluginManager]"

    const-string v7, "exception in getAlbumArtPathByPosition"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1018
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v5           #path:Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1019
    .local v4, key:Ljava/lang/Integer;
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1020
    .restart local v5       #path:Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 1021
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1022
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1023
    monitor-exit p0

    goto :goto_2

    .line 1025
    :cond_1
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1029
    .end local v2           #file:Ljava/io/File;
    :cond_2
    :try_start_5
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/htc/music/MusicPluginPlayer;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v5

    .line 1030
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 1031
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1033
    :cond_3
    :try_start_6
    monitor-exit p0

    goto :goto_2

    .line 1034
    :catch_2
    move-exception v0

    .line 1035
    .restart local v0       #e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1036
    monitor-exit p0

    move-object v5, v6

    goto :goto_2

    .line 1040
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v3           #isDmcOrPush:Z
    .end local v4           #key:Ljava/lang/Integer;
    .end local v5           #path:Ljava/lang/String;
    :cond_4
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v5, v6

    goto :goto_2
.end method

.method public getAlbumArtPathByShufflePosition(I)Ljava/lang/String;
    .locals 10
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 1053
    monitor-enter p0

    .line 1054
    const/4 v3, 0x0

    .line 1055
    .local v3, isDmcOrPush:Z
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1056
    :cond_0
    const-string v7, "[MusicPluginManager]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@@@@ null mCurrentPlugin is = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v6

    .line 1097
    :goto_0
    return-object v5

    .line 1061
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/music/MusicPluginPlayer;->isDmcOrPushMode()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 1066
    :goto_1
    if-eqz v3, :cond_2

    .line 1067
    const/4 v5, 0x0

    .line 1069
    .local v5, path:Ljava/lang/String;
    :try_start_2
    iget-object v6, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v6}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/htc/music/MusicPluginPlayer;->getAlbumArtPathByPosition(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 1073
    :goto_2
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 1098
    .end local v5           #path:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 1062
    :catch_0
    move-exception v1

    .line 1063
    .local v1, e1:Ljava/lang/NullPointerException;
    :try_start_4
    const-string v7, "[MusicPluginManager]"

    const-string v8, "exception in getAlbumArtPathByPosition isDmcOrPush"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1070
    .end local v1           #e1:Ljava/lang/NullPointerException;
    .restart local v5       #path:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1071
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v6, "[MusicPluginManager]"

    const-string v7, "exception in getAlbumArtPathByPosition"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1075
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v5           #path:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v7

    if-eqz v7, :cond_6

    if-ltz p1, :cond_6

    .line 1076
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1077
    .local v4, key:Ljava/lang/Integer;
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$800(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1078
    .restart local v5       #path:Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 1079
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1080
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1081
    monitor-exit p0

    goto :goto_0

    .line 1083
    :cond_3
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$800(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1087
    .end local v2           #file:Ljava/io/File;
    :cond_4
    :try_start_5
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/htc/music/MusicPluginPlayer;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v5

    .line 1088
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 1089
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$800(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1091
    :cond_5
    :try_start_6
    monitor-exit p0

    goto/16 :goto_0

    .line 1092
    :catch_2
    move-exception v0

    .line 1093
    .restart local v0       #e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1097
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v4           #key:Ljava/lang/Integer;
    .end local v5           #path:Ljava/lang/String;
    :cond_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v5, v6

    goto/16 :goto_0
.end method

.method getAlbumId()I
    .locals 2

    .prologue
    .line 1238
    monitor-enter p0

    .line 1239
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1241
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/MusicPluginPlayer;->getAlbumId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 1246
    :goto_0
    return v1

    .line 1242
    :catch_0
    move-exception v0

    .line 1243
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1246
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1247
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 773
    monitor-enter p0

    .line 774
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/music/MusicPluginPlayer;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 778
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 779
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbumQueue()[I
    .locals 1

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1673
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/music/MusicPluginPlayer;->getAlbumQueue()[I

    move-result-object v0

    .line 1675
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 783
    monitor-enter p0

    .line 784
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/music/MusicPluginPlayer;->getArtistName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 788
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 789
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getAudioId()I
    .locals 2

    .prologue
    .line 1252
    monitor-enter p0

    .line 1253
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1255
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/MusicPluginPlayer;->getAudioId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 1260
    :goto_0
    return v1

    .line 1256
    :catch_0
    move-exception v0

    .line 1257
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1260
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1261
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method getAudioSessionId()I
    .locals 2

    .prologue
    .line 1222
    monitor-enter p0

    .line 1223
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1225
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/MusicPluginPlayer;->getAudioSessionId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 1230
    :goto_0
    return v1

    .line 1226
    :catch_0
    move-exception v0

    .line 1227
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1230
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1231
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getBindingClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBufferingPercent()I
    .locals 2

    .prologue
    .line 947
    monitor-enter p0

    .line 948
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 950
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/MusicPluginPlayer;->getBufferingPercent()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 955
    :goto_0
    return v1

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 955
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 956
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getComposer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 921
    monitor-enter p0

    .line 922
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 924
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/MusicPluginPlayer;->getComposer()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    .line 929
    :goto_0
    return-object v1

    .line 925
    :catch_0
    move-exception v0

    .line 926
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 929
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 930
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getCurrentMode()I
    .locals 3

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/music/MusicPluginPlayer;->getCurrentMode()I

    move-result v0

    .line 1684
    :goto_0
    return v0

    .line 1683
    :cond_0
    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrent mode in music pluging manager current pluing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentPlugService()Lcom/htc/music/IMusicPluginService;
    .locals 1

    .prologue
    .line 351
    monitor-enter p0

    .line 352
    const/4 v0, 0x0

    :try_start_0
    monitor-exit p0

    return-object v0

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentPluginClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    monitor-enter p0

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 362
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getExternalPluginCount()I
    .locals 1

    .prologue
    .line 877
    monitor-enter p0

    .line 878
    const/4 v0, 0x0

    :try_start_0
    monitor-exit p0

    return v0

    .line 879
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 895
    monitor-enter p0

    .line 896
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 898
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/MusicPluginPlayer;->getFileName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    .line 903
    :goto_0
    return-object v1

    .line 899
    :catch_0
    move-exception v0

    .line 900
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 903
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 904
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getGenre()Ljava/lang/String;
    .locals 2

    .prologue
    .line 908
    monitor-enter p0

    .line 909
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 911
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/MusicPluginPlayer;->getGenre()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    .line 916
    :goto_0
    return-object v1

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 916
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 917
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 934
    monitor-enter p0

    .line 935
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 937
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/MusicPluginPlayer;->getLocation()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    .line 942
    :goto_0
    return-object v1

    .line 938
    :catch_0
    move-exception v0

    .line 939
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 942
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 943
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getNowplayingQueue(I)V
    .locals 2
    .parameter "interval"

    .prologue
    .line 1131
    monitor-enter p0

    .line 1132
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1134
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/MusicPluginPlayer;->getNowplayingQueue(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1139
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1140
    return-void

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1139
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 858
    monitor-enter p0

    .line 859
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 861
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/MusicPluginPlayer;->getPlayerName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    .line 866
    :goto_0
    return-object v1

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 866
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 867
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getPluginByClass(Ljava/lang/String;)Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .locals 5
    .parameter "classname"

    .prologue
    const/4 v1, 0x0

    .line 261
    monitor-enter p0

    .line 262
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v2, :cond_1

    .line 263
    :cond_0
    monitor-exit p0

    .line 274
    :goto_0
    return-object v1

    .line 266
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge v0, v2, :cond_4

    .line 267
    const-string v2, "[Test]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pluginclass:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 266
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 270
    :cond_3
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 271
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v1, v1, v0

    monitor-exit p0

    goto :goto_0

    .line 275
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 274
    .restart local v0       #i:I
    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPluginByIndex(I)Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .locals 1
    .parameter "index"

    .prologue
    .line 284
    monitor-enter p0

    .line 285
    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-lt p1, v0, :cond_1

    .line 286
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    .line 289
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v0, v0, p1

    monitor-exit p0

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPluginClass(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 246
    monitor-enter p0

    .line 247
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v1, :cond_0

    monitor-exit p0

    .line 255
    :goto_0
    return-object v0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 252
    :cond_1
    if-ltz p1, :cond_2

    :try_start_1
    iget v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge p1, v1, :cond_2

    .line 253
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 255
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPluginCount()I
    .locals 1

    .prologue
    .line 210
    monitor-enter p0

    .line 211
    :try_start_0
    iget v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    monitor-exit p0

    return v0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPluginDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 231
    monitor-enter p0

    .line 232
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v1, :cond_0

    monitor-exit p0

    .line 240
    :goto_0
    return-object v0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$300(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 237
    :cond_1
    if-ltz p1, :cond_2

    :try_start_1
    iget v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge p1, v1, :cond_2

    .line 238
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginDescription()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 240
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPluginIcon()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/16 v8, 0x40

    const/4 v6, 0x0

    .line 309
    monitor-enter p0

    .line 310
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-eqz v7, :cond_5

    .line 312
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$500(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 313
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$500(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    :goto_0
    return-object v6

    .line 315
    :cond_0
    :try_start_3
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/music/MusicPluginPlayer;->getPluginIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 316
    .local v2, icon:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_4

    .line 317
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 318
    .local v5, width:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 319
    .local v1, height:I
    const/4 v3, 0x0

    .line 321
    .local v3, needScale:Z
    :goto_1
    if-ge v5, v8, :cond_1

    if-lt v1, v8, :cond_2

    .line 322
    :cond_1
    div-int/lit8 v5, v5, 0x2

    .line 323
    div-int/lit8 v1, v1, 0x2

    .line 324
    const/4 v3, 0x1

    goto :goto_1

    .line 327
    :cond_2
    if-eqz v3, :cond_3

    .line 328
    const-string v7, "[MusicPluginManager]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPluginIcon scaled size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const/4 v7, 0x1

    invoke-static {v2, v5, v1, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 330
    .local v4, temp:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 331
    move-object v2, v4

    .line 334
    .end local v4           #temp:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    invoke-virtual {v7, v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginIcon(Landroid/graphics/Bitmap;)V

    .line 335
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$500(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v6

    :try_start_4
    monitor-exit p0

    goto :goto_0

    .line 347
    .end local v1           #height:I
    .end local v2           #icon:Landroid/graphics/Bitmap;
    .end local v3           #needScale:Z
    .end local v5           #width:I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 337
    .restart local v2       #icon:Landroid/graphics/Bitmap;
    :cond_4
    :try_start_5
    monitor-exit p0

    goto :goto_0

    .line 340
    .end local v2           #icon:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 341
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 342
    monitor-exit p0

    goto :goto_0

    .line 345
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public getPluginName(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 216
    monitor-enter p0

    .line 217
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v1, :cond_0

    monitor-exit p0

    .line 225
    :goto_0
    return-object v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 222
    :cond_1
    if-ltz p1, :cond_2

    :try_start_1
    iget v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge p1, v1, :cond_2

    .line 223
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 225
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method getPluginNotReadyMsg()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1205
    monitor-enter p0

    .line 1206
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1207
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1213
    :goto_0
    return-object v1

    .line 1210
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/music/MusicPluginPlayer;->getPluginNotReadyMsg()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 1215
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1211
    :catch_0
    move-exception v0

    .line 1212
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1213
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getPluginServiceByClass(Ljava/lang/String;)Lcom/htc/music/IMusicPluginService;
    .locals 3
    .parameter "classname"

    .prologue
    const/4 v1, 0x0

    .line 294
    monitor-enter p0

    .line 295
    if-nez p1, :cond_0

    .line 296
    :try_start_0
    monitor-exit p0

    .line 304
    :goto_0
    return-object v1

    .line 298
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge v0, v2, :cond_2

    .line 299
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    monitor-exit p0

    goto :goto_0

    .line 305
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 298
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 304
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPositionByShufflePosition(I)I
    .locals 2
    .parameter "shufflePosition"

    .prologue
    .line 966
    monitor-enter p0

    .line 967
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 969
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/MusicPluginPlayer;->getPositionByShufflePosition(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 974
    :goto_0
    return v1

    .line 970
    :catch_0
    move-exception v0

    .line 971
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 974
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    const/4 v1, -0x1

    monitor-exit p0

    goto :goto_0

    .line 975
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 666
    monitor-enter p0

    .line 667
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/music/MusicPluginPlayer;->getQueuePosition()I

    move-result v0

    monitor-exit p0

    .line 670
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 671
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getQueuePositionImmediately()I
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/music/MusicPluginPlayer;->getQueuePosition()I

    move-result v0

    .line 679
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQueueSize()I
    .locals 1

    .prologue
    .line 793
    monitor-enter p0

    .line 794
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/music/MusicPluginPlayer;->getQueueSize()I

    move-result v0

    monitor-exit p0

    .line 797
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 798
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 828
    monitor-enter p0

    .line 829
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/music/MusicPluginPlayer;->getRepeatMode()I

    move-result v0

    monitor-exit p0

    .line 832
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 833
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 811
    monitor-enter p0

    .line 812
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/music/MusicPluginPlayer;->getShuffleMode()I

    move-result v0

    monitor-exit p0

    .line 815
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 816
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getShufflePositionByPosition(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 979
    monitor-enter p0

    .line 980
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 982
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/MusicPluginPlayer;->getShufflePositionByPosition(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 987
    :goto_0
    return v1

    .line 983
    :catch_0
    move-exception v0

    .line 984
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 987
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    const/4 v1, -0x1

    monitor-exit p0

    goto :goto_0

    .line 988
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getTrackDetails(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1169
    monitor-enter p0

    .line 1170
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1172
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/MusicPluginPlayer;->getTrackDetails(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1177
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1178
    return-void

    .line 1173
    :catch_0
    move-exception v0

    .line 1174
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1177
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 763
    monitor-enter p0

    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/music/MusicPluginPlayer;->getTrackName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 768
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 769
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 837
    monitor-enter p0

    .line 838
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/music/MusicPluginPlayer;->getVolume()I

    move-result v0

    monitor-exit p0

    .line 841
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 842
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBindingService()Z
    .locals 1

    .prologue
    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    monitor-exit p0

    return v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDmcOrPushMode()Z
    .locals 1

    .prologue
    .line 368
    monitor-enter p0

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/music/MusicPluginPlayer;->isDmcOrPushMode()Z

    move-result v0

    monitor-exit p0

    .line 372
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isMusicPluginExist()Z
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 683
    monitor-enter p0

    .line 684
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/music/MusicPluginPlayer;->isPlaying()Z

    move-result v0

    monitor-exit p0

    .line 688
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPluginConnected()Z
    .locals 1

    .prologue
    .line 871
    monitor-enter p0

    .line 872
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 873
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPluginMode()Z
    .locals 1

    .prologue
    .line 1633
    monitor-enter p0

    .line 1634
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    .line 1635
    const/4 v0, 0x1

    monitor-exit p0

    .line 1637
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1639
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isPluginReady()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1187
    monitor-enter p0

    .line 1188
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1189
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1195
    :goto_0
    return v1

    .line 1192
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/music/MusicPluginPlayer;->isPluginReady()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 1197
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1193
    :catch_0
    move-exception v0

    .line 1194
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1195
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public next(Z)V
    .locals 1
    .parameter "changeSong"

    .prologue
    .line 727
    monitor-enter p0

    .line 728
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/music/MusicPluginPlayer;->next(Z)V

    .line 731
    :cond_0
    monitor-exit p0

    .line 732
    return-void

    .line 731
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAlbumArtPathByShuffleUpdated(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "index"
    .parameter "path"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 580
    const-string v3, "[MusicPluginManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAlbumArtPathByShuffleUpdated + path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    if-gez p1, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    .line 585
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 586
    const-string v3, "[MusicPluginManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentPlugin.mPluginClass: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v3, "[MusicPluginManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "className: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 590
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 594
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$800(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3, p1, p2}, Lcom/htc/music/MediaPlaybackService;->pluginAlbumArtPathByShuffleUpdated(ILjava/lang/String;)V

    .line 597
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    if-eqz v3, :cond_3

    .line 598
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    invoke-virtual {v3, v6}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 599
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, directory:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    invoke-virtual {v3, v6, v0}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 601
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 604
    .end local v0           #directory:Ljava/lang/String;
    .end local v2           #msg:Landroid/os/Message;
    :cond_3
    const-string v3, "[MusicPluginManager]"

    const-string v4, "onAlbumArtPathByShuffleUpdated -"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onAlbumArtPathUpdated(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "index"
    .parameter "path"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 609
    const-string v3, "[MusicPluginManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAlbumArtPathUpdated + path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    if-gez p1, :cond_1

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    .line 614
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 615
    const-string v3, "[MusicPluginManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentPlugin.mPluginClass: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v3, "[MusicPluginManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "className: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 619
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 620
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 623
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3, p1, p2}, Lcom/htc/music/MediaPlaybackService;->pluginAlbumArtPathUpdated(ILjava/lang/String;)V

    .line 626
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    if-eqz v3, :cond_3

    .line 627
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    invoke-virtual {v3, v6}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 628
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, directory:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    invoke-virtual {v3, v6, v0}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 630
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 633
    .end local v0           #directory:Ljava/lang/String;
    .end local v2           #msg:Landroid/os/Message;
    :cond_3
    const-string v3, "[MusicPluginManager]"

    const-string v4, "onAlbumArtPathUpdated - "

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "errorMessage"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1584
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1585
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1587
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.onerror"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1588
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1589
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1592
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onErrorId(ILjava/lang/String;)V
    .locals 4
    .parameter "errorId"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1595
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1596
    const-string v1, "[MusicPluginManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onErrorID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1599
    const-string v1, "[MusicPluginManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onErrorID 2= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.onerror"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1601
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "error_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1602
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1605
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onNowplayingQueueUpdated([Landroid/content/ContentValues;IILjava/lang/String;)V
    .locals 3
    .parameter "values"
    .parameter "start"
    .parameter "end"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 638
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 642
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 643
    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentPlugin.mPluginClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "className: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 648
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->pluginNowplayingQueueUpdated([Landroid/content/ContentValues;II)V

    goto :goto_0
.end method

.method public onPluginSelected(I)V
    .locals 1
    .parameter "arg1"

    .prologue
    .line 410
    monitor-enter p0

    .line 412
    :try_start_0
    monitor-exit p0

    .line 413
    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onToastWarning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "errorMessage"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1610
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/music/MediaPlaybackService;->showPluginToast(Ljava/lang/String;I)V

    .line 1612
    :cond_0
    return-void
.end method

.method public onTrackDetailsUpdated(ILandroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .parameter "position"
    .parameter "values"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 652
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-gez p1, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 656
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 657
    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentPlugin.mPluginClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "className: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 662
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->pluginTrackDetailsUpdated(ILandroid/content/ContentValues;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 701
    monitor-enter p0

    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/music/MusicPluginPlayer;->pause()V

    .line 705
    :cond_0
    monitor-exit p0

    .line 706
    return-void

    .line 705
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public play()V
    .locals 1

    .prologue
    .line 709
    monitor-enter p0

    .line 710
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/music/MusicPluginPlayer;->play()V

    .line 713
    :cond_0
    monitor-exit p0

    .line 714
    return-void

    .line 713
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "action"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 540
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v0, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pluginNotifyChange action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " class name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pluginNotifyChange mCurrentPlugin.mPluginClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 548
    const-string v0, "com.htc.music.plugin.metachanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 549
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.changeart"

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :cond_2
    :goto_1
    const-string v0, "com.htc.music.plugin.albumartchanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 567
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.changeart"

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_3
    const-string v0, "com.htc.music.plugin.statechanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 552
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 553
    :cond_4
    const-string v0, "com.htc.music.plugin.playbackcomplete"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 554
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 555
    :cond_5
    const-string v0, "com.htc.music.plugin.queuechanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 557
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 558
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$800(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 559
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.queuechanged"

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 560
    :cond_6
    const-string v0, "com.htc.music.plugin.statechanged.buffering"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 561
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.playstatechanged"

    const-string v2, "buffering"

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 562
    :cond_7
    const-string v0, "com.htc.music.plugin.statechanged.waiting"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 563
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.playstatechanged"

    const-string v2, "waiting"

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 564
    :cond_8
    const-string v0, "com.htc.music.plugin.playnext"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 565
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->next(Z)V

    goto/16 :goto_1

    .line 568
    :cond_9
    const-string v0, "com.htc.music.plugin.dmcmetachanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 569
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 571
    :cond_a
    const-string v0, "[MusicPluginManager]"

    const-string v1, "unknown plugin notify action"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 574
    :cond_b
    const-string v0, "[MusicPluginManager]"

    const-string v1, "class name not match."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public position()J
    .locals 2

    .prologue
    .line 745
    monitor-enter p0

    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/music/MusicPluginPlayer;->position()J

    move-result-wide v0

    monitor-exit p0

    .line 749
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 750
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public prev(Z)V
    .locals 1
    .parameter "changeSong"

    .prologue
    .line 717
    monitor-enter p0

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/music/MusicPluginPlayer;->prev(Z)V

    .line 721
    :cond_0
    monitor-exit p0

    .line 722
    return-void

    .line 721
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public refreshPlugins()V
    .locals 10

    .prologue
    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    const-string v7, "[MusicPluginManager]"

    const-string v8, "refreshPlugins + "

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-nez v7, :cond_0

    .line 134
    monitor-exit p0

    .line 207
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/MusicPluginManager;->getPlugins()[Lcom/htc/music/MusicPluginManager$Plugin;

    move-result-object v6

    .line 140
    .local v6, plugins:[Lcom/htc/music/MusicPluginManager$Plugin;
    if-nez v6, :cond_1

    .line 141
    const-string v7, "[MusicPluginManager]"

    const-string v8, "PluginRegistryHelper.getPlugins return null"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    monitor-exit p0

    goto :goto_0

    .line 206
    .end local v6           #plugins:[Lcom/htc/music/MusicPluginManager$Plugin;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 145
    .restart local v6       #plugins:[Lcom/htc/music/MusicPluginManager$Plugin;
    :cond_1
    const/4 v4, 0x0

    .line 147
    .local v4, pluginChanged:Z
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    array-length v8, v6

    if-ne v7, v8, :cond_5

    .line 148
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_2

    .line 149
    aget-object v7, v6, v2

    invoke-virtual {v7}, Lcom/htc/music/MusicPluginManager$Plugin;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, className:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v7, v7, v2

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-nez v7, :cond_4

    .line 151
    const/4 v4, 0x1

    .line 163
    .end local v0           #className:Ljava/lang/String;
    .end local v2           #i:I
    :cond_2
    :goto_2
    if-eqz v4, :cond_6

    .line 164
    :try_start_2
    array-length v7, v6

    new-array v5, v7, [Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 165
    .local v5, pluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;
    const-string v7, "[MusicPluginManager]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshPlugins: plugin changed since last refresh. plugins.length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    array-length v7, v6

    if-ge v2, v7, :cond_8

    .line 173
    aget-object v7, v6, v2

    invoke-virtual {v7}, Lcom/htc/music/MusicPluginManager$Plugin;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/music/MusicPluginManager;->getPluginByClass(Ljava/lang/String;)Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v3

    .line 174
    .local v3, plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    if-eqz v3, :cond_7

    .line 176
    const-string v7, "[MusicPluginManager]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "plugin name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    aput-object v3, v5, v2

    .line 180
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v7, :cond_3

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 181
    iput-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 172
    :cond_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 148
    .end local v3           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .end local v5           #pluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .restart local v0       #className:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 156
    .end local v0           #className:Ljava/lang/String;
    .end local v2           #i:I
    :cond_5
    const/4 v4, 0x1

    goto :goto_2

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 160
    const-string v7, "[MusicPluginManager]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshPlugins: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 168
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_6
    const-string v7, "[MusicPluginManager]"

    const-string v8, "return refreshPlugins - "

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    monitor-exit p0

    goto/16 :goto_0

    .line 186
    .restart local v2       #i:I
    .restart local v3       #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .restart local v5       #pluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :cond_7
    new-instance v7, Lcom/htc/music/MusicPluginManager$MusicPlugin;

    invoke-direct {v7, p0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;-><init>(Lcom/htc/music/MusicPluginManager;)V

    aput-object v7, v5, v2

    .line 187
    aget-object v7, v5, v2

    aget-object v8, v6, v2

    invoke-virtual {v8}, Lcom/htc/music/MusicPluginManager$Plugin;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginClass(Ljava/lang/String;)V

    .line 188
    aget-object v7, v5, v2

    aget-object v8, v6, v2

    invoke-virtual {v8}, Lcom/htc/music/MusicPluginManager$Plugin;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginDescription(Ljava/lang/String;)V

    .line 189
    aget-object v7, v5, v2

    aget-object v8, v6, v2

    invoke-virtual {v8}, Lcom/htc/music/MusicPluginManager$Plugin;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginPackage(Ljava/lang/String;)V

    .line 190
    aget-object v7, v5, v2

    aget-object v8, v6, v2

    invoke-virtual {v8}, Lcom/htc/music/MusicPluginManager$Plugin;->getShortClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginName(Ljava/lang/String;)V

    goto :goto_4

    .line 196
    .end local v3           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :cond_8
    iput-object v5, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 197
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v7, :cond_9

    .line 198
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    array-length v7, v7

    iput v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    .line 202
    :goto_5
    const/4 v6, 0x0

    .line 203
    const/4 v5, 0x0

    .line 205
    const-string v7, "[MusicPluginManager]"

    const-string v8, "refreshPlugins - "

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    monitor-exit p0

    goto/16 :goto_0

    .line 200
    :cond_9
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5
.end method

.method public resetMusicPluginManager()V
    .locals 3

    .prologue
    .line 422
    monitor-enter p0

    .line 423
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge v0, v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v1, v1, v0

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v1, v1, v0

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/MusicPluginPlayer;->unregisterCallback()V

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->reset()V

    .line 432
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 436
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    .line 437
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 438
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    .line 439
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    .line 440
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;

    .line 441
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z

    .line 442
    monitor-exit p0

    .line 443
    return-void

    .line 442
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 754
    monitor-enter p0

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/htc/music/MusicPluginPlayer;->seek(J)J

    move-result-wide v0

    monitor-exit p0

    .line 758
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 759
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLastPluginClass(Ljava/lang/String;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 1615
    monitor-enter p0

    .line 1616
    :try_start_0
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mLastPluginClass:Ljava/lang/String;

    .line 1617
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1618
    invoke-virtual {p0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginByClass(Ljava/lang/String;)Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 1619
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_1

    .line 1620
    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentPlugin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->createMusicPluginPlayer()V

    .line 1622
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1623
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/htc/music/MusicPluginPlayer;->registerCallback(Lcom/htc/music/IPluginIPCNotify;)V

    .line 1628
    :cond_0
    :goto_0
    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastPluginClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mLastPluginClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    monitor-exit p0

    .line 1630
    return-void

    .line 1625
    :cond_1
    const-string v0, "[MusicPluginManager]"

    const-string v1, "Current plugin is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1629
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPlaylistInfo(Landroid/os/Bundle;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1668
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/music/MusicPluginPlayer;->setPlaylistInfo(Landroid/os/Bundle;)V

    .line 1669
    :cond_0
    return-void
.end method

.method public setQueuePosition(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 883
    monitor-enter p0

    .line 884
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 886
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/MusicPluginPlayer;->setQueuePosition(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 891
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 892
    return-void

    .line 887
    :catch_0
    move-exception v0

    .line 888
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 891
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 820
    monitor-enter p0

    .line 821
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/music/MusicPluginPlayer;->setRepeatMode(I)V

    .line 824
    :cond_0
    monitor-exit p0

    .line 825
    return-void

    .line 824
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShuffleMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 802
    monitor-enter p0

    .line 803
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/music/MusicPluginPlayer;->setShuffleMode(I)V

    .line 805
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$800(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 807
    :cond_0
    monitor-exit p0

    .line 808
    return-void

    .line 807
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVolume(I)V
    .locals 2
    .parameter "nVol"

    .prologue
    .line 846
    monitor-enter p0

    .line 847
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 849
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/MusicPluginPlayer;->setVolume(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 854
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 855
    return-void

    .line 850
    :catch_0
    move-exception v0

    .line 851
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 854
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stop(Z)V
    .locals 1
    .parameter "stateChanged"

    .prologue
    .line 693
    monitor-enter p0

    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/music/MusicPluginPlayer;->stop(Z)V

    .line 697
    :cond_0
    monitor-exit p0

    .line 698
    return-void

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopActivePlugin(Z)V
    .locals 4
    .parameter "isPowerOff"

    .prologue
    .line 461
    monitor-enter p0

    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v1, :cond_0

    .line 464
    const-string v1, "[MusicPluginManager]"

    const-string v2, "mCurrentPugin is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :try_start_1
    const-string v1, "[MusicPluginManager]"

    const-string v2, "mCurrentPlugin == null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 465
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    :goto_0
    return-void

    .line 468
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 469
    const-string v1, "[MusicPluginManager]"

    const-string v2, "mCurrentPugin is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 490
    :try_start_3
    const-string v1, "[MusicPluginManager]"

    const-string v2, "mCurrentPlugin == null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 470
    monitor-exit p0

    goto :goto_0

    .line 493
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 474
    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/MusicPluginPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/MusicPluginPlayer;->isDmcOrPushMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 475
    invoke-virtual {p0}, Lcom/htc/music/MusicPluginManager;->pause()V

    .line 477
    :cond_2
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/MusicPluginPlayer;->close(Z)V

    .line 478
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/MusicPluginPlayer;->unregisterCallback()V

    .line 479
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/MusicPluginPlayer;->release()V

    .line 480
    const-string v1, "[MusicPluginManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release musicpluginplayer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1, v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$602(Lcom/htc/music/MusicPluginManager$MusicPlugin;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 483
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v1, v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$402(Lcom/htc/music/MusicPluginManager$MusicPlugin;Lcom/htc/music/MusicPluginPlayer;)Lcom/htc/music/MusicPluginPlayer;

    .line 484
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 485
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$800(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 490
    :try_start_5
    const-string v1, "[MusicPluginManager]"

    const-string v2, "mCurrentPlugin == null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 493
    :goto_1
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 488
    const-string v1, "[MusicPluginManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopActivePlugin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 490
    :try_start_7
    const-string v1, "[MusicPluginManager]"

    const-string v2, "mCurrentPlugin == null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    goto :goto_1

    .line 490
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_1
    move-exception v1

    const-string v2, "[MusicPluginManager]"

    const-string v3, "mCurrentPlugin == null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 490
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public stopHandlerThread()V
    .locals 1

    .prologue
    .line 446
    monitor-enter p0

    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    .line 452
    :cond_0
    monitor-exit p0

    .line 453
    return-void

    .line 452
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public switchMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1643
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 1644
    :cond_0
    const-class v0, Lcom/htc/music/dlna/DmcMusicPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/MusicPluginManager;->getPluginByClass(Ljava/lang/String;)Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 1645
    const-string v0, "[MusicPluginManager]"

    const-string v1, "switch to dmc player"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    :cond_1
    :goto_0
    return-void

    .line 1646
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1647
    const-class v0, Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/MusicPluginManager;->getPluginByClass(Ljava/lang/String;)Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 1648
    const-string v0, "[MusicPluginManager]"

    const-string v1, "switch to dmp player"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchToMusicPluginPlayer()V
    .locals 1

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    .line 1659
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->createMusicPluginPlayer()V

    .line 1660
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1661
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mMusicPluginPlayer:Lcom/htc/music/MusicPluginPlayer;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginPlayer;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/htc/music/MusicPluginPlayer;->registerCallback(Lcom/htc/music/IPluginIPCNotify;)V

    .line 1664
    :cond_0
    return-void
.end method
