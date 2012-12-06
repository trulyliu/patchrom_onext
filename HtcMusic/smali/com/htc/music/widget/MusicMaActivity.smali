.class public abstract Lcom/htc/music/widget/MusicMaActivity;
.super Landroid/app/Activity;
.source "MusicMaActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/MusicMaActivity$DLNAMusicServiceStatusListener;,
        Lcom/htc/music/widget/MusicMaActivity$ControllerListener;,
        Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;
    }
.end annotation


# static fields
.field private static final DELETION_TRACK_COMPLETED:I = 0x0

.field private static final DIALOG_DMR_DISCONNECT:I = 0x2b03

.field private static final DIALOG_WAITING:I = 0x2b04

.field private static final MSG_SHOW_DMR_DISCONNECT_DIALOG:I = 0x36b3

.field private static final MSG_SHOW_WAITING_DIALOG:I = 0x36b2

.field private static final MSG_SWITCH_MODE:I = 0x36b1

.field public static final START_NEW_ACTIVITY:I = -0x2

.field private static final TAG:Ljava/lang/String; = "[MusicMaActivity]"

.field protected static mEnableLandscapeHorizontalSDError:I


# instance fields
.field private activeDialog:I

.field private mActivityResumed:Z

.field private mControllerListener:Lcom/htc/music/widget/MusicMaActivity$ControllerListener;

.field private mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

.field private mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

.field private mDLNAServiceStatusListener:Lcom/htc/music/widget/MusicMaActivity$DLNAMusicServiceStatusListener;

.field protected mEnableRightBtn:I

.field protected mEnableSearch:Z

.field private mHtcTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

.field private mIsDLNAManagerConnected:Z

.field protected mIsEnhancerExist:Z

.field private mNeedSetRendererAsDongle:Z

.field private mOrientation:I

.field protected mRes:Landroid/content/res/Resources;

.field private mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

.field private mWaitDialog:Landroid/app/Dialog;

.field private mbufferdialog:Landroid/app/ProgressDialog;

