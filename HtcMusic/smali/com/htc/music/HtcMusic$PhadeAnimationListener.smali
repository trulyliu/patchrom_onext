.class Lcom/htc/music/HtcMusic$PhadeAnimationListener;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhadeAnimationListener"
.end annotation


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mPhaseIn:Z

.field final mView:Lcom/htc/sunnyCore/view/SView;


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/view/SView;Landroid/os/Handler;Z)V
    .locals 0
    .parameter "view"
    .parameter "handler"
    .parameter "phaseIn"

    .prologue
    .line 5997
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5998
    iput-object p1, p0, Lcom/htc/music/HtcMusic$PhadeAnimationListener;->mView:Lcom/htc/sunnyCore/view/SView;

    .line 5999
    iput-object p2, p0, Lcom/htc/music/HtcMusic$PhadeAnimationListener;->mHandler:Landroid/os/Handler;

    .line 6000
    iput-boolean p3, p0, Lcom/htc/music/HtcMusic$PhadeAnimationListener;->mPhaseIn:Z

    .line 6001
    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 6012
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic$PhadeAnimationListener;->mPhaseIn:Z

    if-eqz v0, :cond_0

    .line 6013
    iget-object v0, p0, Lcom/htc/music/HtcMusic$PhadeAnimationListener;->mView:Lcom/htc/sunnyCore/view/SView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SView;->setAlpha(I)V

    .line 6017
    :goto_0
    return-void

    .line 6015
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic$PhadeAnimationListener;->mView:Lcom/htc/sunnyCore/view/SView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SView;->setAlpha(I)V

    goto :goto_0
.end method

.method public onAnimationStart()V
    .locals 2

    .prologue
    .line 6005
    iget-object v0, p0, Lcom/htc/music/HtcMusic$PhadeAnimationListener;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 6006
    iget-object v0, p0, Lcom/htc/music/HtcMusic$PhadeAnimationListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3a99

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6008
    :cond_0
    return-void
.end method
