.class public Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;
.super Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
.source "MusicGridViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/MusicGridViewUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChildMediaData"
.end annotation


# instance fields
.field protected mHashCode:I

.field protected mId:Ljava/lang/String;

.field protected mIdentifier:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter "name"
    .parameter "path"
    .parameter "id"
    .parameter "key"

    .prologue
    .line 988
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 989
    invoke-direct {p0}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;-><init>()V

    .line 983
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mPath:Ljava/lang/String;

    .line 990
    iput-object p2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mName:Ljava/lang/String;

    .line 991
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsDataReady:Z

    .line 992
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mId:Ljava/lang/String;

    .line 993
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mCoverInfo:Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;

    invoke-virtual {v1, p4, p5, p2, p3}, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->setCoverInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 995
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "Child"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mIdentifier:Ljava/lang/String;

    .line 996
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mHashCode:I

    .line 997
    return-void
.end method


# virtual methods
.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    .line 1001
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public isItemDataReady()Z
    .locals 1

    .prologue
    .line 1010
    const/4 v0, 0x1

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mName:Ljava/lang/String;

    .line 1006
    return-void
.end method
