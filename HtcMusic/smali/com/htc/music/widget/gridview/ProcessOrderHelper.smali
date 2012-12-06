.class public Lcom/htc/music/widget/gridview/ProcessOrderHelper;
.super Ljava/lang/Object;
.source "ProcessOrderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;
    }
.end annotation


# static fields
.field private static DIRECTION_NODIRECTION:I = 0x0

.field private static DIRECTION_SCROLL_TO_BOTTOM:I = 0x0

.field private static DIRECTION_SCROLL_TO_TOP:I = 0x0

.field public static final FINISH:I = 0x2

.field public static final INVALIDATE:I = 0x0

.field public static final IN_PROCESS:I = 0x1


# instance fields
.field private mFirstVisibleIndex:I

.field private mLastVisibleIndex:I

.field private mProcessDirection:I

.field private mProcessIndex:I

.field private mProcessListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

.field private mProcessRange:I

.field private mSyncObject:Ljava/lang/Object;

.field private mTotalCount:I

.field private mVisibleCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x1

    sput v0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->DIRECTION_SCROLL_TO_BOTTOM:I

    .line 9
    const/4 v0, -0x1

    sput v0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->DIRECTION_SCROLL_TO_TOP:I

    .line 10
    const/4 v0, 0x0

    sput v0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->DIRECTION_NODIRECTION:I

    return-void
.end method

.method public constructor <init>(IILcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;)V
    .locals 2
    .parameter "processRange"
    .parameter "total"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v1, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mFirstVisibleIndex:I

    .line 13
    const/16 v0, 0x18

    iput v0, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mLastVisibleIndex:I

    .line 14
    iput v1, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessIndex:I

    .line 17
    sget v0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->DIRECTION_SCROLL_TO_BOTTOM:I

    iput v0, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessDirection:I

    .line 18
    iput v1, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mVisibleCount:I

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mSyncObject:Ljava/lang/Object;

    .line 25
    if-nez p3, :cond_0

    .line 26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "IProcessListener should not null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    iput p1, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessRange:I

    .line 29
    iput p2, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mTotalCount:I

    .line 30
    iput-object p3, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

    .line 31
    return-void
.end method


