.class public Lcom/htc/music/MediaPlaybackErrorActivity;
.super Landroid/app/Activity;
.source "MediaPlaybackErrorActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/MediaPlaybackErrorActivity$MyQueryHandler;
    }
.end annotation


# static fields
.field public static final FINISH_ERROR_ACTIVITY:Ljava/lang/String; = "com.htc.music.finisherroractivity"

.field private static final LOGTAG:Ljava/lang/String; = "[MediaPlaybackErrorActivity]"

.field private static final MENU_CLOSE_ID:I = 0x2e

.field private static final MENU_OUTPUT_ID:I = 0x25

.field private static final MENU_QUEUE_ID:I = 0x2c

.field private static final MENU_SOUNDHOUND_ID:I = 0x2d

.field public static final PRESENTATION_MODE:Ljava/lang/String; = "Presentation_Mode"

.field private static final SCANNER_FINISHED:I = 0x1

.field private static final SEARCHING:I = 0x0

.field private static final SET_DEFAULT_RESOURCE_TIMER:I = 0x1388


# instance fields
.field private mCursorCols:[Ljava/lang/String;

.field private mDisableLib:Z

.field private mErrorMessage:Ljava/lang/String;

.field private mIsPluginMode:Z

.field private mIsSupportMMC:Z

.field private mOrientation:I

.field private mPluginErrorListener:Landroid/content/BroadcastReceiver;

.field private mPluginReScanHandler:Landroid/os/Handler;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mQueueLen:I

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSearchDialogVisible:Z

.field public mService:Lcom/htc/music/IMediaPlaybackService;

.field private mSetDefaultResourceHandler:Landroid/os/Handler;

.field private mSetDefaultResourceRunnable:Ljava/lang/Runnable;

.field private mSortOrder:Ljava/lang/String;

.field private mTrackCursor:Landroid/database/Cursor;

.field private mUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private osc:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSearchDialogVisible:Z

    .line 92
    iput v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueueLen:I

    .line 94
    iput v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mOrientation:I

    .line 96
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    .line 98
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mDisableLib:Z

    .line 100
    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    .line 102
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsSupportMMC:Z

    .line 106
    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 108
    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 436
    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$3;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 462
    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$4;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginErrorListener:Landroid/content/BroadcastReceiver;

    .line 477
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSetDefaultResourceHandler:Landroid/os/Handler;

    .line 479
    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$5;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSetDefaultResourceRunnable:Ljava/lang/Runnable;

    .line 495
    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$6;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    .line 510
    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$7;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;

    .line 900
    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$9;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->osc:Landroid/content/ServiceConnection;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/MediaPlaybackErrorActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->startBrowserTabActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/MediaPlaybackErrorActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/MediaPlaybackErrorActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->setDefaultResource()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/MediaPlaybackErrorActivity;)Landroid/content/AsyncQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/MediaPlaybackErrorActivity;Landroid/content/AsyncQueryHandler;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackErrorActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/MediaPlaybackErrorActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/music/MediaPlaybackErrorActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/music/MediaPlaybackErrorActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/MediaPlaybackErrorActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    return v0
.end method

