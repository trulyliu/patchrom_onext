.class Lcom/htc/music/widget/gridview/MusicGridViewPreparator$3;
.super Ljava/lang/Object;
.source "MusicGridViewPreparator.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/MusicGridViewPreparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$3;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessListener(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 168
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$3;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;
    invoke-static {v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->access$100(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$3;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;
    invoke-static {v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->access$100(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v0

    .line 171
    .local v0, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    if-eqz v0, :cond_0

    .line 172
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$3;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    #calls: Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->addMediaDataToDecode(Lcom/htc/music/widget/gridview/MusicGridViewMediaData;I)Z
    invoke-static {v1, v0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->access$600(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewMediaData;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    const/4 v1, 0x1

    .line 176
    .end local v0           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
