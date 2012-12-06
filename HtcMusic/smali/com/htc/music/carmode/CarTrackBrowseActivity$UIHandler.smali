.class Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;
.super Landroid/os/Handler;
.source "CarTrackBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarTrackBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarTrackBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1174
    iput-object p1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1178
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1180
    :pswitch_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    invoke-virtual {v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 1181
    .local v0, listview:Lcom/htc/widget/HtcListView;
    if-eqz v0, :cond_0

    .line 1182
    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_0

    .line 1178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
