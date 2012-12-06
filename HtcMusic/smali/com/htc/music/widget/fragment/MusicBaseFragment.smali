.class public Lcom/htc/music/widget/fragment/MusicBaseFragment;
.super Landroid/app/Fragment;
.source "MusicBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;
    }
.end annotation


# static fields
.field private static final DELETION_TRACK_COMPLETED:I = 0x0

.field public static final START_NEW_ACTIVITY:I = -0x2

.field private static final TAG:Ljava/lang/String; = "[MusicBaseFragment]"

.field protected static mEnableLandscapeHorizontalSDError:I


# instance fields
.field protected mEnableSearch:Z

.field private mFragmentResumed:Z

.field protected mIntent:Landroid/content/Intent;

.field protected mIsEnhancerExist:Z

.field mLayout:Landroid/view/View;

.field private mLayoutId:I

.field private mOrientation:I

.field protected mRes:Landroid/content/res/Resources;

.field private mbufferdialog:Landroid/app/ProgressDialog;

.field private messageHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, -0x1

    sput v0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mEnableLandscapeHorizontalSDError:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mIsEnhancerExist:Z

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mOrientation:I

    .line 39
    iput-object v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mRes:Landroid/content/res/Resources;

    .line 46
    iput-boolean v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mFragmentResumed:Z

    .line 48
    iput-object v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mIntent:Landroid/content/Intent;

    .line 220
    iput-boolean v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mEnableSearch:Z

    .line 287
    iput-object v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mbufferdialog:Landroid/app/ProgressDialog;

    .line 300
    new-instance v0, Lcom/htc/music/widget/fragment/MusicBaseFragment$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment$1;-><init>(Lcom/htc/music/widget/fragment/MusicBaseFragment;)V

    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->messageHandler:Landroid/os/Handler;

    .line 373
    iput v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayoutId:I

    .line 379
    iput-object v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayout:Landroid/view/View;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/widget/fragment/MusicBaseFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mbufferdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/widget/fragment/MusicBaseFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "where"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 290
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v7

    .line 291
    .local v7, deleteContent:Landroid/app/Activity;
    if-nez v7, :cond_0

    move-object v7, p1

    check-cast v7, Landroid/app/Activity;

    .line 293
    :cond_0
    const-string v1, ""

    const v2, 0x7f060090

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v7, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mbufferdialog:Landroid/app/ProgressDialog;

    .line 294
    new-instance v0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;-><init>(Lcom/htc/music/widget/fragment/MusicBaseFragment;Lcom/htc/music/widget/fragment/MusicBaseFragment$1;)V

    .local v0, mDeleteAlbum:Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 295
    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->Init(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance v8, Ljava/lang/Thread;

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 297
    .local v8, deletethread:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 298
    return-void
.end method

.method public disableSearch()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mEnableSearch:Z

    .line 224
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 232
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mEnableSearch:Z

    if-eqz v2, :cond_0

    .line 233
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 240
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mEnableSearch:Z

    if-eqz v2, :cond_1

    .line 241
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :cond_1
    move v0, v1

    .line 247
    :goto_0
    :pswitch_0
    return v0

    .line 235
    :pswitch_1
    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3, v1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_1
    .end packed-switch

    .line 241
    :pswitch_data_1
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public enableSearch()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mEnableSearch:Z

    .line 228
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 409
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method protected isFragmentResumed()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mFragmentResumed:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 163
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 164
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 80
    const-string v0, "[MusicBaseFragment]"

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

    .line 81
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 83
    iget v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mOrientation:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->setHasOptionsMenu(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    .local v0, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mOrientation:I

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mIsEnhancerExist:Z

    .line 70
    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mRes:Landroid/content/res/Resources;

    .line 72
    const/4 v1, -0x1

    sget v2, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mEnableLandscapeHorizontalSDError:I

    if-ne v1, v2, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0601b9

    invoke-static {v1, v2}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v1

    sput v1, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mEnableLandscapeHorizontalSDError:I

    .line 76
    :cond_1
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Z
    .locals 1
    .parameter "dialogId"
    .parameter "bundle"

    .prologue
    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 383
    iget v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayoutId:I

    if-nez v2, :cond_0

    .line 384
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 385
    .local v0, lala:Landroid/widget/TextView;
    const-string v2, "lalala~~"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayout:Landroid/view/View;

    .line 401
    .end local v0           #lala:Landroid/widget/TextView;
    :goto_0
    return-object v0

    .line 389
    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayout:Landroid/view/View;

    if-nez v2, :cond_2

    .line 390
    iget v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayoutId:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayout:Landroid/view/View;

    .line 401
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayout:Landroid/view/View;

    goto :goto_0

    .line 392
    :cond_2
    iget-object v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 393
    .local v1, parent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 394
    iget-object v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onDeletionCompleted()V
    .locals 2

    .prologue
    .line 319
    const-string v0, "[MusicBaseFragment]"

    const-string v1, "call parent Empty onDeletionCompleted()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public onMaBackPressed()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mFragmentResumed:Z

    .line 109
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mFragmentResumed:Z

    .line 96
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 98
    iget-object v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mRes:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 100
    .local v0, newConfig:Landroid/content/res/Configuration;
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 102
    .end local v0           #newConfig:Landroid/content/res/Configuration;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 114
    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 2
    .parameter "receiver"
    .parameter "filter"

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 417
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 421
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected setCategoryProgressVisible(Z)V
    .locals 3
    .parameter "setVisible"

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->isFragmentResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    const-string v1, "[MusicBaseFragment]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 212
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 213
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryProgressVisible(Z)V

    goto :goto_0
.end method

.method protected setCategorySecondaryTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->isFragmentResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 183
    const-string v1, "[MusicBaseFragment]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 188
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 189
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setSecondaryTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setCategorySecondaryTitleVisible(Z)V
    .locals 3
    .parameter "setVisible"

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->isFragmentResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    const-string v1, "[MusicBaseFragment]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 200
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 201
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setSecondaryTitleVisible(Z)V

    goto :goto_0
.end method

.method protected setCatgoryMainTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->isFragmentResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    const-string v1, "[MusicBaseFragment]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 176
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 177
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setMainTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 0
    .parameter "layoutResId"

    .prologue
    .line 375
    iput p1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayoutId:I

    .line 376
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mIntent:Landroid/content/Intent;

    .line 52
    return-void
.end method

.method public setResult(I)V
    .locals 2
    .parameter "resultCode"

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 450
    .local v0, act:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 453
    :goto_0
    return-void

    .line 452
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public setResult(ILandroid/content/Intent;)V
    .locals 1
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 457
    .local v0, act:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 459
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected showDialog(I)V
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 434
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->showDialog(ILandroid/os/Bundle;)V

    .line 435
    return-void
.end method

.method protected showDialog(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "dialogId"
    .parameter "bundle"

    .prologue
    .line 439
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 7
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 127
    const-string v3, "StartNewActivity"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 128
    .local v0, forceStartNewActivity:Z
    if-eqz v0, :cond_0

    .line 129
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 159
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 136
    .local v1, rootParent:Landroid/app/Activity;
    instance-of v3, v1, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v3, :cond_4

    move-object v2, v1

    .line 138
    check-cast v2, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .line 140
    .local v2, tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    const/4 v3, -0x2

    if-ne v3, p2, :cond_1

    .line 141
    invoke-super {p0, p1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 142
    :cond_1
    if-ne v5, p2, :cond_3

    .line 143
    const-string v3, "com.htc.music.PLAYBACK_VIEWER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 144
    invoke-super {p0, p1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 146
    :cond_2
    const-string v3, "ShowActivityTitle"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 153
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 157
    .end local v2           #tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startLocalSearch()V
    .locals 2

    .prologue
    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.LOCALSEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 276
    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 277
    return-void
.end method

.method public startOnlineSearchPage()V
    .locals 2

    .prologue
    .line 280
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.ONLINESEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 282
    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 283
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

    .line 254
    const-string v2, "[MusicBaseFragment]"

    const-string v3, "musicMaActivity startSearch...."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-boolean v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mEnableSearch:Z

    if-nez v2, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    const/4 v1, 0x0

    .line 258
    .local v1, type:I
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 259
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 260
    const-string v2, "InnerActivityType"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 261
    and-int/lit16 v1, v1, 0xfe

    .line 264
    :cond_2
    if-eq v4, v1, :cond_3

    const/4 v2, 0x2

    if-ne v2, v1, :cond_4

    .line 266
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->startLocalSearch()V

    goto :goto_0

    .line 267
    :cond_4
    const/16 v2, 0xa

    if-eq v2, v1, :cond_5

    const/16 v2, 0x8

    if-ne v2, v1, :cond_0

    .line 269
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->startOnlineSearchPage()V

    goto :goto_0
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 426
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 429
    :cond_0
    return-void
.end method
