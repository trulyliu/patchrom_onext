.class public Lcom/htc/music/widget/gridview/DataPrototype;
.super Ljava/lang/Object;
.source "DataPrototype.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public mData:Ljava/lang/String;

.field public mId:Ljava/lang/String;

.field public mIdName:Ljava/lang/String;

.field public mIsDrm:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/htc/music/widget/gridview/DataPrototype;->mData:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/htc/music/widget/gridview/DataPrototype;->mId:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/htc/music/widget/gridview/DataPrototype;->mIdName:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "data"
    .parameter "id"
    .parameter "idName"
    .parameter "isDrm"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/htc/music/widget/gridview/DataPrototype;->mData:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/htc/music/widget/gridview/DataPrototype;->mId:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/htc/music/widget/gridview/DataPrototype;->mIdName:Ljava/lang/String;

    .line 22
    iput-boolean p4, p0, Lcom/htc/music/widget/gridview/DataPrototype;->mIsDrm:Z

    .line 23
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .parameter "dataPrototype"

    .prologue
    .line 36
    check-cast p1, Lcom/htc/music/widget/gridview/DataPrototype;

    .end local p1
    iget-object v0, p1, Lcom/htc/music/widget/gridview/DataPrototype;->mIdName:Ljava/lang/String;

    .line 38
    .local v0, comparedName:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/widget/gridview/DataPrototype;->mIdName:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/gridview/DataPrototype;->mIdName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 42
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/gridview/DataPrototype;->mIdName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public printLog(Ljava/lang/String;)V
    .locals 3
    .parameter "source"

    .prologue
    .line 26
    const-string v0, "DataPrototype"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++++++++++++++++++++ source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "DataPrototype"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/widget/gridview/DataPrototype;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v0, "DataPrototype"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/widget/gridview/DataPrototype;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v0, "DataPrototype"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIdName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/widget/gridview/DataPrototype;->mIdName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v0, "DataPrototype"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsDrm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/widget/gridview/DataPrototype;->mIsDrm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v0, "DataPrototype"

    const-string v1, "---------------------"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method