.field private messageHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, -0x1

    sput v0, Lcom/htc/music/widget/MusicMaActivity;->mEnableLandscapeHorizontalSDError:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    iput-boolean v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mOrientation:I

    .line 57
    iput-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    .line 68
    iput-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mWaitDialog:Landroid/app/Dialog;

    .line 73
    iput-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 74
    new-instance v0, Lcom/htc/music/widget/MusicMaActivity$ControllerListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/music/widget/MusicMaActivity$ControllerListener;-><init>(Lcom/htc/music/widget/MusicMaActivity;Lcom/htc/music/widget/MusicMaActivity$1;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mControllerListener:Lcom/htc/music/widget/MusicMaActivity$ControllerListener;

    .line 75
    new-instance v0, Lcom/htc/music/widget/MusicMaActivity$DLNAMusicServiceStatusListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/music/widget/MusicMaActivity$DLNAMusicServiceStatusListener;-><init>(Lcom/htc/music/widget/MusicMaActivity;Lcom/htc/music/widget/MusicMaActivity$1;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAServiceStatusListener:Lcom/htc/music/widget/MusicMaActivity$DLNAMusicServiceStatusListener;

    .line 76
    iput-boolean v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsDLNAManagerConnected:Z

    .line 77
    iput-boolean v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mNeedSetRendererAsDongle:Z

    .line 78
    iput-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 79
    new-instance v0, Lcom/htc/music/widget/MusicMaActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicMaActivity$1;-><init>(Lcom/htc/music/widget/MusicMaActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mHtcTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    .line 119
    iput-boolean v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mActivityResumed:Z

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    .line 519
    iput-boolean v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    .line 590
    iput-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mbufferdialog:Landroid/app/ProgressDialog;

    .line 603
    new-instance v0, Lcom/htc/music/widget/MusicMaActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicMaActivity$2;-><init>(Lcom/htc/music/widget/MusicMaActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->messageHandler:Landroid/os/Handler;

    .line 648
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/music/widget/MusicMaActivity;->activeDialog:I

    .line 873
    new-instance v0, Lcom/htc/music/widget/MusicMaActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicMaActivity$4;-><init>(Lcom/htc/music/widget/MusicMaActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/music/widget/MusicMaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mNeedSetRendererAsDongle:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/music/widget/MusicMaActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/htc/music/widget/MusicMaActivity;->mNeedSetRendererAsDongle:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/music/widget/MusicMaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/music/widget/MusicMaActivity;->handleTVReadyToPlay()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/music/widget/MusicMaActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mbufferdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/widget/MusicMaActivity;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/widget/MusicMaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/music/widget/MusicMaActivity;->launchPlayer()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/music/widget/MusicMaActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/widget/MusicMaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/music/widget/MusicMaActivity;->dismissWaitDialog()V

    return-void
.end method

.method static synthetic access$902(Lcom/htc/music/widget/MusicMaActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsDLNAManagerConnected:Z

    return p1
.end method

.method private createWaitDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 954
    const/4 v0, 0x0

    .line 956
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-direct {p0}, Lcom/htc/music/widget/MusicMaActivity;->dismissWaitDialog()V

    .line 958
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 959
    .restart local v0       #dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x204027d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 960
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 962
    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mWaitDialog:Landroid/app/Dialog;

    .line 964
    return-object v0
.end method

.method private dismissWaitDialog()V
    .locals 2

    .prologue
    .line 968
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->messageHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->messageHandler:Landroid/os/Handler;

    const/16 v1, 0x36b2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mWaitDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 973
    const-string v0, "[MusicMaActivity]"

    const-string v1, "dismissWaitDialog, dismiss waiting dialog."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 976
    :cond_1
    return-void
.end method

.method private handleTVReadyToPlay()V
    .locals 1

    .prologue
    .line 898
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicMaActivity;->handleTVReadyToPlay(Z)V

    .line 899
    return-void
.end method

.method private launchPlayer()V
    .locals 5

    .prologue
    .line 888
    const-string v1, "[MusicMaActivity]"

    const-string v2, "launchPlayer"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 890
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 891
    const-string v1, "showEmptyQueue"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 892
    const-string v1, "from-lockscreen"

    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "from-lockscreen"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 894
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicMaActivity;->startActivity(Landroid/content/Intent;)V

    .line 895
    return-void
.end method

.method private registerTVDisplayHelper()V
    .locals 3

    .prologue
    .line 774
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    if-nez v1, :cond_0

    .line 775
    new-instance v1, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    iget-object v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mHtcTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    invoke-direct {v1, p0, v2}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;-><init>(Landroid/content/Context;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    iput-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 781
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 782
    .local v0, fDLNA:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.triggerplayinlibrary"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 783
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/widget/MusicMaActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 784
    return-void

    .line 778
    .end local v0           #fDLNA:Landroid/content/IntentFilter;
    :cond_0
    const-string v1, "[MusicMaActivity]"

    const-string v2, "registerTVDisplayHelper, already register it, ignore this time."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseTVDisplayHelper()V
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->release()V

    .line 789
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 796
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicMaActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    :goto_1
    return-void

    .line 792
    :cond_0
    const-string v0, "[MusicMaActivity]"

    const-string v1, "releaseTVDisplayHelper, mTVHelper is null, no need to release."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 797
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private setDLNAPreloadEnable(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 802
    const-string v1, "wireless_display"

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicMaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 803
    .local v0, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {v0, p1}, Lcom/htc/service/WirelessDisplayManager;->setDLNAPreloadEnable(Z)V

    .line 805
    :cond_0
    return-void
.end method


# virtual methods
.method public categoryRightAction()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "where"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 593
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v7

    .line 594
    .local v7, deleteContent:Landroid/app/Activity;
    if-nez v7, :cond_0

    move-object v7, p1

    check-cast v7, Landroid/app/Activity;

    .line 596
    :cond_0
    const-string v1, ""

    const v2, 0x7f060090

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicMaActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v7, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mbufferdialog:Landroid/app/ProgressDialog;

    .line 597
    new-instance v0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;-><init>(Lcom/htc/music/widget/MusicMaActivity;Lcom/htc/music/widget/MusicMaActivity$1;)V

    .local v0, mDeleteAlbum:Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 598
    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->Init(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    new-instance v8, Ljava/lang/Thread;

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 600
    .local v8, deletethread:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 601
    return-void
.end method

.method protected disableCategoryDropDown()V
    .locals 3

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 506
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 511
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 512
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0}, Lcom/htc/music/widget/IMusicTabActivityInterface;->disableCategoryDropDown()V

    goto :goto_0
.end method

.method public disableSearch()V
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    .line 523
    return-void
.end method

.method public dismissActiveDialog()V
    .locals 4

    .prologue
    const/high16 v3, -0x8000

    .line 759
    iget v1, p0, Lcom/htc/music/widget/MusicMaActivity;->activeDialog:I

    if-ne v1, v3, :cond_0

    .line 770
    :goto_0
    return-void

    .line 764
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/htc/music/widget/MusicMaActivity;->activeDialog:I

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicMaActivity;->dismissDialog(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    iput v3, p0, Lcom/htc/music/widget/MusicMaActivity;->activeDialog:I

    goto :goto_0

    .line 765
    :catch_0
    move-exception v0

    .line 766
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v1, "[MusicMaActivity]"

    const-string v2, "[dismissActiveDialog] ."

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 768
    iput v3, p0, Lcom/htc/music/widget/MusicMaActivity;->activeDialog:I

    goto :goto_0

    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    iput v3, p0, Lcom/htc/music/widget/MusicMaActivity;->activeDialog:I

    throw v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 532
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    if-eqz v1, :cond_0

    .line 533
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 540
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    if-eqz v1, :cond_1

    .line 541
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 547
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :pswitch_0
    return v0

    .line 535
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->onSearchRequested()Z

    goto :goto_0

    .line 533
    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_1
    .end packed-switch

    .line 541
    :pswitch_data_1
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public enableSearch()V
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    .line 527
    return-void
.end method

.method public findRootParent()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 264
    .local v0, rootParent:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 272
    .end local p0
    :goto_0
    return-object p0

    .line 266
    .restart local p0
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 267
    .local v1, temp:Landroid/app/Activity;
    :goto_1
    if-eqz v1, :cond_1

    .line 268
    move-object v0, v1

    .line 269
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object p0, v0

    .line 272
    goto :goto_0
.end method

.method protected handleTVReadyToPlay(Z)V
    .locals 12
    .parameter "playDMS"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 902
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v8, :cond_0

    .line 903
    const-string v6, "[MusicMaActivity]"

    const-string v7, "handleTVReadyToPlay, sService is null!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    :goto_0
    return-void

    .line 907
    :cond_0
    const/4 v2, 0x0

    .line 908
    .local v2, isDMCOrPush:Z
    const/4 v3, 0x0

    .line 910
    .local v3, isQueueEmpty:Z
    if-nez p1, :cond_1

    .line 913
    :try_start_0
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v2

    .line 914
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 915
    .local v5, queueLength:I
    if-gtz v5, :cond_1

    .line 916
    const/4 v3, 0x1

    .line 923
    .end local v5           #queueLength:I
    :cond_1
    :goto_1
    const-string v8, "[MusicMaActivity]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleTVReadyToPlay, playDMS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isDMCOrPush: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isQueueEmpty: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    if-nez p1, :cond_2

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    :cond_2
    move v0, v7

    .line 927
    .local v0, connectDMR:Z
    :goto_2
    if-eqz v0, :cond_6

    .line 929
    iget-object v8, p0, Lcom/htc/music/widget/MusicMaActivity;->messageHandler:Landroid/os/Handler;

    if-eqz v8, :cond_3

    .line 930
    iget-object v8, p0, Lcom/htc/music/widget/MusicMaActivity;->messageHandler:Landroid/os/Handler;

    const/16 v9, 0x36b2

    const-wide/16 v10, 0x258

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 933
    :cond_3
    iget-boolean v8, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsDLNAManagerConnected:Z

    if-nez v8, :cond_5

    .line 934
    iput-boolean v7, p0, Lcom/htc/music/widget/MusicMaActivity;->mNeedSetRendererAsDongle:Z

    .line 935
    iget-object v6, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v7, p0, Lcom/htc/music/widget/MusicMaActivity;->mControllerListener:Lcom/htc/music/widget/MusicMaActivity$ControllerListener;

    invoke-virtual {v6, v7}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setControllerStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;)V

    .line 936
    iget-object v6, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v7, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAServiceStatusListener:Lcom/htc/music/widget/MusicMaActivity$DLNAMusicServiceStatusListener;

    invoke-virtual {v6, v7}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->connect(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;)Z

    goto :goto_0

    .line 918
    .end local v0           #connectDMR:Z
    :catch_0
    move-exception v1

    .line 919
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_4
    move v0, v6

    .line 925
    goto :goto_2

    .line 938
    .restart local v0       #connectDMR:Z
    :cond_5
    new-instance v4, Lcom/htc/dlnainterface/DLNAStatusBarData;

    invoke-direct {v4}, Lcom/htc/dlnainterface/DLNAStatusBarData;-><init>()V

    .line 939
    .local v4, notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    iput v7, v4, Lcom/htc/dlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 940
    const-string v7, "com.htc.music.PLAYBACK_VIEWER"

    iput-object v7, v4, Lcom/htc/dlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 941
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0600db

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/htc/dlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 942
    const-string v7, "HtcMusic"

    iput-object v7, v4, Lcom/htc/dlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 944
    iget-object v7, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v7, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    .line 946
    iput-boolean v6, p0, Lcom/htc/music/widget/MusicMaActivity;->mNeedSetRendererAsDongle:Z

    goto/16 :goto_0

    .line 949
    .end local v4           #notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    :cond_6
    iput-boolean v6, p0, Lcom/htc/music/widget/MusicMaActivity;->mNeedSetRendererAsDongle:Z

    goto/16 :goto_0
.end method

.method protected isActivityResumed()Z
    .locals 1

    .prologue
    .line 701
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mActivityResumed:Z

    return v0
.end method

.method public abstract isBypass()Z
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 341
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 342
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 284
    .local v0, rootParent:Landroid/app/Activity;
    if-eq p0, v0, :cond_0

    .line 285
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 166
    const-string v0, "[MusicMaActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive onConfigurationChanged, orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 169
    iget v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->resetBackground()V

    .line 175
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mOrientation:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 137
    .local v0, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mOrientation:I

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z

    .line 142
    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    .line 144
    const/4 v1, -0x1

    sget v2, Lcom/htc/music/widget/MusicMaActivity;->mEnableLandscapeHorizontalSDError:I

    if-ne v1, v2, :cond_1

    .line 145
    const v1, 0x7f0601b9

    invoke-static {p0, v1}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v1

    sput v1, Lcom/htc/music/widget/MusicMaActivity;->mEnableLandscapeHorizontalSDError:I

    .line 148
    :cond_1
    new-instance v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-direct {v1, p0, v3, v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 149
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mControllerListener:Lcom/htc/music/widget/MusicMaActivity$ControllerListener;

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setControllerStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;)V

    .line 150
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 721
    packed-switch p1, :pswitch_data_0

    .line 739
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 723
    :pswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0600ab

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicMaActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x2040174

    new-instance v3, Lcom/htc/music/widget/MusicMaActivity$3;

    invoke-direct {v3, p0}, Lcom/htc/music/widget/MusicMaActivity$3;-><init>(Lcom/htc/music/widget/MusicMaActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 733
    .local v0, dmrDialog:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0

    .line 736
    .end local v0           #dmrDialog:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/music/widget/MusicMaActivity;->createWaitDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 721
    nop

    :pswitch_data_0
    .packed-switch 0x2b03
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDeletionCompleted()V
    .locals 2

    .prologue
    .line 651
    const-string v0, "[MusicMaActivity]"

    const-string v1, "call parent Empty onDeletionCompleted()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 156
    return-void
.end method

.method public onMaBackPressed()Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->closeOptionsMenu()V

    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 207
    iput-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mActivityResumed:Z

    .line 209
    invoke-direct {p0}, Lcom/htc/music/widget/MusicMaActivity;->dismissWaitDialog()V

    .line 210
    invoke-direct {p0}, Lcom/htc/music/widget/MusicMaActivity;->releaseTVDisplayHelper()V

    .line 211
    invoke-direct {p0, v0}, Lcom/htc/music/widget/MusicMaActivity;->setDLNAPreloadEnable(Z)V

    .line 212
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->disconnect()V

    .line 215
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 744
    iput p1, p0, Lcom/htc/music/widget/MusicMaActivity;->activeDialog:I

    .line 745
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 746
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 180
    iput-boolean v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mActivityResumed:Z

    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 184
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 186
    .local v0, newConfig:Landroid/content/res/Configuration;
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicMaActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 189
    .end local v0           #newConfig:Landroid/content/res/Configuration;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->resetBackground()V

    .line 192
    const/4 v1, -0x1

    iget v3, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    if-ne v1, v3, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicMaActivity;->setCategoryRightBtn(Z)V

    .line 197
    invoke-direct {p0}, Lcom/htc/music/widget/MusicMaActivity;->registerTVDisplayHelper()V

    .line 198
    invoke-direct {p0, v2}, Lcom/htc/music/widget/MusicMaActivity;->setDLNAPreloadEnable(Z)V

    .line 199
    return-void

    .line 192
    :cond_1
    iget v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    if-lez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 161
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->dismissActiveDialog()V

    .line 162
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 220
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    return-void
.end method

.method protected resetBackground()V
    .locals 3

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 123
    const-string v1, "common_app_bkg"

    const v2, 0x2080001

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 125
    .local v0, resId:I
    if-lez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 129
    .end local v0           #resId:I
    :cond_0
    return-void
.end method

.method protected setCategoryLeftBtnVisible(Z)V
    .locals 3
    .parameter "setVisible"

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 491
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 496
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 497
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryLeftBtnVisible(Z)V

    goto :goto_0
.end method

.method protected setCategoryProgressVisible(Z)V
    .locals 3
    .parameter "setVisible"

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 385
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 390
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 391
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryProgressVisible(Z)V

    goto :goto_0
.end method

.method protected setCategoryRightBtn(Z)V
    .locals 7
    .parameter "setEnable"

    .prologue
    .line 232
    const/4 v3, 0x0

    .line 233
    .local v3, setEnableInt:I
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 235
    :cond_0
    iput v3, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    .line 237
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 238
    const-string v5, "[MusicMaActivity]"

    const-string v6, "activity is paused, do not set category right button status"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_1
    :goto_0
    return-void

    .line 242
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v2

    .line 243
    .local v2, parent:Landroid/app/Activity;
    instance-of v5, v2, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz v5, :cond_1

    move-object v1, v2

    .line 244
    check-cast v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    .line 246
    .local v1, multiParent:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
    const/4 v4, 0x6

    .line 247
    .local v4, type:I
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 248
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_3

    .line 249
    const-string v5, "InnerActivityType"

    const/4 v6, 0x6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 252
    :cond_3
    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    .line 253
    invoke-virtual {v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setStoreRightBtn()V

    goto :goto_0

    .line 255
    :cond_4
    invoke-virtual {v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setOnlineSearchRightBtn()V

    goto :goto_0
.end method

.method protected setCategoryRightBtn2Enable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 463
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 468
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 469
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtn2Enable(Z)V

    goto :goto_0
.end method

.method protected setCategoryRightBtn2Image(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 3
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 451
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 456
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 457
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1, p2}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtn2Image(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setCategoryRightBtn2OnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "clickListener"

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 475
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 480
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 481
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtn2OnClick(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected setCategoryRightBtn2Visible(Z)V
    .locals 3
    .parameter "setVisibile"

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 439
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 444
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 445
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtn2Visible(Z)V

    goto :goto_0
.end method

.method protected setCategoryRightBtnEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 412
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 417
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 418
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnEnable(Z)V

    goto :goto_0
.end method

.method protected setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 3
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 400
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 405
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 406
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1, p2}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setCategoryRightBtnOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "clickListener"

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 424
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 429
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 430
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected setCategorySecondaryTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 361
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 366
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 367
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setSecondaryTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setCategorySecondaryTitleVisible(Z)V
    .locals 3
    .parameter "setVisible"

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 373
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 378
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 379
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setSecondaryTitleVisible(Z)V

    goto :goto_0
.end method

.method protected setCatgoryMainTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 349
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 354
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 355
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setMainTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected showNewDialog(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 711
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/widget/MusicMaActivity;->showNewDialog(ILandroid/os/Bundle;)V

    .line 712
    return-void
.end method

.method protected showNewDialog(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "id"
    .parameter "args"

    .prologue
    .line 715
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->removeDialog(I)V

    .line 716
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/widget/MusicMaActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 717
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 7
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 305
    const-string v3, "StartNewActivity"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 306
    .local v0, forceStartNewActivity:Z
    if-eqz v0, :cond_0

    .line 307
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 337
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    .line 314
    .local v1, rootParent:Landroid/app/Activity;
    instance-of v3, v1, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v3, :cond_4

    move-object v2, v1

    .line 316
    check-cast v2, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .line 318
    .local v2, tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    const/4 v3, -0x2

    if-ne v3, p2, :cond_1

    .line 319
    invoke-super {p0, p1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 320
    :cond_1
    if-ne v5, p2, :cond_3

    .line 321
    const-string v3, "com.htc.music.PLAYBACK_VIEWER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 322
    invoke-super {p0, p1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 324
    :cond_2
    const-string v3, "ShowActivityTitle"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 331
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 335
    .end local v2           #tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startLocalSearch()V
    .locals 2

    .prologue
    .line 577
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.LOCALSEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 579
    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/widget/MusicMaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 580
    return-void
.end method

.method public startOnlineSearchPage()V
    .locals 2

    .prologue
    .line 583
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.ONLINESEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 584
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 585
    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/widget/MusicMaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 586
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 5
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    const/4 v4, 0x6

    .line 555
    const-string v2, "[MusicMaActivity]"

    const-string v3, "musicMaActivity startSearch...."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-boolean v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    if-nez v2, :cond_0

    .line 574
    :goto_0
    return-void

    .line 558
    :cond_0
    const/4 v1, 0x0

    .line 559
    .local v1, type:I
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 560
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 561
    const-string v2, "InnerActivityType"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 562
    and-int/lit16 v1, v1, 0xfe

    .line 565
    :cond_1
    if-eq v4, v1, :cond_2

    const/4 v2, 0x2

    if-ne v2, v1, :cond_4

    .line 567
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->startLocalSearch()V

    .line 573
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0

    .line 568
    :cond_4
    const/16 v2, 0xa

    if-eq v2, v1, :cond_5

    const/16 v2, 0x8

    if-ne v2, v1, :cond_3

    .line 570
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->startOnlineSearchPage()V

    goto :goto_1
.end method
