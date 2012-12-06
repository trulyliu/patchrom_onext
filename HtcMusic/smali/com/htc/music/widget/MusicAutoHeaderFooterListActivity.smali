.class public abstract Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;
.source "MusicAutoHeaderFooterListActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "[MusicAutoHeaderFooterListActivity]"


# instance fields
.field public BROWSE_TYPE:I

.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mEditor:Landroid/widget/EditText;

.field private mFinishedStart:Z

.field private mHandler:Landroid/os/Handler;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field protected mList:Lcom/htc/widget/HtcListView;

.field private mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mOrientation:I

.field private mRequestFocus:Ljava/lang/Runnable;

.field private mSearchHint:I

.field private mTitleBar:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;-><init>()V

    .line 25
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->BROWSE_TYPE:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOrientation:I

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHandler:Landroid/os/Handler;

    .line 38
    iput-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mFinishedStart:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOptionsMenu:Landroid/view/Menu;

    .line 42
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$1;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mRequestFocus:Ljava/lang/Runnable;

    .line 178
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$2;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 188
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$3;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 200
    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mSearchHint:I

    return-void
.end method

.method private ensureList()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    const v0, 0x1090014

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->ensureList()V

    .line 160
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method protected getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "text"
    .parameter "filter"

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/htc/music/util/MusicUtils;->getMarkedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method protected hideSearchBar()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 270
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 272
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOrientation:I

    .line 276
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->resetSDErrorLayout()V

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 83
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onContentChanged()V

    .line 84
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, emptyView:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    .line 86
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    if-eqz v0, :cond_1

    .line 91
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListView;->setEmptyView(Landroid/view/View;)V

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 94
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    .line 95
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    :cond_2
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mFinishedStart:Z

    .line 100
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 60
    return-void
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 247
    monitor-enter p0

    .line 248
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOptionsMenu:Landroid/view/Menu;

    .line 249
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 251
    return-void

    .line 249
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 239
    monitor-enter p0

    .line 240
    :try_start_0
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOptionsMenu:Landroid/view/Menu;

    .line 241
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 241
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->ensureList()V

    .line 74
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onResume()V

    .line 106
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->requestLayout()V

    .line 111
    :cond_0
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 262
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 266
    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 280
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->ensureList()V

    .line 119
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 121
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-nez v0, :cond_1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    :cond_1
    monitor-exit p0

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setSearchHint(I)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 205
    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mSearchHint:I

    .line 206
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 139
    return-void
.end method

.method showInputMethod(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mEditor:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_2

    .line 212
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 213
    :cond_2
    if-eqz p1, :cond_3

    .line 216
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 217
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public updateOptionsMenu()V
    .locals 1

    .prologue
    .line 254
    monitor-enter p0

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOptionsMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOptionsMenu:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 257
    :cond_0
    monitor-exit p0

    .line 258
    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
