.class public Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;
.super Ljava/lang/Object;
.source "DmsDetailBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "pageInfo"
.end annotation


# instance fields
.field private endIndex:J

.field private middleIndex:J

.field private startIndex:J

.field final synthetic this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V
    .locals 2
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    .line 1953
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1954
    iput-wide v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->startIndex:J

    .line 1955
    iput-wide v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->endIndex:J

    .line 1956
    iput-wide v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->middleIndex:J

    .line 1957
    return-void
.end method

.method public constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;JJJ)V
    .locals 0
    .parameter
    .parameter "start"
    .parameter "middle"
    .parameter "end"

    .prologue
    .line 1959
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1960
    iput-wide p2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->startIndex:J

    .line 1961
    iput-wide p4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->endIndex:J

    .line 1962
    iput-wide p6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->middleIndex:J

    .line 1963
    return-void
.end method


# virtual methods
.method public getEndIdx()J
    .locals 2

    .prologue
    .line 1978
    iget-wide v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->endIndex:J

    return-wide v0
.end method

.method public getMiddleIdx()J
    .locals 2

    .prologue
    .line 1986
    iget-wide v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->middleIndex:J

    return-wide v0
.end method

.method public getStartIdx()J
    .locals 2

    .prologue
    .line 1970
    iget-wide v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->startIndex:J

    return-wide v0
.end method

.method public setEndIdx(J)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1974
    iput-wide p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->endIndex:J

    .line 1975
    return-void
.end method

.method public setMiddleIdx(J)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1982
    iput-wide p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->middleIndex:J

    .line 1983
    return-void
.end method

.method public setStartIdx(J)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1966
    iput-wide p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->startIndex:J

    .line 1967
    return-void
.end method
