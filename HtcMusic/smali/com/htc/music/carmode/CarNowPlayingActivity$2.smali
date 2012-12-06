.class Lcom/htc/music/carmode/CarNowPlayingActivity$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CarNowPlayingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/carmode/CarNowPlayingActivity;->initAlbumArtGestureDetector()V
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
    .line 295
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$2;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 332
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "Gesture Album onDown"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 13
    .parameter "startEvent"
    .parameter "endEvent"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 298
    const-string v10, "[CarNowPlayingActivity]"

    const-string v11, "Gesture onFling"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 300
    :cond_0
    const/4 v10, 0x0

    .line 327
    :goto_0
    return v10

    .line 303
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-double v5, v10

    .line 304
    .local v5, diffX:D
    const-string v10, "[CarNowPlayingActivity]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Gesture Album art diffX = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-double v7, v10

    .line 306
    .local v7, diffY:D
    const-string v10, "[CarNowPlayingActivity]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Gesture Album artdiffY = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 308
    .local v0, absDiffX:D
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 310
    .local v2, absDiffY:D
    iget-object v10, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$2;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureAlbumWidth:D
    invoke-static {v10}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)D

    move-result-wide v10

    add-double/2addr v10, v0

    cmpl-double v10, v2, v10

    if-lez v10, :cond_2

    .line 311
    const-string v10, "[CarNowPlayingActivity]"

    const-string v11, "absDiffY > absDiffX + mGestureAlbumWidth donot go to next/prev"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const/4 v10, 0x1

    goto :goto_0

    .line 315
    :cond_2
    iget-object v10, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$2;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureAlbumWidth:D
    invoke-static {v10}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)D

    move-result-wide v10

    cmpl-double v10, v0, v10

    if-lez v10, :cond_3

    .line 316
    const-wide/16 v10, 0x0

    cmpl-double v10, v5, v10

    if-lez v10, :cond_4

    .line 317
    iget-object v10, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$2;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v10}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 318
    iget-object v10, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$2;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v10}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v10

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 319
    .local v9, msg:Landroid/os/Message;
    invoke-virtual {v9}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 320
    .local v4, data:Landroid/os/Bundle;
    const-string v10, "seek_pos"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 321
    iget-object v10, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$2;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->prev()V
    invoke-static {v10}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$400(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 327
    .end local v4           #data:Landroid/os/Bundle;
    .end local v9           #msg:Landroid/os/Message;
    :cond_3
    :goto_1
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 324
    :cond_4
    iget-object v10, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$2;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->next()V
    invoke-static {v10}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$500(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto :goto_1
.end method
