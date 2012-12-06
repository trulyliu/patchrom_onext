.class Lcom/htc/music/NowPlayingViewHelper$10;
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
    .line 979
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$10;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iput-object p2, p0, Lcom/htc/music/NowPlayingViewHelper$10;->val$textview:Landroid/widget/AutoCompleteTextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 981
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$10;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$10;->val$textview:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 982
    .local v0, id:I
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$10;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$10;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J
    invoke-static {v4}, Lcom/htc/music/NowPlayingViewHelper;->access$1800(Lcom/htc/music/NowPlayingViewHelper;)J

    move-result-wide v4

    long-to-int v4, v4

    aput v4, v2, v3

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 983
    return-void
.end method
