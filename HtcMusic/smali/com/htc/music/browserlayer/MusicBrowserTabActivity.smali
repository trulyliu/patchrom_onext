.class public Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
.super Landroid/app/ActivityGroup;
.source "MusicBrowserTabActivity.java"

# interfaces
.implements Lcom/htc/music/widget/IDismissBubbleInterface;
.implements Lcom/htc/music/widget/IMusicTabActivityInterface;
.implements Lcom/htc/music/MiniPlayer$ILoadSuccessListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/MusicBrowserTabActivity$EventReceiver;,
        Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;
    }
.end annotation


# static fields
.field private static final FIRST_CONTENT_INDEX:I = 0x0

.field public static final LAUNCH_PARAMETER_NOT_SAVE_HISTORY:I = 0x3

.field public static final LAUNCH_PARAMETER_REMOVE_PREVIOUS:I = 0x0

.field public static final LAUNCH_PARAMETER_SAVE_HISTORY_INTENT:I = 0x1

.field public static final LAUNCH_PARAMETER_SAVE_HISTORY_VIEW:I = 0x2

.field private static final LOCKSCREEN_START_ACTIVITY:Ljava/lang/String; = "com.htc.music.lockscreen_start"

.field private static final MAX_CONTENT_FRAME:I = 0x1

.field private static final MENU_CATEGORY_SWITCH:I = 0x2712

.field private static final MENU_PLAYER:I = 0x2711

.field private static final MENU_SEARCH:I = 0x2710

.field private static final REMOVE_FIRST_VIEW:I = 0x2ee2

.field private static final TAG:Ljava/lang/String; = "[MusicBrowserTabActivity]"


# instance fields
.field protected mActionBar:Lcom/htc/widget/ActionBarExt;

.field private mActionBarBackClickListener:Landroid/view/View$OnClickListener;

.field protected mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

.field private mActionBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

.field private mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

.field private mActivityResumed:Z

.field private mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field public mCategoryRightClickAction:Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

.field protected mContentView:Landroid/widget/FrameLayout;

.field private mDestroyed:Z

.field private mErrorView:Landroid/view/View;

.field private mEventReceiver:Landroid/content/BroadcastReceiver;

.field protected mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

.field private mFromCreate:Z

.field private mHandlingCreateOptionsMenu:Z

.field private mHandlingOptionsItemSelected:Z

.field private mHandlingPrepareOptionsMenu:Z

.field protected mHistoryManager:Lcom/htc/music/util/HistoryManager;

.field private mInternalEnough:Z

.field private mMenu:Landroid/view/Menu;

.field private mMimeType:Ljava/lang/String;

.field protected mMiniPlayer:Lcom/htc/music/MiniPlayer;

.field public mOnlineSearchAction:Landroid/view/View$OnClickListener;

.field private mOrientation:I

.field public mSearchAction:Landroid/view/View$OnClickListener;

.field private mSourceItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 76
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    .line 77
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 79
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    .line 80
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 82
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    .line 83
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 85
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    .line 91
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    .line 93
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 95
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    .line 101
    iput v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    .line 107
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    .line 109
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActivityResumed:Z

    .line 261
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mUIHandler:Landroid/os/Handler;

    .line 427
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    .line 482
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    .line 484
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingCreateOptionsMenu:Z

    .line 547
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingPrepareOptionsMenu:Z

    .line 590
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    .line 872
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mDestroyed:Z

    .line 1102
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    .line 1461
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mFromCreate:Z

    .line 1572
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$3;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarBackClickListener:Landroid/view/View$OnClickListener;

    .line 1581
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$4;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    .line 1608
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryRightClickAction:Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;

    .line 1643
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$5;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSearchAction:Landroid/view/View$OnClickListener;

    .line 1649
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$6;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOnlineSearchAction:Landroid/view/View$OnClickListener;

    .line 1712
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 1714
    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startOnlineSearchPage()V

    return-void
.end method

