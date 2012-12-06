.class public Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;
.super Lcom/htc/music/carmode/MusicMaActivity;
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

.field private mRequestFocus:Ljava/lang/Runnable;

.field private mSearchHint:I

.field private mTitleBar:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Lcom/htc/music/carmode/MusicMaActivity;-><init>()V

    .line 25
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->BROWSE_TYPE:I

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mHandler:Landroid/os/Handler;

    .line 43
    iput-boolean v1, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mFinishedStart:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mOptionsMenu:Landroid/view/Menu;

    .line 47
    new-instance v0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity$1;-><init>(Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mRequestFocus:Ljava/lang/Runnable;

    .line 176
    new-instance v0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity$2;-><init>(Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 186
    new-instance v0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity$3;-><init>(Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 198
    iput v1, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mSearchHint:I

    return-void
.end method

.method private ensureList()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    const v0, 0x1090014

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->ensureList()V

    .line 158
    iget-object v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method protected getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "text"
    .parameter "filter"

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/htc/music/util/MusicUtils;->getMarkedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method protected hideSearchBar()V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 92
    invoke-super {p0}, Lcom/htc/music/carmode/MusicMaActivity;->onContentChanged()V

    .line 93
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, emptyView:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    .line 95
    iget-object v1, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_0
    if-eqz v0, :cond_1

    .line 100
    iget-object v1, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListView;->setEmptyView(Landroid/view/View;)V

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 103
    iget-object v1, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    .line 104
    iget-boolean v1, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mFinishedStart:Z

    .line 109
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 65
    return-void
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 69
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
    iput-object v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mOptionsMenu:Landroid/view/Menu;

    .line 249
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    invoke-super {p0, p1}, Lcom/htc/music/carmode/MusicMaActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

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
    .line 238
    monitor-enter p0

    .line 239
    :try_start_0
    iput-object p1, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mOptionsMenu:Landroid/view/Menu;

    .line 240
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    invoke-super {p0, p1}, Lcom/htc/music/carmode/MusicMaActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 240
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
    .line 80
    invoke-direct {p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->ensureList()V

    .line 81
    invoke-super {p0, p1}, Lcom/htc/music/carmode/MusicMaActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 82
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
    .line 270
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->ensureList()V

    .line 117
    iput-object p1, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 119
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-nez v0, :cond_1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    :cond_1
    monitor-exit p0

    .line 127
    return-void

    .line 126
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
    .line 203
    iput p1, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mSearchHint:I

    .line 204
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 137
    return-void
.end method

.method showInputMethod(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mEditor:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_2

    .line 210
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 211
    :cond_2
    if-eqz p1, :cond_3

    .line 214
    iget-object v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 215
    iget-object v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mEditor:Landroid/widget/EditText;

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
    iget-object v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mOptionsMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->mOptionsMenu:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

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
