.class public Lcom/android/camera/menu/CheckBoxMenuItem;
.super Lcom/android/camera/menu/MenuItem;
.source "CheckBoxMenuItem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/camera/menu/MenuItem;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "titleResId"
    .parameter "summaryResId"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    .line 17
    return-void
.end method


# virtual methods
.method protected getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "inflater"
    .parameter "levels"
    .parameter "convertView"

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/menu/MenuItem;->getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;

    move-result-object p4

    .line 29
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;

    .line 30
    .local v0, itemInfo:Lcom/android/camera/menu/MenuItem$ItemViewInfo;
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->checkBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->checkBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    .line 33
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->checkBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {p0}, Lcom/android/camera/menu/CheckBoxMenuItem;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 37
    :cond_0
    return-object p4
.end method

.method protected onClicked()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/android/camera/menu/CheckBoxMenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/menu/CheckBoxMenuItem;->setChecked(Z)V

    .line 47
    return v1

    :cond_0
    move v0, v1

    .line 46
    goto :goto_0
.end method
