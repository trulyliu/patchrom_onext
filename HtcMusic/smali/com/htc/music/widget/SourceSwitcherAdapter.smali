.class public Lcom/htc/music/widget/SourceSwitcherAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceSwitcherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;,
        Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;,
        Lcom/htc/music/widget/SourceSwitcherAdapter$LoadVMMRunnable;,
        Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final CATEGORY_DLNA_TAG:Ljava/lang/String; = "DlnaBrowserTabPlugin"

.field public static final CATEGORY_LISTEN_BROWSE_TAG:Ljava/lang/String; = "ListenBrowseTabPlugin"

.field public static final CATEGORY_VMM_TAG:Ljava/lang/String; = "VMMBrowserTabPlugin"

.field private static final TAG:Ljava/lang/String; = "[SourceSwitcherAdapter]"


# instance fields
.field protected mLayoutInflator:Landroid/view/LayoutInflater;

.field protected mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

.field private mUIhandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "enableHtcListen"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    .line 51
    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 181
    new-instance v0, Lcom/htc/music/widget/SourceSwitcherAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/SourceSwitcherAdapter$1;-><init>(Lcom/htc/music/widget/SourceSwitcherAdapter;)V

    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mUIhandler:Landroid/os/Handler;

    .line 58
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/htc/music/widget/SourceSwitcherAdapter;->initialSourceItems(Landroid/content/Context;Z)V

    .line 61
    return-void
.end method

.method private initialSourceItems(Landroid/content/Context;Z)V
    .locals 7
    .parameter "context"
    .parameter "enableListen"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 68
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 71
    .local v2, listenSource:Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;
    if-eqz p2, :cond_0

    .line 72
    const-string v3, "com.htc.music.landingpage"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    new-instance v2, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    .end local v2           #listenSource:Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;
    const-string v3, "ListenBrowseTabPlugin"

    invoke-direct {v2, v3, v1, v5}, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 79
    .restart local v2       #listenSource:Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;
    :goto_0
    const-string v3, "ShowActivityTitle"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    const-string v3, "InnerActivityType"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    const-string v3, "LaunchFromSwitcher"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    const v3, 0x7f0600c0

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, arrays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    iput-object v3, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    .line 119
    iget-object v3, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    iput-object v3, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    .line 120
    return-void

    .line 75
    .end local v0           #arrays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;>;"
    :cond_0
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "com.htc.media/artistalbumexpgrid"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    new-instance v2, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    .end local v2           #listenSource:Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;
    const-string v3, "ArtistBrowserTabPlugin"

    invoke-direct {v2, v3, v1, v6}, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;Z)V

    .restart local v2       #listenSource:Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;
    goto :goto_0
.end method

.method private loadVMMTab(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 199
    new-instance v1, Lcom/htc/music/widget/SourceSwitcherAdapter$LoadVMMRunnable;

    iget-object v2, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mUIhandler:Landroid/os/Handler;

    invoke-direct {v1, p1, v2}, Lcom/htc/music/widget/SourceSwitcherAdapter$LoadVMMRunnable;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 201
    .local v1, vmmRrunable:Ljava/lang/Runnable;
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 202
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 203
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 132
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 133
    :cond_0
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 142
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 143
    :cond_0
    const-wide/16 v0, -0x1

    .line 146
    :goto_0
    return-wide v0

    :cond_1
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;
    .locals 2
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 242
    const-string v0, "ListenBrowseTabPlugin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    aget-object v0, v0, v1

    .line 248
    :goto_0
    return-object v0

    .line 244
    :cond_0
    const-string v0, "DlnaBrowserTabPlugin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    aget-object v0, v0, v1

    goto :goto_0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 152
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    array-length v2, v2

    if-gt v2, p1, :cond_1

    :cond_0
    move-object v2, v3

    .line 173
    :goto_0
    return-object v2

    .line 156
    :cond_1
    if-nez p2, :cond_2

    .line 157
    iget-object v2, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    const v4, 0x7f030046

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 158
    new-instance v0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;

    invoke-direct {v0, p0, v3}, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;-><init>(Lcom/htc/music/widget/SourceSwitcherAdapter;Lcom/htc/music/widget/SourceSwitcherAdapter$1;)V

    .line 160
    .local v0, holder:Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;
    const v2, 0x7f070042

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    .line 161
    iget-object v2, v0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 163
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 166
    .end local v0           #holder:Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;

    .line 167
    .restart local v0       #holder:Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 169
    iget-object v2, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    aget-object v1, v2, p1

    .line 171
    .local v1, item:Lcom/htc/music/util/SourceItem;
    iget-object v2, v0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, v1, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    move-object v2, p2

    .line 173
    goto :goto_0
.end method

.method public releaseAdapter()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method