.method private inflateUI()V
    .locals 6

    .prologue
    .line 279
    iget-boolean v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mDestroyed:Z

    if-eqz v3, :cond_0

    .line 304
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 282
    const-string v3, "[MusicBrowserTabActivity]"

    const-string v4, "somebody force launch inner page before we do initial launch!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v3}, Lcom/htc/music/util/HistoryManager;->clearHistory()V

    .line 287
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 288
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v3, ""

    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 289
    :cond_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v3, p0, v4, v5}, Lcom/htc/music/util/HistoryManager;->restoreHistoryInstanceState(Landroid/content/Context;Lcom/htc/music/widget/SourceSwitcherAdapter;Lcom/htc/music/widget/CategorySwitcherAdapter;)V

    .line 290
    const/4 v1, 0x0

    .line 291
    .local v1, lastActivityItem:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v3}, Lcom/htc/music/util/HistoryManager;->getLastHistory()Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-result-object v1

    .line 292
    if-eqz v1, :cond_3

    .line 293
    iget-object v3, v1, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentIntent:Landroid/content/Intent;

    const/4 v5, 0x3

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0

    .line 295
    :cond_3
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-virtual {v3, p0, v4}, Lcom/htc/music/util/HistoryManager;->getLastSourceItem(Landroid/content/Context;Lcom/htc/music/widget/SourceSwitcherAdapter;)Lcom/htc/music/util/SourceItem;

    move-result-object v2

    .line 296
    .local v2, selectedSourceItem:Lcom/htc/music/util/SourceItem;
    iget-object v3, v2, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v4, v2, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v4}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 302
    .end local v1           #lastActivityItem:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .end local v2           #selectedSourceItem:Lcom/htc/music/util/SourceItem;
    :cond_4
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startIndicateActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initTitle()V
    .locals 6

    .prologue
    .line 307
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-eqz v1, :cond_0

    .line 341
    :goto_0
    return-void

    .line 309
    :cond_0
    new-instance v1, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    .line 310
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$2;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$2;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 323
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isLandingPageEnable()Z

    move-result v0

    .line 324
    .local v0, enableHtcListen:Z
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v1, v0}, Lcom/htc/music/util/HistoryManager;->enableHtcListen(Z)V

    .line 326
    new-instance v1, Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-direct {v1, p0}, Lcom/htc/music/widget/CategorySwitcherAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    .line 327
    new-instance v1, Lcom/htc/music/widget/DismissBubbleItemClickListener;

    new-instance v2, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;-><init>(Landroid/content/Context;Lcom/htc/music/widget/CategorySwitcherAdapter;Lcom/htc/music/util/HistoryManager;)V

    invoke-direct {v1, p0, v2}, Lcom/htc/music/widget/DismissBubbleItemClickListener;-><init>(Lcom/htc/music/widget/IDismissBubbleInterface;Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 334
    new-instance v1, Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-direct {v1, p0, v0}, Lcom/htc/music/widget/SourceSwitcherAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    .line 335
    new-instance v1, Lcom/htc/music/widget/DismissBubbleItemClickListener;

    new-instance v2, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;-><init>(Landroid/content/Context;Lcom/htc/music/widget/SourceSwitcherAdapter;Lcom/htc/music/widget/CategorySwitcherAdapter;Lcom/htc/music/util/HistoryManager;)V

    invoke-direct {v1, p0, v2}, Lcom/htc/music/widget/DismissBubbleItemClickListener;-><init>(Lcom/htc/music/widget/IDismissBubbleInterface;Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    goto :goto_0
.end method

.method private launchGlancePage()V
    .locals 5

    .prologue
    .line 1600
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1601
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "showEmptyQueue"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1602
    const-string v1, "from-lockscreen"

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "from-lockscreen"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1604
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 1605
    return-void
.end method

.method private resetMiniPlayer(Z)V
    .locals 3
    .parameter "isHorizontal"

    .prologue
    const v2, 0x7f070018

    .line 388
    if-eqz p1, :cond_2

    .line 389
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v1, :cond_1

    .line 390
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 392
    .local v0, container:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 421
    .end local v0           #container:Landroid/widget/LinearLayout;
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-static {p0}, Lcom/htc/music/MiniPlayer$MiniPlayerCreator;->createMiniPlayer(Landroid/app/Activity;)Lcom/htc/music/MiniPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    .line 401
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->isActivityResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1, p0}, Lcom/htc/music/MiniPlayer;->addLoadSuccessListener(Lcom/htc/music/MiniPlayer$ILoadSuccessListener;)V

    .line 403
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->startMonitor()V

    goto :goto_0

    .line 407
    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-nez v1, :cond_3

    .line 408
    invoke-static {p0}, Lcom/htc/music/MiniPlayer$MiniPlayerCreator;->createMiniPlayer(Landroid/app/Activity;)Lcom/htc/music/MiniPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    .line 410
    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->inflateView()V

    .line 412
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 414
    .restart local v0       #container:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 416
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->isActivityResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1, p0}, Lcom/htc/music/MiniPlayer;->addLoadSuccessListener(Lcom/htc/music/MiniPlayer$ILoadSuccessListener;)V

    .line 418
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->startMonitor()V

    goto :goto_0
.end method

.method private setDropDownEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 659
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    .line 671
    :goto_0
    return-void

    .line 663
    :cond_0
    if-eqz p1, :cond_1

    .line 664
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarDropDown;->setClickable(Z)V

    .line 665
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarDropDown;->setArrowEnabled(Z)V

    goto :goto_0

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setClickable(Z)V

    .line 668
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setArrowEnabled(Z)V

    .line 669
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->dismiss()V

    goto :goto_0
.end method

.method private setInternalStorageErrorVisible(Z)V
    .locals 8
    .parameter "visible"

    .prologue
    .line 430
    if-eqz p1, :cond_3

    .line 431
    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    if-nez v5, :cond_1

    .line 432
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 433
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v5, 0x7f030043

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    .line 434
    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    const v6, 0x7f070086

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 435
    .local v3, sdErrorLayout:Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 436
    const-string v5, "common_app_bkg"

    const v6, 0x2080001

    invoke-static {p0, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 439
    :cond_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    const v6, 0x7f07007c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 440
    .local v0, errorMessage:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 441
    const v5, 0x7f06003a

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 445
    .end local v0           #errorMessage:Landroid/widget/TextView;
    .end local v1           #inflator:Landroid/view/LayoutInflater;
    .end local v3           #sdErrorLayout:Landroid/view/ViewGroup;
    :cond_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->changeContentView(Landroid/view/View;)V

    .line 446
    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 466
    :goto_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    if-eqz v5, :cond_2

    .line 467
    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->onPrepareInnerOptionsMenu(Landroid/view/Menu;)Z

    .line 470
    :cond_2
    return-void

    .line 451
    :cond_3
    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v5}, Lcom/htc/music/util/HistoryManager;->getLastHistory()Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-result-object v2

    .line 452
    .local v2, item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    if-eqz v2, :cond_4

    .line 453
    iget-object v5, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    iget-object v6, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentIntent:Landroid/content/Intent;

    const/4 v7, 0x3

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0

    .line 455
    :cond_4
    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    iget-object v6, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-virtual {v5, p0, v6}, Lcom/htc/music/util/HistoryManager;->getLastSourceItem(Landroid/content/Context;Lcom/htc/music/widget/SourceSwitcherAdapter;)Lcom/htc/music/util/SourceItem;

    move-result-object v4

    .line 456
    .local v4, selectedSourceItem:Lcom/htc/music/util/SourceItem;
    iget-object v5, v4, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v6, v4, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v6}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setTitleStyle(ILjava/lang/String;Z)V
    .locals 3
    .parameter "type"
    .parameter "tag"
    .parameter "forceDisableDropDown"

    .prologue
    .line 681
    and-int/lit16 v0, p1, 0xfe

    .line 682
    .local v0, iType:I
    and-int/lit8 v2, p1, 0x1

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 683
    .local v1, manualMainTitle:Z
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 710
    :goto_1
    :pswitch_0
    return-void

    .line 682
    .end local v1           #manualMainTitle:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 686
    .restart local v1       #manualMainTitle:Z
    :pswitch_1
    invoke-virtual {p0, v1, p2, p3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategorySwitcherStyleTitle(ZLjava/lang/String;Z)V

    goto :goto_1

    .line 690
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setSourceSwitcherStyleTitle(Z)V

    goto :goto_1

    .line 694
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDLNASourceSwitcherStyleTitle(Z)V

    goto :goto_1

    .line 698
    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDLNASwitchStyleTitle(Z)V

    goto :goto_1

    .line 702
    :pswitch_5
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setStoreSwitchStyleTitle(Z)V

    goto :goto_1

    .line 683
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private startIndicateActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 7
    .parameter "mimeType"
    .parameter "intent"

    .prologue
    .line 1426
    if-nez p1, :cond_1

    .line 1457
    :cond_0
    :goto_0
    return-void

    .line 1427
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    if-eqz v1, :cond_0

    .line 1429
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isLandingPageEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1430
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v1}, Lcom/htc/music/util/HistoryManager;->getHistorySize()I

    move-result v1

    if-nez v1, :cond_2

    .line 1431
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    const-string v2, "ListenBrowseTabPlugin"

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/SourceSwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v6

    .line 1432
    .local v6, item:Lcom/htc/music/util/SourceItem;
    new-instance v0, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    iget-object v1, v6, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v2, v6, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/util/HistoryManager$ActivityHistory;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 1435
    .local v0, history:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v1, v0}, Lcom/htc/music/util/HistoryManager;->addHistory(Lcom/htc/music/util/HistoryManager$ActivityHistory;)V

    .line 1439
    .end local v0           #history:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .end local v6           #item:Lcom/htc/music/util/SourceItem;
    :cond_2
    const-string v1, "com.htc.media/dlna"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1440
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    const-string v2, "DlnaBrowserTabPlugin"

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/SourceSwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v6

    .line 1441
    .restart local v6       #item:Lcom/htc/music/util/SourceItem;
    iget-object v1, v6, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v2, v6, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 1443
    .end local v6           #item:Lcom/htc/music/util/SourceItem;
    :cond_3
    const/4 v6, 0x0

    .line 1444
    .restart local v6       #item:Lcom/htc/music/util/SourceItem;
    const-string v1, "com.htc.media/album"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1445
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    const-string v2, "AlbumBrowserTabPlugin"

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v6

    .line 1452
    :goto_1
    iget-object v1, v6, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v2, "LaunchFromSwitcher"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1453
    iget-object v1, v6, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v2, v6, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 1446
    :cond_4
    const-string v1, "com.htc.media/track"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1447
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    const-string v2, "TrackBrowserTabPlugin"

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v6

    goto :goto_1

    .line 1449
    :cond_5
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    const-string v2, "AlbumBrowserTabPlugin"

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v6

    goto :goto_1
