.class public Lcom/htc/music/widget/fragment/MusicListFragment;
.super Lcom/htc/music/widget/fragment/MusicCommonFragment;
.source "MusicListFragment.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "[MusicListFragment]"


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

.field private mOrientation:I

.field private mRequestFocus:Ljava/lang/Runnable;

.field private mSearchHint:I

.field private mTitleBar:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Lcom/htc/music/widget/fragment/MusicCommonFragment;-><init>()V

    .line 24
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->BROWSE_TYPE:I

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mOrientation:I

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mHandler:Landroid/os/Handler;

    .line 37
    iput-boolean v1, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mFinishedStart:Z

    .line 39
    new-instance v0, Lcom/htc/music/widget/fragment/MusicListFragment$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/fragment/MusicListFragment$1;-><init>(Lcom/htc/music/widget/fragment/MusicListFragment;)V

    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 166
    new-instance v0, Lcom/htc/music/widget/fragment/MusicListFragment$2;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/fragment/MusicListFragment$2;-><init>(Lcom/htc/music/widget/fragment/MusicListFragment;)V

    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 176
    new-instance v0, Lcom/htc/music/widget/fragment/MusicListFragment$3;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/fragment/MusicListFragment$3;-><init>(Lcom/htc/music/widget/fragment/MusicListFragment;)V

    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 188
    iput v1, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mSearchHint:I

    return-void
.end method

.method private ensureList()V
    .locals 2

    .prologue
    const v1, 0x102000a

    .line 153
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/fragment/MusicListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    .line 159
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    if-nez v0, :cond_0

    .line 160
    const v0, 0x1090014

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/fragment/MusicListFragment;->setContentView(I)V

    .line 161
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/fragment/MusicListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    goto :goto_0
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;->ensureList()V

    .line 142
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method protected getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "text"
    .parameter "filter"

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/htc/music/util/MusicUtils;->getMarkedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method protected hideSearchBar()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 243
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 245
    iget v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mOrientation:I

    .line 249
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;->resetSDErrorLayout()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, layout:Landroid/view/View;
    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, emptyView:Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    iput-object v2, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    .line 76
    iget-object v2, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    if-nez v2, :cond_0

    .line 77
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_0
    if-eqz v0, :cond_1

    .line 81
    iget-object v2, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListView;->setEmptyView(Landroid/view/View;)V

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 84
    iget-object v2, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    .line 85
    iget-boolean v2, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mFinishedStart:Z

    if-eqz v2, :cond_2

    .line 86
    iget-object v2, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/fragment/MusicListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    :cond_2
    iget-object v2, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mFinishedStart:Z

    .line 91
    return-object v1
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 57
    return-void
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 231
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 226
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 227
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 235
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 239
    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 253
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;->ensureList()V

    .line 100
    iput-object p1, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 102
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-nez v0, :cond_1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    :cond_1
    monitor-exit p0

    .line 111
    return-void

    .line 110
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
    .line 193
    iput p1, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mSearchHint:I

    .line 194
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 121
    return-void
.end method

.method showInputMethod(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mEditor:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_2

    .line 200
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 201
    :cond_2
    if-eqz p1, :cond_3

    .line 204
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 205
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
