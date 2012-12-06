.class public Lcom/htc/music/widget/GroupListView;
.super Lcom/htc/widget/HtcListView;
.source "GroupListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/GroupListView$ExpandableListContextMenuInfo;,
        Lcom/htc/music/widget/GroupListView$OnChildClickListener;,
        Lcom/htc/music/widget/GroupListView$OnGroupClickListener;,
        Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;,
        Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;
    }
.end annotation


# static fields
.field public static final CHECK_STATE_OFF:I = 0x0

.field public static final CHECK_STATE_ON:I = 0x1

.field public static final CHECK_STATE_PARTIAL:I = 0x2

.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final EMPTY_STATE_SET:[I = null

.field private static final GROUP_EMPTY_STATE_SET:[I = null

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I = null

.field private static final GROUP_EXPANDED_STATE_SET:[I = null

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

.field private mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

.field private mChoiceMode:I

.field private mConnector:Lcom/htc/music/widget/GroupListConnector;

.field private mGroupIdMapChildCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

.field private mOnChildClickListener:Lcom/htc/music/widget/GroupListView$OnChildClickListener;

.field private mOnGroupClickListener:Lcom/htc/music/widget/GroupListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;

.field private mPickerMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 180
    new-array v0, v1, [I

    sput-object v0, Lcom/htc/music/widget/GroupListView;->EMPTY_STATE_SET:[I

    .line 183
    new-array v0, v2, [I

    aput v2, v0, v1

    sput-object v0, Lcom/htc/music/widget/GroupListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 188
    new-array v0, v2, [I

    aput v3, v0, v1

    sput-object v0, Lcom/htc/music/widget/GroupListView;->GROUP_EMPTY_STATE_SET:[I

    .line 193
    new-array v0, v2, [I

    aput v3, v0, v1

    sput-object v0, Lcom/htc/music/widget/GroupListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/music/widget/GroupListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 228
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/music/widget/GroupListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 232
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/GroupListView;->mGroupIdMapChildCount:Ljava/util/HashMap;

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    .line 291
    return-void
.end method

.method private getChildOrGroupId(Lcom/htc/music/widget/GroupListPosition;)J
    .locals 3
    .parameter "position"

    .prologue
    .line 1167
    iget v0, p1, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iget v2, p1, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 1170
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getPackedPositionChild(J)I
    .locals 7
    .parameter "packedPosition"

    .prologue
    const-wide v5, 0xffffffffL

    const-wide/high16 v3, -0x8000

    const/4 v0, -0x1

    .line 1102
    cmp-long v1, p0, v5

    if-nez v1, :cond_1

    .line 1109
    :cond_0
    :goto_0
    return v0

    .line 1106
    :cond_1
    and-long v1, p0, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1109
    and-long v0, p0, v5

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 6
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 1129
    const-wide/high16 v0, -0x8000

    int-to-long v2, p0

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .locals 4
    .parameter "groupPosition"

    .prologue
    .line 1143
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .locals 3
    .parameter "packedPosition"

    .prologue
    .line 1082
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1083
    const/4 v0, -0x1

    .line 1085
    :goto_0
    return v0

    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionType(J)I
    .locals 4
    .parameter "packedPosition"

    .prologue
    const-wide/high16 v2, -0x8000

    .line 1063
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1064
    const/4 v0, 0x2

    .line 1067
    :goto_0
    return v0

    :cond_0
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public IsGroup(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 777
    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v1, p1}, Lcom/htc/music/widget/GroupListConnector;->getUnflattenedPos(I)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v0

    .line 779
    .local v0, posMetadata:Lcom/htc/music/widget/GroupListConnector$PositionMetadata;
    iget-object v1, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v1, v1, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 780
    const/4 v1, 0x1

    .line 783
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public collapseGroup(I)Z
    .locals 2
    .parameter "groupPos"

    .prologue
    .line 811
    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v1, p1}, Lcom/htc/music/widget/GroupListConnector;->collapseGroup(I)Z

    move-result v0

    .line 813
    .local v0, retValue:Z
    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mOnGroupCollapseListener:Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    .line 814
    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mOnGroupCollapseListener:Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 817
    :cond_0
    return v0
.end method

.method public expandAllGroups()V
    .locals 5

    .prologue
    .line 1376
    iget-object v2, p0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v2, :cond_0

    .line 1377
    iget-object v2, p0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 1378
    .local v0, count:I
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Group Count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1379
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1380
    iget-object v2, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v2, v1}, Lcom/htc/music/widget/GroupListConnector;->expandGroup(I)Z

    .line 1379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1383
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public expandGroup(I)Z
    .locals 2
    .parameter "groupPos"

    .prologue
    .line 794
    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v1, p1}, Lcom/htc/music/widget/GroupListConnector;->expandGroup(I)Z

    move-result v0

    .line 796
    .local v0, retValue:Z
    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mOnGroupExpandListener:Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;

    if-eqz v1, :cond_0

    .line 797
    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mOnGroupExpandListener:Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;

    invoke-interface {v1, p1}, Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 800
    :cond_0
    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 521
    invoke-super {p0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getChildSeclectList()[I
    .locals 1

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

    invoke-virtual {v0}, Lcom/htc/music/widget/FastSparseVector;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 2
    .parameter "flatListPosition"

    .prologue
    .line 921
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/GroupListConnector;->getUnflattenedPos(I)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    invoke-virtual {v0}, Lcom/htc/music/widget/GroupListPosition;->getPackedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFlatListPosition(J)I
    .locals 4
    .parameter "packedPosition"

    .prologue
    const/4 v2, -0x1

    .line 936
    invoke-static {p1, p2}, Lcom/htc/music/widget/GroupListPosition;->obtainPosition(J)Lcom/htc/music/widget/GroupListPosition;

    move-result-object v0

    .line 937
    .local v0, glPos:Lcom/htc/music/widget/GroupListPosition;
    if-nez v0, :cond_1

    .line 946
    :cond_0
    :goto_0
    return v2

    .line 941
    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v3, v0}, Lcom/htc/music/widget/GroupListConnector;->getFlattenedPos(Lcom/htc/music/widget/GroupListPosition;)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v1

    .line 942
    .local v1, pmData:Lcom/htc/music/widget/GroupListConnector$PositionMetadata;
    if-eqz v1, :cond_0

    .line 946
    iget-object v2, v1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v2, v2, Lcom/htc/music/widget/GroupListPosition;->flatListPos:I

    goto :goto_0
.end method

.method public getGroupSeclectList()[I
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

    invoke-virtual {v0}, Lcom/htc/music/widget/FastSparseVector;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public getItemCheckStatus(I)I
    .locals 3
    .parameter "groupPosition"

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    invoke-static {p1}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForGroup(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/widget/LongSparseIntArray;->get(J)I

    move-result v0

    return v0
.end method

.method public getItemCheckStatus(II)I
    .locals 3
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    invoke-static {p1, p2}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForChild(II)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/widget/LongSparseIntArray;->get(J)I

    move-result v0

    return v0
.end method

.method public getSelectedId()J
    .locals 5

    .prologue
    .line 974
    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListView;->getSelectedPosition()J

    move-result-wide v1

    .line 975
    .local v1, packedPos:J
    const-wide v3, 0xffffffffL

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 976
    const-wide/16 v3, -0x1

    .line 985
    :goto_0
    return-wide v3

    .line 978
    :cond_0
    invoke-static {v1, v2}, Lcom/htc/music/widget/GroupListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 980
    .local v0, groupPos:I
    invoke-static {v1, v2}, Lcom/htc/music/widget/GroupListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_1

    .line 982
    iget-object v3, p0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v3

    goto :goto_0

    .line 985
    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v1, v2}, Lcom/htc/music/widget/GroupListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v3, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    goto :goto_0
.end method

.method public getSelectedPosition()J
    .locals 3

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListView;->getSelectedItemPosition()I

    move-result v0

    .line 960
    .local v0, selectedPos:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 961
    const-wide v1, 0xffffffffL

    .line 963
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/GroupListView;->getExpandableListPosition(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 25
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 605
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==handleItemClick id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 606
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/htc/music/widget/GroupListConnector;->getUnflattenedPos(I)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v22

    .line 608
    .local v22, posMetadata:Lcom/htc/music/widget/GroupListConnector$PositionMetadata;
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/music/widget/GroupListView;->getChildOrGroupId(Lcom/htc/music/widget/GroupListPosition;)J

    move-result-wide p3

    .line 610
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v3, v3, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    .line 611
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/widget/GroupListView;->mPickerMode:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    if-eqz v3, :cond_4

    .line 612
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v3, v3, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-static {v3}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForGroup(I)J

    move-result-wide v20

    .line 613
    .local v20, pos:J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 615
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x0

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/music/widget/LongSparseIntArray;->get(JI)I

    move-result v19

    .line 616
    .local v19, oldValue:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v4, v4, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-interface {v3, v4}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v14

    .line 618
    .local v14, count:I
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_0

    .line 619
    const/16 v18, 0x0

    .line 623
    .local v18, newValue:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    move-wide/from16 v0, v20

    move/from16 v2, v18

    invoke-virtual {v3, v0, v1, v2}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    .line 625
    if-nez v18, :cond_1

    .line 626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

    move-wide/from16 v0, p3

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/FastSparseVector;->delete(I)V

    .line 627
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupIdMapChildCount:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    :goto_1
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v14, :cond_4

    .line 635
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v3, v3, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move/from16 v0, v17

    invoke-static {v3, v0}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForChild(II)J

    move-result-wide v20

    .line 636
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    move-wide/from16 v0, v20

    move/from16 v2, v18

    invoke-virtual {v3, v0, v1, v2}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    .line 638
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v4, v4, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move/from16 v0, v17

    invoke-interface {v3, v4, v0}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v12

    .line 639
    .local v12, cid:J
    if-nez v18, :cond_2

    .line 640
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

    long-to-int v4, v12

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/FastSparseVector;->delete(I)V

    .line 634
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 621
    .end local v12           #cid:J
    .end local v17           #i:I
    .end local v18           #newValue:I
    :cond_0
    const/16 v18, 0x1

    .restart local v18       #newValue:I
    goto :goto_0

    .line 629
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

    move-wide/from16 v0, p3

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/FastSparseVector;->append(I)V

    .line 630
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupIdMapChildCount:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 642
    .restart local v12       #cid:J
    .restart local v17       #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

    long-to-int v4, v12

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/FastSparseVector;->put(I)V

    goto :goto_3

    .line 649
    .end local v12           #cid:J
    .end local v14           #count:I
    .end local v17           #i:I
    .end local v18           #newValue:I
    .end local v19           #oldValue:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x0

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/music/widget/LongSparseIntArray;->get(JI)I

    move-result v19

    .line 650
    .restart local v19       #oldValue:I
    if-nez v19, :cond_4

    .line 651
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    invoke-virtual {v3}, Lcom/htc/music/widget/LongSparseIntArray;->clear()V

    .line 652
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x1

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    .line 659
    .end local v19           #oldValue:I
    .end local v20           #pos:J
    :cond_4
    invoke-virtual/range {v22 .. v22}, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mOnGroupClickListener:Lcom/htc/music/widget/GroupListView$OnGroupClickListener;

    if-eqz v3, :cond_5

    .line 663
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mOnGroupClickListener:Lcom/htc/music/widget/GroupListView$OnGroupClickListener;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v6, v4, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v7, p3

    move/from16 v9, p2

    invoke-interface/range {v3 .. v9}, Lcom/htc/music/widget/GroupListView$OnGroupClickListener;->onGroupClick(Lcom/htc/music/widget/GroupListView;Landroid/view/View;IJI)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 666
    const/4 v3, 0x1

    .line 772
    :goto_4
    return v3

    .line 674
    :cond_5
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "posMetadata.isExpanded"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 694
    :cond_6
    const/4 v3, 0x1

    goto :goto_4

    .line 677
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mOnGroupClickListener:Lcom/htc/music/widget/GroupListView$OnGroupClickListener;

    if-eqz v3, :cond_6

    .line 678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mOnGroupClickListener:Lcom/htc/music/widget/GroupListView$OnGroupClickListener;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v6, v4, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v7, p3

    move/from16 v9, p2

    invoke-interface/range {v3 .. v9}, Lcom/htc/music/widget/GroupListView$OnGroupClickListener;->onGroupClick(Lcom/htc/music/widget/GroupListView;Landroid/view/View;IJI)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 681
    const/4 v3, 0x1

    goto :goto_4

    .line 697
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/widget/GroupListView;->mPickerMode:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    if-eqz v3, :cond_9

    .line 698
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v3, v3, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v4, v4, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    invoke-static {v3, v4}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForChild(II)J

    move-result-wide v20

    .line 700
    .restart local v20       #pos:J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_10

    .line 703
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x0

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/music/widget/LongSparseIntArray;->get(JI)I

    move-result v19

    .line 704
    .restart local v19       #oldValue:I
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v3, v3, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-static {v3}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForGroup(I)J

    move-result-wide v15

    .line 707
    .local v15, groupPos:J
    const/4 v11, 0x0

    .line 708
    .local v11, childCnt:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupIdMapChildCount:Ljava/util/HashMap;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    .line 709
    .local v23, tempChildCount:Ljava/lang/Integer;
    if-eqz v23, :cond_a

    .line 710
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 716
    :goto_5
    if-nez v19, :cond_b

    const/16 v18, 0x1

    .line 719
    .restart local v18       #newValue:I
    :goto_6
    if-nez v18, :cond_d

    .line 721
    add-int/lit8 v11, v11, -0x1

    .line 722
    if-gtz v11, :cond_c

    .line 723
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x0

    move-wide v0, v15

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    .line 724
    const/4 v11, 0x0

    .line 729
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    long-to-int v5, v15

    invoke-interface {v4, v5}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/FastSparseVector;->delete(I)V

    .line 731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

    move-wide/from16 v0, p3

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/FastSparseVector;->delete(I)V

    .line 750
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupIdMapChildCount:Ljava/util/HashMap;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    move-wide/from16 v0, v20

    move/from16 v2, v18

    invoke-virtual {v3, v0, v1, v2}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    .line 763
    .end local v11           #childCnt:I
    .end local v15           #groupPos:J
    .end local v18           #newValue:I
    .end local v19           #oldValue:I
    .end local v20           #pos:J
    .end local v23           #tempChildCount:Ljava/lang/Integer;
    :cond_9
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mOnChildClickListener:Lcom/htc/music/widget/GroupListView$OnChildClickListener;

    if-eqz v3, :cond_11

    .line 766
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mOnChildClickListener:Lcom/htc/music/widget/GroupListView$OnChildClickListener;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v6, v4, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v7, v4, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v8, p3

    move/from16 v10, p2

    invoke-interface/range {v3 .. v10}, Lcom/htc/music/widget/GroupListView$OnChildClickListener;->onChildClick(Lcom/htc/music/widget/GroupListView;Landroid/view/View;IIJI)Z

    move-result v3

    goto/16 :goto_4

    .line 712
    .restart local v11       #childCnt:I
    .restart local v15       #groupPos:J
    .restart local v19       #oldValue:I
    .restart local v20       #pos:J
    .restart local v23       #tempChildCount:Ljava/lang/Integer;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupIdMapChildCount:Ljava/util/HashMap;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 717
    :cond_b
    const/16 v18, 0x0

    .restart local v18       #newValue:I
    goto :goto_6

    .line 726
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x2

    move-wide v0, v15

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    goto :goto_7

    .line 734
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v4, v4, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-interface {v3, v4}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v24

    .line 735
    .local v24, totalChild:I
    add-int/lit8 v11, v11, 0x1

    .line 736
    move/from16 v0, v24

    if-le v11, v0, :cond_e

    move/from16 v11, v24

    .line 737
    :cond_e
    move/from16 v0, v24

    if-ne v11, v0, :cond_f

    .line 739
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x1

    move-wide v0, v15

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    .line 740
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    long-to-int v5, v15

    invoke-interface {v4, v5}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/FastSparseVector;->append(I)V

    .line 747
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

    move-wide/from16 v0, p3

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/FastSparseVector;->append(I)V

    goto/16 :goto_8

    .line 744
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x2

    move-wide v0, v15

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    goto :goto_a

    .line 754
    .end local v11           #childCnt:I
    .end local v15           #groupPos:J
    .end local v18           #newValue:I
    .end local v19           #oldValue:I
    .end local v23           #tempChildCount:Ljava/lang/Integer;
    .end local v24           #totalChild:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x0

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/music/widget/LongSparseIntArray;->get(JI)I

    move-result v19

    .line 755
    .restart local v19       #oldValue:I
    if-nez v19, :cond_9

    .line 756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    invoke-virtual {v3}, Lcom/htc/music/widget/LongSparseIntArray;->clear()V

    .line 757
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x1

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    goto/16 :goto_9

    .line 772
    .end local v19           #oldValue:I
    .end local v20           #pos:J
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_4
.end method

.method public isGroupExpanded(I)Z
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/GroupListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 4
    .parameter "groupPosition"

    .prologue
    const/4 v0, 0x1

    .line 1354
    iget v1, p0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    if-eqz v1, :cond_0

    .line 1357
    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    invoke-static {p1}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/music/widget/LongSparseIntArray;->get(J)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1360
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemChecked(II)Z
    .locals 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const/4 v0, 0x1

    .line 1343
    iget v1, p0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    if-eqz v1, :cond_0

    .line 1346
    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    invoke-static {p1, p2}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForChild(II)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/music/widget/LongSparseIntArray;->get(J)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1349
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 4
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 581
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "==performItemClick"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListView;->getHeaderViewsCount()I

    move-result v1

    .line 584
    .local v1, headerViewsCount:I
    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListView;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListView;->getFooterViewsCount()I

    move-result v3

    sub-int v0, v2, v3

    .line 586
    .local v0, footerViewsStart:I
    if-lt p2, v1, :cond_0

    if-lt p2, v0, :cond_1

    .line 588
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v2

    .line 593
    :goto_0
    return v2

    :cond_1
    sub-int v2, p2, v1

    invoke-virtual {p0, p1, v2, p3, p4}, Lcom/htc/music/widget/GroupListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/GroupListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 544
    iput-object p1, p0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 546
    if-eqz p1, :cond_3

    .line 548
    new-instance v0, Lcom/htc/music/widget/GroupListConnector;

    invoke-direct {v0, p1}, Lcom/htc/music/widget/GroupListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    .line 553
    :goto_0
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    invoke-virtual {v0}, Lcom/htc/music/widget/LongSparseIntArray;->clear()V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

    invoke-virtual {v0}, Lcom/htc/music/widget/FastSparseVector;->clear()V

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

    if-eqz v0, :cond_2

    .line 562
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

    invoke-virtual {v0}, Lcom/htc/music/widget/FastSparseVector;->clear()V

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 568
    return-void

    .line 550
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 506
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChoiceMode(I)V
    .locals 1
    .parameter "choiceMode"

    .prologue
    .line 1325
    iput p1, p0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    .line 1326
    iget v0, p0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    if-nez v0, :cond_0

    .line 1328
    new-instance v0, Lcom/htc/music/widget/LongSparseIntArray;

    invoke-direct {v0}, Lcom/htc/music/widget/LongSparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    .line 1329
    new-instance v0, Lcom/htc/music/widget/FastSparseVector;

    invoke-direct {v0}, Lcom/htc/music/widget/FastSparseVector;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/GroupListView;->mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

    .line 1330
    new-instance v0, Lcom/htc/music/widget/FastSparseVector;

    invoke-direct {v0}, Lcom/htc/music/widget/FastSparseVector;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/GroupListView;->mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

    .line 1332
    :cond_0
    return-void
.end method

.method public setOnChildClickListener(Lcom/htc/music/widget/GroupListView$OnChildClickListener;)V
    .locals 0
    .parameter "onChildClickListener"

    .prologue
    .line 904
    iput-object p1, p0, Lcom/htc/music/widget/GroupListView;->mOnChildClickListener:Lcom/htc/music/widget/GroupListView$OnChildClickListener;

    .line 905
    return-void
.end method

.method public setOnGroupClickListener(Lcom/htc/music/widget/GroupListView$OnGroupClickListener;)V
    .locals 0
    .parameter "onGroupClickListener"

    .prologue
    .line 876
    iput-object p1, p0, Lcom/htc/music/widget/GroupListView;->mOnGroupClickListener:Lcom/htc/music/widget/GroupListView$OnGroupClickListener;

    .line 877
    return-void
.end method

.method public setOnGroupCollapseListener(Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;)V
    .locals 0
    .parameter "onGroupCollapseListener"

    .prologue
    .line 834
    iput-object p1, p0, Lcom/htc/music/widget/GroupListView;->mOnGroupCollapseListener:Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;

    .line 835
    return-void
.end method

.method public setOnGroupExpandListener(Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;)V
    .locals 0
    .parameter "onGroupExpandListener"

    .prologue
    .line 851
    iput-object p1, p0, Lcom/htc/music/widget/GroupListView;->mOnGroupExpandListener:Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;

    .line 852
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 534
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 535
    return-void
.end method

.method public setPickerMode(Z)V
    .locals 0
    .parameter "isPickerMode"

    .prologue
    .line 1386
    iput-boolean p1, p0, Lcom/htc/music/widget/GroupListView;->mPickerMode:Z

    .line 1387
    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 4
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "shouldExpandGroup"

    .prologue
    .line 1015
    invoke-static {p1, p2}, Lcom/htc/music/widget/GroupListPosition;->obtainChildPosition(II)Lcom/htc/music/widget/GroupListPosition;

    move-result-object v0

    .line 1017
    .local v0, elChildPos:Lcom/htc/music/widget/GroupListPosition;
    iget-object v2, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v2, v0}, Lcom/htc/music/widget/GroupListConnector;->getFlattenedPos(Lcom/htc/music/widget/GroupListPosition;)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v1

    .line 1019
    .local v1, flatChildPos:Lcom/htc/music/widget/GroupListConnector$PositionMetadata;
    if-nez v1, :cond_1

    .line 1024
    if-nez p3, :cond_0

    .line 1025
    const/4 v2, 0x0

    .line 1039
    :goto_0
    return v2

    .line 1027
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/GroupListView;->expandGroup(I)Z

    .line 1029
    iget-object v2, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v2, v0}, Lcom/htc/music/widget/GroupListConnector;->getFlattenedPos(Lcom/htc/music/widget/GroupListPosition;)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v1

    .line 1032
    if-nez v1, :cond_1

    .line 1033
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not find child"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1037
    :cond_1
    iget-object v2, v1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v2, v2, Lcom/htc/music/widget/GroupListPosition;->flatListPos:I

    invoke-super {p0, v2}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 1039
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setSelectedGroup(I)V
    .locals 3
    .parameter "groupPosition"

    .prologue
    .line 995
    invoke-static {p1}, Lcom/htc/music/widget/GroupListPosition;->obtainGroupPosition(I)Lcom/htc/music/widget/GroupListPosition;

    move-result-object v0

    .line 996
    .local v0, elGroupPos:Lcom/htc/music/widget/GroupListPosition;
    iget-object v2, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v2, v0}, Lcom/htc/music/widget/GroupListConnector;->getFlattenedPos(Lcom/htc/music/widget/GroupListPosition;)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v1

    .line 997
    .local v1, pmData:Lcom/htc/music/widget/GroupListConnector$PositionMetadata;
    if-nez v1, :cond_0

    .line 1001
    :goto_0
    return-void

    .line 1000
    :cond_0
    iget-object v2, v1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v2, v2, Lcom/htc/music/widget/GroupListPosition;->flatListPos:I

    invoke-super {p0, v2}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0
.end method