.end method

.method private startListenStore()V
    .locals 4

    .prologue
    .line 1560
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.music.online.strorefont"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1561
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "InnerActivityType"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1564
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1569
    :goto_0
    return-void

    .line 1565
    :catch_0
    move-exception v0

    .line 1566
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "[MusicBrowserTabActivity]"

    const-string v3, "Opps, we can\'t launch store activity!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startOnlineSearchPage()V
    .locals 2

    .prologue
    .line 1656
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.ONLINESEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1657
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1658
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 1659
    return-void
.end method


# virtual methods
.method protected changeContentView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 1376
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 1378
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 1379
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1410
    :cond_0
    :goto_0
    return-void

    .line 1380
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1381
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1387
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1388
    const-string v1, "[MusicBrowserTabActivity]"

    const-string v3, "changeContentView with view parent is not null!!"

    invoke-static {v1, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1392
    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 1393
    .local v0, removeFirst:Z
    :goto_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1396
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 1398
    if-eqz v0, :cond_0

    .line 1399
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mUIHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    .line 1400
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x2ee2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .end local v0           #removeFirst:Z
    :cond_4
    move v0, v2

    .line 1392
    goto :goto_1

    .line 1402
    .restart local v0       #removeFirst:Z
    :cond_5
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1404
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeViewAt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1405
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public disableCategoryDropDown()V
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 1170
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    .line 1172
    :cond_0
    return-void
.end method

.method public dismissPopupBubble()V
    .locals 1

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 1550
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->dismiss()V

    .line 1553
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1680
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v2, :cond_0

    .line 1681
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v2, p1}, Lcom/htc/music/MiniPlayer;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1682
    .local v1, result:Z
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1689
    .end local v1           #result:Z
    :goto_0
    return v2

    .line 1685
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1686
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 1687
    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 1689
    :cond_1
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1362
    invoke-super {p0}, Landroid/app/ActivityGroup;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1363
    .local v2, currentActivity:Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 1372
    .end local v2           #currentActivity:Landroid/app/Activity;
    :goto_0
    return-object v2

    .line 1365
    .restart local v2       #currentActivity:Landroid/app/Activity;
    :cond_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_4

    .line 1366
    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1367
    .local v1, childView:Landroid/view/View;
    if-nez v1, :cond_1

    move-object v2, v3

    goto :goto_0

    .line 1368
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1369
    .local v0, childContext:Landroid/content/Context;
    if-eqz v0, :cond_2

    if-ne v0, p0, :cond_3

    :cond_2
    move-object v2, v3

    goto :goto_0

    .line 1370
    :cond_3
    check-cast v0, Landroid/app/Activity;

    .end local v0           #childContext:Landroid/content/Context;
    move-object v2, v0

    goto :goto_0

    .end local v1           #childView:Landroid/view/View;
    :cond_4
    move-object v2, v3

    .line 1372
    goto :goto_0
.end method

.method public getLastCategoryIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1703
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    if-eqz v1, :cond_0

    .line 1704
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v1, p0, v2}, Lcom/htc/music/util/HistoryManager;->getLastCategoryItem(Landroid/content/Context;Lcom/htc/music/widget/CategorySwitcherAdapter;)Lcom/htc/music/util/SourceItem;

    move-result-object v0

    .line 1705
    .local v0, selectedCategoryItem:Lcom/htc/music/util/SourceItem;
    iget-object v1, v0, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    .line 1709
    .end local v0           #selectedCategoryItem:Lcom/htc/music/util/SourceItem;
    :goto_0
    return-object v1

    .line 1708
    :cond_0
    const-string v1, "[MusicBrowserTabActivity]"

    const-string v2, "can\'t get last category item!! should never happen!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    goto :goto_0
