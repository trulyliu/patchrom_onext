.class public Lcom/htc/music/LandingPageActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "LandingPageActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/LandingPageActivity$NonUIHandler;,
        Lcom/htc/music/LandingPageActivity$LaunchItem;
    }
.end annotation


# static fields
.field private static final ADD_APP_SHORTCUT:I = 0x0

.field private static final ADD_SHOWME_HELP_MENU:I = 0x2712

.field private static final DIALOG_FOR_LONG_PRESS:I = 0x0

.field private static final INIT_LAUNCH_ITEM:I = 0x2710

.field private static final MEDIA_SERVER_PACKAGE_NAME:Ljava/lang/String; = "com.htc.music.mediaserver"

.field private static final MENU_ADD_APP_SHORTCUT:I = 0x1

.field private static final MENU_HELP:I = 0x3

.field private static final MENU_MEDIA_SERVER:I = 0x2

.field private static final MENU_VMM_UPLOAD:I = 0x15

.field private static final MSG_CHECK_SHOWME_EXIST:I = 0x2713

.field private static final MSG_ULOG_USED_APP:I = 0x2712

.field private static final MUSIC_PACKAGE_NAME:Ljava/lang/String; = "com.htc.music"

.field private static final SHORTCUT_NUMBER_LIMIT:I = 0x9

.field private static final TAG:Ljava/lang/String; = "[LandingPage]"

.field private static final ULOG_KEY_LABEL:Ljava/lang/String; = "label"

.field private static final ULOG_KEY_PACKAGENAME:Ljava/lang/String; = "package_name"

.field private static final UPDATE_LAUNCH_ITEM:I = 0x2711

.field private static final mScaleSize:F = 1.2f


