.class Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;
.super Lcom/htc/music/util/RingtoneHelper;
.source "AlbumTrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumTrackRingtoneHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 2108
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    .line 2109
    invoke-direct {p0, p2}, Lcom/htc/music/util/RingtoneHelper;-><init>(Landroid/content/Context;)V

    .line 2110
    return-void
.end method


# virtual methods
.method public showNoNotificationRingtoneDialog()V
    .locals 2

    .prologue
    .line 2118
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const/4 v1, 0x7

    #calls: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showNewDialog(I)V
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$3500(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;I)V

    .line 2119
    return-void
.end method

.method public showRingtoneDialog()V
    .locals 2

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const/4 v1, 0x6

    #calls: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showNewDialog(I)V
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$3400(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;I)V

    .line 2115
    return-void
.end method

.method public startContactActivity(Landroid/app/Activity;I)V
    .locals 1
    .parameter "activity"
    .parameter "contactResultCode"

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-super {p0, v0, p2}, Lcom/htc/music/util/RingtoneHelper;->startContactActivity(Landroid/app/Activity;I)V

    .line 2123
    return-void
.end method