.end method

.method protected inflateTitle()V
    .locals 4

    .prologue
    .line 344
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-nez v2, :cond_0

    .line 345
    new-instance v2, Lcom/htc/widget/ActionBarDropDown;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    .line 347
    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v2, :cond_1

    .line 348
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 351
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarDropDown;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 352
    .local v1, parent:Landroid/view/ViewParent;
    if-nez v1, :cond_3

    .line 354
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .end local v1           #parent:Landroid/view/ViewParent;
    :cond_2
    :goto_0
    return-void

    .line 355
    .restart local v1       #parent:Landroid/view/ViewParent;
    :catch_0
    move-exception v0

    .line 356
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 358
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_3
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eq v2, v1, :cond_2

    .line 359
    const-string v2, "[MusicBrowserTabActivity]"

    const-string v3, "mActionBarCustomContainer already has a parent and its not actionBar!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #parent:Landroid/view/ViewParent;
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 362
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 363
    :catch_1
    move-exception v0

    .line 364
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected initMiniPlayer()V
    .locals 2

    .prologue
    .line 371
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->resetMiniPlayer(Z)V

    .line 372
    return-void

    .line 371
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isActivityResumed()Z
    .locals 1

    .prologue
    .line 1694
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActivityResumed:Z

    return v0
.end method

