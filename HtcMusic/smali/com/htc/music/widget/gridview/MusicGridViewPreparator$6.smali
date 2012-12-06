.class Lcom/htc/music/widget/gridview/MusicGridViewPreparator$6;
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
    .line 220
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$6;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessListener(I)Z
    .locals 4
    .parameter "index"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$6;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$6;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTaskCache:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;
    invoke-static {v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->access$300(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$6;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mTextureMap:Lcom/htc/music/widget/gridview/TextureMap;
    invoke-static {v2}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->access$200(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Lcom/htc/music/widget/gridview/TextureMap;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$6;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mCacheSize:I
    invoke-static {v3}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->access$1200(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)I

    move-result v3

    #calls: Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->tryCreateTextureFromDecodedTask(ILcom/htc/music/widget/gridview/MemoryCacheDecodeTask;Lcom/htc/music/widget/gridview/TextureMap;I)Z
    invoke-static {v0, p1, v1, v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->access$1100(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;ILcom/htc/music/widget/gridview/MemoryCacheDecodeTask;Lcom/htc/music/widget/gridview/TextureMap;I)Z

    move-result v0

    return v0
.end method
