.class public Lcom/htc/music/carmode/MusicMaActivity;
.super Landroid/app/Activity;
.source "MusicMaActivity.java"


# static fields
.field private static final DELETION_TRACK_COMPLETED:I = 0x0

.field public static final START_NEW_ACTIVITY:I = -0x2

.field private static final TAG:Ljava/lang/String; = "[MusicMaActivity]"


# instance fields
.field private mActivityResumed:Z

.field protected mIsEnhancerExist:Z

.field private mNoMusicViewStub:Landroid/view/ViewStub;

.field private mNoSDCardErrorViewStub:Landroid/view/ViewStub;

.field private mOrientation:I

.field protected mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    iput-boolean v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mIsEnhancerExist:Z

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/carmode/MusicMaActivity;->mOrientation:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    .line 40
    iput-boolean v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mActivityResumed:Z

    return-void
.end method


# virtual methods
.method public categoryRightAction()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 234
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 235
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 242
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 243
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 249
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :pswitch_0
    return v0

    .line 237
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->onSearchRequested()Z

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_1
    .end packed-switch

    .line 243
    :pswitch_data_1
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public findRootParent()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 121
    .local v0, rootParent:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 129
    .end local p0
    :goto_0
    return-object p0

    .line 123
    .restart local p0
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 124
    .local v1, temp:Landroid/app/Activity;
    :goto_1
    if-eqz v1, :cond_1

    .line 125
    move-object v0, v1

    .line 126
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object p0, v0

    .line 129
    goto :goto_0
.end method

.method public hideEmptyErrorView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 442
    iget-object v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    .line 451
    iget-object v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 455
    :cond_1
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 456
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 457
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 459
    :cond_2
    return-void
.end method

.method protected isActivityResumed()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/htc/music/carmode/MusicMaActivity;->mActivityResumed:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 200
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 201
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 141
    .local v0, rootParent:Landroid/app/Activity;
    if-eq p0, v0, :cond_0

    .line 142
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 69
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

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 72
    iget v0, p0, Lcom/htc/music/carmode/MusicMaActivity;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->resetBackground()V

    .line 78
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/carmode/MusicMaActivity;->mOrientation:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    .local v0, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mOrientation:I

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mIsEnhancerExist:Z

    .line 64
    iput-object v0, p0, Lcom/htc/music/carmode/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    .line 65
    return-void
.end method

.method public onMaBackPressed()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->closeOptionsMenu()V

    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/carmode/MusicMaActivity;->mActivityResumed:Z

    .line 102
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mActivityResumed:Z

    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    iget-object v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 89
    .local v0, newConfig:Landroid/content/res/Configuration;
    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/MusicMaActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    .end local v0           #newConfig:Landroid/content/res/Configuration;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->resetBackground()V

    .line 93
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 107
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    return-void
.end method

.method protected resetBackground()V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 44
    const-string v1, "common_app_bkg"

    const v2, 0x2080001

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 46
    .local v0, resId:I
    if-lez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 51
    .end local v0           #resId:I
    :cond_0
    return-void
.end method

.method protected resetSDErrorLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 540
    iget-object v2, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_1

    .line 554
    const v2, 0x7f07007c

    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 555
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 556
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 557
    .local v0, param:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 558
    iget v2, p0, Lcom/htc/music/carmode/MusicMaActivity;->mOrientation:I

    if-ne v4, v2, :cond_2

    .line 559
    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 566
    .end local v0           #param:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    const v2, 0x7f07003f

    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 567
    if-eqz v1, :cond_1

    .line 568
    iget v2, p0, Lcom/htc/music/carmode/MusicMaActivity;->mOrientation:I

    if-ne v4, v2, :cond_3

    move-object v2, v1

    .line 569
    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 573
    :goto_1
    check-cast v1, Landroid/widget/LinearLayout;

    .end local v1           #view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 578
    :cond_1
    return-void

    .line 561
    .restart local v0       #param:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1       #view:Landroid/view/View;
    :cond_2
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    .end local v0           #param:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    move-object v2, v1

    .line 571
    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1
.end method

.method protected setCategoryProgressVisible(Z)V
    .locals 3
    .parameter "setVisible"

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 220
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 225
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/carmode/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 226
    check-cast v0, Lcom/htc/music/carmode/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/carmode/IMusicTabActivityInterface;->setCategoryProgressVisible(Z)V

    goto :goto_0
.end method

.method protected setCatgoryMainTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 213
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/carmode/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 214
    check-cast v0, Lcom/htc/music/carmode/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/carmode/IMusicTabActivityInterface;->setMainTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEmptyViewText(I)V
    .locals 2
    .parameter "rid"

    .prologue
    .line 359
    const v1, 0x7f070080

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 360
    .local v0, text:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 361
    const v1, 0x203007f

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 362
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 364
    :cond_0
    return-void
.end method

