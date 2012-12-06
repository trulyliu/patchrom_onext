.class Lcom/htc/music/NowPlayingViewHelper$12;
.super Ljava/lang/Object;
.source "NowPlayingViewHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/NowPlayingViewHelper;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;

.field final synthetic val$textview:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$12;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iput-object p2, p0, Lcom/htc/music/NowPlayingViewHelper$12;->val$textview:Landroid/widget/AutoCompleteTextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1008
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$12;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$12;->val$textview:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1009
    .local v0, id:I
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$12;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$12;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/NowPlayingViewHelper;->access$600(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v2

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 1010
    return-void
.end method
