.class public Lcom/htc/music/carmode/CarLibraryActivity;
.super Landroid/app/ActivityGroup;
.source "CarLibraryActivity.java"

# interfaces
.implements Lcom/htc/music/widget/IDismissBubbleInterface;
.implements Lcom/htc/music/carmode/IMusicTabActivityInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarLibraryActivity$MyIdleHandler;,
        Lcom/htc/music/carmode/CarLibraryActivity$CarDockListener;
    }
.end annotation


# static fields
.field private static final EFFECTIVE_GESTURE_RATIO:D = 0.2

.field public static final EXTRA_ACTIVITY_CALLER:Ljava/lang/String; = "caller"

.field private static final FIRST_CONTENT_INDEX:I = 0x0

.field private static final INIT:I = 0x3039

.field private static final INIT_3D_DELAY_TIME:I = 0x190

.field private static final START_ACTIVITY:I = 0x303a

.field private static final TAG:Ljava/lang/String; = "[CarLibraryActivity]"


# instance fields
.field private firstLaunch:Z

.field protected mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

.field private mActionBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

.field private mActionBarSearchItemView:Lcom/htc/widget/ActionBarItemView;

.field private mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

.field private mActivityResumed:Z

.field private mCarDockListener:Lcom/htc/music/carmode/CarLibraryActivity$CarDockListener;

.field private mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

.field protected mContentView:Landroid/widget/FrameLayout;

.field private mErrorView:Landroid/view/View;

.field protected mForResultCaller:Lcom/htc/music/carmode/MusicMaActivity;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureHeight:D

.field private mInternalEnough:Z

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mMimeType:Ljava/lang/String;

.field private mPreferences:Landroid/content/SharedPreferences;

