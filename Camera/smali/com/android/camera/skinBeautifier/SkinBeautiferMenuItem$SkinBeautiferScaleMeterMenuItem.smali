.class Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem$SkinBeautiferScaleMeterMenuItem;
.super Lcom/android/camera/menu/MenuItem;
.source "SkinBeautiferMenuItem.java"

# interfaces
.implements Lcom/android/camera/widget/ScaleMeterItem$OnButtonClickedListener;
.implements Lcom/android/camera/widget/ScaleMeterItem$OnLevelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkinBeautiferScaleMeterMenuItem"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SkinBeautiferScaleMeterMenuItem"


# instance fields
.field private m_ScaleMeterItem:Lcom/android/camera/skinBeautifier/SkinBeautiferScaleMeterItem;

.field final synthetic this$0:Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem$SkinBeautiferScaleMeterMenuItem;->this$0:Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;

    invoke-direct {p0}, Lcom/android/camera/menu/MenuItem;-><init>()V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem$SkinBeautiferScaleMeterMenuItem;->setSelectable(Z)V

    .line 41
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
    .line 50
    instance-of v0, p4, Lcom/android/camera/skinBeautifier/SkinBeautiferScaleMeterItem;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/android/camera/skinBeautifier/SkinBeautiferScaleMeterItem;

    iget-object v1, p0, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem$SkinBeautiferScaleMeterMenuItem;->this$0:Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;

    #getter for: Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;->access$000(Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/skinBeautifier/SkinBeautiferScaleMeterItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem$SkinBeautiferScaleMeterMenuItem;->m_ScaleMeterItem:Lcom/android/camera/skinBeautifier/SkinBeautiferScaleMeterItem;

    .line 58
    .end local p4
    :goto_0
    const-string v0, "SkinBeautiferScaleMeterMenuItem"

    const-string v1, "initialize() - getView : initialize"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem$SkinBeautiferScaleMeterMenuItem;->m_ScaleMeterItem:Lcom/android/camera/skinBeautifier/SkinBeautiferScaleMeterItem;

    invoke-virtual {v0, p0}, Lcom/android/camera/skinBeautifier/SkinBeautiferScaleMeterItem;->setOnButtonClickedListener(Lcom/android/camera/widget/ScaleMeterItem$OnButtonClickedListener;)V

    .line 61
    iget-object v0, p0, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem$SkinBeautiferScaleMeterMenuItem;->m_ScaleMeterItem:Lcom/android/camera/skinBeautifier/SkinBeautiferScaleMeterItem;

    invoke-virtual {v0, p0}, Lcom/android/camera/skinBeautifier/SkinBeautiferScaleMeterItem;->setOnLevelChangedListener(Lcom/android/camera/widget/ScaleMeterItem$OnLevelChangedListener;)V

    .line 64
    iget-object v0, p0, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem$SkinBeautiferScaleMeterMenuItem;->m_ScaleMeterItem:Lcom/android/camera/skinBeautifier/SkinBeautiferScaleMeterItem;

    return-object v0

    .line 54
    .restart local p4
    :cond_0
    check-cast p4, Lcom/android/camera/skinBeautifier/SkinBeautiferScaleMeterItem;

    .end local p4
    iput-object p4, p0, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem$SkinBeautiferScaleMeterMenuItem;->m_ScaleMeterItem:Lcom/android/camera/skinBeautifier/SkinBeautiferScaleMeterItem;

    .line 55
    iget-object v0, p0, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem$SkinBeautiferScaleMeterMenuItem;->m_ScaleMeterItem:Lcom/android/camera/skinBeautifier/SkinBeautiferScaleMeterItem;

    invoke-virtual {v0}, Lcom/android/camera/skinBeautifier/SkinBeautiferScaleMeterItem;->refreshLevel()V

    goto :goto_0
.end method

.method public isCustomView()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public onButtonClicked(Lcom/android/camera/widget/ScaleMeterItem;Landroid/view/View;)V
    .locals 1
    .parameter "propertyItem"
    .parameter "button"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem$SkinBeautiferScaleMeterMenuItem;->this$0:Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;

    #calls: Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;->notifyItemContentClicked()V
    invoke-static {v0}, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;->access$100(Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;)V

    .line 83
    return-void
.end method

.method public onLevelChanged(Lcom/android/camera/widget/ScaleMeterItem;I)V
    .locals 1
    .parameter "propertyItem"
    .parameter "level"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem$SkinBeautiferScaleMeterMenuItem;->this$0:Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;

    invoke-virtual {v0}, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;->updateContent()V

    .line 92
    return-void
.end method
