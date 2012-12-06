.class Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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

.field final synthetic this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 3502
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