.field protected mPreviousSI:Lcom/htc/music/util/SourceItem;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 55
    iput-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 56
    iput-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    .line 57
    iput-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarSearchItemView:Lcom/htc/widget/ActionBarItemView;

    .line 59
    iput-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    .line 60
    iput-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 62
    iput-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mPreviousSI:Lcom/htc/music/util/SourceItem;

    .line 64
    iput-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 66
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mInternalEnough:Z

    .line 68
    iput-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMimeType:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActivityResumed:Z

    .line 72
    iput-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mGestureHeight:D

    .line 80
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarLibraryActivity;->firstLaunch:Z

    .line 84
    iput-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCarDockListener:Lcom/htc/music/carmode/CarLibraryActivity$CarDockListener;

    .line 184
    new-instance v0, Lcom/htc/music/carmode/CarLibraryActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarLibraryActivity$1;-><init>(Lcom/htc/music/carmode/CarLibraryActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mUIHandler:Landroid/os/Handler;

    .line 312
    new-instance v0, Lcom/htc/music/carmode/CarLibraryActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarLibraryActivity$5;-><init>(Lcom/htc/music/carmode/CarLibraryActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 325
    iput-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mErrorView:Landroid/view/View;

    .line 576
    iput-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mForResultCaller:Lcom/htc/music/carmode/MusicMaActivity;

    .line 789
    new-instance v0, Lcom/htc/music/carmode/CarLibraryActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarLibraryActivity$7;-><init>(Lcom/htc/music/carmode/CarLibraryActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/carmode/CarLibraryActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/carmode/CarLibraryActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarLibraryActivity;->startIndicateActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/carmode/CarLibraryActivity;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mGestureHeight:D

    return-wide v0
.end method

.method static synthetic access$400(Lcom/htc/music/carmode/CarLibraryActivity;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/carmode/CarLibraryActivity;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/carmode/CarLibraryActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initKeypadGestureDetector()V
    .locals 2

    .prologue
    .line 224
    const-string v0, "[CarLibraryActivity]"

    const-string v1, "Gesture initKeypadGestureDetector"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/htc/music/carmode/CarLibraryActivity$2;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarLibraryActivity$2;-><init>(Lcom/htc/music/carmode/CarLibraryActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 255
    return-void
.end method

.method private initTitle()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 258
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 261
    :cond_0
    new-instance v0, Lcom/htc/music/carmode/CategorySwitcherAdapter;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CategorySwitcherAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    .line 262
    new-instance v0, Lcom/htc/music/widget/DismissBubbleItemClickListener;

    new-instance v1, Lcom/htc/music/carmode/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;

    iget-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    invoke-direct {v1, p0, v2}, Lcom/htc/music/carmode/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;-><init>(Lcom/htc/music/carmode/IMusicTabActivityInterface;Lcom/htc/music/carmode/CategorySwitcherAdapter;)V

    invoke-direct {v0, p0, v1}, Lcom/htc/music/widget/DismissBubbleItemClickListener;-><init>(Lcom/htc/music/widget/IDismissBubbleInterface;Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 267
    new-instance v0, Lcom/htc/widget/ActionBarContainer;

    invoke-direct {v0, p0}, Lcom/htc/widget/ActionBarContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 268
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarContainer;->setSupportMode(I)V

    .line 269
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 270
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v1, Lcom/htc/music/carmode/CarLibraryActivity$3;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarLibraryActivity$3;-><init>(Lcom/htc/music/carmode/CarLibraryActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 278
    new-instance v0, Lcom/htc/widget/ActionBarDropDown;

    invoke-direct {v0, p0, v3}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    .line 280
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 284
    new-instance v0, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v0, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarSearchItemView:Lcom/htc/widget/ActionBarItemView;

    .line 285
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarSearchItemView:Lcom/htc/widget/ActionBarItemView;

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 286
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarSearchItemView:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarItemView;->setSupportMode(I)V

    .line 287
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarSearchItemView:Lcom/htc/widget/ActionBarItemView;

    new-instance v1, Lcom/htc/music/carmode/CarLibraryActivity$4;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarLibraryActivity$4;-><init>(Lcom/htc/music/carmode/CarLibraryActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarSearchItemView:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 298
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 300
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMimeType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/music/carmode/CarLibraryActivity;->startIndicateActivity(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDropDownEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 425
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 429
    :cond_0
    if-eqz p1, :cond_1

    .line 430
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarDropDown;->setClickable(Z)V

    .line 431
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarDropDown;->setArrowEnabled(Z)V

    goto :goto_0

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setClickable(Z)V

    .line 434
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setArrowEnabled(Z)V

    goto :goto_0
.end method

.method private setTitleStyle(ILjava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "tag"

    .prologue
    .line 439
    and-int/lit16 v0, p1, 0xfe

    .line 440
    .local v0, iType:I
    and-int/lit8 v2, p1, 0x1

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 441
    .local v1, manualMainTitle:Z
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 452
    :goto_1
    return-void

    .line 440
    .end local v1           #manualMainTitle:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 444
    .restart local v1       #manualMainTitle:Z
    :pswitch_0
    invoke-virtual {p0, v1, p2}, Lcom/htc/music/carmode/CarLibraryActivity;->setCategorySwitcherStyleTitle(ZLjava/lang/String;)V

    goto :goto_1

    .line 441
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private showInternalStorageErrorMode()V
    .locals 5

    .prologue
    .line 328
    iget-object v3, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mErrorView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 329
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 330
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v3, 0x7f030043

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mErrorView:Landroid/view/View;

    .line 331
    iget-object v3, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mErrorView:Landroid/view/View;

    const v4, 0x7f070086

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 332
    .local v2, sdErrorLayout:Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 333
    const-string v3, "common_app_bkg"

    const v4, 0x2080001

    invoke-static {p0, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 336
    :cond_0
    iget-object v3, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mErrorView:Landroid/view/View;

    const v4, 0x7f07007c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 337
    .local v0, errorMessage:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 338
    const v3, 0x203007f

    invoke-virtual {v0, p0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 339
    const v3, 0x7f06003a

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 343
    .end local v0           #errorMessage:Landroid/widget/TextView;
    .end local v1           #inflator:Landroid/view/LayoutInflater;
    .end local v2           #sdErrorLayout:Landroid/view/ViewGroup;
    :cond_1
    iget-object v3, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mErrorView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/CarLibraryActivity;->changeContentView(Landroid/view/View;)V

    .line 344
    iget-object v3, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mErrorView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 345
    return-void
.end method

.method private startIndicateActivity(Ljava/lang/String;)V
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/music/carmode/CarLibraryActivity;->startIndicateActivity(Ljava/lang/String;Landroid/content/Intent;)V

    .line 677
    return-void
.end method

.method private startIndicateActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 7
    .parameter "mimeType"
    .parameter "origin"

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 680
    const/4 v2, 0x0

    .line 681
    .local v2, item:Lcom/htc/music/util/SourceItem;
    const/4 v1, 0x0

    .line 683
    .local v1, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 685
    :cond_0
    invoke-virtual {p0, v5, v5}, Lcom/htc/music/carmode/CarLibraryActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    .line 716
    :goto_0
    return-void

    .line 687
    :cond_1
    const-string v4, "com.htc.media/album"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 688
    iget-object v4, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    const-string v5, "AlbumBrowserTabPlugin"

    invoke-virtual {v4, v5}, Lcom/htc/music/carmode/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v2

    .line 713
    :cond_2
    :goto_1
    iget-object v4, v2, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v5, "LaunchFromSwitcher"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 714
    iget-object v5, v2, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    if-nez v1, :cond_7

    iget-object v4, v2, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    :goto_2
    invoke-virtual {p0, v5, v4}, Lcom/htc/music/carmode/CarLibraryActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 690
    :cond_3
    const-string v4, "com.htc.media/artistalbum"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 691
    iget-object v4, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    const-string v5, "AlbumBrowserTabPlugin"

    invoke-virtual {v4, v5}, Lcom/htc/music/carmode/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v2

    .line 693
    if-eqz p2, :cond_2

    .line 694
    const-string v4, "artistid"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, artistId:Ljava/lang/String;
    const-string v4, "dbTable"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 696
    .local v3, queryTable:I
    if-eqz v0, :cond_2

    if-eq v3, v6, :cond_2

    .line 697
    iget-object v4, v2, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #intent:Landroid/content/Intent;
    check-cast v1, Landroid/content/Intent;

    .line 698
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "artistid"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    const-string v4, "dbTable"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 702
    .end local v0           #artistId:Ljava/lang/String;
    .end local v3           #queryTable:I
    :cond_4
    const-string v4, "com.htc.media/track"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 703
    iget-object v4, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    const-string v5, "TrackBrowserTabPlugin"

    invoke-virtual {v4, v5}, Lcom/htc/music/carmode/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v2

    goto :goto_1

    .line 705
    :cond_5
    const-string v4, "com.htc.media/playlist"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 706
    iget-object v4, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    const-string v5, "PlaylistBrowserTabPlugin"

    invoke-virtual {v4, v5}, Lcom/htc/music/carmode/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v2

    goto :goto_1

    .line 709
    :cond_6
    iget-object v4, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    const-string v5, "ArtistBrowserTabPlugin"

    invoke-virtual {v4, v5}, Lcom/htc/music/carmode/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v2

    goto :goto_1

    :cond_7
    move-object v4, v1

    .line 714
    goto :goto_2
.end method


# virtual methods
.method protected changeContentView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, -0x1

    .line 655
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mContentView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 657
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 659
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 661
    :cond_0
    return-void
.end method

.method public disableCategoryDropDown()V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 607
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/carmode/CarLibraryActivity;->setDropDownEnable(Z)V

    .line 609
    :cond_0
    return-void
.end method

.method public dismissPopupBubble()V
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->dismiss()V

    .line 785
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 829
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 830
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 833
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 641
    invoke-super {p0}, Landroid/app/ActivityGroup;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 642
    .local v2, currentActivity:Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 651
    .end local v2           #currentActivity:Landroid/app/Activity;
    :goto_0
    return-object v2

    .line 645
    .restart local v2       #currentActivity:Landroid/app/Activity;
    :cond_0
    iget-object v4, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mContentView:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 646
    .local v1, childView:Landroid/view/View;
    if-nez v1, :cond_1

    move-object v2, v3

    .line 647
    goto :goto_0

    .line 648
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 649
    .local v0, childContext:Landroid/content/Context;
    if-eqz v0, :cond_2

    if-ne v0, p0, :cond_3

    :cond_2
    move-object v2, v3

    .line 650
    goto :goto_0

    .line 651
    :cond_3
    check-cast v0, Landroid/app/Activity;

    .end local v0           #childContext:Landroid/content/Context;
    move-object v2, v0

    goto :goto_0
.end method

.method protected inflateTitle()V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method protected isActivityResumed()Z
    .locals 1

    .prologue
    .line 838
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActivityResumed:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mForResultCaller:Lcom/htc/music/carmode/MusicMaActivity;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mForResultCaller:Lcom/htc/music/carmode/MusicMaActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/carmode/MusicMaActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 592
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mForResultCaller:Lcom/htc/music/carmode/MusicMaActivity;

    .line 593
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x400

    .line 128
    const-string v7, "[CarLibraryActivity]"

    const-string v8, "tab oncreate"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->closeActivityIfNotInCarMode(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 182
    :goto_0
    return-void

    .line 134
    :cond_0
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/htc/music/carmode/CarLibraryActivity;->requestWindowFeature(I)Z

    .line 137
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 138
    .local v4, win:Landroid/view/Window;
    invoke-virtual {v4, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 140
    const/high16 v7, 0x40

    invoke-virtual {v4, v7}, Landroid/view/Window;->addFlags(I)V

    .line 141
    const/high16 v7, 0x20

    invoke-virtual {v4, v7}, Landroid/view/Window;->addFlags(I)V

    .line 144
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 145
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "caller"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, caller:Ljava/lang/String;
    const-class v7, Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 147
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 148
    .local v5, windowLp:Landroid/view/WindowManager$LayoutParams;
    const v7, 0x7f0d0011

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 152
    .end local v5           #windowLp:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "Music-UI"

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 156
    invoke-virtual {v3, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMimeType:Ljava/lang/String;

    .line 158
    iget-object v7, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMimeType:Ljava/lang/String;

    if-nez v7, :cond_2

    if-eqz p1, :cond_2

    .line 159
    const-string v7, "last_mimetype"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMimeType:Ljava/lang/String;

    .line 162
    :cond_2
    const v7, 0x7f030012

    invoke-virtual {p0, v7}, Lcom/htc/music/carmode/CarLibraryActivity;->setContentView(I)V

    .line 164
    const v7, 0x7f070018

    invoke-virtual {p0, v7}, Lcom/htc/music/carmode/CarLibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 165
    const v7, 0x7f070019

    invoke-virtual {p0, v7}, Lcom/htc/music/carmode/CarLibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 166
    iget-object v7, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mContentView:Landroid/widget/FrameLayout;

    const/high16 v8, -0x100

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 168
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 169
    .local v1, display:Landroid/view/Display;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 170
    .local v6, windowSize:Landroid/graphics/Point;
    invoke-virtual {v1, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 171
    iget v7, v6, Landroid/graphics/Point;->y:I

    int-to-double v7, v7

    const-wide v9, 0x3fc999999999999aL

    mul-double/2addr v7, v9

    iput-wide v7, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mGestureHeight:D

    .line 172
    const-string v7, "[CarLibraryActivity]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mGestureHeight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mGestureHeight:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->initKeypadGestureDetector()V

    .line 175
    invoke-direct {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->initTitle()V

    .line 177
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mInternalEnough:Z

    .line 179
    new-instance v2, Landroid/content/IntentFilter;

    sget-object v7, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 180
    .local v2, f3:Landroid/content/IntentFilter;
    new-instance v7, Lcom/htc/music/carmode/CarLibraryActivity$CarDockListener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/htc/music/carmode/CarLibraryActivity$CarDockListener;-><init>(Lcom/htc/music/carmode/CarLibraryActivity;Lcom/htc/music/carmode/CarLibraryActivity$1;)V

    iput-object v7, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCarDockListener:Lcom/htc/music/carmode/CarLibraryActivity$CarDockListener;

    .line 181
    iget-object v7, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCarDockListener:Lcom/htc/music/carmode/CarLibraryActivity$CarDockListener;

    invoke-virtual {p0, v7, v2}, Lcom/htc/music/carmode/CarLibraryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 473
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 476
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCarDockListener:Lcom/htc/music/carmode/CarLibraryActivity$CarDockListener;

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCarDockListener:Lcom/htc/music/carmode/CarLibraryActivity$CarDockListener;

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarLibraryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :cond_0
    :goto_0
    iput-object v4, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mForResultCaller:Lcom/htc/music/carmode/MusicMaActivity;

    .line 484
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->removeAllActivities()V

    .line 486
    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    if-eqz v1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    invoke-virtual {v1}, Lcom/htc/music/carmode/CategorySwitcherAdapter;->releaseAdapter()V

    .line 488
    iput-object v4, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    .line 490
    :cond_1
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "[CarLibraryActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy, fail to unregisterReceiver(mCarDockListener), ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 89
    const-string v3, "[CarLibraryActivity]"

    const-string v4, "tab receive new intent"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onNewIntent(Landroid/content/Intent;)V

    .line 92
    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMimeType:Ljava/lang/String;

    .line 94
    const-string v3, "caller"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, caller:Ljava/lang/String;
    const-class v3, Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 97
    .local v1, win:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 98
    .local v2, windowLp:Landroid/view/WindowManager$LayoutParams;
    const v3, 0x7f0d0011

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 101
    .end local v1           #win:Landroid/view/Window;
    .end local v2           #windowLp:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mInternalEnough:Z

    .line 103
    iget-object v3, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMimeType:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v3, ""

    iget-object v4, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 122
    :cond_2
    iget-object v3, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMimeType:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lcom/htc/music/carmode/CarLibraryActivity;->startIndicateActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 763
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActivityResumed:Z

    .line 765
    return-void
.end method

.method protected onPostResume()V
    .locals 0

    .prologue
    .line 742
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPostResume()V

    .line 747
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 821
    const-string v0, "[CarLibraryActivity]"

    const-string v1, "tab onRestoreInstanceState"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 823
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActivityResumed:Z

    .line 725
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 735
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 813
    const-string v0, "[CarLibraryActivity]"

    const-string v1, "tab onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 816
    const-string v0, "last_mimetype"

    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStart()V

    .line 210
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 770
    :try_start_0
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 776
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->firstLaunch:Z

    .line 777
    return-void

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method public setCategoryProgressVisible(Z)V
    .locals 2
    .parameter "setVisible"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 629
    if-eqz p1, :cond_1

    .line 630
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method public setCategorySwitcherStyleTitle(ZLjava/lang/String;)V
    .locals 2
    .parameter "manualMainTitle"
    .parameter "tag"

    .prologue
    .line 455
    const-string v0, "[CarLibraryActivity]"

    const-string v1, "setCategorySwitcherStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_1

    .line 458
    if-nez p1, :cond_0

    .line 459
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const v1, 0x7f0600b6

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 463
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 464
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/carmode/CarLibraryActivity;->setDropDownEnable(Z)V

    .line 467
    :cond_1
    return-void
.end method

.method public setMainTitle(I)V
    .locals 1
    .parameter "mainTitleRes"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 617
    :cond_0
    return-void
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "mainTitle"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    .line 623
    :cond_0
    return-void
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 9
    .parameter "tag"
    .parameter "launchIntent"

    .prologue
    const/4 v8, 0x0

    .line 497
    const/4 v4, -0x1

    .line 498
    .local v4, titleRes:I
    if-nez p1, :cond_1

    .line 500
    iget-object v5, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "carmode-last-browser"

    const-string v7, "ArtistBrowserTabPlugin"

    invoke-static {v5, v6, v7}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 502
    const-string v5, "[CarLibraryActivity]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read car mode last browse page: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v5, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    invoke-virtual {v5, p1}, Lcom/htc/music/carmode/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v3

    .line 504
    .local v3, sourceItem:Lcom/htc/music/util/SourceItem;
    if-eqz v3, :cond_0

    .line 505
    iget-object p2, v3, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    .line 506
    iget v4, v3, Lcom/htc/music/util/SourceItem;->mTitleRes:I

    .line 515
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    .line 516
    const-string v5, "[CarLibraryActivity]"

    const-string v6, "shouldn\'t call startActivity without intent!!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :goto_1
    return-void

    .line 509
    .end local v3           #sourceItem:Lcom/htc/music/util/SourceItem;
    :cond_1
    iget-object v5, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "carmode-last-browser"

    invoke-interface {v5, v6, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 511
    iget-object v5, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    invoke-virtual {v5, p1}, Lcom/htc/music/carmode/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v3

    .line 512
    .restart local v3       #sourceItem:Lcom/htc/music/util/SourceItem;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/htc/music/util/SourceItem;->mTitleRes:I

    goto :goto_0

    .line 520
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 523
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x2000

    or-int/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 527
    invoke-virtual {p0, v8}, Lcom/htc/music/carmode/CarLibraryActivity;->setCategoryProgressVisible(Z)V

    .line 528
    iget-boolean v5, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mInternalEnough:Z

    if-nez v5, :cond_3

    .line 531
    invoke-direct {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->showInternalStorageErrorMode()V

    .line 565
    :goto_2
    const/4 v5, 0x1

    invoke-virtual {p0, v5, p1}, Lcom/htc/music/carmode/CarLibraryActivity;->setCategorySwitcherStyleTitle(ZLjava/lang/String;)V

    .line 573
    iput-boolean v8, p0, Lcom/htc/music/carmode/CarLibraryActivity;->firstLaunch:Z

    goto :goto_1

    .line 533
    :cond_3
    iget-object v5, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x303a

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 534
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 535
    .local v0, b:Landroid/os/Bundle;
    const-string v5, "tag"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v5, "intent"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 537
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 541
    iget-boolean v5, p0, Lcom/htc/music/carmode/CarLibraryActivity;->firstLaunch:Z

    if-eqz v5, :cond_4

    const-string v5, "TrackBrowserTabPlugin"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 543
    :cond_4
    iget-object v5, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 562
    :goto_3
    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarLibraryActivity;->setMainTitle(I)V

    goto :goto_2

    .line 549
    :cond_5
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v5

    new-instance v6, Lcom/htc/music/carmode/CarLibraryActivity$6;

    invoke-direct {v6, p0, v2}, Lcom/htc/music/carmode/CarLibraryActivity$6;-><init>(Lcom/htc/music/carmode/CarLibraryActivity;Landroid/os/Message;)V

    invoke-virtual {v5, v6}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_3
.end method

.method public startMaActivityForResult(Landroid/content/Intent;ILcom/htc/music/carmode/MusicMaActivity;)V
    .locals 2
    .parameter "intent"
    .parameter "requestCode"
    .parameter "caller"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mForResultCaller:Lcom/htc/music/carmode/MusicMaActivity;

    if-eqz v0, :cond_0

    .line 580
    const-string v0, "[CarLibraryActivity]"

    const-string v1, "startMaActivityForResult called but mForResultCaller is not null!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_0
    iput-object p3, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mForResultCaller:Lcom/htc/music/carmode/MusicMaActivity;

    .line 584
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/carmode/CarLibraryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 585
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 2
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 668
    const-string v0, "[CarLibraryActivity]"

    const-string v1, "tab startSearch...."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/ActivityGroup;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 671
    return-void
.end method
