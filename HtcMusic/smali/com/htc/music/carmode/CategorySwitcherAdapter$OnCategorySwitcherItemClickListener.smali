.class public Lcom/htc/music/carmode/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;
.super Ljava/lang/Object;
.source "CategorySwitcherAdapter.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CategorySwitcherAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnCategorySwitcherItemClickListener"
.end annotation


# instance fields
.field mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

.field mContext:Lcom/htc/music/carmode/IMusicTabActivityInterface;


# direct methods
.method public constructor <init>(Lcom/htc/music/carmode/IMusicTabActivityInterface;Lcom/htc/music/carmode/CategorySwitcherAdapter;)V
    .locals 1
    .parameter "context"
    .parameter "categorySwitcherAdapter"

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object v0, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mContext:Lcom/htc/music/carmode/IMusicTabActivityInterface;

    .line 201
    iput-object v0, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    .line 206
    iput-object p1, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mContext:Lcom/htc/music/carmode/IMusicTabActivityInterface;

    .line 207
    iput-object p2, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    .line 208
    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v1, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mContext:Lcom/htc/music/carmode/IMusicTabActivityInterface;

    if-nez v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    if-eqz v1, :cond_0

    .line 220
    if-ltz p3, :cond_2

    iget-object v1, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    iget-object v1, v1, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v1, v1

    if-gt v1, p3, :cond_3

    .line 222
    :cond_2
    const-string v1, "[CategorySwitcherAdapter]"

    const-string v2, "click position out of bound!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_3
    iget-object v1, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    iget-object v1, v1, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v0, v1, p3

    .line 228
    .local v0, source:Lcom/htc/music/util/SourceItem;
    iget-object v1, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mContext:Lcom/htc/music/carmode/IMusicTabActivityInterface;

    iget-object v2, v0, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v3, v0, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-interface {v1, v2, v3}, Lcom/htc/music/carmode/IMusicTabActivityInterface;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method
