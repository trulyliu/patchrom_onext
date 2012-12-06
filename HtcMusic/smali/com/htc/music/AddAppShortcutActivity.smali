.class public Lcom/htc/music/AddAppShortcutActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "AddAppShortcutActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;,
        Lcom/htc/music/AddAppShortcutActivity$BaseItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[AddAppShortcutActivity]"

.field private static final TYPE_APP_ITEM:I = 0x1

.field private static final TYPE_COUNT:I = 0x2

.field private static final TYPE_SEPARATOR:I


# instance fields
.field private mAdapter:Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;

.field private mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/AddAppShortcutActivity$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDefinedMusicAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/AddAppShortcutActivity$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDefinedMusicAppResolveInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDefinedMusicTitleIndex:I

.field private mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mOtherAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/AddAppShortcutActivity$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOtherAppResolveInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOtherTitleIndex:I

.field private mResolveInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUnlockReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 38
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/AddAppShortcutActivity;->mAppList:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/AddAppShortcutActivity;->mDefinedMusicAppList:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/AddAppShortcutActivity;->mOtherAppList:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/AddAppShortcutActivity;->mResolveInfoList:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/AddAppShortcutActivity;->mDefinedMusicAppResolveInfoList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/AddAppShortcutActivity;->mOtherAppResolveInfoList:Ljava/util/ArrayList;

    .line 48
    iput v1, p0, Lcom/htc/music/AddAppShortcutActivity;->mDefinedMusicTitleIndex:I

    .line 49
    iput v1, p0, Lcom/htc/music/AddAppShortcutActivity;->mOtherTitleIndex:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/AddAppShortcutActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 401
    new-instance v0, Lcom/htc/music/AddAppShortcutActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/AddAppShortcutActivity$2;-><init>(Lcom/htc/music/AddAppShortcutActivity;)V

    iput-object v0, p0, Lcom/htc/music/AddAppShortcutActivity;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/AddAppShortcutActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/music/AddAppShortcutActivity;->mAppList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/AddAppShortcutActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/htc/music/AddAppShortcutActivity;->mDefinedMusicTitleIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/AddAppShortcutActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/htc/music/AddAppShortcutActivity;->mOtherTitleIndex:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/music/AddAppShortcutActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/music/AddAppShortcutActivity;->mResolveInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private isDownloadedApp(Landroid/content/pm/ResolveInfo;)Z
    .locals 3
    .parameter "rInfo"

    .prologue
    const/4 v1, 0x1

    .line 238
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 240
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v1

    .line 242
    :cond_1
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    .line 246
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isBypass()Z
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/htc/music/AddAppShortcutActivity;->setVolumeControlStream(I)V

    .line 63
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/htc/music/AddAppShortcutActivity;->requestWindowFeature(I)Z

    .line 64
    const v4, 0x7f030031

    invoke-virtual {p0, v4}, Lcom/htc/music/AddAppShortcutActivity;->setContentView(I)V

    .line 65
    const v4, 0x7f07003b

    invoke-virtual {p0, v4}, Lcom/htc/music/AddAppShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 66
    .local v3, listContentLayout:Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 67
    const-string v4, "common_app_bkg"

    const v5, 0x2080001

    invoke-static {p0, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 71
    :cond_0
    new-instance v2, Lcom/htc/widget/ActionBarText;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    .line 72
    .local v2, actionBarTitle:Lcom/htc/widget/ActionBarText;
    const v4, 0x7f0600d9

    invoke-virtual {v2, v4}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 74
    new-instance v1, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/htc/music/AddAppShortcutActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    .line 75
    .local v1, actionBarExt:Lcom/htc/widget/ActionBarExt;
    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    .line 76
    .local v0, actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 81
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    iget-object v4, p0, Lcom/htc/music/AddAppShortcutActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_1

    .line 83
    new-instance v4, Lcom/htc/music/AddAppShortcutActivity$1;

    invoke-direct {v4, p0}, Lcom/htc/music/AddAppShortcutActivity$1;-><init>(Lcom/htc/music/AddAppShortcutActivity;)V

    iput-object v4, p0, Lcom/htc/music/AddAppShortcutActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    :cond_1
    iget-object v4, p0, Lcom/htc/music/AddAppShortcutActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.htc.music.lockscreen_start"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/htc/music/AddAppShortcutActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    :cond_2
    const v4, 0x102000a

    invoke-virtual {p0, v4}, Lcom/htc/music/AddAppShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListView;

    iput-object v4, p0, Lcom/htc/music/AddAppShortcutActivity;->mListView:Lcom/htc/widget/HtcListView;

    .line 95
    iget-object v4, p0, Lcom/htc/music/AddAppShortcutActivity;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v5, p0, Lcom/htc/music/AddAppShortcutActivity;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 96
    iget-object v4, p0, Lcom/htc/music/AddAppShortcutActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/htc/music/AddAppShortcutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2080035

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 97
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 219
    iget-object v1, p0, Lcom/htc/music/AddAppShortcutActivity;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 220
    iget-object v1, p0, Lcom/htc/music/AddAppShortcutActivity;->mDefinedMusicAppList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 221
    iget-object v1, p0, Lcom/htc/music/AddAppShortcutActivity;->mOtherAppList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 222
    iget-object v1, p0, Lcom/htc/music/AddAppShortcutActivity;->mResolveInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 223
    iget-object v1, p0, Lcom/htc/music/AddAppShortcutActivity;->mDefinedMusicAppResolveInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 224
    iget-object v1, p0, Lcom/htc/music/AddAppShortcutActivity;->mOtherAppResolveInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 226
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/AddAppShortcutActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/AddAppShortcutActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 235
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "[AddAppShortcutActivity]"

    const-string v2, "onDestroy, fail to unregisterReceiver(mUnlockReceiver)"

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 18

    .prologue
    .line 101
    invoke-super/range {p0 .. p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    const-string v16, "currentpkg"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 103
    .local v10, pkgNameList:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    const-string v16, "currentcls"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, clsNameList:[Ljava/lang/String;
    sget-object v15, Lcom/htc/music/util/LandingUtils;->DEFINED_MUSIC_ARRAY:[Ljava/lang/String;

    invoke-static {v15}, Lcom/htc/music/util/LandingUtils;->strArrayToStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, definedMusicListStr:Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v15, "android.intent.action.MAIN"

    invoke-direct {v5, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v5, intent:Landroid/content/Intent;
    const-string v15, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v15}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 114
    .local v13, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchVMMIntent()Landroid/content/Intent;

    move-result-object v5

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v15, "com.htc.bpmrss.action.VIEW"

    invoke-direct {v5, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 123
    .local v11, pm:Landroid/content/pm/PackageManager;
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v15, 0x100

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 125
    .local v14, strBdr:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 126
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mResolveInfoList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 127
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mDefinedMusicAppList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 128
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mDefinedMusicAppResolveInfoList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 129
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mOtherAppList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 130
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mOtherAppResolveInfoList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 132
    const/4 v7, 0x0

    .line 133
    .local v7, isExist:Z
    const/4 v6, 0x0

    .line 134
    .local v6, isDefinedMusicItem:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-ge v4, v15, :cond_8

    .line 135
    const/4 v7, 0x0

    .line 136
    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 137
    .local v12, resolveInfo:Landroid/content/pm/ResolveInfo;
    const/4 v15, 0x0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 138
    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    if-eqz v3, :cond_0

    .line 141
    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 143
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/music/AddAppShortcutActivity;->isDownloadedApp(Landroid/content/pm/ResolveInfo;)Z

    move-result v15

    if-nez v15, :cond_2

    if-nez v6, :cond_2

    .line 134
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 148
    :cond_2
    if-eqz v10, :cond_5

    if-eqz v2, :cond_5

    .line 149
    const/4 v9, 0x0

    .local v9, j:I
    :goto_2
    array-length v15, v10

    if-ge v9, v15, :cond_5

    .line 150
    aget-object v15, v10, v9

    if-eqz v15, :cond_3

    aget-object v15, v10, v9

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 151
    aget-object v15, v2, v9

    if-eqz v15, :cond_4

    .line 152
    aget-object v15, v2, v9

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 153
    const/4 v7, 0x1

    .line 149
    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 156
    :cond_4
    const/4 v7, 0x1

    goto :goto_3

    .line 162
    .end local v9           #j:I
    :cond_5
    if-eqz v6, :cond_6

    .line 163
    if-nez v7, :cond_1

    .line 164
    new-instance v8, Lcom/htc/music/AddAppShortcutActivity$BaseItem;

    invoke-virtual {v12, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v12, v11}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v8, v15, v0, v1}, Lcom/htc/music/AddAppShortcutActivity$BaseItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 165
    .local v8, item:Lcom/htc/music/AddAppShortcutActivity$BaseItem;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mDefinedMusicAppList:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mDefinedMusicAppResolveInfoList:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 170
    .end local v8           #item:Lcom/htc/music/AddAppShortcutActivity$BaseItem;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 171
    const/4 v7, 0x1

    .line 174
    :cond_7
    if-nez v7, :cond_1

    .line 175
    new-instance v8, Lcom/htc/music/AddAppShortcutActivity$BaseItem;

    invoke-virtual {v12, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v12, v11}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v8, v15, v0, v1}, Lcom/htc/music/AddAppShortcutActivity$BaseItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 176
    .restart local v8       #item:Lcom/htc/music/AddAppShortcutActivity$BaseItem;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mOtherAppList:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mOtherAppResolveInfoList:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 182
    .end local v8           #item:Lcom/htc/music/AddAppShortcutActivity$BaseItem;
    .end local v12           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mDefinedMusicAppList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_9

    .line 183
    new-instance v8, Lcom/htc/music/AddAppShortcutActivity$BaseItem;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const v17, 0x7f0600e3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/AddAppShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v8, v15, v0, v1}, Lcom/htc/music/AddAppShortcutActivity$BaseItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 184
    .restart local v8       #item:Lcom/htc/music/AddAppShortcutActivity$BaseItem;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mDefinedMusicAppList:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mDefinedMusicAppResolveInfoList:Ljava/util/ArrayList;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 187
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mDefinedMusicTitleIndex:I

    .line 190
    .end local v8           #item:Lcom/htc/music/AddAppShortcutActivity$BaseItem;
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mOtherAppList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_a

    .line 191
    new-instance v8, Lcom/htc/music/AddAppShortcutActivity$BaseItem;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const v17, 0x7f0600e4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/AddAppShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v8, v15, v0, v1}, Lcom/htc/music/AddAppShortcutActivity$BaseItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 192
    .restart local v8       #item:Lcom/htc/music/AddAppShortcutActivity$BaseItem;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mOtherAppList:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mOtherAppResolveInfoList:Ljava/util/ArrayList;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mDefinedMusicAppList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mOtherTitleIndex:I

    .line 198
    .end local v8           #item:Lcom/htc/music/AddAppShortcutActivity$BaseItem;
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mAppList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/AddAppShortcutActivity;->mDefinedMusicAppList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 199
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mAppList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/AddAppShortcutActivity;->mOtherAppList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 200
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mResolveInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/AddAppShortcutActivity;->mDefinedMusicAppResolveInfoList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 201
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mResolveInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/AddAppShortcutActivity;->mOtherAppResolveInfoList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 203
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mAdapter:Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;

    if-nez v15, :cond_b

    .line 204
    new-instance v15, Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v15, v0, v1}, Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/AddAppShortcutActivity;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mAdapter:Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;

    .line 205
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mListView:Lcom/htc/widget/HtcListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/AddAppShortcutActivity;->mAdapter:Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 210
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_c

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->hideEmptyErrorView()V

    .line 215
    :goto_5
    return-void

    .line 207
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/AddAppShortcutActivity;->mAdapter:Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;

    invoke-virtual {v15}, Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;->notifyDataSetChanged()V

    goto :goto_4

    .line 213
    :cond_c
    const v15, 0x7f0600e1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/music/AddAppShortcutActivity;->showEmptyView(I)V

    goto :goto_5
.end method
