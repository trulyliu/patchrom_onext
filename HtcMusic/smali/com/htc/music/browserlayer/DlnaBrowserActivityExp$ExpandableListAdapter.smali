.class Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;
.super Lcom/htc/widget/MoreExpandableBaseAdapter;
.source "DlnaBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandableListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultServerIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResources:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    .line 1434
    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {p1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/LinkedList;)V

    .line 1430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mResources:Landroid/content/res/Resources;

    .line 1436
    iput-object p2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mContext:Landroid/content/Context;

    .line 1437
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mResources:Landroid/content/res/Resources;

    .line 1438
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1439
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mDefaultServerIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 1440
    return-void
.end method


# virtual methods
.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 1478
    if-nez p4, :cond_0

    .line 1479
    iget-object v5, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03000b

    invoke-virtual {v5, v6, p5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 1482
    :cond_0
    invoke-static {p1, p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getPosition(II)I

    move-result v3

    .line 1483
    .local v3, position:I
    iget-object v5, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    .line 1485
    .local v2, info:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
    const v5, 0x7f070020

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    .line 1486
    .local v4, text:Lcom/htc/widget/HtcListItem2LineText;
    const v5, 0x7f07001f

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .line 1487
    .local v1, icon:Lcom/htc/widget/HtcListItemTileImage;
    const v5, 0x7f070024

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemImageButton;

    .line 1488
    .local v0, expandIcon:Lcom/htc/widget/HtcListItemImageButton;
    if-eqz v0, :cond_1

    .line 1489
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 1491
    :cond_1
    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1492
    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1493
    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 1495
    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetFileType()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_2

    .line 1496
    const-string v5, "[DLNA] "

    const-string v6, "music folder"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    const v5, 0x7f060089

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 1499
    const v5, 0x2080078

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    .line 1511
    :goto_0
    return-object p4

    .line 1501
    :cond_2
    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetFileType()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_3

    .line 1502
    const v5, 0x7f0600ac

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 1503
    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    goto :goto_0

    .line 1506
    :cond_3
    const v5, 0x7f020035

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    .line 1507
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcListItemTileImage;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1508
    const-string v5, "[DLNA] "

    const-string v6, "get child view, show default icon"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getChildren(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/LinkedList;
    .locals 1
    .parameter "groupPosition"
    .parameter "self"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ")",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1471
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1473
    .local v0, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;>;"
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 1446
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 1516
    if-nez p3, :cond_0

    .line 1517
    iget-object v7, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f03000b

    invoke-virtual {v7, v8, p4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 1520
    :cond_0
    iget-object v7, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    .line 1522
    .local v5, info:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
    const v7, 0x7f070020

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcListItem2LineText;

    .line 1523
    .local v6, text:Lcom/htc/widget/HtcListItem2LineText;
    const v7, 0x7f07001f

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemTileImage;

    .line 1524
    .local v4, icon:Lcom/htc/widget/HtcListItemTileImage;
    const v7, 0x7f070024

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemImageButton;

    .line 1525
    .local v2, expandIcon:Lcom/htc/widget/HtcListItemImageButton;
    if-eqz v2, :cond_1

    .line 1528
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 1530
    :cond_1
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1531
    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 1536
    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetParentID()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1539
    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1540
    const v7, 0x7f020035

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    .line 1541
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItemTileImage;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1598
    :goto_0
    return-object p3

    .line 1551
    :cond_2
    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1554
    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetImg()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1555
    .local v0, bmImage:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1556
    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1560
    :cond_3
    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetImgPath()Ljava/lang/String;

    move-result-object v3

    .line 1561
    .local v3, filePath:Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 1563
    iget-object v7, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItemTileImage;->getWidth()I

    move-result v8

    invoke-static {v7, v3, v8}, Lcom/htc/music/util/MusicUtils;->getDLNAArtwork(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1564
    if-eqz v0, :cond_4

    .line 1565
    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1566
    invoke-virtual {v5, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->SetImg(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1571
    :cond_4
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mDefaultServerIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1572
    iget-object v7, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1400(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1573
    iget-object v7, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1400(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/htc/dlnainterface/IDLNAPluginService;->getServerThumbnail(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1578
    :catch_0
    move-exception v1

    .line 1579
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1576
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_5
    :try_start_1
    const-string v7, "[DLNA] "

    const-string v8, "getView()...(filePath != null)...mService is null..."

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1583
    :cond_6
    iget-object v7, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mDefaultServerIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1585
    :try_start_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1400(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 1586
    iget-object v7, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1400(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/htc/dlnainterface/IDLNAPluginService;->getServerThumbnail(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1591
    :catch_1
    move-exception v1

    .line 1592
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1589
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_7
    :try_start_3
    const-string v7, "[DLNA] "

    const-string v8, "getView()...(filePath == null)...mService is null..."

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 1450
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1451
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-gt v1, p1, :cond_1

    .line 1458
    :cond_0
    :goto_0
    return-object v0

    .line 1454
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1463
    int-to-long v0, p1

    .line 1465
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
