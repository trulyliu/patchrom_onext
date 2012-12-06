.class Lcom/htc/music/carmode/CarTrackBrowseActivity$6;
.super Ljava/lang/Object;
.source "CarTrackBrowseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/carmode/CarTrackBrowseActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarTrackBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$700(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mSelectedPosition:I
    invoke-static {v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$800(Lcom/htc/music/carmode/CarTrackBrowseActivity;)I

    move-result v2

    sget-object v3, Lcom/htc/music/util/MusicUtils$LaunchUI;->CAR:Lcom/htc/music/util/MusicUtils$LaunchUI;

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/util/MusicUtils$LaunchUI;)I

    .line 546
    return-void
.end method
