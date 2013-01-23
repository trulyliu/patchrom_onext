.class public Lcom/android/camera/sina/EffectPanelUIListView;
.super Landroid/widget/ListView;
.source "EffectPanelUIListView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectPanelUIListView"


# instance fields
.field private mCameraActivity:Lcom/android/camera/HTCCamera;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 30
    const/16 v0, 0xe3

    if-ne p1, v0, :cond_0

    .line 32
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 33
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 51
    const/16 v0, 0xe3

    if-ne p1, v0, :cond_0

    .line 52
    const-string v0, "EffectPanelUIListView"

    const-string v1, "EffectPanelUIListView_onKeyLongPress:"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/android/camera/sina/EffectPanelUIListView;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->shareKeyForEffectListViewEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 54
    iget-object v0, p0, Lcom/android/camera/sina/EffectPanelUIListView;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/HTCCamera;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 40
    const/16 v0, 0xe3

    if-ne p1, v0, :cond_0

    .line 41
    const-string v0, "EffectPanelUIListView"

    const-string v1, "EffectPanelUIListView_onKeyUp:"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/android/camera/sina/EffectPanelUIListView;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->shareKeyForEffectListViewEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 43
    iget-object v0, p0, Lcom/android/camera/sina/EffectPanelUIListView;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->triggerShortPressShareKey()V

    .line 44
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCameraActivity(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "cameraActivity"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/camera/sina/EffectPanelUIListView;->mCameraActivity:Lcom/android/camera/HTCCamera;

    .line 25
    return-void
.end method
