.class public Lcom/htc/music/widget/fragment/MusicCommonFragment;
.super Lcom/htc/music/widget/fragment/MusicBaseFragment;
.source "MusicCommonFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[MusicCommonFragment]"


# instance fields
.field protected mActionBar:Lcom/htc/widget/ActionBarExt;

.field protected mCustomContainer:Lcom/htc/widget/ActionBarContainer;

.field protected mHeaderText:Lcom/htc/widget/ActionBarText;

.field private mNoMusicViewStub:Landroid/view/ViewStub;

.field private mNoSDCardErrorViewStub:Landroid/view/ViewStub;

.field private mOrientation:I

.field protected mUseCustomLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mActionBar:Lcom/htc/widget/ActionBarExt;

    .line 36
    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 39
    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 43
    iput-boolean v1, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mUseCustomLayout:Z

    .line 108
    iput v1, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mOrientation:I

    return-void
.end method

.method private startListenStore()V
    .locals 4

    .prologue
    .line 221
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.music.online.strorefont"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "InnerActivityType"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "[MusicCommonFragment]"

    const-string v3, "Opps, we can\'t launch store activity!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public hideEmptyErrorView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 313
    iget-object v1, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    .line 318
    iget-object v1, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 322
    :cond_1
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 323
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 324
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    :cond_2
    return-void
.end method

.method protected launchGlancePage()V
    .locals 3

    .prologue
    .line 201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "showEmptyQueue"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->startActivity(Landroid/content/Intent;)V

    .line 204
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 211
    const-string v0, "[MusicCommonFragment]"

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

    .line 212
    const v0, 0xc351

    if-ne p1, v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->startListenStore()V

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 117
    iget v0, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mOrientation:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mOrientation:I

    .line 128
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->onDestroy()V

    .line 146
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->onResume()V

    .line 136
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->onStop()V

    .line 141
    return-void
.end method

.method protected resetSDErrorLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 386
    sget v2, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mEnableLandscapeHorizontalSDError:I

    if-nez v2, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    .line 389
    const v2, 0x7f07007c

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 390
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 391
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 392
    .local v0, param:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_2

    .line 393
    iget v2, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mOrientation:I

    if-ne v4, v2, :cond_3

    .line 394
    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 401
    .end local v0           #param:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    :goto_1
    const v2, 0x7f07003f

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 402
    if-eqz v1, :cond_0

    .line 403
    iget v2, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mOrientation:I

    if-ne v4, v2, :cond_4

    move-object v2, v1

    .line 404
    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 408
    :goto_2
    check-cast v1, Landroid/widget/LinearLayout;

    .end local v1           #view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_0

    .line 396
    .restart local v0       #param:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1       #view:Landroid/view/View;
    :cond_3
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_1

    .end local v0           #param:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    move-object v2, v1

    .line 406
    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_2
.end method

.method public setCategoryProgressVisible(Z)V
    .locals 0
    .parameter "setVisible"

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->setCategoryProgressVisible(Z)V

    .line 187
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "layoutResID"

    .prologue
    .line 47
    const v0, 0x7f03003b

    if-eq v0, p1, :cond_0

    const v0, 0x7f030026

    if-ne v0, p1, :cond_1

    .line 49
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mUseCustomLayout:Z

    .line 54
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->setContentView(I)V

    .line 55
    return-void

    .line 51
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mUseCustomLayout:Z

    goto :goto_0
.end method

.method public setEmptyViewText(I)V
    .locals 2
    .parameter "rid"

    .prologue
    .line 236
    const v1, 0x7f070080

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 237
    .local v0, text:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 240
    :cond_0
    return-void
.end method

