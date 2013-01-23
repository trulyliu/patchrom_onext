.class public Lcom/android/camera/menu/SeparatorMenuItem;
.super Lcom/android/camera/menu/MenuItem;
.source "SeparatorMenuItem.java"


# instance fields
.field private m_stringResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/camera/menu/MenuItem;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "stringResId"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/camera/menu/MenuItem;-><init>()V

    .line 27
    iput p1, p0, Lcom/android/camera/menu/SeparatorMenuItem;->m_stringResId:I

    .line 28
    return-void
.end method


# virtual methods
.method protected getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "inflater"
    .parameter "levels"
    .parameter "convertView"

    .prologue
    .line 37
    if-nez p4, :cond_0

    .line 39
    new-instance v1, Lcom/htc/widget/HtcListItemSeparator;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcListItemSeparator;-><init>(Landroid/content/Context;)V

    .line 40
    .local v1, separator:Lcom/htc/widget/HtcListItemSeparator;
    new-instance v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(II)V

    .line 41
    .local v0, params:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItemSeparator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundStyle(I)V

    .line 43
    new-instance v2, Lcom/android/camera/menu/SeparatorMenuItem$1;

    invoke-direct {v2, p0}, Lcom/android/camera/menu/SeparatorMenuItem$1;-><init>(Lcom/android/camera/menu/SeparatorMenuItem;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemSeparator;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 50
    move-object p4, v1

    .end local v0           #params:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    .end local v1           #separator:Lcom/htc/widget/HtcListItemSeparator;
    :cond_0
    move-object v2, p4

    .line 54
    check-cast v2, Lcom/htc/widget/HtcListItemSeparator;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/camera/menu/SeparatorMenuItem;->m_stringResId:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcListItemSeparator;->setText(II)V

    .line 57
    return-object p4
.end method

.method public isCustomView()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method
