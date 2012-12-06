.class Lcom/htc/music/widget/gridview/MusicGridViewUtil$1;
.super Ljava/lang/Object;
.source "MusicGridViewUtil.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/MusicGridViewUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$1;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessListener(I)Z
    .locals 4
    .parameter "index"

    .prologue
    .line 152
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$1;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;
    invoke-static {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$000(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    move-result-object v1

    .line 153
    .local v1, mediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 154
    invoke-virtual {v1, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v0

    .line 155
    .local v0, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    instance-of v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    if-eqz v2, :cond_0

    .line 156
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsDataReady:Z

    if-nez v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$1;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mQueryList:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$100(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Ljava/util/List;

    move-result-object v3

    move-object v2, v0

    check-cast v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 158
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$1;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    check-cast v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .end local v0           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    #calls: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateAlbumartForGenreArtist(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;)V
    invoke-static {v2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$200(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;)V

    .line 159
    const/4 v2, 0x1

    .line 163
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