.method public setMainTitle(I)V
    .locals 1
    .parameter "mainTitleRes"

    .prologue
    .line 589
    invoke-virtual {p0, p1}, Lcom/htc/music/carmode/MusicMaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/MusicMaActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "mainTitle"

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lcom/htc/music/carmode/MusicMaActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method public showDatabaseError()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 464
    const v4, 0x102000a

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 465
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 466
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 470
    :cond_0
    iget-object v4, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_1

    .line 471
    iget-object v4, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v4, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 494
    :cond_1
    iget-object v4, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-nez v4, :cond_2

    .line 495
    const v4, 0x7f07003e

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    iput-object v4, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    .line 498
    :cond_2
    iget-object v4, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_4

    .line 499
    iget-object v4, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 500
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->resetSDErrorLayout()V

    .line 502
    const v4, 0x7f070086

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 503
    if-nez v3, :cond_3

    const v4, 0x7f07003f

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 504
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 507
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, status:Ljava/lang/String;
    const v0, 0x20400a0

    .line 511
    .local v0, message:I
    const-string v4, "shared"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 512
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 513
    const v0, 0x7f060039

    .line 532
    :cond_5
    :goto_0
    const v4, 0x7f07007c

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 533
    .local v2, tv:Landroid/widget/TextView;
    if-eqz v2, :cond_6

    .line 534
    const v4, 0x203007f

    invoke-virtual {v2, p0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 535
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 537
    :cond_6
    return-void

    .line 515
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_7
    const v0, 0x7f060038

    goto :goto_0

    .line 519
    :cond_8
    const-string v4, "removed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 520
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 521
    const v0, 0x7f060039

    goto :goto_0

    .line 524
    :cond_9
    const v0, 0x20400a0

    goto :goto_0

    .line 525
    :cond_a
    const-string v4, "unmounted"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 526
    const v0, 0x20401fa

    goto :goto_0
.end method

.method public showEmptyView()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 409
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 410
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 411
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 414
    :cond_0
    iget-object v3, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_1

    .line 419
    iget-object v3, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 422
    :cond_1
    iget-object v3, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-nez v3, :cond_2

    .line 423
    const v3, 0x7f07003c

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    .line 425
    :cond_2
    iget-object v3, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 427
    const v3, 0x7f070080

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 429
    .local v1, text:Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 430
    const v3, 0x203007f

    invoke-virtual {v1, p0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 431
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    :cond_3
    const v3, 0x7f070081

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 435
    .local v0, appendixIcon:Landroid/widget/ImageView;
    if-eqz v0, :cond_4

    .line 436
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    :cond_4
    return-void
.end method

.method public showEmptyView(I)V
    .locals 1
    .parameter "textResId"

    .prologue
    .line 367
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/carmode/MusicMaActivity;->showEmptyView(II)V

    .line 368
    return-void
.end method

.method public showEmptyView(II)V
    .locals 6
    .parameter "textResId"
    .parameter "appendixIconResId"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 372
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 373
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 374
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 377
    :cond_0
    iget-object v3, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_1

    .line 382
    iget-object v3, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 385
    :cond_1
    iget-object v3, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-nez v3, :cond_2

    .line 386
    const v3, 0x7f07003c

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    .line 388
    :cond_2
    iget-object v3, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 390
    const v3, 0x7f070080

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 392
    .local v1, text:Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 393
    const v3, 0x203007f

    invoke-virtual {v1, p0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 394
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 397
    :cond_3
    const v3, 0x7f070081

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 398
    .local v0, appendixIcon:Landroid/widget/ImageView;
    if-eqz v0, :cond_4

    .line 399
    if-lez p2, :cond_5

    .line 400
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 406
    :cond_4
    :goto_0
    return-void

    .line 403
    :cond_5
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showSpinner(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 582
    .local v0, parent:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/htc/music/carmode/IMusicTabActivityInterface;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 583
    check-cast v1, Lcom/htc/music/carmode/IMusicTabActivityInterface;

    .line 584
    .local v1, tabActivity:Lcom/htc/music/carmode/IMusicTabActivityInterface;
    invoke-interface {v1, p1}, Lcom/htc/music/carmode/IMusicTabActivityInterface;->setCategoryProgressVisible(Z)V

    .line 586
    .end local v1           #tabActivity:Lcom/htc/music/carmode/IMusicTabActivityInterface;
    :cond_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 7
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 162
    const-string v3, "StartNewActivity"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 163
    .local v0, forceStartNewActivity:Z
    if-eqz v0, :cond_0

    .line 164
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 196
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    .line 171
    .local v1, rootParent:Landroid/app/Activity;
    instance-of v3, v1, Lcom/htc/music/carmode/IMusicTabActivityInterface;

    if-eqz v3, :cond_5

    move-object v2, v1

    .line 173
    check-cast v2, Lcom/htc/music/carmode/IMusicTabActivityInterface;

    .line 175
    .local v2, tabActivity:Lcom/htc/music/carmode/IMusicTabActivityInterface;
    const/4 v3, -0x2

    if-ne v3, p2, :cond_1

    .line 176
    invoke-super {p0, p1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 177
    :cond_1
    if-ne v5, p2, :cond_4

    .line 178
    const-string v3, "com.htc.music.PLAYBACK_VIEWER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 179
    invoke-super {p0, p1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 180
    :cond_2
    const-string v3, "com.htc.music.carmode.PLAYBACK_VIEWER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 181
    invoke-super {p0, p1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 183
    :cond_3
    const-string v3, "ShowActivityTitle"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/htc/music/carmode/IMusicTabActivityInterface;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 190
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 194
    .end local v2           #tabActivity:Lcom/htc/music/carmode/IMusicTabActivityInterface;
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startLocalSearch()V
    .locals 2

    .prologue
    .line 265
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.carmode.LOCALSEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 267
    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/carmode/MusicMaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 268
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 2
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 257
    const-string v0, "[MusicMaActivity]"

    const-string v1, "musicMaActivity startSearch...."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->startLocalSearch()V

    .line 261
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 262
    return-void
.end method