# instance fields
.field private mAutoAddList:[Ljava/lang/String;

.field private mAutoDetectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/LandingPageActivity$LaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstLaunch:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeaderViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/LandingPageActivity$LaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLongClickedItemType:I

.field private mLongClickedLaunchIntent:Landroid/content/Intent;

.field private mLongClickedName:Ljava/lang/String;

.field private mLuanchItemBgHeight:I

.field private mLuanchItemBgWidth:I

.field private mMenu:Landroid/view/Menu;

.field private mNonUIHandler:Landroid/os/Handler;

.field private mOrientation:I

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mPreloadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/LandingPageActivity$LaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveList:Ljava/lang/StringBuilder;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

.field private mSmallIconHeight:I

.field private mSmallIconWidth:I

.field private mUIHandler:Landroid/os/Handler;

.field private mUserAddList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/LandingPageActivity$LaunchItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 70
    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mAutoAddList:[Ljava/lang/String;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedItemType:I

    .line 73
    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedLaunchIntent:Landroid/content/Intent;

    .line 74
    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedName:Ljava/lang/String;

    .line 78
    iput v2, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgWidth:I

    .line 79
    iput v2, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgHeight:I

    .line 80
    iput v2, p0, Lcom/htc/music/LandingPageActivity;->mSmallIconWidth:I

    .line 81
    iput v2, p0, Lcom/htc/music/LandingPageActivity;->mSmallIconHeight:I

    .line 85
    iput v2, p0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mHeaderViewList:Ljava/util/ArrayList;

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mUserAddList:Ljava/util/ArrayList;

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    .line 286
    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    .line 293
    iput v2, p0, Lcom/htc/music/LandingPageActivity;->mScreenWidth:I

    .line 294
    iput v2, p0, Lcom/htc/music/LandingPageActivity;->mScreenHeight:I

    .line 296
    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/LandingPageActivity;->mFirstLaunch:Z

    .line 330
    new-instance v0, Lcom/htc/music/LandingPageActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$1;-><init>(Lcom/htc/music/LandingPageActivity;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;

    .line 824
    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mMenu:Landroid/view/Menu;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/htc/music/LandingPageActivity;->sendUsedAppULogMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/LandingPageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedItemType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->refreshLaunchItemList()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/music/LandingPageActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedItemType:I

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/music/LandingPageActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity;->addShowmeMenuItem(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/LandingPageActivity;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/LandingPageActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedLaunchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/music/LandingPageActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedLaunchIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/music/LandingPageActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/htc/music/LandingPageActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/music/LandingPageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->isShowMeExist()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/htc/music/LandingPageActivity;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method static synthetic access$502(Lcom/htc/music/LandingPageActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->initConstant()V

    return-void
.end method

.method static synthetic access$702(Lcom/htc/music/LandingPageActivity;Lcom/htc/music/ShortcutPageInfo;)Lcom/htc/music/ShortcutPageInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->reloadLaunchItemList()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->updateLaunchItemsUI()V

    return-void
.end method

.method private addShowmeMenuItem(I)V
    .locals 4
    .parameter "visible"

    .prologue
    const/4 v1, 0x1

    .line 1161
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mMenu:Landroid/view/Menu;

    if-nez v2, :cond_1

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1162
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->isActivityResumed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1164
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mMenu:Landroid/view/Menu;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1165
    .local v0, help:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1166
    if-ne v1, p1, :cond_2

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getLibraryIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 1068
    const/4 v0, 0x0

    .line 1069
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 1070
    .local v1, parent:Landroid/app/Activity;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz v2, :cond_0

    .line 1071
    check-cast v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    .end local v1           #parent:Landroid/app/Activity;
    invoke-virtual {v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getLastCategoryIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1076
    :goto_0
    return-object v0

    .line 1073
    .restart local v1       #parent:Landroid/app/Activity;
    :cond_0
    const-string v2, "[LandingPage]"

    const-string v3, "can\'t find MusicBrowserTabActivity as parent!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1049
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1050
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1051
    .local v2, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_0

    .line 1052
    const-string v4, "[LandingPage]"

    const-string v5, "getResolveInfo, resolveInfoList is null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    :goto_0
    return-object v3

    .line 1055
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1056
    .local v0, length:I
    if-gtz v0, :cond_1

    .line 1057
    const-string v4, "[LandingPage]"

    const-string v5, "getResolveInfo, There\'s no app to match the launch intent"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1060
    :cond_1
    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    .line 1061
    const-string v3, "[LandingPage]"

    const-string v4, "getResolveInfo, The intent will launch more than one app"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    :cond_2
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method

.method private initConstant()V
    .locals 3

    .prologue
    .line 493
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 494
    .local v0, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 495
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020065

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 496
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgWidth:I

    .line 497
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgHeight:I

    .line 498
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2080078

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 499
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/htc/music/LandingPageActivity;->mSmallIconWidth:I

    .line 500
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/htc/music/LandingPageActivity;->mSmallIconHeight:I

    .line 501
    invoke-static {}, Lcom/htc/music/util/LandingUtils;->getAutoAddList()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/LandingPageActivity;->mAutoAddList:[Ljava/lang/String;

    .line 502
    return-void
.end method

.method private isHVGA()Z
    .locals 3

    .prologue
    .line 1128
    iget v1, p0, Lcom/htc/music/LandingPageActivity;->mScreenWidth:I

    iget v2, p0, Lcom/htc/music/LandingPageActivity;->mScreenHeight:I

    if-le v1, v2, :cond_0

    iget v0, p0, Lcom/htc/music/LandingPageActivity;->mScreenWidth:I

    .line 1129
    .local v0, length:I
    :goto_0
    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 1128
    .end local v0           #length:I
    :cond_0
    iget v0, p0, Lcom/htc/music/LandingPageActivity;->mScreenHeight:I

    goto :goto_0

    .line 1129
    .restart local v0       #length:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isShowMeExist()Z
    .locals 6

    .prologue
    .line 1171
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1172
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 1174
    .local v2, result:Z
    :try_start_0
    const-string v3, "com.htc.showme"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1175
    const/4 v2, 0x1

    .line 1179
    :goto_0
    return v2

    .line 1176
    :catch_0
    move-exception v0

    .line 1177
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "[LandingPage]"

    const-string v4, "Package com.htc.showme is not installed"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private launchMediaServer()V
    .locals 4

    .prologue
    .line 918
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 919
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 921
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/dlnaexp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 923
    const-string v1, "ShowActivityTitle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 924
    const-string v1, "InnerActivityType"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 925
    const-string v1, "LaunchFromSwitcher"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 926
    invoke-virtual {p0, v0}, Lcom/htc/music/LandingPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 928
    const-string v1, "com.htc.music.mediaserver"

    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/music/LandingPageActivity;->sendUsedAppULogMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    return-void
.end method

.method private refreshLaunchItemList()V
    .locals 6

    .prologue
    .line 508
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .local v4, newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/LandingPageActivity$LaunchItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 510
    iget-object v5, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .line 511
    .local v3, item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1400(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v2

    .line 512
    .local v2, intent:Landroid/content/Intent;
    invoke-direct {p0, v2}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 513
    .local v1, info:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 514
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    :cond_1
    iput-object v4, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    .line 518
    return-void
.end method

.method private reloadLaunchItemList()V
    .locals 17

    .prologue
    .line 522
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mAutoAddList:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/htc/music/util/LandingUtils;->getShortcutInfoList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 523
    .local v13, shortcutInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/ShortcutInfo;>;"
    new-instance v12, Lcom/htc/music/ShortcutInfo;

    invoke-direct {v12}, Lcom/htc/music/ShortcutInfo;-><init>()V

    .line 524
    .local v12, shortcutInfo:Lcom/htc/music/ShortcutInfo;
    const-string v14, "com.htc.music"

    invoke-virtual {v12, v14}, Lcom/htc/music/ShortcutInfo;->setPackageName(Ljava/lang/String;)V

    .line 525
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/htc/music/ShortcutInfo;->setType(I)V

    .line 526
    const/4 v14, 0x0

    invoke-virtual {v13, v14, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 528
    const-string v14, "LandingPage"

    const/4 v15, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/htc/music/LandingPageActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 529
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v15, "removelist"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 530
    .local v10, removeListStr:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 531
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_0
    const/4 v9, 0x0

    .line 536
    .local v9, preloadIconResId:Ljava/lang/Integer;
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 537
    .local v7, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_1

    .line 538
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/16 v15, 0x9

    if-ne v14, v15, :cond_2

    .line 539
    const-string v14, "[LandingPage]"

    const-string v15, "Shortcut number = 9, skip other shortcuts"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_1
    return-void

    .line 542
    :cond_2
    const/4 v4, 0x0

    .line 543
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v14}, Lcom/htc/music/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 544
    .local v8, pkgName:Ljava/lang/String;
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v14}, Lcom/htc/music/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, clsName:Ljava/lang/String;
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v14}, Lcom/htc/music/ShortcutInfo;->getType()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 546
    .local v6, launchType:I
    const/4 v5, 0x0

    .line 547
    .local v5, item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/4 v11, 0x0

    .line 548
    .local v11, resolveInfo:Landroid/content/pm/ResolveInfo;
    packed-switch v6, :pswitch_data_0

    .line 537
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 550
    :pswitch_0
    new-instance v5, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v5           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 551
    .restart local v5       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x2080078

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(Landroid/graphics/drawable/Drawable;)V
    invoke-static {v5, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2000(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/graphics/drawable/Drawable;)V

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0600bc

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setName(Ljava/lang/String;)V
    invoke-static {v5, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2100(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 553
    const-string v14, "com.htc.music"

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V
    invoke-static {v5, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2200(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 554
    const/4 v14, 0x1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setInnerItemEnable(Z)V
    invoke-static {v5, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2300(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V

    .line 555
    const/4 v14, 0x0

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v5, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2400(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 556
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getLibraryIntent()Landroid/content/Intent;

    move-result-object v14

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v5, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1200(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 560
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    invoke-virtual {v14, v8}, Lcom/htc/music/ShortcutPageInfo;->getPreloadIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 561
    if-eqz v4, :cond_3

    .line 562
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 563
    if-eqz v11, :cond_3

    .line 564
    new-instance v5, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v5           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 565
    .restart local v5       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/high16 v14, 0x1000

    invoke-virtual {v4, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v14

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v5, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1200(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 566
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v5, v6}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2400(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 567
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    invoke-virtual {v14, v8}, Lcom/htc/music/ShortcutPageInfo;->getPreloadIcon(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 568
    if-eqz v9, :cond_4

    .line 569
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v14

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(I)V
    invoke-static {v5, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 572
    :cond_4
    const-string v14, "com.melodis.midomiMusicIdentifier"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "com.melodis.midomiMusicIdentifier.freemium"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 574
    :cond_5
    const/4 v14, 0x1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setSoundHoundEnable(Z)V
    invoke-static {v5, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2600(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V

    .line 577
    :cond_6
    const-string v14, "com.htc.musicwall"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 578
    const/4 v14, 0x0

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIsDeletable(Z)V
    invoke-static {v5, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2700(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V

    .line 581
    :cond_7
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V
    invoke-static {v5, v8}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2200(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 583
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 587
    .local v3, insertIndex:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-gt v3, v14, :cond_8

    .line 588
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v14, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 590
    :cond_8
    const-string v14, "[LandingPage]"

    const-string v15, "reloadLaunchItemList, Insert index > mLaunchItemList size"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 597
    .end local v3           #insertIndex:I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 598
    if-eqz v4, :cond_3

    .line 599
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 600
    if-eqz v11, :cond_3

    .line 601
    new-instance v5, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v5           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 602
    .restart local v5       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/high16 v14, 0x1000

    invoke-virtual {v4, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v14

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v5, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1200(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 603
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v5, v6}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2400(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 604
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V
    invoke-static {v5, v8}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2200(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 605
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V

    .line 606
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 612
    :pswitch_3
    invoke-static {v8, v1}, Lcom/htc/music/util/MusicUtils;->getAppLaunchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 613
    if-eqz v4, :cond_3

    .line 614
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 615
    if-eqz v11, :cond_3

    .line 616
    new-instance v5, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v5           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 617
    .restart local v5       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/high16 v14, 0x1000

    invoke-virtual {v4, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v14

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v5, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1200(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 618
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v5, v6}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2400(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 619
    const-string v14, "com.htc.fm"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 620
    const v14, 0x7f020050

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(I)V
    invoke-static {v5, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 622
    :cond_9
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V
    invoke-static {v5, v8}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2200(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 623
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mUserAddList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 548
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private saveLaunchItemList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 635
    const-string v3, "LandingPage"

    const/4 v4, 0x7

    invoke-virtual {p0, v3, v4}, Lcom/htc/music/LandingPageActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 636
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 637
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "launchitemcount"

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 638
    const-string v3, "preloadlistcount"

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 639
    const-string v3, "autodetectlistcount"

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 642
    .local v2, strBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 643
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getPackageName()Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1600(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 646
    :cond_0
    const-string v3, "launchitemlist"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 648
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 649
    const/4 v1, 0x1

    :goto_1
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 650
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getItemType()I
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1500(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 651
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 653
    :cond_1
    const-string v3, "launchtypelist"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 655
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 656
    const/4 v1, 0x1

    :goto_2
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 657
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1400(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 658
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1400(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    :goto_3
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 660
    :cond_2
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 664
    :cond_3
    const-string v3, "launchclassnamelist"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 666
    const-string v3, "removelist"

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 668
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 669
    return-void
.end method

.method private scaleLaunchIcon(Landroid/widget/ImageView;II)V
    .locals 3
    .parameter "iv"
    .parameter "iconWidth"
    .parameter "iconHeight"

    .prologue
    .line 819
    iget v2, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgWidth:I

    sub-int/2addr v2, p2

    div-int/lit8 v0, v2, 0x2

    .line 820
    .local v0, paddingLeft:I
    iget v2, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgHeight:I

    sub-int/2addr v2, p3

    div-int/lit8 v1, v2, 0x2

    .line 821
    .local v1, paddingTop:I
    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 822
    return-void
.end method

.method private sendUsedAppULogMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"
    .parameter "label"

    .prologue
    .line 1134
    if-nez p1, :cond_0

    .line 1135
    const-string v2, "[LandingPage]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendUsedAppULogMessage, packageName is null!, label: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    :goto_0
    return-void

    .line 1139
    :cond_0
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 1140
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    const/16 v3, 0x2712

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1141
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1142
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "package_name"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    const-string v2, "label"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1145
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1148
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    const-string v2, "[LandingPage]"

    const-string v3, "sendUsedAppULogMessage, mNonUIHandler is null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V
    .locals 3
    .parameter "item"
    .parameter "resolveInfo"

    .prologue
    .line 801
    if-nez p2, :cond_1

    .line 802
    const-string v1, "[LandingPage]"

    const-string v2, "setNameAndIcon(), resolveInfo is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 807
    .local v0, pm:Landroid/content/pm/PackageManager;
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getIconId()I
    invoke-static {p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3200(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 808
    invoke-virtual {p2, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(Landroid/graphics/drawable/Drawable;)V
    invoke-static {p1, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2000(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/graphics/drawable/Drawable;)V

    .line 811
    :cond_2
    invoke-virtual {p2, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setName(Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2100(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 813
    const-string v1, "com.htc.vmm"

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 814
    const v1, 0x7f060002

    invoke-virtual {p0, v1}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setName(Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2100(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateLaunchItemsUI()V
    .locals 26

    .prologue
    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 673
    .local v8, itemNumber:I
    if-gtz v8, :cond_0

    .line 674
    const-string v21, "[LandingPage]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "itemNumber = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    :goto_0
    return-void

    .line 677
    :cond_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mHeaderViewList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_1

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mHeaderViewList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/View;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->removeHeaderView(Landroid/view/View;)Z

    .line 677
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 680
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mHeaderViewList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 682
    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    .line 683
    .local v16, resNameId:[I
    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v14, v0, [I

    fill-array-data v14, :array_1

    .line 684
    .local v14, resIconId:[I
    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v15, v0, [I

    fill-array-data v15, :array_2

    .line 686
    .local v15, resLayoutId:[I
    const/16 v17, 0x0

    .line 687
    .local v17, shortcutView:Landroid/view/View;
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 688
    .local v11, ll:Landroid/widget/LinearLayout;
    new-instance v21, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x2

    invoke-direct/range {v21 .. v23}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 689
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 691
    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const/high16 v23, 0x205

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const/high16 v25, 0x205

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 696
    const/4 v5, 0x3

    .line 697
    .local v5, column:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 698
    const/4 v5, 0x3

    .line 710
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v21, v0

    const v22, 0x7f030030

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 711
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const/high16 v25, 0x205

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 712
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->isHVGA()Z

    move-result v21

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 713
    const v21, 0x7f07006f

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 714
    .local v19, view:Landroid/view/View;
    const/16 v21, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 715
    const v21, 0x7f070072

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 716
    const/16 v21, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 719
    .end local v19           #view:Landroid/view/View;
    :cond_2
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 720
    const v21, 0x7f070063

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 721
    .local v9, iv:Landroid/widget/ImageView;
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 722
    .local v12, option:Landroid/graphics/BitmapFactory$Options;
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 724
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f020040

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v1, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 725
    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide v23, 0x3fe999999999999aL

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 726
    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide v23, 0x3fe999999999999aL

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 727
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 728
    .local v13, params:Landroid/view/ViewGroup$LayoutParams;
    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 729
    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 730
    const v21, 0x7f020040

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 732
    const v21, 0x7f070064

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #iv:Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 733
    .restart local v9       #iv:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f02003f

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v1, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 734
    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide v23, 0x3fe999999999999aL

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 735
    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide v23, 0x3fe999999999999aL

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 736
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 737
    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 738
    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 739
    const v21, 0x7f02003f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 740
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 741
    const/16 v21, 0x0

    aget v21, v16, v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 742
    .local v18, tv:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getName()Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2800(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 744
    .local v10, layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x205000d

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 745
    const/16 v21, 0x0

    aget v21, v15, v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 746
    .local v20, viewItem:Landroid/view/View;
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getClickListener()Landroid/view/View$OnClickListener;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2900(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnClickListener;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLongClickListener()Landroid/view/View$OnLongClickListener;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3000(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnLongClickListener;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getOnTouchListener()Landroid/view/View$OnTouchListener;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3100(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnTouchListener;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 752
    const v21, 0x7f070062

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 753
    .local v6, fl:Landroid/widget/FrameLayout;
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 754
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 758
    const/4 v7, 0x1

    :goto_3
    if-ge v7, v8, :cond_9

    .line 759
    rem-int v21, v7, v5

    if-nez v21, :cond_4

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v21, v0

    const v22, 0x7f030030

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 761
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const/high16 v25, 0x205

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 762
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->isHVGA()Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 763
    const v21, 0x7f07006f

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 764
    .restart local v19       #view:Landroid/view/View;
    const/16 v21, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 765
    const v21, 0x7f070072

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 766
    const/16 v21, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 769
    .end local v19           #view:Landroid/view/View;
    :cond_3
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 772
    :cond_4
    rem-int v21, v7, v5

    aget v21, v14, v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #iv:Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 773
    .restart local v9       #iv:Landroid/widget/ImageView;
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 774
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getIconId()I
    invoke-static/range {v21 .. v21}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3200(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v21

    if-lez v21, :cond_8

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getIconId()I
    invoke-static/range {v21 .. v21}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3200(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 777
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 778
    sget-object v21, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 785
    :goto_4
    rem-int v21, v7, v5

    aget v21, v16, v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .end local v18           #tv:Landroid/widget/TextView;
    check-cast v18, Landroid/widget/TextView;

    .line 786
    .restart local v18       #tv:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getName()Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2800(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    rem-int v21, v7, v5

    aget v21, v15, v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 788
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getClickListener()Landroid/view/View$OnClickListener;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2900(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnClickListener;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLongClickListener()Landroid/view/View$OnLongClickListener;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3000(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnLongClickListener;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getOnTouchListener()Landroid/view/View$OnTouchListener;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3100(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnTouchListener;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 758
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 699
    .end local v6           #fl:Landroid/widget/FrameLayout;
    .end local v9           #iv:Landroid/widget/ImageView;
    .end local v10           #layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v12           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v13           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v18           #tv:Landroid/widget/TextView;
    .end local v20           #viewItem:Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 700
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->isHVGA()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 701
    const/4 v5, 0x4

    goto/16 :goto_2

    .line 703
    :cond_6
    const/4 v5, 0x5

    goto/16 :goto_2

    .line 706
    :cond_7
    const-string v21, "[LandingPage]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unknown orientation change. mOrientation = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 780
    .restart local v6       #fl:Landroid/widget/FrameLayout;
    .restart local v9       #iv:Landroid/widget/ImageView;
    .restart local v10       #layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v12       #option:Landroid/graphics/BitmapFactory$Options;
    .restart local v13       #params:Landroid/view/ViewGroup$LayoutParams;
    .restart local v18       #tv:Landroid/widget/TextView;
    .restart local v20       #viewItem:Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getIcon()Landroid/graphics/drawable/Drawable;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3300(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 781
    const v21, 0x7f020065

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 782
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mSmallIconWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x3f99999a

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mSmallIconHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x3f99999a

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v9, v1, v2}, Lcom/htc/music/LandingPageActivity;->scaleLaunchIcon(Landroid/widget/ImageView;II)V

    goto/16 :goto_4

    .line 794
    :cond_9
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v11, v1, v2}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mHeaderViewList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 682
    nop

    :array_0
    .array-data 0x4
        0x65t 0x0t 0x7t 0x7ft
        0x68t 0x0t 0x7t 0x7ft
        0x6bt 0x0t 0x7t 0x7ft
        0x6et 0x0t 0x7t 0x7ft
        0x71t 0x0t 0x7t 0x7ft
    .end array-data

    .line 683
    :array_1
    .array-data 0x4
        0x63t 0x0t 0x7t 0x7ft
        0x67t 0x0t 0x7t 0x7ft
        0x6at 0x0t 0x7t 0x7ft
        0x6dt 0x0t 0x7t 0x7ft
        0x70t 0x0t 0x7t 0x7ft
    .end array-data

    .line 684
    :array_2
    .array-data 0x4
        0x61t 0x0t 0x7t 0x7ft
        0x66t 0x0t 0x7t 0x7ft
        0x69t 0x0t 0x7t 0x7ft
        0x6ct 0x0t 0x7t 0x7ft
        0x6ft 0x0t 0x7t 0x7ft
    .end array-data
.end method


# virtual methods
.method protected executeMenuAction(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 911
    if-nez p1, :cond_1

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 912
    :cond_1
    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    .line 913
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->launchMediaServer()V

    goto :goto_0
.end method

.method public isBypass()Z
    .locals 1

    .prologue
    .line 1154
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 934
    packed-switch p1, :pswitch_data_0

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 936
    :pswitch_0
    const/4 v9, -0x1

    if-ne p2, v9, :cond_0

    .line 937
    const/4 v4, 0x0

    .line 938
    .local v4, pkgName:Ljava/lang/String;
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 939
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 943
    :goto_1
    const-string v9, "[LandingPage]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ADD_APP_SHORTCUT, package name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const/4 v3, 0x3

    .line 945
    .local v3, itemType:I
    if-eqz v4, :cond_5

    .line 946
    iget-object v9, p0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    invoke-virtual {v9, v4}, Lcom/htc/music/ShortcutPageInfo;->getPreloadAutoDetectType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 947
    .local v1, integer:Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 948
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 953
    .end local v1           #integer:Ljava/lang/Integer;
    :cond_1
    :goto_2
    const-string v9, "[LandingPage]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ADD_APP_SHORTCUT, itemType = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v9, p0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 956
    .local v7, removeListStr:Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v9, ";"

    invoke-virtual {v4, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 957
    const-string v9, ";"

    invoke-virtual {v4, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 958
    iget-object v9, p0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 959
    iget-object v9, p0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    :cond_2
    new-instance v2, Lcom/htc/music/LandingPageActivity$LaunchItem;

    invoke-direct {v2, p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 963
    .local v2, item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/4 v8, 0x0

    .line 964
    .local v8, resolveInfo:Landroid/content/pm/ResolveInfo;
    packed-switch v3, :pswitch_data_1

    .line 1042
    :cond_3
    :goto_3
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->updateLaunchItemsUI()V

    goto/16 :goto_0

    .line 941
    .end local v2           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    .end local v3           #itemType:I
    .end local v7           #removeListStr:Ljava/lang/String;
    .end local v8           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_4
    const-string v9, "[LandingPage]"

    const-string v10, "ADD_APP_SHORTCUT, intent = null or intent.getComponent() = null"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 951
    .restart local v3       #itemType:I
    :cond_5
    const-string v9, "[LandingPage]"

    const-string v10, "onActivityResult, ADD_APP_SHORTCUT, package name is null"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 966
    .restart local v2       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    .restart local v7       #removeListStr:Ljava/lang/String;
    .restart local v8       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :pswitch_1
    if-eqz v4, :cond_3

    .line 969
    iget-object v9, p0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    invoke-virtual {v9, v4}, Lcom/htc/music/ShortcutPageInfo;->getPreloadIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 970
    .local v6, preloadIntent:Landroid/content/Intent;
    if-eqz v6, :cond_a

    .line 971
    new-instance v2, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v2           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    invoke-direct {v2, p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 972
    .restart local v2       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/high16 v9, 0x1000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v9

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v2, v9}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1200(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 973
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v2, v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2400(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 974
    iget-object v9, p0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    invoke-virtual {v9, v4}, Lcom/htc/music/ShortcutPageInfo;->getPreloadIcon(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 975
    .local v5, preloadIconResId:Ljava/lang/Integer;
    if-eqz v5, :cond_6

    .line 976
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(I)V
    invoke-static {v2, v9}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 979
    :cond_6
    const-string v9, "com.melodis.midomiMusicIdentifier"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "com.melodis.midomiMusicIdentifier.freemium"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 981
    :cond_7
    const/4 v9, 0x1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setSoundHoundEnable(Z)V
    invoke-static {v2, v9}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2600(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V

    .line 983
    :cond_8
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2200(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 984
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1400(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 985
    invoke-direct {p0, v2, v8}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V

    .line 986
    iget-object v9, p0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    iget-object v9, p0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 989
    .local v0, insertIndex:I
    iget-object v9, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gt v0, v9, :cond_9

    .line 990
    iget-object v9, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 992
    :cond_9
    const-string v9, "[LandingPage]"

    const-string v10, "onActivityResult, Insert index > mLaunchItemList size"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    iget-object v9, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 996
    .end local v0           #insertIndex:I
    .end local v5           #preloadIconResId:Ljava/lang/Integer;
    :cond_a
    const-string v9, "[LandingPage]"

    const-string v10, "onActivityResult, ADD_APP_SHORTCUT, TYPE_PRELOAD, preloadIntent is null"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1001
    .end local v6           #preloadIntent:Landroid/content/Intent;
    :pswitch_2
    if-eqz p3, :cond_b

    .line 1002
    new-instance v2, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v2           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    invoke-direct {v2, p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 1003
    .restart local v2       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/high16 v9, 0x1000

    invoke-virtual {p3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v9

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v2, v9}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1200(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 1004
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v2, v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2400(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 1005
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2200(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 1006
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1400(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 1007
    invoke-direct {p0, v2, v8}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V

    .line 1008
    iget-object v9, p0, Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    iget-object v9, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1011
    :cond_b
    const-string v9, "[LandingPage]"

    const-string v10, "onActivityResult, ADD_APP_SHORTCUT, TYPE_AUTO_DETECT, intent is null"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1016
    :pswitch_3
    if-eqz p3, :cond_e

    .line 1017
    new-instance v2, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v2           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    invoke-direct {v2, p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 1018
    .restart local v2       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/high16 v9, 0x1000

    invoke-virtual {p3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v9

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v2, v9}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1200(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 1019
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v2, v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2400(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 1020
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2200(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 1021
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1400(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 1022
    invoke-direct {p0, v2, v8}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V

    .line 1023
    iget-object v9, p0, Lcom/htc/music/LandingPageActivity;->mUserAddList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    const-string v9, "com.htc.fm"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1026
    const v9, 0x7f020050

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(I)V
    invoke-static {v2, v9}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 1027
    iget-object v9, p0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v0, v9, 0x1

    .line 1028
    .restart local v0       #insertIndex:I
    iget-object v9, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gt v0, v9, :cond_c

    .line 1029
    iget-object v9, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 1031
    :cond_c
    const-string v9, "[LandingPage]"

    const-string v10, "FMRadio\'s insert index > mLaunchItemList size"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    iget-object v9, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1035
    .end local v0           #insertIndex:I
    :cond_d
    iget-object v9, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1038
    :cond_e
    const-string v9, "[LandingPage]"

    const-string v10, "onActivityResult, ADD_APP_SHORTCUT, TYPE_OTHER, intent is null"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 934
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 964
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 422
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 424
    iget v1, p0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    .line 434
    :goto_0
    return-void

    .line 427
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    .line 428
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 429
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 430
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/htc/music/LandingPageActivity;->mScreenWidth:I

    .line 431
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/htc/music/LandingPageActivity;->mScreenHeight:I

    .line 433
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->updateLaunchItemsUI()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 303
    const-string v1, "[LandingPage]"

    const-string v2, "onCreate() +"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 305
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/music/LandingPageActivity;->setVolumeControlStream(I)V

    .line 307
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 308
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 309
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/htc/music/LandingPageActivity;->mScreenWidth:I

    .line 310
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/htc/music/LandingPageActivity;->mScreenHeight:I

    .line 312
    const v1, 0x7f03002e

    invoke-virtual {p0, v1}, Lcom/htc/music/LandingPageActivity;->setContentView(I)V

    .line 313
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    .line 314
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcListView;->enableAnimation(IZ)V

    .line 315
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setDrawBottomShadow(Z)V

    .line 317
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "LandingPageNonUIThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/LandingPageActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 318
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 319
    new-instance v1, Lcom/htc/music/LandingPageActivity$NonUIHandler;

    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/LandingPageActivity$NonUIHandler;-><init>(Lcom/htc/music/LandingPageActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    .line 321
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 323
    const-string v1, "[LandingPage]"

    const-string v2, "onCreate() -"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 438
    packed-switch p1, :pswitch_data_0

    .line 480
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 441
    :pswitch_0
    const/4 v0, 0x0

    .line 442
    .local v0, items:[Ljava/lang/CharSequence;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/CharSequence;

    .end local v0           #items:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    const v3, 0x7f0600dc

    invoke-virtual {p0, v3}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 445
    .restart local v0       #items:[Ljava/lang/CharSequence;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/music/LandingPageActivity$2;

    invoke-direct {v3, p0}, Lcom/htc/music/LandingPageActivity$2;-><init>(Lcom/htc/music/LandingPageActivity;)V

    invoke-virtual {v2, v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 478
    .local v1, longPressDialog:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0

    .line 438
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 828
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mMenu:Landroid/view/Menu;

    .line 829
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 831
    const v0, 0x7f0600d9

    invoke-interface {p1, v3, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 832
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDLNA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    const v0, 0x7f060029

    invoke-interface {p1, v3, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 836
    :cond_0
    const/4 v0, 0x3

    const v1, 0x2040396

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 837
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 838
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    const/16 v1, 0x2713

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 841
    :cond_1
    return v4
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 360
    const-string v0, "[LandingPage]"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 364
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 369
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 374
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 375
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 376
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mUserAddList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 377
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 378
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    invoke-virtual {v0}, Lcom/htc/music/ShortcutPageInfo;->clear()V

    .line 381
    :cond_2
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 382
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    .line 857
    const/4 v3, 0x0

    .line 858
    .local v3, intent:Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 906
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    return v7

    .line 860
    :sswitch_0
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 861
    .restart local v3       #intent:Landroid/content/Intent;
    const-class v7, Lcom/htc/music/AddAppShortcutActivity;

    invoke-virtual {v3, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 862
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 863
    .local v6, pkgNameList:[Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v0, v7, [Ljava/lang/String;

    .line 864
    .local v0, clsNameList:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v0

    if-ge v2, v7, :cond_0

    .line 865
    const/4 v7, 0x0

    aput-object v7, v0, v2

    .line 864
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 867
    :cond_0
    const/4 v2, 0x1

    :goto_2
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 868
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getPackageName()Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1600(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 869
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getItemType()I
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1500(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 870
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1400(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    .line 867
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 873
    :cond_2
    const-string v7, "currentpkg"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 874
    const-string v7, "currentcls"

    invoke-virtual {v3, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 875
    const/4 v7, 0x0

    invoke-virtual {p0, v3, v7}, Lcom/htc/music/LandingPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 879
    .end local v0           #clsNameList:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v6           #pkgNameList:[Ljava/lang/String;
    :sswitch_1
    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    if-eqz v7, :cond_3

    .line 880
    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    const v8, 0xea63

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 881
    .local v5, msg:Landroid/os/Message;
    const/4 v7, 0x2

    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 882
    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 884
    .end local v5           #msg:Landroid/os/Message;
    :cond_3
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->launchMediaServer()V

    goto/16 :goto_0

    .line 888
    :sswitch_2
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchVMMIntent()Landroid/content/Intent;

    move-result-object v4

    .line 889
    .local v4, launchVmmIntent:Landroid/content/Intent;
    const-string v7, "StartNewActivity"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 890
    invoke-virtual {p0, v4}, Lcom/htc/music/LandingPageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 893
    .end local v4           #launchVmmIntent:Landroid/content/Intent;
    :sswitch_3
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 894
    .restart local v3       #intent:Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.htc.showme"

    const-string v9, "com.htc.showme.ui.Search"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 896
    const-string v7, "android.intent.extra.SUBJECT"

    const-string v8, "music"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    const/4 v7, -0x2

    :try_start_0
    invoke-virtual {p0, v3, v7}, Lcom/htc/music/LandingPageActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 899
    :catch_0
    move-exception v1

    .line 900
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 858
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 416
    const-string v0, "[LandingPage]"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPause()V

    .line 418
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 485
    packed-switch p1, :pswitch_data_0

    .line 490
    :goto_0
    return-void

    .line 487
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 485
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    .line 847
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 848
    .local v1, item:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    .line 849
    .local v0, enable:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 850
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 852
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 848
    .end local v0           #enable:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 399
    const-string v0, "[LandingPage]"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    .line 402
    iget-boolean v0, p0, Lcom/htc/music/LandingPageActivity;->mFirstLaunch:Z

    if-nez v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 409
    :goto_0
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/LandingPageActivity$LaunchItem;

    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->getLibraryIntent()Landroid/content/Intent;

    move-result-object v1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1200(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 412
    :cond_0
    return-void

    .line 405
    :cond_1
    iput-boolean v2, p0, Lcom/htc/music/LandingPageActivity;->mFirstLaunch:Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 386
    const-string v0, "[LandingPage]"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStart()V

    .line 388
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 392
    const-string v0, "[LandingPage]"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->saveLaunchItemList()V

    .line 394
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStop()V

    .line 395
    return-void
.end method
