.class public Lcom/android/camera/menu/MenuListView;
.super Lcom/htc/widget/HtcExpandableListView;
.source "MenuListView.java"

# interfaces
.implements Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;
.implements Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/menu/MenuListView$OnMenuItemContentClickedListener;,
        Lcom/android/camera/menu/MenuListView$OnMenuItemClickedListener;
    }
.end annotation


# instance fields
.field private final m_Adapter:Lcom/android/camera/menu/MenuAdapter;

.field private m_CurrentExpandedItem:Lcom/android/camera/menu/MenuItem;

.field m_Items:[Lcom/android/camera/menu/MenuItem;

.field private m_OnMenuItemClickedListener:Lcom/android/camera/menu/MenuListView$OnMenuItemClickedListener;

.field private m_OnMenuItemContentClickedListener:Lcom/android/camera/menu/MenuListView$OnMenuItemContentClickedListener;

.field private m_UpdateCounter:I

.field private final m_VisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v3, 0x2080041

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    .line 47
    new-instance v1, Lcom/android/camera/menu/MenuAdapter;

    invoke-direct {v1, p0}, Lcom/android/camera/menu/MenuAdapter;-><init>(Lcom/android/camera/menu/MenuListView;)V

    iput-object v1, p0, Lcom/android/camera/menu/MenuListView;->m_Adapter:Lcom/android/camera/menu/MenuAdapter;

    move-object v0, p1

    .line 48
    check-cast v0, Lcom/android/camera/HTCCamera;

    .line 49
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, p0, Lcom/android/camera/menu/MenuListView;->m_Adapter:Lcom/android/camera/menu/MenuAdapter;

    invoke-virtual {p0, v1}, Lcom/android/camera/menu/MenuListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 50
    invoke-virtual {p0, v2}, Lcom/android/camera/menu/MenuListView;->setBouncingEnabled(Z)V

    .line 51
    invoke-virtual {p0, v2}, Lcom/android/camera/menu/MenuListView;->setCacheColorHint(I)V

    .line 52
    invoke-virtual {p0, v2}, Lcom/android/camera/menu/MenuListView;->setHandleChildBackground(Z)V

    .line 53
    invoke-virtual {p0, p0}, Lcom/android/camera/menu/MenuListView;->setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V

    .line 54
    invoke-virtual {p0, p0}, Lcom/android/camera/menu/MenuListView;->setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V

    .line 55
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/camera/menu/MenuListView;->setIntroAnimationType(I)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/menu/MenuListView;->setDarkModeEnabled(Z)V

    .line 57
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/menu/MenuListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 58
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/menu/MenuListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 59
    return-void
.end method


# virtual methods
.method public final beginUpdate()V
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/camera/menu/MenuListView;->m_UpdateCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/menu/MenuListView;->m_UpdateCounter:I

    .line 67
    return-void
.end method

.method public collapseAllItems()V
    .locals 2

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/camera/menu/MenuListView;->collapseGroup(I)Z

    .line 74
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 76
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/android/camera/menu/MenuItem;

    .line 77
    return-void
.end method

.method public final endUpdate()V
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/android/camera/menu/MenuListView;->m_UpdateCounter:I

    if-lez v0, :cond_0

    .line 86
    iget v0, p0, Lcom/android/camera/menu/MenuListView;->m_UpdateCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/menu/MenuListView;->m_UpdateCounter:I

    .line 87
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuListView;->notifyItemsChanged()V

    .line 89
    :cond_0
    return-void
.end method

.method public final getItems()[Lcom/android/camera/menu/MenuItem;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/camera/menu/MenuListView;->m_Items:[Lcom/android/camera/menu/MenuItem;

    return-object v0
.end method

.method getVisibleItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method final notifyItemContentClicked(Lcom/android/camera/menu/MenuItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/menu/MenuListView;->m_OnMenuItemContentClickedListener:Lcom/android/camera/menu/MenuListView$OnMenuItemContentClickedListener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/camera/menu/MenuListView;->m_OnMenuItemContentClickedListener:Lcom/android/camera/menu/MenuListView$OnMenuItemContentClickedListener;

    invoke-virtual {p1}, Lcom/android/camera/menu/MenuItem;->getId()I

    move-result v1

    invoke-interface {v0, p0, p1, v1}, Lcom/android/camera/menu/MenuListView$OnMenuItemContentClickedListener;->onItemContentClicked(Lcom/android/camera/menu/MenuListView;Lcom/android/camera/menu/MenuItem;I)V

    .line 114
    :cond_0
    return-void
.end method

.method final notifyItemsChanged()V
    .locals 3

    .prologue
    .line 121
    iget v1, p0, Lcom/android/camera/menu/MenuListView;->m_UpdateCounter:I

    if-nez v1, :cond_4

    .line 124
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/menu/MenuListView;->updateVisibleItems(Z)V

    .line 127
    iget-object v1, p0, Lcom/android/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v1, :cond_3

    .line 129
    iget-object v1, p0, Lcom/android/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/android/camera/menu/MenuItem;

    iget-object v1, v1, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lcom/android/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/android/camera/menu/MenuItem;

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/android/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_3

    .line 133
    iget-object v1, p0, Lcom/android/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/android/camera/menu/MenuItem;

    if-ne v1, v2, :cond_2

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/camera/menu/MenuListView;->expandGroup(I)Z

    .line 131
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/camera/menu/MenuListView;->collapseGroup(I)Z

    goto :goto_1

    .line 141
    .end local v0           #i:I
    :cond_3
    iget-object v1, p0, Lcom/android/camera/menu/MenuListView;->m_Adapter:Lcom/android/camera/menu/MenuAdapter;

    invoke-virtual {v1}, Lcom/android/camera/menu/MenuAdapter;->checkMenuItemTypes()Z

    .line 142
    iget-object v1, p0, Lcom/android/camera/menu/MenuListView;->m_Adapter:Lcom/android/camera/menu/MenuAdapter;

    invoke-virtual {v1}, Lcom/android/camera/menu/MenuAdapter;->notifyDataSetChanged()V

    .line 144
    :cond_4
    return-void
.end method

.method final notifyItemsInvalidated()V
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/android/camera/menu/MenuListView;->m_UpdateCounter:I

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/camera/menu/MenuListView;->m_Adapter:Lcom/android/camera/menu/MenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/menu/MenuAdapter;->notifyDataSetInvalidated()V

    .line 153
    :cond_0
    return-void
.end method

.method public onChildClick(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;IIJ)Z
    .locals 3
    .parameter "parent"
    .parameter "view"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 162
    iget-object v1, p0, Lcom/android/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->getVisibleItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/menu/MenuItem;

    .line 163
    .local v0, item:Lcom/android/camera/menu/MenuItem;
    invoke-virtual {v0}, Lcom/android/camera/menu/MenuItem;->onClicked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    :goto_0
    return v2

    .line 167
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/menu/MenuItem;->getId()I

    move-result v1

    invoke-virtual {p0, v0, p4, v1}, Lcom/android/camera/menu/MenuListView;->onMenuItemClicked(Lcom/android/camera/menu/MenuItem;II)V

    goto :goto_0
.end method

.method public onGroupClick(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;IJ)Z
    .locals 5
    .parameter "parent"
    .parameter "view"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 180
    iget-object v2, p0, Lcom/android/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/menu/MenuItem;

    .line 181
    .local v1, item:Lcom/android/camera/menu/MenuItem;
    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->isSelectable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v4

    .line 185
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->onClicked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->getVisibleItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 191
    iget-object v2, p0, Lcom/android/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/android/camera/menu/MenuItem;

    if-eq v2, v1, :cond_5

    .line 193
    iget-object v2, p0, Lcom/android/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v2, :cond_2

    .line 195
    iget-object v2, p0, Lcom/android/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 197
    iget-object v2, p0, Lcom/android/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/android/camera/menu/MenuItem;

    if-ne v2, v3, :cond_4

    .line 199
    invoke-virtual {p0, v0}, Lcom/android/camera/menu/MenuListView;->collapseGroup(I)Z

    .line 204
    .end local v0           #i:I
    :cond_2
    iput-object v1, p0, Lcom/android/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/android/camera/menu/MenuItem;

    .line 205
    invoke-virtual {p0, p3}, Lcom/android/camera/menu/MenuListView;->expandGroup(I)Z

    .line 206
    invoke-virtual {p0, p3}, Lcom/android/camera/menu/MenuListView;->setSelectedGroup(I)V

    .line 216
    :cond_3
    :goto_2
    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->getId()I

    move-result v2

    invoke-virtual {p0, v1, p3, v2}, Lcom/android/camera/menu/MenuListView;->onMenuItemClicked(Lcom/android/camera/menu/MenuItem;II)V

    goto :goto_0

    .line 195
    .restart local v0       #i:I
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 210
    .end local v0           #i:I
    :cond_5
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/android/camera/menu/MenuItem;

    .line 211
    invoke-virtual {p0, p3}, Lcom/android/camera/menu/MenuListView;->collapseGroup(I)Z

    goto :goto_2
.end method

.method protected onMenuItemClicked(Lcom/android/camera/menu/MenuItem;II)V
    .locals 1
    .parameter "item"
    .parameter "index"
    .parameter "id"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/camera/menu/MenuListView;->m_OnMenuItemClickedListener:Lcom/android/camera/menu/MenuListView$OnMenuItemClickedListener;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/camera/menu/MenuListView;->m_OnMenuItemClickedListener:Lcom/android/camera/menu/MenuListView$OnMenuItemClickedListener;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/camera/menu/MenuListView$OnMenuItemClickedListener;->onItemClicked(Lcom/android/camera/menu/MenuListView;Lcom/android/camera/menu/MenuItem;II)V

    .line 229
    :cond_0
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/menu/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/menu/MenuItem;>;"
    if-eqz p1, :cond_0

    .line 238
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Lcom/android/camera/menu/MenuItem;

    .line 239
    .local v0, array:[Lcom/android/camera/menu/MenuItem;
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 240
    invoke-virtual {p0, v0}, Lcom/android/camera/menu/MenuListView;->setItems([Lcom/android/camera/menu/MenuItem;)V

    .line 244
    .end local v0           #array:[Lcom/android/camera/menu/MenuItem;
    :goto_0
    return-void

    .line 243
    :cond_0
    const/4 v1, 0x0

    check-cast v1, [Lcom/android/camera/menu/MenuItem;

    invoke-virtual {p0, v1}, Lcom/android/camera/menu/MenuListView;->setItems([Lcom/android/camera/menu/MenuItem;)V

    goto :goto_0
.end method

.method public setItems([Lcom/android/camera/menu/MenuItem;)V
    .locals 3
    .parameter "items"

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/camera/menu/MenuListView;->m_Items:[Lcom/android/camera/menu/MenuItem;

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/camera/menu/MenuListView;->m_Items:[Lcom/android/camera/menu/MenuItem;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 251
    iget-object v1, p0, Lcom/android/camera/menu/MenuListView;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/MenuItem;->setMenuListView(Lcom/android/camera/menu/MenuListView;)V

    .line 250
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 255
    .end local v0           #i:I
    :cond_0
    iput-object p1, p0, Lcom/android/camera/menu/MenuListView;->m_Items:[Lcom/android/camera/menu/MenuItem;

    .line 256
    if-eqz p1, :cond_1

    .line 258
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .restart local v0       #i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 259
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lcom/android/camera/menu/MenuItem;->setMenuListView(Lcom/android/camera/menu/MenuListView;)V

    .line 258
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 263
    .end local v0           #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuListView;->notifyItemsChanged()V

    .line 264
    return-void
.end method

.method public final setOnMenuItemClickedListener(Lcom/android/camera/menu/MenuListView$OnMenuItemClickedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/camera/menu/MenuListView;->m_OnMenuItemClickedListener:Lcom/android/camera/menu/MenuListView$OnMenuItemClickedListener;

    .line 272
    return-void
.end method

.method public final setOnMenuItemContentClickedListener(Lcom/android/camera/menu/MenuListView$OnMenuItemContentClickedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/camera/menu/MenuListView;->m_OnMenuItemContentClickedListener:Lcom/android/camera/menu/MenuListView$OnMenuItemContentClickedListener;

    .line 276
    return-void
.end method

.method public updateItemContents()V
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuListView;->beginUpdate()V

    .line 284
    iget-object v1, p0, Lcom/android/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->updateContent()V

    .line 284
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuListView;->endUpdate()V

    .line 287
    return-void
.end method

.method final updateVisibleItems(Z)V
    .locals 3
    .parameter "updateSubItems"

    .prologue
    .line 294
    iget-object v2, p0, Lcom/android/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 295
    iget-object v2, p0, Lcom/android/camera/menu/MenuListView;->m_Items:[Lcom/android/camera/menu/MenuItem;

    if-eqz v2, :cond_1

    .line 297
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/menu/MenuListView;->m_Items:[Lcom/android/camera/menu/MenuItem;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 299
    iget-object v2, p0, Lcom/android/camera/menu/MenuListView;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v2, v0

    .line 300
    .local v1, item:Lcom/android/camera/menu/MenuItem;
    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    iget-object v2, p0, Lcom/android/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    if-eqz p1, :cond_0

    .line 304
    invoke-virtual {v1, p1}, Lcom/android/camera/menu/MenuItem;->updateVisibleItems(Z)V

    .line 297
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    .end local v0           #i:I
    .end local v1           #item:Lcom/android/camera/menu/MenuItem;
    :cond_1
    return-void
.end method
