.class public Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
.super Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
.source "MusicGridViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/MusicGridViewUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParentMediaData"
.end annotation


# instance fields
.field protected mHashCode:I

.field protected mId:Ljava/lang/String;

.field protected mIdentifier:Ljava/lang/String;

.field protected mLocation:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mNumberOfChilds:I

.field final synthetic this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter "name"
    .parameter "id"
    .parameter "getPath"

    .prologue
    const/4 v1, 0x0

    .line 1554
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 1555
    invoke-direct {p0}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;-><init>()V

    .line 1545
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mLocation:Ljava/lang/String;

    .line 1547
    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mNumberOfChilds:I

    .line 1556
    iput-object p2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mName:Ljava/lang/String;

    .line 1557
    iput-object p3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mId:Ljava/lang/String;

    .line 1558
    if-nez p4, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsDataReady:Z

    .line 1559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1560
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "Parent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mIdentifier:Ljava/lang/String;

    .line 1561
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mHashCode:I

    .line 1562
    return-void
.end method


# virtual methods
.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    .line 1566
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public isItemDataReady()Z
    .locals 2

    .prologue
    .line 1581
    iget-boolean v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsDataReady:Z

    if-nez v1, :cond_0

    .line 1582
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1200(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1583
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1200(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1584
    .local v0, msg:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1585
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1586
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1200(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1589
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iget-boolean v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsDataReady:Z

    return v1
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 1551
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mLocation:Ljava/lang/String;

    .line 1552
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 1570
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mName:Ljava/lang/String;

    .line 1571
    return-void
.end method
