.class public abstract Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;
.super Lcom/htc/music/widget/MusicMaActivity;
.source "MusicAutoHeaderFooterActivity.java"

# interfaces
.implements Lcom/htc/music/widget/IMusicTabActivityInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$EditTextWatcher;
    }
.end annotation


# static fields
.field protected static final CUSTOMIZED_MENU_ACTION:I = 0xea63

.field public static final DIALOG_CREATE_FIRST_PLAYLIST:I = 0x25a

.field public static final DIALOG_NETWORK_SETTING:I = 0x259

.field public static final HTC_CONTEXT_MENU:I = 0x3e8

.field private static final MENU_PLAYER:I = 0x2711

.field private static final MENU_SEARCH:I = 0x2710

.field private static final MESSAGE_DELAY_TIME:I = 0x64

.field private static final SHOW_DATABASE_ERROR:I = 0xea62

.field private static final SHOW_EMPTY_VIEW:I = 0xea61

.field private static final TAG:Ljava/lang/String; = "[MusicAutoHeaderFooterActivity]"


# instance fields
.field protected mActionBar:Lcom/htc/widget/ActionBarExt;

.field protected mActionBarBackClickListener:Landroid/view/View$OnClickListener;

.field protected mBaseUIHandler:Landroid/os/Handler;

.field protected mCustomContainer:Lcom/htc/widget/ActionBarContainer;

.field protected mHeaderText:Lcom/htc/widget/ActionBarText;