.method public loadSuccessChange(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 377
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    const/16 v2, 0x2711

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 379
    .local v0, player:Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 380
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 385
    .end local v0           #player:Landroid/view/MenuItem;
    :cond_0
    :goto_0
    return-void

    .line 382
    .restart local v0       #player:Landroid/view/MenuItem;
    :cond_1
    const-string v1, "[MusicBrowserTabActivity]"

    const-string v2, "mini player is null when reset menu at rotate to landscape mode!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1114
    const v0, 0xc351

    if-ne p1, v0, :cond_0

    .line 1115
    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startListenStore()V

    .line 1123
    :goto_0
    return-void

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v0, :cond_1

    .line 1120
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/widget/MusicMaActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1122
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    .line 1129
    const/4 v1, 0x0

    .line 1130
    .local v1, childhandled:Z
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1131
    .local v0, child:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/app/ActivityGroup;

    if-eqz v3, :cond_0

    .line 1132
    check-cast v0, Landroid/app/ActivityGroup;

    .end local v0           #child:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/ActivityGroup;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1135
    .restart local v0       #child:Landroid/app/Activity;
    :cond_0
    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v3, :cond_1

    .line 1136
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    .end local v0           #child:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/htc/music/widget/MusicMaActivity;->onMaBackPressed()Z

    move-result v1

    .line 1139
    :cond_1
    if-eqz v1, :cond_2

    .line 1157
    :goto_0
    return-void

    .line 1141
    :cond_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v3}, Lcom/htc/music/util/HistoryManager;->getHistorySize()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 1142
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v3}, Lcom/htc/music/util/HistoryManager;->getLastHistory()Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-result-object v2

    .line 1148
    .local v2, lastActivityHisory:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->previousIntent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    .line 1149
    iget-object v3, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->previousTag:Ljava/lang/String;

    iget-object v4, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->previousIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0

    .line 1151
    :cond_3
    const-string v3, "[MusicBrowserTabActivity]"

    const-string v4, "intent and cached view are null!! should never happen!! "

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1155
    .end local v2           #lastActivityHisory:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_4
    invoke-super {p0}, Landroid/app/ActivityGroup;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 939
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 940
    iget v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    .line 957
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    .line 946
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    if-eqz v1, :cond_2

    .line 947
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 950
    :cond_2
    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->resetMiniPlayer(Z)V

    .line 953
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 954
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 950
    .end local v0           #activity:Landroid/app/Activity;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 179
    const-string v3, "[MusicBrowserTabActivity]"

    const-string v4, "tab oncreate"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 181
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setVolumeControlStream(I)V

    .line 183
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 185
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 188
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_0

    .line 190
    new-instance v3, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$EventReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$EventReceiver;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 191
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "com.htc.music.lockscreen_start"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    const-string v3, "from-lockscreen"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 197
    .local v2, isFromLockscreen:Z
    const-string v3, "[MusicBrowserTabActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onCreate] bp. value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    if-eqz v2, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->isBypassPincodeSettingsEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 200
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->disableKeyguard(Landroid/app/Activity;)V

    .line 207
    .end local v2           #isFromLockscreen:Z
    :cond_1
    :goto_0
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->requestWindowFeature(I)Z

    .line 209
    if-eqz p1, :cond_4

    .line 219
    :goto_1
    const v3, 0x7f030005

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setContentView(I)V

    .line 224
    const v3, 0x7f070019

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 225
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    .line 226
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    const-string v4, "common_app_bkg"

    const v5, 0x2080001

    invoke-static {p0, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 229
    :cond_2
    new-instance v3, Lcom/htc/music/util/HistoryManager;

    invoke-direct {v3, p0}, Lcom/htc/music/util/HistoryManager;-><init>(Landroid/app/ActivityGroup;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    .line 231
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    .line 233
    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->initTitle()V

    .line 234
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->inflateTitle()V

    .line 235
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->initMiniPlayer()V

    .line 239
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    .line 240
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mFromCreate:Z

    .line 246
    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->inflateUI()V

    .line 248
    return-void

    .line 202
    .restart local v2       #isFromLockscreen:Z
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->enableKeyguardNow(Landroid/content/Context;)V

    goto :goto_0

    .line 216
    .end local v2           #isFromLockscreen:Z
    :cond_4
    invoke-virtual {v1, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "params"

    .prologue
    .line 646
    packed-switch p1, :pswitch_data_0

    .line 651
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 648
    :pswitch_0
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 646
    nop

    :pswitch_data_0
    .packed-switch 0xaae61
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const v5, 0x204026d

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 487
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingCreateOptionsMenu:Z

    if-eqz v0, :cond_0

    .line 527
    :goto_0
    return v2

    .line 488
    :cond_0
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingCreateOptionsMenu:Z

    .line 491
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    if-eq v0, p1, :cond_1

    .line 492
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "not same menu panel!! return directly"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 498
    iput-object p1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    .line 503
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    const/16 v1, 0x2710

    invoke-interface {v0, v2, v1, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20800c2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 509
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    const v1, 0xc350

    invoke-interface {v0, v2, v1, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 525
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->onPrepareInnerOptionsMenu(Landroid/view/Menu;)Z

    .line 526
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingCreateOptionsMenu:Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 876
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mDestroyed:Z

    .line 877
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 885
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    .line 886
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0, p0}, Lcom/htc/music/util/HistoryManager;->saveHistoryInstanceState(Landroid/content/Context;)V

    .line 887
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager;->clearHistory()V

    .line 889
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MiniPlayer;->release()V

    .line 891
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    if-eqz v0, :cond_1

    .line 895
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-virtual {v0}, Lcom/htc/music/widget/SourceSwitcherAdapter;->releaseAdapter()V

    .line 896
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    .line 899
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    if-eqz v0, :cond_2

    .line 900
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v0}, Lcom/htc/music/widget/CategorySwitcherAdapter;->releaseAdapter()V

    .line 901
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    .line 904
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 905
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 909
    :cond_3
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 911
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 912
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 913
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 916
    :cond_4
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    .line 115
    const-string v6, "[MusicBrowserTabActivity]"

    const-string v7, "tab receive new intent"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onNewIntent(Landroid/content/Intent;)V

    .line 119
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 120
    const-string v6, "from-lockscreen"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 122
    .local v2, isFromLockscreen:Z
    const-string v6, "[MusicBrowserTabActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onNewIntent] bp. value="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 126
    .local v0, current:Landroid/app/Activity;
    if-eqz v0, :cond_5

    instance-of v6, v0, Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v6, :cond_5

    move-object v4, v0

    .line 127
    check-cast v4, Lcom/htc/music/widget/MusicMaActivity;

    .line 128
    .local v4, maActivity:Lcom/htc/music/widget/MusicMaActivity;
    invoke-virtual {v4}, Lcom/htc/music/widget/MusicMaActivity;->isBypass()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->isBypassPincodeSettingsEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 130
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->disableKeyguard(Landroid/app/Activity;)V

    .line 140
    .end local v0           #current:Landroid/app/Activity;
    .end local v2           #isFromLockscreen:Z
    .end local v4           #maActivity:Lcom/htc/music/widget/MusicMaActivity;
    :cond_0
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    .line 142
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    .line 143
    iput-boolean v9, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mFromCreate:Z

    .line 145
    iget-object v6, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v6, :cond_1

    .line 146
    iget-object v6, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v6}, Lcom/htc/music/MiniPlayer;->inflateView()V

    .line 149
    :cond_1
    iget-object v6, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    if-eqz v6, :cond_2

    const-string v6, ""

    iget-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 151
    .local v1, currentActivity:Landroid/app/Activity;
    if-nez v1, :cond_7

    .line 152
    iget-object v6, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v6}, Lcom/htc/music/util/HistoryManager;->getLastHistory()Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-result-object v3

    .line 153
    .local v3, item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    if-eqz v3, :cond_6

    .line 154
    iget-object v6, v3, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    iget-object v7, v3, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentIntent:Landroid/content/Intent;

    const/4 v8, 0x3

    invoke-virtual {p0, v6, v7, v8}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V

    .line 175
    .end local v1           #currentActivity:Landroid/app/Activity;
    .end local v3           #item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_3
    :goto_1
    return-void

    .line 132
    .restart local v0       #current:Landroid/app/Activity;
    .restart local v2       #isFromLockscreen:Z
    .restart local v4       #maActivity:Lcom/htc/music/widget/MusicMaActivity;
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->enableKeyguardNow(Landroid/content/Context;)V

    goto :goto_0

    .line 135
    .end local v4           #maActivity:Lcom/htc/music/widget/MusicMaActivity;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->enableKeyguardNow(Landroid/content/Context;)V

    goto :goto_0

    .line 156
    .end local v0           #current:Landroid/app/Activity;
    .end local v2           #isFromLockscreen:Z
    .restart local v1       #currentActivity:Landroid/app/Activity;
    .restart local v3       #item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_6
    iget-object v6, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    iget-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-virtual {v6, p0, v7}, Lcom/htc/music/util/HistoryManager;->getLastSourceItem(Landroid/content/Context;Lcom/htc/music/widget/SourceSwitcherAdapter;)Lcom/htc/music/util/SourceItem;

    move-result-object v5

    .line 157
    .local v5, selectedSourceItem:Lcom/htc/music/util/SourceItem;
    iget-object v6, v5, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v7, v5, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v6, v7}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    .line 163
    .end local v3           #item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .end local v5           #selectedSourceItem:Lcom/htc/music/util/SourceItem;
    :cond_7
    iget-boolean v6, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    if-nez v6, :cond_3

    .line 164
    invoke-direct {p0, v9}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setInternalStorageErrorVisible(Z)V

    goto :goto_1

    .line 171
    .end local v1           #currentActivity:Landroid/app/Activity;
    :cond_8
    iget-object v6, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v6}, Lcom/htc/music/util/HistoryManager;->clearHistory()V

    .line 173
    iget-object v6, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    invoke-direct {p0, v6, p1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startIndicateActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 593
    if-nez p1, :cond_0

    move v3, v4

    .line 638
    :goto_0
    return v3

    .line 594
    :cond_0
    iget-boolean v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    if-ne v3, v5, :cond_1

    move v3, v4

    goto :goto_0

    .line 596
    :cond_1
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    .line 597
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 598
    .local v2, itemId:I
    const/16 v5, 0x2711

    if-eq v2, v5, :cond_2

    .line 599
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->enableKeyguard(Landroid/app/Activity;)V

    .line 601
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 632
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 633
    .local v1, currentActivity:Landroid/app/Activity;
    const/4 v3, 0x0

    .line 634
    .local v3, result:Z
    if-eqz v1, :cond_3

    .line 635
    invoke-virtual {v1, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 637
    :cond_3
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    goto :goto_0

    .line 603
    .end local v1           #currentActivity:Landroid/app/Activity;
    .end local v3           #result:Z
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 604
    .local v0, currectActivity:Landroid/app/Activity;
    if-eqz v0, :cond_4

    .line 605
    const-string v5, ""

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v4, v6, v4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 607
    :cond_4
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    goto :goto_0

    .line 611
    .end local v0           #currectActivity:Landroid/app/Activity;
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->launchGlancePage()V

    .line 612
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    goto :goto_0

    .line 601
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 7

    .prologue
    .line 1492
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 1493
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActivityResumed:Z

    .line 1501
    const-string v4, "[MusicBrowserTabActivity]"

    const-string v5, "onEvent: getSystemService(Context.POWER_SERVICE) +"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1503
    .local v1, pm:Landroid/os/PowerManager;
    const-string v4, "[MusicBrowserTabActivity]"

    const-string v5, "onEvent: getSystemService(Context.POWER_SERVICE) - isScreenOn +"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 1505
    .local v0, isScreenOn:Z
    const-string v4, "[MusicBrowserTabActivity]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEvent: isScreenOn - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    if-nez v0, :cond_0

    .line 1507
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1508
    .local v2, win:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1509
    .local v3, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v5, -0x80001

    and-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1510
    const-string v4, "[MusicBrowserTabActivity]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Bypass][onPause] Set winParams.flags="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1517
    .end local v2           #win:Landroid/view/Window;
    .end local v3           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v4, :cond_1

    .line 1518
    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v4}, Lcom/htc/widget/ActionBarDropDown;->dismiss()V

    .line 1520
    :cond_1
    return-void
.end method

.method protected onPrepareInnerOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 532
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingCreateOptionsMenu:Z

    .line 533
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeGroup(I)V

    .line 535
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 536
    .local v0, currentActivity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 537
    const v1, 0xc350

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 539
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 540
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 542
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingCreateOptionsMenu:Z

    .line 544
    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x2

    const/16 v3, 0x2711

    const/4 v4, 0x1

    .line 550
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingPrepareOptionsMenu:Z

    if-ne v4, v2, :cond_1

    .line 587
    :cond_0
    :goto_0
    return v4

    .line 551
    :cond_1
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingCreateOptionsMenu:Z

    if-eq v4, v2, :cond_0

    .line 553
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingPrepareOptionsMenu:Z

    .line 557
    iget v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    if-ne v5, v2, :cond_4

    .line 558
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    .line 560
    const v2, 0x7f0600c9

    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020025

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 562
    .local v1, player:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v2, :cond_3

    .line 563
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v2}, Lcom/htc/music/MiniPlayer;->isLoadTrackSuccess()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 581
    .end local v1           #player:Landroid/view/MenuItem;
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 582
    .local v0, currentActivity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 584
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 586
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingPrepareOptionsMenu:Z

    goto :goto_0

    .line 565
    .end local v0           #currentActivity:Landroid/app/Activity;
    .restart local v1       #player:Landroid/view/MenuItem;
    :cond_3
    const-string v2, "[MusicBrowserTabActivity]"

    const-string v3, "mini player is null when reset menu at rotate to landscape mode!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 569
    .end local v1           #player:Landroid/view/MenuItem;
    :cond_4
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1672
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "tab onRestoreInstanceState"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1674
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1465
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActivityResumed:Z

    .line 1468
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 1470
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    if-eqz v3, :cond_0

    .line 1471
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1474
    :cond_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v3, :cond_1

    .line 1475
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v3, p0}, Lcom/htc/music/MiniPlayer;->addLoadSuccessListener(Lcom/htc/music/MiniPlayer$ILoadSuccessListener;)V

    .line 1476
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MiniPlayer;->startMonitor()V

    .line 1479
    :cond_1
    iget-boolean v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mFromCreate:Z

    if-nez v3, :cond_2

    .line 1480
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    .line 1481
    .local v0, mLastInternalEnough:Z
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    .line 1482
    iget-boolean v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    if-eq v0, v3, :cond_2

    .line 1484
    iget-boolean v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    if-nez v3, :cond_3

    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setInternalStorageErrorVisible(Z)V

    .line 1487
    .end local v0           #mLastInternalEnough:Z
    :cond_2
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mFromCreate:Z

    .line 1488
    return-void

    .restart local v0       #mLastInternalEnough:Z
    :cond_3
    move v1, v2

    .line 1484
    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1665
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "tab onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1667
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0, p0}, Lcom/htc/music/util/HistoryManager;->saveHistoryInstanceState(Landroid/content/Context;)V

    .line 1668
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 252
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStart()V

    .line 257
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1525
    :try_start_0
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1532
    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v1, :cond_0

    .line 1533
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->removeLoadSuccessListener()V

    .line 1534
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->stopMonitor()V

    .line 1539
    :cond_0
    return-void

    .line 1526
    :catch_0
    move-exception v0

    .line 1527
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setCategoryLeftBtnEnable(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 1243
    :cond_0
    return-void
.end method

.method public setCategoryLeftBtnImage(II)V
    .locals 0
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 1260
    return-void
.end method

.method public setCategoryLeftBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 1267
    return-void
.end method

.method public setCategoryLeftBtnOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 1273
    return-void
.end method

.method public setCategoryLeftBtnVisible(Z)V
    .locals 1
    .parameter "setVisibile"

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 1247
    if-eqz p1, :cond_1

    .line 1248
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 1253
    :cond_0
    :goto_0
    return-void

    .line 1250
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    goto :goto_0
.end method

.method public setCategoryProgressVisible(Z)V
    .locals 2
    .parameter "setVisible"

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 1229
    if-eqz p1, :cond_1

    .line 1230
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    .line 1235
    :cond_0
    :goto_0
    return-void

    .line 1232
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method public setCategoryRightBtn2Enable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1326
    return-void
.end method

.method public setCategoryRightBtn2Image(II)V
    .locals 0
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 1343
    return-void
.end method

.method public setCategoryRightBtn2Image(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 1350
    return-void
.end method

.method public setCategoryRightBtn2OnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 1356
    return-void
.end method

.method public setCategoryRightBtn2Visible(Z)V
    .locals 0
    .parameter "setVisibile"

    .prologue
    .line 1336
    return-void
.end method

.method public setCategoryRightBtnEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1294
    return-void
.end method

.method public setCategoryRightBtnImage(II)V
    .locals 0
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 1305
    return-void
.end method

.method public setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 1312
    return-void
.end method

.method public setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 1318
    return-void
.end method

.method public setCategoryRightBtnVisible(Z)V
    .locals 0
    .parameter "setVisibile"

    .prologue
    .line 1298
    return-void
.end method

.method public setCategorySwitcherStyleTitle(ZLjava/lang/String;Z)V
    .locals 4
    .parameter "manualMainTitle"
    .parameter "tag"
    .parameter "forceDisableDropDown"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 772
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "setCategorySwitcherStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 782
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isLandingPageEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 783
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager;->getHistorySize()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 784
    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    .line 811
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 812
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager;->getHistorySize()I

    move-result v0

    if-le v0, v3, :cond_7

    .line 813
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 814
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 820
    :cond_1
    :goto_1
    return-void

    .line 786
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 787
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 788
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 789
    if-eqz p3, :cond_3

    .line 790
    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    goto :goto_0

    .line 792
    :cond_3
    invoke-direct {p0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    goto :goto_0

    .line 796
    :cond_4
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager;->getHistorySize()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 797
    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    goto :goto_0

    .line 799
    :cond_5
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 800
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 801
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 802
    if-eqz p3, :cond_6

    .line 803
    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    goto :goto_0

    .line 805
    :cond_6
    invoke-direct {p0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    goto :goto_0

    .line 816
    :cond_7
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    goto :goto_1
.end method

.method public setDLNASourceSwitcherStyleTitle(Z)V
    .locals 2
    .parameter "manualMainTitle"

    .prologue
    .line 715
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setSourceSwitcherStyleTitle(Z)V

    .line 717
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 718
    if-nez p1, :cond_0

    .line 719
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 724
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 725
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    :cond_1
    return-void
.end method

.method public setDLNASwitchStyleTitle(Z)V
    .locals 2
    .parameter "manualMainTitle"

    .prologue
    .line 847
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "setDLNASwitchStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_1

    .line 855
    if-nez p1, :cond_0

    .line 856
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 858
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_2

    .line 863
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 864
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 867
    :cond_2
    return-void
.end method

.method public setMainTitle(I)V
    .locals 1
    .parameter "mainTitleRes"

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 1180
    :cond_0
    return-void
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "mainTitle"

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_1

    .line 1184
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1185
    :cond_0
    const-string v0, "[MusicBrowserTabActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "we\'ll keep otiginal title sue to somebody set main title to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    :cond_1
    :goto_0
    return-void

    .line 1188
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnlineSearchRightBtn()V
    .locals 0

    .prologue
    .line 1283
    return-void
.end method

.method public setSearchRightBtn()V
    .locals 0

    .prologue
    .line 1279
    return-void
.end method

.method public setSecondaryTitle(I)V
    .locals 2
    .parameter "secondaryTitleRes"

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 1195
    if-lez p1, :cond_1

    .line 1196
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(I)V

    .line 1197
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 1199
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "secondaryTitle"

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 1206
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1207
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(Ljava/lang/String;)V

    .line 1208
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1210
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryTitleVisible(Z)V
    .locals 2
    .parameter "setVisible"

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 1217
    if-eqz p1, :cond_1

    .line 1218
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 1223
    :cond_0
    :goto_0
    return-void

    .line 1220
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method public setSourceSwitcherStyleTitle(Z)V
    .locals 3
    .parameter "manualMainTitle"

    .prologue
    const/4 v2, 0x0

    .line 733
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "setSourceSwitcherStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isLandingPageEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 736
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 738
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 739
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 740
    if-nez p1, :cond_0

    .line 741
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const v1, 0x7f060053

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 742
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 744
    :cond_0
    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    .line 764
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_2

    .line 766
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 769
    :cond_2
    return-void

    .line 747
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 749
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 750
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    if-nez p1, :cond_4

    .line 752
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const v1, 0x7f0600c0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 754
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    goto :goto_0
.end method

.method public setStoreRightBtn()V
    .locals 0

    .prologue
    .line 1287
    return-void
.end method

.method public setStoreSwitchStyleTitle(Z)V
    .locals 2
    .parameter "manualMainTitle"

    .prologue
    .line 823
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "setStoreSwitchStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_1

    .line 832
    if-nez p1, :cond_0

    .line 833
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const v1, 0x7f0600bf

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 837
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    .line 840
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_2

    .line 841
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 842
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 844
    :cond_2
    return-void
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .parameter "tag"
    .parameter "intent"

    .prologue
    .line 973
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V

    .line 974
    return-void
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 1
    .parameter "tag"
    .parameter "intent"
    .parameter "saveHistory"

    .prologue
    .line 978
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;IZ)V

    .line 979
    return-void
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;IZ)V
    .locals 17
    .parameter "tag"
    .parameter "launchIntent"
    .parameter "saveHistory"
    .parameter "clearPreviousHistory"

    .prologue
    .line 982
    if-nez p1, :cond_1

    .line 983
    const-string v3, "[MusicBrowserTabActivity]"

    const-string v15, "shouldn\'t call startActivity with null/empty tag!!"

    invoke-static {v3, v15}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    :cond_0
    :goto_0
    return-void

    .line 987
    :cond_1
    if-nez p2, :cond_2

    .line 988
    const-string v3, "[MusicBrowserTabActivity]"

    const-string v15, "shouldn\'t call startActivity without intent!!"

    invoke-static {v3, v15}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 992
    :cond_2
    if-eqz p4, :cond_3

    .line 994
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v3}, Lcom/htc/music/util/HistoryManager;->clearHistory()V

    .line 997
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 1001
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v15, 0x400

    and-int/2addr v3, v15

    if-lez v3, :cond_7

    const/4 v8, 0x1

    .line 1002
    .local v8, clearTop:Z
    :goto_1
    if-eqz v8, :cond_4

    .line 1003
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/htc/music/util/HistoryManager;->clearTop(Ljava/lang/String;)Lcom/htc/music/util/HistoryManager$ActivityHistory;

    .line 1004
    const/16 p3, 0x3

    .line 1007
    :cond_4
    const-string v3, "LaunchFromSwitcher"

    const/4 v15, 0x0

    invoke-virtual {v4, v3, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 1008
    .local v11, launchFromSwitcher:Z
    const-string v3, "InnerActivityType"

    const/4 v15, 0x6

    invoke-virtual {v4, v3, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1009
    .local v7, innerType:I
    const/4 v3, 0x6

    if-ne v3, v7, :cond_5

    .line 1011
    if-eqz v11, :cond_5

    .line 1012
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v3}, Lcom/htc/music/util/HistoryManager;->clearCategoryHistory()V

    .line 1018
    :cond_5
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v15, 0x2000

    or-int/2addr v3, v15

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1021
    const/4 v5, 0x0

    .line 1022
    .local v5, lastActivityTag:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1023
    .local v6, lastActivityIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v3}, Lcom/htc/music/util/HistoryManager;->getLastHistory()Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-result-object v10

    .line 1024
    .local v10, lastHistory:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    if-eqz v10, :cond_6

    .line 1025
    iget-object v5, v10, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    .line 1026
    iget-object v6, v10, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentIntent:Landroid/content/Intent;

    .line 1030
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v3, v0, :cond_8

    .line 1032
    const-string v3, "[MusicBrowserTabActivity]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "shouldn\'t call with same tag to launch another inner activity!! tag:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v15}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1001
    .end local v5           #lastActivityTag:Ljava/lang/String;
    .end local v6           #lastActivityIntent:Landroid/content/Intent;
    .end local v7           #innerType:I
    .end local v8           #clearTop:Z
    .end local v10           #lastHistory:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .end local v11           #launchFromSwitcher:Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_1

    .line 1039
    .restart local v5       #lastActivityTag:Ljava/lang/String;
    .restart local v6       #lastActivityIntent:Landroid/content/Intent;
    .restart local v7       #innerType:I
    .restart local v8       #clearTop:Z
    .restart local v10       #lastHistory:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .restart local v11       #launchFromSwitcher:Z
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryProgressVisible(Z)V

    .line 1040
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    if-nez v3, :cond_b

    const/4 v3, 0x4

    if-eq v3, v7, :cond_b

    const/16 v3, 0xc

    if-eq v3, v7, :cond_b

    .line 1044
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setInternalStorageErrorVisible(Z)V

    .line 1058
    :goto_2
    const-string v3, "LaunchFromSwitcher"

    const/4 v15, 0x0

    invoke-virtual {v4, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1061
    const/4 v12, 0x0

    .line 1062
    .local v12, onlyDestroyLastActivity:Z
    const/4 v13, 0x0

    .line 1063
    .local v13, removeFromHistory:Z
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v3, v0, :cond_c

    .line 1069
    new-instance v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/htc/music/util/HistoryManager$ActivityHistory;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 1071
    .local v2, previousActivity:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v3, v2}, Lcom/htc/music/util/HistoryManager;->addHistory(Lcom/htc/music/util/HistoryManager$ActivityHistory;)V

    .line 1086
    .end local v2           #previousActivity:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_9
    :goto_3
    if-eqz v12, :cond_e

    if-eqz v5, :cond_e

    .line 1087
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v3

    const/4 v15, 0x1

    invoke-virtual {v3, v5, v15}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 1092
    :cond_a
    :goto_4
    const-string v3, "ForceDisableDropDown"

    const/4 v15, 0x0

    invoke-virtual {v4, v3, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 1093
    .local v9, forceDisableDropDown:Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1, v9}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setTitleStyle(ILjava/lang/String;Z)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    if-eqz v3, :cond_0

    .line 1097
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->onPrepareInnerOptionsMenu(Landroid/view/Menu;)Z

    goto/16 :goto_0

    .line 1046
    .end local v9           #forceDisableDropDown:Z
    .end local v12           #onlyDestroyLastActivity:Z
    .end local v13           #removeFromHistory:Z
    :cond_b
    const/4 v14, 0x0

    .line 1048
    .local v14, window:Landroid/view/Window;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v14

    .line 1055
    invoke-virtual {v14}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->changeContentView(Landroid/view/View;)V

    goto :goto_2

    .line 1072
    .end local v14           #window:Landroid/view/Window;
    .restart local v12       #onlyDestroyLastActivity:Z
    .restart local v13       #removeFromHistory:Z
    :cond_c
    if-nez p3, :cond_d

    .line 1074
    const/4 v13, 0x1

    goto :goto_3

    .line 1077
    :cond_d
    const/4 v3, 0x3

    move/from16 v0, p3

    if-eq v3, v0, :cond_9

    .line 1079
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v3, v0, :cond_9

    .line 1080
    new-instance v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/htc/music/util/HistoryManager$ActivityHistory;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 1082
    .restart local v2       #previousActivity:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v3, v2}, Lcom/htc/music/util/HistoryManager;->addHistory(Lcom/htc/music/util/HistoryManager$ActivityHistory;)V

    .line 1083
    const/4 v12, 0x1

    goto :goto_3

    .line 1088
    .end local v2           #previousActivity:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_e
    if-eqz v13, :cond_a

    if-eqz v5, :cond_a

    .line 1089
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v3, v5}, Lcom/htc/music/util/HistoryManager;->removeHistory(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public startMaActivityForResult(Landroid/content/Intent;ILcom/htc/music/widget/MusicMaActivity;)V
    .locals 2
    .parameter "intent"
    .parameter "requestCode"
    .parameter "caller"

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v0, :cond_0

    .line 1105
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "startMaActivityForResult called but mForResultCaller is not null!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    :cond_0
    iput-object p3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    .line 1109
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1110
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 2
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 1417
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "tab startSearch...."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/ActivityGroup;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1421
    return-void
.end method

.method protected stopRefreshMiniPlayer(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v0, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0, p1}, Lcom/htc/music/MiniPlayer;->stopRefreshMiniPlayer(Z)V

    .line 1740
    :cond_0
    return-void
.end method

.method public triggerPlayAllAction()V
    .locals 2

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v0, :cond_0

    .line 1744
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MiniPlayer;->stopMonitor()V

    .line 1748
    :goto_0
    return-void

    .line 1746
    :cond_0
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "[preparePlayAllAction] mMiniPlayer==null."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
