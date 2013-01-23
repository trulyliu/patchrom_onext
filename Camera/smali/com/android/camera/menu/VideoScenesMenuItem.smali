.class public Lcom/android/camera/menu/VideoScenesMenuItem;
.super Lcom/android/camera/menu/MenuItem;
.source "VideoScenesMenuItem.java"


# instance fields
.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;I)V
    .locals 1
    .parameter "cameraActivity"
    .parameter "titleResId"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    .line 50
    iput-object p1, p0, Lcom/android/camera/menu/VideoScenesMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    .line 51
    return-void
.end method


# virtual methods
.method protected getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "inflater"
    .parameter "levels"
    .parameter "convertView"

    .prologue
    .line 27
    instance-of v1, p4, Lcom/android/camera/widget/VideoScenesPropertyItem;

    if-nez v1, :cond_0

    .line 28
    new-instance p4, Lcom/android/camera/widget/VideoScenesPropertyItem;

    .end local p4
    iget-object v1, p0, Lcom/android/camera/menu/VideoScenesMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-direct {p4, v1}, Lcom/android/camera/widget/VideoScenesPropertyItem;-><init>(Landroid/content/Context;)V

    .restart local p4
    :cond_0
    move-object v0, p4

    .line 29
    check-cast v0, Lcom/android/camera/widget/VideoScenesPropertyItem;

    .line 32
    .local v0, propertyItem:Lcom/android/camera/widget/VideoScenesPropertyItem;
    invoke-virtual {v0}, Lcom/android/camera/widget/VideoScenesPropertyItem;->initialize()V

    .line 35
    return-object v0
.end method

.method public isCustomView()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method