.field private mHtcContextMenuIds:[I

.field private mHtcContextMenuItems:[Ljava/lang/CharSequence;

.field private mHtcContextMenuTitle:Ljava/lang/String;

.field protected mIsOnlineInnerType:Z

.field protected mMenu:Landroid/view/Menu;

.field private mMiniPlayer:Lcom/htc/music/MiniPlayer;

.field private mNoMusicViewStub:Landroid/view/ViewStub;

.field private mNoSDCardErrorViewStub:Landroid/view/ViewStub;

.field protected mOnlineSearchAction:Landroid/view/View$OnClickListener;

.field private mOrientation:I

.field protected mUseCustomLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/htc/music/widget/MusicMaActivity;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    .line 53
    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMenu:Landroid/view/Menu;

    .line 55
    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 58
    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 63
    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    .line 65
    iput-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    .line 69
    iput-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mUseCustomLayout:Z

    .line 401
    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mOrientation:I

    .line 846
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$1;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBarBackClickListener:Landroid/view/View$OnClickListener;

    .line 862
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$2;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mOnlineSearchAction:Landroid/view/View$OnClickListener;

    .line 916
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$3;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    .line 1284
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHtcContextMenuIds:[I

    return-object v0
.end method

.method private setTitleStyle(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->setCategoryProgressVisible(Z)V

    .line 242
    packed-switch p1, :pswitch_data_0

    .line 269
    :goto_0
    :pswitch_0
    return-void

    .line 245
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->setCategorySwitcherStyleTitle()V

    goto :goto_0

    .line 261
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->setStoreSwitchStyleTitle()V

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private startListenStore()V
    .locals 4

    .prologue
    .line 892
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.music.online.strorefont"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 893
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "InnerActivityType"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 896
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    :goto_0
    return-void

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "[MusicAutoHeaderFooterActivity]"

    const-string v3, "Opps, we can\'t launch store activity!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public disableCategoryDropDown()V
    .locals 0

    .prologue
    .line 759
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 836
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v1, :cond_0

    .line 837
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1, p1}, Lcom/htc/music/MiniPlayer;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 838
    .local v0, result:Z
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 841
    .end local v0           #result:Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected executeMenuAction(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 940
    return-void
.end method

.method public hideEmptyErrorView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 1030
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1031
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    const v2, 0xea61

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1032
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    const v2, 0xea62

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1035
    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    .line 1036
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1039
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_2

    .line 1044
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1048
    :cond_2
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1049
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 1050
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1053
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->setCategoryRightBtn(Z)V

    .line 1054
    return-void
.end method

.method protected hideHtcContextMenu()V
    .locals 1

    .prologue
    .line 1327
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->removeDialog(I)V

    .line 1328
    return-void
.end method

.method protected initMiniPlayer()V
    .locals 2

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 344
    .local v0, orientation:I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->resetMiniPlayer(Z)V

    .line 346
    return-void

    .line 344
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected initOnlineTitleLayout()V
    .locals 4

    .prologue
    .line 132
    iget-boolean v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-eqz v2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-nez v2, :cond_0

    .line 138
    new-instance v2, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    .line 139
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 143
    iget-boolean v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mUseCustomLayout:Z

    if-nez v2, :cond_0

    .line 147
    new-instance v2, Lcom/htc/widget/ActionBarText;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 148
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    .line 149
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 150
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 151
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x6

    .line 152
    .local v1, type:I
    if-eqz v0, :cond_2

    .line 153
    const-string v2, "InnerActivityType"

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 155
    :cond_2
    invoke-direct {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->setTitleStyle(I)V

    goto :goto_0
.end method

.method protected launchGlancePage()V
    .locals 3

    .prologue
    .line 856
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 857
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "showEmptyQueue"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 858
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->startActivity(Landroid/content/Intent;)V

    .line 859
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 882
    const-string v0, "[MusicAutoHeaderFooterActivity]"

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

    .line 883
    const v0, 0xc351

    if-ne p1, v0, :cond_0

    .line 884
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->startListenStore()V

    .line 889
    :goto_0
    return-void

    .line 888
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/MusicMaActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 408
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 410
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 416
    :goto_0
    return-void

    .line 411
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mOrientation:I

    .line 413
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mOrientation:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->resetMiniPlayer(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Lcom/htc/music/widget/MusicMaActivity;->onContentChanged()V

    .line 121
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->initOnlineTitleLayout()V

    .line 126
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->initMiniPlayer()V

    .line 127
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 420
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 423
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mOrientation:I

    .line 426
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    const/4 v10, 0x1

    .line 1229
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 1230
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 1231
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1277
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1233
    :sswitch_0
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHtcContextMenuTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHtcContextMenuItems:[Ljava/lang/CharSequence;

    new-instance v8, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$4;

    invoke-direct {v8, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$4;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 1247
    :sswitch_1
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 1250
    :sswitch_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1251
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030016

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1252
    .local v5, view:Landroid/view/View;
    const v6, 0x7f070043

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/AutoCompleteTextView;

    .line 1253
    .local v4, textview:Landroid/widget/AutoCompleteTextView;
    const v6, 0x7f06004c

    invoke-virtual {p0, v6}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1254
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1255
    invoke-virtual {v4, v10}, Landroid/widget/AutoCompleteTextView;->setSelectAllOnFocus(Z)V

    .line 1257
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f060082

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x2040152

    new-instance v8, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$6;

    invoke-direct {v8, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$6;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f060055

    new-instance v8, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$5;

    invoke-direct {v8, p0, v4}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$5;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 1271
    .local v1, createDialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v6, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$EditTextWatcher;

    invoke-direct {v6, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$EditTextWatcher;-><init>(Lcom/htc/widget/HtcAlertDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 1231
    nop

    :sswitch_data_0
    .sparse-switch
        0x259 -> :sswitch_1
        0x25a -> :sswitch_2
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "args"

    .prologue
    .line 872
    packed-switch p1, :pswitch_data_0

    .line 877
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicMaActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 874
    :pswitch_0
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 872
    nop

    :pswitch_data_0
    .packed-switch 0xaae61
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateFirstPlaylistDialogSaveClick(Ljava/lang/String;)V
    .locals 0
    .parameter "playlistName"

    .prologue
    .line 1282
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x2

    .line 168
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMenu:Landroid/view/Menu;

    .line 169
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 186
    :goto_0
    return v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMenu:Landroid/view/Menu;

    const/4 v1, 0x1

    const/16 v2, 0x2710

    const v3, 0x204026d

    invoke-interface {v0, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20800c2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 186
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 453
    invoke-super {p0}, Lcom/htc/music/widget/MusicMaActivity;->onDestroy()V

    .line 455
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MiniPlayer;->release()V

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    .line 459
    :cond_0
    return-void
.end method

.method protected onHtcContextItemSelected(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 1331
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 224
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 234
    const-string v0, "[MusicAutoHeaderFooterActivity]"

    const-string v1, "can\'t match any menu item!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 226
    :pswitch_0
    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0

    .line 230
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->launchGlancePage()V

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1311
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicMaActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1312
    packed-switch p1, :pswitch_data_0

    .line 1317
    .end local p2
    :goto_0
    return-void

    .line 1314
    .restart local p2
    :pswitch_0
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHtcContextMenuTitle:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1312
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x2711

    .line 191
    const/16 v1, 0x2710

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 192
    .local v0, search:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 193
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 197
    :cond_0
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mUseCustomLayout:Z

    if-eqz v1, :cond_1

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 219
    :goto_0
    return v1

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0

    .line 201
    :cond_2
    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mOrientation:I

    if-ne v1, v2, :cond_3

    .line 202
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    .line 204
    const v1, 0x7f0600c9

    invoke-interface {p1, v4, v3, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020025

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 219
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0

    .line 207
    :cond_3
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 432
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->removeDialog(I)V

    .line 433
    invoke-super {p0}, Lcom/htc/music/widget/MusicMaActivity;->onResume()V

    .line 435
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MiniPlayer;->startMonitor()V

    .line 438
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 442
    invoke-super {p0}, Lcom/htc/music/widget/MusicMaActivity;->onStop()V

    .line 446
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MiniPlayer;->stopMonitor()V

    .line 449
    :cond_0
    return-void
.end method

.method protected resetMiniPlayer(Z)V
    .locals 4
    .parameter "isHorizontal"

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f07003b

    .line 349
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-eqz v1, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mUseCustomLayout:Z

    if-nez v1, :cond_0

    .line 352
    if-eqz p1, :cond_3

    .line 353
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v1, :cond_0

    .line 355
    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 356
    .local v0, container:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 358
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->isActivityResumed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 359
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->stopMonitor()V

    .line 361
    :cond_2
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->release()V

    .line 362
    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    goto :goto_0

    .line 365
    .end local v0           #container:Landroid/widget/LinearLayout;
    :cond_3
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-nez v1, :cond_0

    .line 367
    invoke-static {p0}, Lcom/htc/music/MiniPlayer$MiniPlayerCreator;->createMiniPlayer(Landroid/app/Activity;)Lcom/htc/music/MiniPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    .line 369
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->inflateView()V

    .line 371
    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 372
    .restart local v0       #container:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_4

    .line 373
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 375
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->isActivityResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->startMonitor()V

    goto :goto_0

    .line 379
    :cond_4
    const-string v1, "[MusicAutoHeaderFooterActivity]"

    const-string v2, "can\'t find R.id.listview_content_layout!! so we can\'t add mini player view"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->release()V

    .line 381
    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    goto :goto_0
.end method

.method protected resetSDErrorLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1175
    sget v2, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mEnableLandscapeHorizontalSDError:I

    if-nez v2, :cond_1

    .line 1215
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    .line 1191
    const v2, 0x7f07007c

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1192
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1193
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1194
    .local v0, param:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_2

    .line 1195
    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mOrientation:I

    if-ne v4, v2, :cond_3

    .line 1196
    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1203
    .end local v0           #param:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    :goto_1
    const v2, 0x7f07003f

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1204
    if-eqz v1, :cond_0

    .line 1205
    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mOrientation:I

    if-ne v4, v2, :cond_4

    move-object v2, v1

    .line 1206
    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1210
    :goto_2
    check-cast v1, Landroid/widget/LinearLayout;

    .end local v1           #view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_0

    .line 1198
    .restart local v0       #param:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1       #view:Landroid/view/View;
    :cond_3
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_1

    .end local v0           #param:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    move-object v2, v1

    .line 1208
    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_2
.end method

.method public setCategoryLeftBtnEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 702
    return-void
.end method

.method public setCategoryLeftBtnImage(II)V
    .locals 0
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 730
    return-void
.end method

.method public setCategoryLeftBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 741
    return-void
.end method

.method public setCategoryLeftBtnOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 750
    return-void
.end method

.method public setCategoryLeftBtnVisible(Z)V
    .locals 0
    .parameter "setVisible"

    .prologue
    .line 719
    return-void
.end method

.method public setCategoryProgressVisible(Z)V
    .locals 2
    .parameter "setVisible"

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-eqz v0, :cond_1

    .line 620
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 621
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->setCategoryProgressVisible(Z)V

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 625
    if-eqz p1, :cond_2

    .line 626
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    goto :goto_0

    .line 628
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method protected setCategoryRightBtn(Z)V
    .locals 0
    .parameter "setEnable"

    .prologue
    .line 516
    return-void
.end method

.method public setCategoryRightBtn2Enable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 774
    return-void
.end method

.method public setCategoryRightBtn2Image(II)V
    .locals 0
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 802
    return-void
.end method

.method public setCategoryRightBtn2Image(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 816
    return-void
.end method

.method public setCategoryRightBtn2OnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 829
    return-void
.end method

.method public setCategoryRightBtn2Visible(Z)V
    .locals 0
    .parameter "setVisible"

    .prologue
    .line 791
    return-void
.end method

.method public setCategoryRightBtnEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 647
    return-void
.end method

.method public setCategoryRightBtnImage(II)V
    .locals 0
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 666
    return-void
.end method

.method public setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 680
    return-void
.end method

.method public setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 693
    return-void
.end method

.method public setCategoryRightBtnVisible(Z)V
    .locals 0
    .parameter "setVisibile"

    .prologue
    .line 658
    return-void
.end method

.method public setCategorySwitcherStyleTitle()V
    .locals 2

    .prologue
    .line 281
    const-string v0, "[MusicAutoHeaderFooterActivity]"

    const-string v1, "setCategorySwitcherStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f0600b6

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 286
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "layoutResID"

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->setContentView(IZ)V

    .line 110
    return-void
.end method

.method public setContentView(IZ)V
    .locals 2
    .parameter "layoutResID"
    .parameter "requestWindowFeatureOverlay"

    .prologue
    const/4 v1, 0x1

    .line 72
    const v0, 0x7f03003b

    if-eq v0, p1, :cond_0

    const v0, 0x7f030026

    if-ne v0, p1, :cond_2

    .line 74
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mUseCustomLayout:Z

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3

    .line 80
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->requestWindowFeature(I)Z

    .line 81
    if-eqz p2, :cond_1

    .line 82
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->requestWindowFeature(I)Z

    .line 88
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->setContentView(I)V

    .line 89
    return-void

    .line 76
    :cond_2
    iput-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mUseCustomLayout:Z

    goto :goto_0

    .line 85
    :cond_3
    iput-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    goto :goto_1
.end method

.method public setEmptyViewText(I)V
    .locals 2
    .parameter "rid"

    .prologue
    .line 944
    const v1, 0x7f070080

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 945
    .local v0, text:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 946
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 947
    :cond_0
    return-void
.end method

.method public setMainTitle(I)V
    .locals 2
    .parameter "mainTitleRes"

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-eqz v0, :cond_1

    .line 551
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/htc/music/widget/MusicMaActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 556
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    goto :goto_0
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "mainTitle"

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-eqz v0, :cond_1

    .line 562
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryTitle(I)V
    .locals 2
    .parameter "secondaryTitleRes"

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-eqz v0, :cond_1

    .line 573
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/htc/music/widget/MusicMaActivity;->setCategorySecondaryTitle(Ljava/lang/String;)V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_0

    .line 577
    if-lez p1, :cond_2

    .line 578
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 579
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0

    .line 581
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "secondaryTitle"

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-eqz v0, :cond_1

    .line 588
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->setCategorySecondaryTitle(Ljava/lang/String;)V

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_0

    .line 592
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 593
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0

    .line 596
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryTitleVisible(Z)V
    .locals 2
    .parameter "setVisible"

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-eqz v0, :cond_1

    .line 603
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->setCategorySecondaryTitleVisible(Z)V

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_0

    .line 607
    if-eqz p1, :cond_2

    .line 608
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0

    .line 610
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method protected setStoreSwitchStyleTitle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 289
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f0600bf

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 291
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 297
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    :cond_1
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleId"

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 339
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 304
    if-nez p1, :cond_0

    .line 305
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->setTitle(Ljava/lang/String;)V

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 4
    .parameter "title"

    .prologue
    .line 312
    iget-boolean v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mUseCustomLayout:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-eqz v2, :cond_3

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->isActivityResumed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 314
    const-string v2, "[MusicAutoHeaderFooterActivity]"

    const-string v3, "activity is paused, do not set category title status"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_1
    :goto_0
    return-void

    .line 318
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 320
    .local v0, rootParent:Landroid/app/Activity;
    if-eqz v0, :cond_3

    instance-of v2, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v2, :cond_3

    move-object v1, v0

    .line 321
    check-cast v1, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .line 322
    .local v1, tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    invoke-interface {v1, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setSecondaryTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    .end local v0           #rootParent:Landroid/app/Activity;
    .end local v1           #tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    :cond_3
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-eqz v2, :cond_1

    .line 328
    if-eqz p1, :cond_4

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 329
    :cond_4
    const-string v2, "[MusicAutoHeaderFooterActivity]"

    const-string v3, "someone set main title to NULL || empty!! ignore..."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_5
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v2, p1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 333
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    goto :goto_0
.end method

.method public showDatabaseError()V
    .locals 4

    .prologue
    .line 1057
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1058
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    const v2, 0xea61

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1059
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    const v2, 0xea62

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1060
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1064
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 1062
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->showDatabaseError(I)V

    goto :goto_0
.end method

.method public showDatabaseError(I)V
    .locals 9
    .parameter "nothing"

    .prologue
    const/16 v6, 0x8

    const/4 v8, 0x0

    .line 1068
    const v5, 0x102000a

    invoke-virtual {p0, v5}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1069
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1070
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1074
    :cond_0
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_1

    .line 1075
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1098
    :cond_1
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-nez v5, :cond_2

    .line 1099
    const v5, 0x7f07003e

    invoke-virtual {p0, v5}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    .line 1102
    :cond_2
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_4

    .line 1103
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1104
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->resetSDErrorLayout()V

    .line 1106
    const v5, 0x7f070086

    invoke-virtual {p0, v5}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1107
    if-nez v4, :cond_3

    const v5, 0x7f07003f

    invoke-virtual {p0, v5}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1108
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1111
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 1112
    .local v2, status:Ljava/lang/String;
    const v1, 0x20400a0

    .line 1114
    .local v1, message:I
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v0

    .line 1115
    .local v0, isInternalStorage:Z
    if-eqz v0, :cond_5

    .line 1116
    const-string v5, "[MusicAutoHeaderFooterActivity]"

    const-string v6, "isInternalStorage"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    const v1, 0x7f06002a

    .line 1120
    :cond_5
    const-string v5, "shared"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1121
    if-eqz v0, :cond_8

    .line 1122
    const v1, 0x7f060039

    .line 1166
    :cond_6
    :goto_0
    const v5, 0x7f07007c

    invoke-virtual {p0, v5}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1167
    .local v3, tv:Landroid/widget/TextView;
    if-eqz v3, :cond_7

    .line 1168
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1171
    :cond_7
    invoke-virtual {p0, v8}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->setCategoryRightBtn(Z)V

    .line 1172
    return-void

    .line 1124
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_8
    const v1, 0x7f060038

    goto :goto_0

    .line 1128
    :cond_9
    const-string v5, "removed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1130
    if-eqz v0, :cond_a

    .line 1131
    const v1, 0x7f060039

    goto :goto_0

    .line 1134
    :cond_a
    const v1, 0x20400a0

    goto :goto_0

    .line 1136
    :cond_b
    const-string v5, "unmounted"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1137
    const v1, 0x20401fa

    .line 1139
    if-eqz v0, :cond_6

    .line 1140
    const v1, 0x7f060039

    goto :goto_0

    .line 1142
    :cond_c
    const-string v5, "checking"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1143
    if-eqz v0, :cond_d

    .line 1144
    const v1, 0x7f060039

    goto :goto_0

    .line 1147
    :cond_d
    const v1, 0x20400a0

    goto :goto_0

    .line 1149
    :cond_e
    const-string v5, "nofs"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1150
    const v1, 0x7f06002a

    .line 1152
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1153
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x20401fd

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_0

    .line 1154
    :cond_f
    if-eqz v0, :cond_10

    .line 1155
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x20401fe

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_0

    .line 1157
    :cond_10
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x20401fb

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_0

    .line 1160
    :cond_11
    const-string v5, "[MusicAutoHeaderFooterActivity]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showDatabaseError: unknown status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public showEmptyView()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 998
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 999
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1000
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1003
    :cond_0
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_1

    .line 1008
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1011
    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-nez v3, :cond_2

    .line 1012
    const v3, 0x7f07003c

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    .line 1014
    :cond_2
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1016
    const v3, 0x7f070080

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1017
    .local v1, text:Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 1018
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1020
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->setCategoryRightBtn(Z)V

    .line 1022
    const v3, 0x7f070081

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1023
    .local v0, appendixIcon:Landroid/widget/ImageView;
    if-eqz v0, :cond_4

    .line 1024
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1026
    :cond_4
    return-void
.end method

.method public showEmptyView(I)V
    .locals 4
    .parameter "textResId"

    .prologue
    .line 950
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 951
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    const v2, 0xea62

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 952
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    const v2, 0xea61

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 953
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 954
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 958
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 956
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->showEmptyView(II)V

    goto :goto_0
.end method

.method public showEmptyView(II)V
    .locals 6
    .parameter "textResId"
    .parameter "appendixIconResId"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 962
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 963
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 964
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 967
    :cond_0
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_1

    .line 972
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 975
    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-nez v3, :cond_2

    .line 976
    const v3, 0x7f07003c

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    .line 978
    :cond_2
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 980
    const v3, 0x7f070080

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 981
    .local v1, text:Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 982
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 984
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->setCategoryRightBtn(Z)V

    .line 986
    const v3, 0x7f070081

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 987
    .local v0, appendixIcon:Landroid/widget/ImageView;
    if-eqz v0, :cond_4

    .line 988
    if-lez p2, :cond_5

    .line 989
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 990
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 995
    :cond_4
    :goto_0
    return-void

    .line 992
    :cond_5
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V
    .locals 1
    .parameter "title"
    .parameter "items"
    .parameter "ids"

    .prologue
    .line 1320
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHtcContextMenuTitle:Ljava/lang/String;

    .line 1321
    iput-object p2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHtcContextMenuItems:[Ljava/lang/CharSequence;

    .line 1322
    iput-object p3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHtcContextMenuIds:[I

    .line 1323
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->showDialog(I)V

    .line 1324
    return-void
.end method

.method public showSpinner(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 273
    .local v0, parent:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 274
    check-cast v1, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .line 275
    .local v1, tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    invoke-interface {v1, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryProgressVisible(Z)V

    .line 277
    .end local v1           #tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-eqz v0, :cond_0

    .line 523
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->startActivity(Landroid/content/Intent;)V

    .line 527
    :goto_0
    return-void

    .line 525
    :cond_0
    const/4 v0, -0x2

    invoke-super {p0, p1, v0}, Lcom/htc/music/widget/MusicMaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_0

    if-ltz p2, :cond_1

    .line 533
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicMaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_1
    const/4 v0, -0x2

    invoke-super {p0, p1, v0}, Lcom/htc/music/widget/MusicMaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .parameter "tag"
    .parameter "intent"

    .prologue
    .line 540
    const/4 v0, -0x2

    invoke-super {p0, p2, v0}, Lcom/htc/music/widget/MusicMaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 541
    return-void
.end method

.method public startMaActivityForResult(Landroid/content/Intent;ILcom/htc/music/widget/MusicMaActivity;)V
    .locals 0
    .parameter "intent"
    .parameter "requestCode"
    .parameter "caller"

    .prologue
    .line 544
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicMaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 545
    return-void
.end method

.method protected triggerPlayAllAction()V
    .locals 4

    .prologue
    .line 1335
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-eqz v1, :cond_1

    .line 1336
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 1337
    .local v0, parent:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz v1, :cond_0

    .line 1338
    check-cast v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    .end local v0           #parent:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->triggerPlayAllAction()V

    .line 1349
    :goto_0
    return-void

    .line 1340
    .restart local v0       #parent:Landroid/app/Activity;
    :cond_0
    const-string v1, "[MusicAutoHeaderFooterActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[preparePlayAllAction] Parent(="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not MusicBrowserTabActivity!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1343
    .end local v0           #parent:Landroid/app/Activity;
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v1, :cond_2

    .line 1344
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->stopMonitor()V

    goto :goto_0

    .line 1346
    :cond_2
    const-string v1, "[MusicAutoHeaderFooterActivity]"

    const-string v2, "[preparePlayAllAction] !mIsOnlineInnerType && mMiniPlayer==null."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
