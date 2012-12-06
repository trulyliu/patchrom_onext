.class Lcom/htc/music/widget/RepeatingImageButton$1;
.super Ljava/lang/Object;
.source "RepeatingImageButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/RepeatingImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/RepeatingImageButton;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/RepeatingImageButton;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/htc/music/widget/RepeatingImageButton$1;->this$0:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/music/widget/RepeatingImageButton$1;->this$0:Lcom/htc/music/widget/RepeatingImageButton;

    const/4 v1, 0x0

    #calls: Lcom/htc/music/widget/RepeatingImageButton;->doRepeat(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/widget/RepeatingImageButton;->access$000(Lcom/htc/music/widget/RepeatingImageButton;Z)V

    .line 99
    iget-object v0, p0, Lcom/htc/music/widget/RepeatingImageButton$1;->this$0:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/htc/music/widget/RepeatingImageButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/htc/music/widget/RepeatingImageButton$1;->this$0:Lcom/htc/music/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/widget/RepeatingImageButton$1;->this$0:Lcom/htc/music/widget/RepeatingImageButton;

    #getter for: Lcom/htc/music/widget/RepeatingImageButton;->mInterval:J
    invoke-static {v1}, Lcom/htc/music/widget/RepeatingImageButton;->access$100(Lcom/htc/music/widget/RepeatingImageButton;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/htc/music/widget/RepeatingImageButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    :cond_0
    return-void
.end method
