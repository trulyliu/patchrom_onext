.class public abstract Lcom/htc/music/widget/GroupListActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "GroupListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/htc/music/widget/GroupListView$OnChildClickListener;
.implements Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;
.implements Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;
.implements Lcom/htc/music/widget/GroupListView$OnGroupClickListener;


# instance fields
.field mAdapter:Landroid/widget/ExpandableListAdapter;

.field mFinishedStart:Z

.field mList:Lcom/htc/music/widget/GroupListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/GroupListActivity;->mFinishedStart:Z

    return-void
.end method

.method private ensureList()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    if-eqz v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 275
    :cond_0
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/GroupListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/music/widget/GroupListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getGroupListView()Lcom/htc/music/widget/GroupListView;
    .locals 1

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/htc/music/widget/GroupListActivity;->ensureList()V

    .line 260
    iget-object v0, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    return-object v0
.end method

.method public getSelectedId()J
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0}, Lcom/htc/music/widget/GroupListView;->getSelectedId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedPosition()J
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0}, Lcom/htc/music/widget/GroupListView;->getSelectedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public onChildClick(Lcom/htc/music/widget/GroupListView;Landroid/view/View;IIJI)Z
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"
    .parameter "absPos"

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 219
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onContentChanged()V

    .line 220
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/GroupListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 221
    .local v0, emptyView:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/GroupListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/music/widget/GroupListView;

    iput-object v1, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    .line 222
    iget-object v1, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    if-nez v1, :cond_0

    .line 223
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ExpandableListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_0
    if-eqz v0, :cond_1

    .line 228
    iget-object v1, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/GroupListView;->setEmptyView(Landroid/view/View;)V

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v1, p0}, Lcom/htc/music/widget/GroupListView;->setOnChildClickListener(Lcom/htc/music/widget/GroupListView$OnChildClickListener;)V

    .line 231
    iget-object v1, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v1, p0}, Lcom/htc/music/widget/GroupListView;->setOnGroupExpandListener(Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;)V

    .line 232
    iget-object v1, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v1, p0}, Lcom/htc/music/widget/GroupListView;->setOnGroupCollapseListener(Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;)V

    .line 233
    iget-object v1, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v1, p0}, Lcom/htc/music/widget/GroupListView;->setOnGroupClickListener(Lcom/htc/music/widget/GroupListView$OnGroupClickListener;)V

    .line 235
    iget-boolean v1, p0, Lcom/htc/music/widget/GroupListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    .line 236
    iget-object v1, p0, Lcom/htc/music/widget/GroupListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/GroupListActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 238
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/widget/GroupListActivity;->mFinishedStart:Z

    .line 239
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 175
    return-void
.end method

.method public onGroupClick(Lcom/htc/music/widget/GroupListView;Landroid/view/View;IJI)Z
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "id"
    .parameter "absPos"

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public onGroupCollapse(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 191
    return-void
.end method

.method public onGroupExpand(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 197
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/htc/music/widget/GroupListActivity;->ensureList()V

    .line 208
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 209
    return-void
.end method

.method public setListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 245
    monitor-enter p0

    .line 246
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/widget/GroupListActivity;->ensureList()V

    .line 247
    iput-object p1, p0, Lcom/htc/music/widget/GroupListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 248
    iget-object v0, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/GroupListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 249
    monitor-exit p0

    .line 250
    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelectedChild(IIZ)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "shouldExpandGroup"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/widget/GroupListView;->setSelectedChild(IIZ)Z

    move-result v0

    return v0
.end method

.method public setSelectedGroup(I)V
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/GroupListView;->setSelectedGroup(I)V

    .line 324
    return-void
.end method
