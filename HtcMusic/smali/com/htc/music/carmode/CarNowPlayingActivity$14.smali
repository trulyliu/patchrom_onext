.class Lcom/htc/music/carmode/CarNowPlayingActivity$14;
.super Ljava/lang/Object;
.source "CarNowPlayingActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarNowPlayingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$14;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 1152
    if-eqz p2, :cond_0

    .line 1153
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1168
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 1155
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$14;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleMode:I
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2400(Lcom/htc/music/carmode/CarNowPlayingActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$14;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    const/4 v1, 0x1

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->uiRefreshShuffleButton(I)V
    invoke-static {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2500(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V

    goto :goto_0

    .line 1161
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$14;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleMode:I
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2400(Lcom/htc/music/carmode/CarNowPlayingActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$14;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->uiRefreshShuffleButton(I)V
    invoke-static {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2500(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V

    goto :goto_0

    .line 1153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
