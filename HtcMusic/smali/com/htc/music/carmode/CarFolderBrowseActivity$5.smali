.class Lcom/htc/music/carmode/CarFolderBrowseActivity$5;
.super Ljava/lang/Object;
.source "CarFolderBrowseActivity.java"

# interfaces
.implements Lcom/htc/sunnyCore/Preparator$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/carmode/CarFolderBrowseActivity;->initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarFolderBrowseActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarFolderBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity$5;->this$0:Lcom/htc/music/carmode/CarFolderBrowseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpired(IILandroid/os/Bundle;)V
    .locals 1
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity$5;->this$0:Lcom/htc/music/carmode/CarFolderBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, p2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataInvalidate(I)V

    .line 369
    return-void
.end method

.method public onFailed(IILandroid/os/Bundle;)V
    .locals 1
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity$5;->this$0:Lcom/htc/music/carmode/CarFolderBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, p2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataInvalidate(I)V

    .line 363
    return-void
.end method

.method public onReady(IILandroid/os/Bundle;)V
    .locals 1
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity$5;->this$0:Lcom/htc/music/carmode/CarFolderBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, p2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataInvalidate(I)V

    .line 358
    return-void
.end method