.method public setMainTitle(I)V
    .locals 1
    .parameter "mainTitleRes"

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "mainTitle"

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public setSecondaryTitle(I)V
    .locals 1
    .parameter "secondaryTitleRes"

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->setCategorySecondaryTitle(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public setSecondaryTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "secondaryTitle"

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->setCategorySecondaryTitle(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public setSecondaryTitleVisible(Z)V
    .locals 0
    .parameter "setVisible"

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->setCategorySecondaryTitleVisible(Z)V

    .line 180
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleId"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->setTitle(Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 4
    .parameter "title"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->isFragmentResumed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    const-string v2, "[MusicCommonFragment]"

    const-string v3, "activity is paused, do not set category title status"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 93
    .local v0, rootParent:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 94
    check-cast v1, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .line 95
    .local v1, tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    invoke-interface {v1, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setSecondaryTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showDatabaseError()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 331
    const v4, 0x102000a

    invoke-virtual {p0, v4}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 332
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 333
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 337
    :cond_0
    iget-object v4, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_1

    .line 338
    iget-object v4, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v4, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 342
    :cond_1
    iget-object v4, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-nez v4, :cond_2

    .line 343
    const v4, 0x7f07003e

    invoke-virtual {p0, v4}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    iput-object v4, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    .line 346
    :cond_2
    iget-object v4, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_4

    .line 347
    iget-object v4, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 348
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->resetSDErrorLayout()V

    .line 350
    const v4, 0x7f070086

    invoke-virtual {p0, v4}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 351
    if-nez v3, :cond_3

    const v4, 0x7f07003f

    invoke-virtual {p0, v4}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 352
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 355
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, status:Ljava/lang/String;
    const v0, 0x20400a0

    .line 359
    .local v0, message:I
    const-string v4, "shared"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 360
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 361
    const v0, 0x7f060039

    .line 380
    :cond_5
    :goto_0
    const v4, 0x7f07007c

    invoke-virtual {p0, v4}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 381
    .local v2, tv:Landroid/widget/TextView;
    if-eqz v2, :cond_6

    .line 382
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 383
    :cond_6
    return-void

    .line 363
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_7
    const v0, 0x7f060038

    goto :goto_0

    .line 367
    :cond_8
    const-string v4, "removed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 368
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 369
    const v0, 0x7f060039

    goto :goto_0

    .line 372
    :cond_9
    const v0, 0x20400a0

    goto :goto_0

    .line 373
    :cond_a
    const-string v4, "unmounted"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 374
    const v0, 0x20401fa

    goto :goto_0
.end method

.method public showEmptyView()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 282
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 283
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 284
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 287
    :cond_0
    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_1

    .line 288
    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 291
    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-nez v3, :cond_2

    .line 292
    const v3, 0x7f07003c

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoMusicViewStub:Landroid/view/ViewStub;

    .line 294
    :cond_2
    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_5

    .line 295
    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 300
    :goto_0
    const v3, 0x7f070080

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 301
    .local v1, text:Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 302
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    :cond_3
    const v3, 0x7f070081

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 306
    .local v0, appendixIcon:Landroid/widget/ImageView;
    if-eqz v0, :cond_4

    .line 307
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    :cond_4
    return-void

    .line 297
    .end local v0           #appendixIcon:Landroid/widget/ImageView;
    .end local v1           #text:Landroid/widget/TextView;
    :cond_5
    const-string v3, "[MusicCommonFragment]"

    const-string v4, "we can\'t find mNoMusicViewStub!!!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showEmptyView(I)V
    .locals 1
    .parameter "textResId"

    .prologue
    .line 243
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->showEmptyView(II)V

    .line 244
    return-void
.end method

.method public showEmptyView(II)V
    .locals 7
    .parameter "textResId"
    .parameter "appendixIconResId"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 247
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 248
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 249
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 252
    :cond_0
    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_1

    .line 253
    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 256
    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-nez v3, :cond_2

    .line 257
    const v3, 0x7f07003c

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoMusicViewStub:Landroid/view/ViewStub;

    .line 259
    :cond_2
    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_5

    .line 260
    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 265
    :goto_0
    const v3, 0x7f070080

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 266
    .local v1, text:Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 267
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 270
    :cond_3
    const v3, 0x7f070081

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 271
    .local v0, appendixIcon:Landroid/widget/ImageView;
    if-eqz v0, :cond_4

    .line 272
    if-lez p2, :cond_6

    .line 273
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 279
    :cond_4
    :goto_1
    return-void

    .line 262
    .end local v0           #appendixIcon:Landroid/widget/ImageView;
    .end local v1           #text:Landroid/widget/TextView;
    :cond_5
    const-string v3, "[MusicCommonFragment]"

    const-string v4, "we can\'t find error stub!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    .restart local v0       #appendixIcon:Landroid/widget/ImageView;
    .restart local v1       #text:Landroid/widget/TextView;
    :cond_6
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public showSpinner(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 69
    .local v0, parent:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 70
    check-cast v1, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .line 71
    .local v1, tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    invoke-interface {v1, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryProgressVisible(Z)V

    .line 73
    .end local v1           #tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    :cond_0
    return-void
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .parameter "tag"
    .parameter "intent"

    .prologue
    .line 153
    const/4 v0, -0x2

    invoke-super {p0, p2, v0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 154
    return-void
.end method

.method public startMaActivityForResult(Landroid/content/Intent;ILcom/htc/music/widget/MusicMaActivity;)V
    .locals 0
    .parameter "intent"
    .parameter "requestCode"
    .parameter "caller"

    .prologue
    .line 157
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 158
    return-void
.end method
