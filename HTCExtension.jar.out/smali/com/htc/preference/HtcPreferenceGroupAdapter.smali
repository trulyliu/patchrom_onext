.class Lcom/htc/preference/HtcPreferenceGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "HtcPreferenceGroupAdapter.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceGroupAdapter"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHasReturnedViewTypeCount:Z

.field private volatile mIsSyncing:Z

.field private mPreferenceGroup:Lcom/htc/preference/HtcPreferenceGroup;

.field private mPreferenceLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRunnable:Ljava/lang/Runnable;

.field private mTempPreferenceLayout:Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;


# direct methods
.method public constructor <init>(Lcom/htc/preference/HtcPreferenceGroup;)V
    .locals 3
    .parameter "preferenceGroup"

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 74
    new-instance v0, Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;-><init>(Lcom/htc/preference/HtcPreferenceGroupAdapter$1;)V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;

    .line 78
    iput-boolean v2, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 80
    iput-boolean v2, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mIsSyncing:Z

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Lcom/htc/preference/HtcPreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter$1;-><init>(Lcom/htc/preference/HtcPreferenceGroupAdapter;)V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    .line 113
    iput-object p1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceGroup:Lcom/htc/preference/HtcPreferenceGroup;

    .line 115
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceGroup:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreferenceGroup;->setOnPreferenceChangeInternalListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;)V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    .line 120
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->syncMyPreferences()V

    .line 121
    return-void
.end method

.method static synthetic access$100(Lcom/htc/preference/HtcPreferenceGroupAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->syncMyPreferences()V

    return-void
.end method

.method private addPreferenceClassName(Lcom/htc/preference/HtcPreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 186
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->createPreferenceLayout(Lcom/htc/preference/HtcPreference;Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;)Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;

    move-result-object v1

    .line 187
    .local v1, pl:Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 189
    .local v0, insertPos:I
    if-gez v0, :cond_0

    .line 191
    mul-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v2, -0x1

    .line 192
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 194
    :cond_0
    return-void
.end method

.method private createPreferenceLayout(Lcom/htc/preference/HtcPreference;Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;)Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;
    .locals 2
    .parameter "preference"
    .parameter "in"

    .prologue
    .line 178
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 179
    .local v0, pl:Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;->access$202(Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getLayoutResource()I

    move-result v1

    #setter for: Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;->resId:I
    invoke-static {v0, v1}, Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;->access$302(Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;I)I

    .line 181
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getWidgetLayoutResource()I

    move-result v1

    #setter for: Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;->widgetResId:I
    invoke-static {v0, v1}, Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;->access$402(Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;I)I

    .line 182
    return-object v0

    .line 178
    .end local v0           #pl:Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;
    :cond_0
    new-instance v0, Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;-><init>(Lcom/htc/preference/HtcPreferenceGroupAdapter$1;)V

    goto :goto_0
.end method

.method private flattenPreferenceGroup(Ljava/util/List;Lcom/htc/preference/HtcPreferenceGroup;)V
    .locals 6
    .parameter
    .parameter "group"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            ">;",
            "Lcom/htc/preference/HtcPreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, preferences:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreference;>;"
    monitor-enter p2

    .line 149
    :try_start_0
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreferenceGroup;->sortPreferences()V

    .line 150
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 151
    .local v1, groupSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 152
    invoke-virtual {p2, v2}, Lcom/htc/preference/HtcPreferenceGroup;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    .line 154
    .local v3, preference:Lcom/htc/preference/HtcPreference;
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-boolean v5, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreference;->hasSpecifiedLayout()Z

    move-result v5

    if-nez v5, :cond_0

    .line 157
    invoke-direct {p0, v3}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->addPreferenceClassName(Lcom/htc/preference/HtcPreference;)V

    .line 160
    :cond_0
    instance-of v5, v3, Lcom/htc/preference/HtcPreferenceGroup;

    if-eqz v5, :cond_1

    .line 161
    move-object v0, v3

    check-cast v0, Lcom/htc/preference/HtcPreferenceGroup;

    move-object v4, v0

    .line 162
    .local v4, preferenceAsGroup:Lcom/htc/preference/HtcPreferenceGroup;
    invoke-virtual {v4}, Lcom/htc/preference/HtcPreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 163
    invoke-direct {p0, p1, v4}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Lcom/htc/preference/HtcPreferenceGroup;)V

    .line 167
    .end local v4           #preferenceAsGroup:Lcom/htc/preference/HtcPreferenceGroup;
    :cond_1
    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeInternalListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;)V

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    :cond_2
    monitor-exit p2

    .line 170
    return-void

    .line 169
    .end local v1           #groupSize:I
    .end local v2           #i:I
    :catchall_0
    move-exception v5

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private syncMyPreferences()V
    .locals 2

    .prologue
    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mIsSyncing:Z

    if-eqz v1, :cond_0

    .line 126
    monitor-exit p0

    .line 142
    :goto_0
    return-void

    .line 129
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mIsSyncing:Z

    .line 130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .local v0, newPreferenceList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreference;>;"
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceGroup:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-direct {p0, v0, v1}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Lcom/htc/preference/HtcPreferenceGroup;)V

    .line 134
    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 136
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 138
    monitor-enter p0

    .line 139
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mIsSyncing:Z

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 141
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 130
    .end local v0           #newPreferenceList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreference;>;"
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/htc/preference/HtcPreference;
    .locals 2
    .parameter "position"

    .prologue
    .line 209
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "get position fail, position illegal"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->getItem(I)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 219
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000

    .line 220
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->getItem(I)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreference;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5
    .parameter "position"

    .prologue
    const/4 v2, -0x1

    .line 293
    iget-boolean v3, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v3, :cond_0

    .line 294
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 297
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->getItem(I)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 298
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    if-eqz v0, :cond_3

    .line 300
    invoke-virtual {v0}, Lcom/htc/preference/HtcPreference;->hasSpecifiedLayout()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 314
    :cond_1
    :goto_0
    return v1

    .line 303
    :cond_2
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v3}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->createPreferenceLayout(Lcom/htc/preference/HtcPreference;Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;)Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;

    .line 308
    :cond_3
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;

    invoke-static {v3, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 309
    .local v1, viewType:I
    if-gez v1, :cond_1

    move v1, v2

    .line 312
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->getItem(I)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 230
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v1}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->createPreferenceLayout(Lcom/htc/preference/HtcPreference;Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;)Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;

    .line 234
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;

    invoke-static {v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 235
    const/4 p2, 0x0

    .line 237
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/htc/preference/HtcPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 324
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v0, :cond_0

    .line 325
    iput-boolean v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 246
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->getItem(I)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreference;->isSelectable()Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 267
    return-void
.end method

.method public onPreferenceHierarchyChange(Lcom/htc/preference/HtcPreference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    return-void
.end method
