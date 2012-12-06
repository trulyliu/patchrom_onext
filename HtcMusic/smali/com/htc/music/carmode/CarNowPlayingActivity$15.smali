.class Lcom/htc/music/carmode/CarNowPlayingActivity$15;
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
    .line 1172
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$15;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

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

    .line 1175
    if-eqz p2, :cond_0

    .line 1176
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1191
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 1178
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$15;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatMode:I
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2600(Lcom/htc/music/carmode/CarNowPlayingActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$15;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    const/4 v1, 0x2

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->uiRefreshRepeatButton(I)V
    invoke-static {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2700(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V

    goto :goto_0

    .line 1184
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$15;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatMode:I
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2600(Lcom/htc/music/carmode/CarNowPlayingActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$15;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->uiRefreshRepeatButton(I)V
    invoke-static {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2700(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V

    goto :goto_0

    .line 1176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
