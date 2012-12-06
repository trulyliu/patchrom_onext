.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TrackBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field isSetIndicatorNull:Z

.field listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

.field listItemFrontCheckBox:Lcom/htc/widget/HtcDeleteButton;

.field listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

.field listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

.field listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

.field listItemText:Lcom/htc/widget/HtcListItem2LineText;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2145
    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 2146
    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 2147
    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    .line 2148
    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    .line 2149
    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcDeleteButton;

    .line 2150
    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 2151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->isSetIndicatorNull:Z

    return-void
.end method