.method private closeDMC()V
    .locals 3

    .prologue
    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    .line 326
    :goto_0
    return-void

    .line 320
    :cond_0
    const-string v1, "[MediaPlaybackErrorActivity]"

    const-string v2, "service is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getAlbumCursor(Landroid/content/AsyncQueryHandler;)Landroid/database/Cursor;
    .locals 14
    .parameter "async"

    .prologue
    const/4 v0, 0x0

    .line 786
    const/4 v11, 0x0

    .line 787
    .local v11, queuelist:[I
    const/4 v12, 0x0

    .line 791
    .local v12, ret:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 793
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->init(Landroid/database/Cursor;)V

    .line 838
    :goto_0
    return-object v0

    .line 797
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v8

    .line 798
    .local v8, count:I
    if-gtz v8, :cond_2

    .line 799
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->init(Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 833
    .end local v8           #count:I
    :catch_0
    move-exception v9

    .line 835
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v9           #e:Landroid/os/RemoteException;
    :cond_1
    :goto_1
    move-object v0, v12

    .line 838
    goto :goto_0

    .line 803
    .restart local v8       #count:I
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v11

    .line 806
    if-eqz v11, :cond_1

    .line 808
    const-string v0, "title_key"

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSortOrder:Ljava/lang/String;

    .line 809
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 811
    .local v13, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    const-string v0, " AND _id IN ("

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    array-length v0, v11

    if-ge v10, v0, :cond_4

    .line 814
    aget v0, v11, v10

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 815
    array-length v0, v11

    add-int/lit8 v0, v0, -0x1

    if-ge v10, v0, :cond_3

    .line 816
    const-string v0, ","

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 819
    :cond_4
    const-string v0, ")"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    const-string v0, " AND is_music>=1"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    if-eqz p1, :cond_5

    .line 823
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 827
    :cond_5
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    goto :goto_1
.end method

.method private initTitleBar()V
    .locals 4

    .prologue
    .line 214
    new-instance v0, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    .line 215
    .local v0, actionBar:Lcom/htc/widget/ActionBarExt;
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    .line 216
    .local v1, customContainer:Lcom/htc/widget/ActionBarContainer;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 217
    new-instance v3, Lcom/htc/music/MediaPlaybackErrorActivity$2;

    invoke-direct {v3, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$2;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    invoke-virtual {v1, v3}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    new-instance v2, Lcom/htc/widget/ActionBarText;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    .line 227
    .local v2, title:Lcom/htc/widget/ActionBarText;
    const v3, 0x7f060014

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 228
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    .line 229
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 230
    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 231
    return-void
.end method

.method private setDefaultResource()V
    .locals 2

    .prologue
    .line 487
    const v1, 0x7f07007c

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 488
    .local v0, text:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 489
    const v1, 0x20400a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 492
    :cond_0
    return-void
.end method

.method private startBrowserTabActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 879
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 880
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 881
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 882
    const-class v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 883
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 884
    const-string v1, "KeepHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 885
    const-string v1, "RemoveStoreHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 886
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->startActivity(Landroid/content/Intent;)V

    .line 887
    return-void
.end method

.method private startListenStore()V
    .locals 4

    .prologue
    .line 939
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.music.online.strorefont"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 940
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "InnerActivityType"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 943
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    :goto_0
    return-void

    .line 944
    :catch_0
    move-exception v0

    .line 945
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "[MediaPlaybackErrorActivity]"

    const-string v3, "Opps, we can\'t launch store activity!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startPlayback()V
    .locals 4

    .prologue
    .line 707
    monitor-enter p0

    .line 708
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 709
    monitor-exit p0

    .line 755
    :goto_0
    return-void

    .line 711
    :cond_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    .line 712
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/MediaPlaybackErrorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 713
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 715
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 717
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isSystemReady()Z

    move-result v1

    .line 718
    .local v1, ready:Z
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isMusicLoaded()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 719
    const-string v2, "[MediaPlaybackErrorActivity]"

    const-string v3, "isMusicLoaded and ready"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 721
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 722
    const-string v2, "showEmptyQueue"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 723
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->startActivity(Landroid/content/Intent;)V

    .line 726
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->overridePendingTransition(II)V

    .line 753
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->finish()V

    .line 754
    monitor-exit p0

    goto :goto_0

    .end local v1           #ready:Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 734
    .restart local v1       #ready:Z
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 737
    const-string v2, "[MediaPlaybackErrorActivity]"

    const-string v3, "startPlayback playAllNotRun"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 739
    .restart local v0       #intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 740
    const-string v2, "showEmptyQueue"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 741
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->startActivity(Landroid/content/Intent;)V

    .line 745
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->overridePendingTransition(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public hideDatabaseError()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 648
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 649
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 654
    :cond_0
    const v1, 0x7f07007c

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 655
    if-eqz v0, :cond_1

    .line 656
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 658
    :cond_1
    return-void
.end method

.method hideSearchDialog()V
    .locals 1

    .prologue
    .line 842
    monitor-enter p0

    .line 843
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSearchDialogVisible:Z

    if-nez v0, :cond_0

    .line 844
    monitor-exit p0

    .line 853
    :goto_0
    return-void

    .line 847
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSearchDialogVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 849
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->removeDialog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 852
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 850
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 662
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 664
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 666
    :cond_0
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 667
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getIsInternalEnough()Z

    move-result v0

    .line 668
    .local v0, isInternalEnough:Z
    if-nez v0, :cond_2

    .line 669
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->hideSearchDialog()V

    .line 670
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->showDatabaseError()V

    .line 671
    if-eqz v0, :cond_1

    .line 672
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 704
    :goto_0
    return-void

    .line 675
    :cond_1
    const-string v1, "[MediaPlaybackErrorActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init, don\'t re-scan, isInternalEnough: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 679
    :cond_2
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_6

    .line 680
    :cond_3
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 682
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->hideDatabaseError()V

    .line 685
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 686
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->showSearchDialog()V

    .line 687
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 690
    :cond_4
    const-string v1, "[MediaPlaybackErrorActivity]"

    const-string v2, "This activity is finishing..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 693
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->hideSearchDialog()V

    .line 694
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->showDatabaseError()V

    goto :goto_0

    .line 702
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->hideSearchDialog()V

    .line 703
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->startPlayback()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 952
    const-string v0, "[MediaPlaybackErrorActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive activity result, requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const v0, 0xc351

    if-ne p1, v0, :cond_0

    .line 955
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->startListenStore()V

    .line 958
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 875
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 876
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 331
    const-string v0, "[MediaPlaybackErrorActivity]"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 367
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    .line 119
    const-string v5, "[MediaPlaybackErrorActivity]"

    const-string v6, "onCreate +"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 124
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    if-nez v5, :cond_0

    .line 125
    new-instance v5, Lcom/htc/music/MediaPlaybackErrorActivity$1;

    invoke-direct {v5, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$1;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    :cond_0
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.htc.music.lockscreen_start"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/htc/music/MediaPlaybackErrorActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    :cond_1
    if-eqz p1, :cond_7

    .line 137
    const-string v5, "queuelen"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueueLen:I

    .line 139
    const-string v5, "pluginmode"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    .line 140
    const-string v5, "errorcause"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    .line 141
    const-string v5, "disablelib"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mDisableLib:Z

    .line 153
    :goto_0
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/htc/music/MediaPlaybackErrorActivity;->setVolumeControlStream(I)V

    .line 154
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/htc/music/MediaPlaybackErrorActivity;->requestWindowFeature(I)Z

    .line 156
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mOrientation:I

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v5, v6}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 159
    const-string v5, "[MediaPlaybackErrorActivity]"

    const-string v6, "fail to bind service..."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_2
    const v5, 0x7f030035

    invoke-virtual {p0, v5}, Lcom/htc/music/MediaPlaybackErrorActivity;->setContentView(I)V

    .line 163
    const v5, 0x7f07007b

    invoke-virtual {p0, v5}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 164
    .local v0, errorLayout:Landroid/view/ViewGroup;
    if-eqz v0, :cond_3

    .line 165
    const-string v5, "common_app_bkg"

    const v6, 0x2080001

    invoke-static {p0, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 168
    :cond_3
    iget-boolean v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    if-nez v5, :cond_a

    .line 170
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "_id"

    aput-object v6, v5, v8

    const/4 v6, 0x1

    const-string v7, "album_id"

    aput-object v7, v5, v6

    iput-object v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mCursorCols:[Ljava/lang/String;

    .line 172
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 173
    .local v1, f:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v5, "file"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 177
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-nez v5, :cond_4

    .line 180
    new-instance v5, Lcom/htc/music/MediaPlaybackErrorActivity$MyQueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/htc/music/MediaPlaybackErrorActivity$MyQueryHandler;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;Landroid/content/ContentResolver;)V

    iput-object v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 182
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, status:Ljava/lang/String;
    const-string v5, "[MediaPlaybackErrorActivity]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate()...SD status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_8

    .line 186
    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "mounted_ro"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "checking"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 189
    :cond_5
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v5}, Lcom/htc/music/MediaPlaybackErrorActivity;->init(Landroid/database/Cursor;)V

    .line 204
    .end local v1           #f:Landroid/content/IntentFilter;
    .end local v4           #status:Ljava/lang/String;
    :cond_6
    :goto_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 205
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v5, "com.htc.music.finisherroractivity"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginErrorListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->initTitleBar()V

    .line 209
    const-string v5, "[MediaPlaybackErrorActivity]"

    const-string v6, "onCreate -"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void

    .line 143
    .end local v0           #errorLayout:Landroid/view/ViewGroup;
    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    :cond_7
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 144
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "queuelen"

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueueLen:I

    .line 146
    const-string v5, "pluginmode"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    .line 147
    const-string v5, "errorcause"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    .line 148
    const-string v5, "disablelib"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mDisableLib:Z

    goto/16 :goto_0

    .line 192
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v0       #errorLayout:Landroid/view/ViewGroup;
    .restart local v1       #f:Landroid/content/IntentFilter;
    .restart local v4       #status:Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->showDatabaseError()V

    .line 193
    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "mounted_ro"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "checking"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 196
    :cond_9
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackErrorActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;)Landroid/database/Cursor;

    goto :goto_1

    .line 201
    .end local v1           #f:Landroid/content/IntentFilter;
    .end local v4           #status:Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->showErrorFromPluginService()V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 759
    sparse-switch p1, :sswitch_data_0

    .line 781
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 761
    :sswitch_0
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 764
    :sswitch_1
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 765
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f060035

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 766
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 767
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 768
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    new-instance v1, Lcom/htc/music/MediaPlaybackErrorActivity$8;

    invoke-direct {v1, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$8;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 778
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0

    .line 759
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xaae61 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 246
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.soundhound.android.ID_NOW_EXTERNAL"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v2, soundhoundIntent:Landroid/content/Intent;
    const-string v4, "com.soundhound.android.EXTRA_ID_NOW_TOKEN"

    const-string v5, "htc"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    invoke-static {p0, v2}, Lcom/htc/music/util/CustomizeSetting;->isStorePackageExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    .line 249
    .local v3, supportSoundHound:Z
    if-eqz v3, :cond_0

    .line 250
    const/16 v4, 0x2d

    const v5, 0x7f0600da

    invoke-interface {p1, v8, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02003e

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 256
    :cond_0
    const/16 v4, 0x2c

    const v5, 0x7f0600bd

    invoke-interface {p1, v8, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020026

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    .line 258
    .local v1, queue:Landroid/view/MenuItem;
    if-nez v3, :cond_1

    .line 259
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 263
    :cond_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 264
    .local v0, dlnaMode:I
    if-eq v7, v0, :cond_2

    const/4 v4, 0x3

    if-ne v4, v0, :cond_3

    .line 266
    :cond_2
    const/16 v4, 0x2e

    const v5, 0x7f0600be

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x20800a3

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 288
    :cond_3
    return v8
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 371
    const-string v1, "[MediaPlaybackErrorActivity]"

    const-string v2, "onDestroy +"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 374
    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    if-nez v1, :cond_2

    .line 375
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 377
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 381
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 388
    :cond_2
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 390
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->hideSearchDialog()V

    .line 391
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginErrorListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 393
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :cond_3
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 402
    const-string v1, "[MediaPlaybackErrorActivity]"

    const-string v2, "onDestroy -"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "[MediaPlaybackErrorActivity]"

    const-string v2, "onDestroy, fail to unregisterReceiver(mUnlockReceiver)"

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 293
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 294
    .local v1, id:I
    packed-switch v1, :pswitch_data_0

    .line 312
    :goto_0
    return v5

    .line 297
    :pswitch_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.soundhound.android.ID_NOW_EXTERNAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 299
    const-string v3, "com.soundhound.android.EXTRA_ID_NOW_TOKEN"

    const-string v4, "htc"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "[MediaPlaybackErrorActivity]"

    const-string v4, "can\'t find SoundHound activity!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->closeDMC()V

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 420
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 421
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 422
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 425
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSetDefaultResourceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSetDefaultResourceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 426
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 407
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 409
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    const-string v0, "[MediaPlaybackErrorActivity]"

    const-string v1, "onResume()...mService is not null and no message in queue. Send message to queue."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 416
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 429
    const-string v0, "[MediaPlaybackErrorActivity]"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v0, "queuelen"

    iget v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueueLen:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 431
    const-string v0, "pluginmode"

    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 432
    const-string v0, "errorcause"

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v0, "disablelib"

    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mDisableLib:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 434
    return-void
.end method

.method public showDatabaseError()V
    .locals 10

    .prologue
    const v9, 0x7f07007c

    const/4 v8, 0x0

    .line 550
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getStorageState()Ljava/lang/String;

    move-result-object v3

    .line 553
    .local v3, status:Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 554
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_1

    .line 555
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 559
    const/4 v2, 0x0

    .line 561
    .local v2, message:I
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v1

    .line 563
    .local v1, isInternalStorage:Z
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getIsInternalEnough()Z

    move-result v6

    if-nez v6, :cond_2

    .line 564
    const v2, 0x7f06003a

    .line 623
    :cond_0
    :goto_0
    invoke-virtual {p0, v9}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 626
    .local v4, tv:Landroid/widget/TextView;
    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 627
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 632
    .end local v1           #isInternalStorage:Z
    .end local v2           #message:I
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_1
    return-void

    .line 565
    .restart local v1       #isInternalStorage:Z
    .restart local v2       #message:I
    :cond_2
    const-string v6, "shared"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 566
    if-eqz v1, :cond_3

    .line 567
    const v2, 0x7f060039

    goto :goto_0

    .line 569
    :cond_3
    const v2, 0x7f060038

    goto :goto_0

    .line 574
    :cond_4
    const-string v6, "removed"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "bad_removal"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 576
    :cond_5
    if-eqz v1, :cond_6

    .line 577
    const v2, 0x7f060039

    goto :goto_0

    .line 579
    :cond_6
    const v2, 0x20400a0

    goto :goto_0

    .line 583
    :cond_7
    const-string v6, "unmounted"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 584
    if-eqz v1, :cond_8

    .line 585
    const v2, 0x7f060039

    goto :goto_0

    .line 587
    :cond_8
    const v2, 0x20401fa

    goto :goto_0

    .line 591
    :cond_9
    const-string v6, "checking"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 592
    if-eqz v1, :cond_a

    .line 593
    const v2, 0x7f060039

    goto :goto_0

    .line 596
    :cond_a
    const v2, 0x20400a0

    goto :goto_0

    .line 600
    :cond_b
    const-string v6, "nofs"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 601
    const v2, 0x7f06002a

    .line 603
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 604
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x20401fd

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_0

    .line 605
    :cond_c
    if-eqz v1, :cond_d

    .line 606
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x20401fe

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 608
    :cond_d
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x20401fb

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 611
    :cond_e
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 612
    :cond_f
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getAllSongs(Landroid/content/Context;)[I

    move-result-object v0

    .line 614
    .local v0, allSong:[I
    if-eqz v0, :cond_10

    array-length v6, v0

    if-nez v6, :cond_11

    .line 615
    :cond_10
    const v2, 0x7f06002a

    goto/16 :goto_0

    .line 618
    :cond_11
    const v2, 0x7f060032

    goto/16 :goto_0
.end method

.method public showErrorFromPluginService()V
    .locals 2

    .prologue
    .line 635
    const v1, 0x7f07007c

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 636
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 637
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 639
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    :cond_0
    return-void
.end method

.method showSearchDialog()V
    .locals 2

    .prologue
    .line 856
    monitor-enter p0

    .line 857
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSearchDialogVisible:Z

    if-eqz v1, :cond_0

    .line 858
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    :goto_0
    return-void

    .line 862
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->showDialog(I)V

    .line 863
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSearchDialogVisible:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 867
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 864
    :catch_0
    move-exception v0

    .line 865
    .local v0, ex:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