# virtual methods
.method public processPriorPosition()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 55
    iget-object v5, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mSyncObject:Ljava/lang/Object;

    monitor-enter v5

    .line 56
    :try_start_0
    iget-object v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mTotalCount:I

    if-nez v6, :cond_1

    .line 57
    :cond_0
    monitor-exit v5

    move v3, v4

    .line 135
    :goto_0
    return v3

    .line 60
    :cond_1
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessDirection:I

    sget v7, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->DIRECTION_SCROLL_TO_BOTTOM:I

    if-ne v6, v7, :cond_4

    .line 61
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mLastVisibleIndex:I

    iget v7, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessRange:I

    iget v8, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mVisibleCount:I

    sub-int/2addr v7, v8

    add-int v1, v6, v7

    .line 62
    .local v1, end:I
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mTotalCount:I

    if-lt v1, v6, :cond_2

    .line 63
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mTotalCount:I

    add-int/lit8 v1, v6, -0x1

    .line 66
    :cond_2
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mLastVisibleIndex:I

    add-int/lit8 v2, v6, 0x1

    .local v2, position:I
    :goto_1
    if-gt v2, v1, :cond_12

    .line 67
    iget-object v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

    invoke-interface {v6, v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;->onProcessListener(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 68
    iput v2, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessIndex:I

    .line 69
    monitor-exit v5

    goto :goto_0

    .line 134
    .end local v1           #end:I
    .end local v2           #position:I
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 66
    .restart local v1       #end:I
    .restart local v2       #position:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 73
    .end local v1           #end:I
    .end local v2           #position:I
    :cond_4
    :try_start_1
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessDirection:I

    sget v7, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->DIRECTION_SCROLL_TO_TOP:I

    if-ne v6, v7, :cond_8

    .line 74
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mFirstVisibleIndex:I

    iget v7, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessRange:I

    iget v8, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mVisibleCount:I

    sub-int/2addr v7, v8

    sub-int v0, v6, v7

    .line 75
    .local v0, begin:I
    if-gez v0, :cond_5

    const/4 v0, 0x0

    .line 76
    :cond_5
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mFirstVisibleIndex:I

    add-int/lit8 v2, v6, -0x1

    .line 77
    .restart local v2       #position:I
    if-gez v2, :cond_6

    .line 78
    const/4 v2, 0x0

    .line 80
    :cond_6
    :goto_2
    if-lt v2, v0, :cond_12

    .line 81
    iget-object v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

    invoke-interface {v6, v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;->onProcessListener(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 82
    iput v2, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessIndex:I

    .line 83
    monitor-exit v5

    goto :goto_0

    .line 80
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 87
    .end local v0           #begin:I
    .end local v2           #position:I
    :cond_8
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessIndex:I

    iget v7, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mFirstVisibleIndex:I

    if-gt v6, v7, :cond_b

    .line 88
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mLastVisibleIndex:I

    iget v7, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessRange:I

    iget v8, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mVisibleCount:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 89
    .restart local v1       #end:I
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mTotalCount:I

    if-lt v1, v6, :cond_9

    .line 90
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mTotalCount:I

    add-int/lit8 v1, v6, -0x1

    .line 91
    :cond_9
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mLastVisibleIndex:I

    iput v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessIndex:I

    .line 92
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mLastVisibleIndex:I

    add-int/lit8 v2, v6, 0x1

    .restart local v2       #position:I
    :goto_3
    if-gt v2, v1, :cond_b

    .line 93
    iget-object v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

    invoke-interface {v6, v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;->onProcessListener(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 94
    iput v2, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessIndex:I

    .line 95
    monitor-exit v5

    goto/16 :goto_0

    .line 92
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 100
    .end local v1           #end:I
    .end local v2           #position:I
    :cond_b
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessIndex:I

    iget v7, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mLastVisibleIndex:I

    if-lt v6, v7, :cond_12

    .line 101
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mFirstVisibleIndex:I

    iget v7, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessRange:I

    iget v8, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mVisibleCount:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    sub-int v0, v6, v7

    .line 102
    .restart local v0       #begin:I
    if-gez v0, :cond_c

    .line 103
    const/4 v0, 0x0

    .line 104
    :cond_c
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mFirstVisibleIndex:I

    iput v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessIndex:I

    .line 106
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mFirstVisibleIndex:I

    if-nez v6, :cond_f

    .line 107
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessIndex:I

    iget v7, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mFirstVisibleIndex:I

    if-gt v6, v7, :cond_12

    .line 108
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mLastVisibleIndex:I

    iget v7, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessRange:I

    iget v8, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mVisibleCount:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 109
    .restart local v1       #end:I
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mTotalCount:I

    if-lt v1, v6, :cond_d

    .line 110
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mTotalCount:I

    add-int/lit8 v1, v6, -0x1

    .line 111
    :cond_d
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mLastVisibleIndex:I

    iput v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessIndex:I

    .line 112
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mLastVisibleIndex:I

    add-int/lit8 v2, v6, 0x1

    .restart local v2       #position:I
    :goto_4
    if-gt v2, v1, :cond_12

    .line 113
    iget-object v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

    invoke-interface {v6, v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;->onProcessListener(I)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 114
    iput v2, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessIndex:I

    .line 115
    monitor-exit v5

    goto/16 :goto_0

    .line 112
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 120
    .end local v1           #end:I
    .end local v2           #position:I
    :cond_f
    iget v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mFirstVisibleIndex:I

    add-int/lit8 v2, v6, -0x1

    .line 121
    .restart local v2       #position:I
    if-gez v2, :cond_10

    .line 122
    const/4 v2, 0x0

    .line 123
    :cond_10
    :goto_5
    if-lt v2, v0, :cond_12

    .line 124
    iget-object v6, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

    invoke-interface {v6, v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;->onProcessListener(I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 125
    iput v2, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessIndex:I

    .line 126
    monitor-exit v5

    goto/16 :goto_0

    .line 123
    :cond_11
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 134
    .end local v0           #begin:I
    .end local v2           #position:I
    :cond_12
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    .line 135
    goto/16 :goto_0
.end method

.method public processVisiblePosition()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 40
    iget-object v2, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mSyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 41
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mTotalCount:I

    if-nez v3, :cond_1

    .line 42
    :cond_0
    monitor-exit v2

    .line 51
    :goto_0
    return v1

    .line 44
    :cond_1
    iget v0, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mFirstVisibleIndex:I

    .local v0, i:I
    :goto_1
    iget v3, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mLastVisibleIndex:I

    if-gt v0, v3, :cond_3

    .line 45
    iget-object v3, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

    invoke-interface {v3, v0}, Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;->onProcessListener(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 46
    iput v0, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessIndex:I

    .line 47
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 50
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 50
    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 34
    iget-object v1, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

    .line 36
    monitor-exit v1

    .line 37
    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setProcessDirection(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 166
    iput p1, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessDirection:I

    .line 167
    iget v0, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mFirstVisibleIndex:I

    iput v0, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessIndex:I

    .line 168
    return-void
.end method

.method public setTotalCount(I)V
    .locals 0
    .parameter "total"

    .prologue
    .line 162
    iput p1, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mTotalCount:I

    .line 163
    return-void
.end method

.method public setVisibleRange(III)V
    .locals 3
    .parameter "count"
    .parameter "firstVisibleIndex"
    .parameter "lastVisibleIndex"

    .prologue
    const/4 v2, 0x0

    .line 139
    iput p1, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mTotalCount:I

    .line 140
    if-gt p2, p3, :cond_3

    .line 141
    iput p2, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mFirstVisibleIndex:I

    .line 142
    iput p3, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mLastVisibleIndex:I

    .line 144
    iget v0, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mLastVisibleIndex:I

    iget v1, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mTotalCount:I

    if-lt v0, v1, :cond_0

    .line 145
    iget v0, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mTotalCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mLastVisibleIndex:I

    .line 148
    :cond_0
    iget v0, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mLastVisibleIndex:I

    if-gez v0, :cond_1

    .line 149
    iput v2, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mLastVisibleIndex:I

    .line 152
    :cond_1
    iget v0, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mFirstVisibleIndex:I

    if-gez v0, :cond_2

    .line 153
    iput v2, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mFirstVisibleIndex:I

    .line 156
    :cond_2
    iget v0, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mLastVisibleIndex:I

    iget v1, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mFirstVisibleIndex:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mVisibleCount:I

    .line 157
    iget v0, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mFirstVisibleIndex:I

    iput v0, p0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->mProcessIndex:I

    .line 159
    :cond_3
    return-void
.end method
