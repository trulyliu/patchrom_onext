.class Lcom/htc/music/LandingPageActivity$LaunchItem$3;
.super Ljava/lang/Object;
.source "LandingPageActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LandingPageActivity$LaunchItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;


# direct methods
.method constructor <init>(Lcom/htc/music/LandingPageActivity$LaunchItem;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$3;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "view"
    .parameter "motionEvent"

    .prologue
    .line 148
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 149
    .local v9, action:I
    const/4 v0, 0x0

    .line 150
    .local v0, scaleAnimation:Landroid/view/animation/ScaleAnimation;
    packed-switch v9, :pswitch_data_0

    .line 165
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 152
    :pswitch_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0           #scaleAnimation:Landroid/view/animation/ScaleAnimation;
    const/high16 v1, 0x3f80

    const v2, 0x3f666666

    const/high16 v3, 0x3f80

    const v4, 0x3f666666

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 153
    .restart local v0       #scaleAnimation:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 154
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 159
    :pswitch_2
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0           #scaleAnimation:Landroid/view/animation/ScaleAnimation;
    const v1, 0x3f666666

    const/high16 v2, 0x3f80

    const v3, 0x3f666666

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 160
    .restart local v0       #scaleAnimation:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 161
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
