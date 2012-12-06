.class Lcom/htc/music/MusicPicker$2;
.super Ljava/lang/Object;
.source "MusicPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MusicPicker;


# direct methods
.method constructor <init>(Lcom/htc/music/MusicPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 638
    iput-object p1, p0, Lcom/htc/music/MusicPicker$2;->this$0:Lcom/htc/music/MusicPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/htc/music/MusicPicker$2;->this$0:Lcom/htc/music/MusicPicker;

    iget-object v0, v0, Lcom/htc/music/MusicPicker;->mPickerView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPicker$2;->this$0:Lcom/htc/music/MusicPicker;

    iget-object v0, v0, Lcom/htc/music/MusicPicker;->mPickerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/htc/music/MusicPicker$2;->this$0:Lcom/htc/music/MusicPicker;

    iget-object v0, v0, Lcom/htc/music/MusicPicker;->mPickerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 644
    :cond_0
    return-void
.end method
