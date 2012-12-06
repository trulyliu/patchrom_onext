.class public Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
.super Lcom/htc/widget/MoreExpandableItemInfo;
.source "DlnaBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerInfo"
.end annotation


# instance fields
.field private mContainerID:Ljava/lang/String;

.field private mContainerName:Ljava/lang/String;

.field private mExpand:Z

.field private mFileType:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mImg:Landroid/graphics/Bitmap;

.field private mImgPath:Ljava/lang/String;

.field private mIsCancelled:Z

.field private mLevel:I

.field private mName:Ljava/lang/String;

.field private mParentID:Ljava/lang/String;

.field private mPos:J

.field private mStartIdx:J

.field final synthetic this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 2
    .parameter
    .parameter "Id"
    .parameter "Name"
    .parameter "Path"
    .parameter "Pos"
    .parameter "isGroup"

    .prologue
    const/4 v0, 0x0

    .line 1624
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    .line 1625
    invoke-direct {p0, p5, p6, p7}, Lcom/htc/widget/MoreExpandableItemInfo;-><init>(JZ)V

    .line 1617
    iput v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mLevel:I

    .line 1618
    iput-boolean v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mExpand:Z

    .line 1619
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mStartIdx:J

    .line 1621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mIsCancelled:Z

    .line 1627
    iput-object p2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mId:Ljava/lang/String;

    .line 1628
    iput-object p3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mName:Ljava/lang/String;

    .line 1629
    iput-object p4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mImgPath:Ljava/lang/String;

    .line 1630
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mImg:Landroid/graphics/Bitmap;

    .line 1631
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mContainerID:Ljava/lang/String;

    .line 1632
    return-void
.end method

.method public constructor <init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 2
    .parameter
    .parameter "serverID"
    .parameter "ContainerID"
    .parameter "ContainerName"
    .parameter "path"
    .parameter "type"
    .parameter "startIdx"
    .parameter "Pos"
    .parameter "isGroup"

    .prologue
    const/4 v0, 0x0

    .line 1648
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    .line 1649
    invoke-direct {p0, p9, p10, p11}, Lcom/htc/widget/MoreExpandableItemInfo;-><init>(JZ)V

    .line 1617
    iput v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mLevel:I

    .line 1618
    iput-boolean v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mExpand:Z

    .line 1619
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mStartIdx:J

    .line 1621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mIsCancelled:Z

    .line 1651
    iput-object p2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mId:Ljava/lang/String;

    .line 1652
    iput-object p3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mParentID:Ljava/lang/String;

    .line 1653
    iput-object p4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mContainerName:Ljava/lang/String;

    .line 1654
    iput-object p5, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mImgPath:Ljava/lang/String;

    .line 1655
    iput-object p6, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mFileType:Ljava/lang/String;

    .line 1656
    iput-wide p7, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mStartIdx:J

    .line 1657
    return-void
.end method

.method public constructor <init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 2
    .parameter
    .parameter "serverID"
    .parameter "parentID"
    .parameter "ContainerID"
    .parameter "ContainerName"
    .parameter "path"
    .parameter "type"
    .parameter "Pos"
    .parameter "isGroup"

    .prologue
    const/4 v0, 0x0

    .line 1635
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    .line 1636
    invoke-direct {p0, p8, p9, p10}, Lcom/htc/widget/MoreExpandableItemInfo;-><init>(JZ)V

    .line 1617
    iput v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mLevel:I

    .line 1618
    iput-boolean v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mExpand:Z

    .line 1619
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mStartIdx:J

    .line 1621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mIsCancelled:Z

    .line 1637
    iput-object p2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mId:Ljava/lang/String;

    .line 1638
    iput-object p4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mContainerID:Ljava/lang/String;

    .line 1639
    iput-object p5, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mContainerName:Ljava/lang/String;

    .line 1641
    iput-object p3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mParentID:Ljava/lang/String;

    .line 1643
    iput-object p6, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mImgPath:Ljava/lang/String;

    .line 1644
    iput-object p7, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mFileType:Ljava/lang/String;

    .line 1645
    return-void
.end method


# virtual methods
.method public GetContainerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mContainerID:Ljava/lang/String;

    return-object v0
.end method

.method public GetContainerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mContainerName:Ljava/lang/String;

    return-object v0
.end method

.method public GetExpand()Z
    .locals 1

    .prologue
    .line 1692
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mExpand:Z

    return v0
.end method

.method public GetFileType()I
    .locals 1

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mFileType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1675
    const/4 v0, -0x1

    .line 1676
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mFileType:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public GetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public GetImg()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mImg:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public GetImgPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public GetLevel()I
    .locals 1

    .prologue
    .line 1690
    iget v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mLevel:I

    return v0
.end method

.method public GetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public GetParentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mParentID:Ljava/lang/String;

    return-object v0
.end method

.method public GetPos()J
    .locals 2

    .prologue
    .line 1659
    iget-wide v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mPos:J

    return-wide v0
.end method

.method public GetStartIdx()J
    .locals 2

    .prologue
    .line 1693
    iget-wide v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mStartIdx:J

    return-wide v0
.end method

.method public IsContainer()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1680
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mFileType:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1686
    :cond_0
    :goto_0
    return v0

    .line 1683
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mFileType:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1684
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public SetContainerID(Ljava/lang/String;)V
    .locals 0
    .parameter "ID"

    .prologue
    .line 1660
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mContainerID:Ljava/lang/String;

    return-void
.end method

.method public SetContainerName(Ljava/lang/String;)V
    .locals 0
    .parameter "Name"

    .prologue
    .line 1662
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mContainerName:Ljava/lang/String;

    return-void
.end method

.method public SetExpand(Z)V
    .locals 0
    .parameter "expand"

    .prologue
    .line 1691
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mExpand:Z

    return-void
.end method

.method public SetFileType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1671
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mFileType:Ljava/lang/String;

    return-void
.end method

.method public SetFileType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 1670
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mFileType:Ljava/lang/String;

    return-void
.end method

.method public SetImg(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "img"

    .prologue
    .line 1666
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mImg:Landroid/graphics/Bitmap;

    return-void
.end method

.method public SetImgPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 1664
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mImgPath:Ljava/lang/String;

    return-void
.end method

.method public SetLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 1689
    iput p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mLevel:I

    return-void
.end method

.method public SetParentID(Ljava/lang/String;)V
    .locals 0
    .parameter "ID"

    .prologue
    .line 1695
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mParentID:Ljava/lang/String;

    return-void
.end method

.method public getCancelled()Z
    .locals 1

    .prologue
    .line 1701
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mIsCancelled:Z

    return v0
.end method

.method public setCancelled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1698
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mIsCancelled:Z

    .line 1699
    return-void
.end method
