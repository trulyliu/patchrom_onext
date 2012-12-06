.class public Lcom/htc/music/widget/FastSparseVector;
.super Ljava/lang/Object;
.source "FastSparseVector.java"


# instance fields
.field private mKeys:[I

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/htc/music/widget/FastSparseVector;-><init>(I)V

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->idealIntArraySize(I)I

    move-result p1

    .line 43
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/htc/music/widget/FastSparseVector;->mKeys:[I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/widget/FastSparseVector;->mSize:I

    .line 45
    return-void
.end method

.method private static binarySearch([IIII)I
    .locals 5
    .parameter "a"
    .parameter "start"
    .parameter "len"
    .parameter "key"

    .prologue
    .line 162
    add-int v1, p1, p2

    .local v1, high:I
    add-int/lit8 v2, p1, -0x1

    .line 164
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 165
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 167
    .local v0, guess:I
    aget v3, p0, v0

    if-ge v3, p3, :cond_0

    .line 168
    move v2, v0

    goto :goto_0

    .line 170
    :cond_0
    move v1, v0

    goto :goto_0

    .line 173
    .end local v0           #guess:I
    :cond_1
    add-int v3, p1, p2

    if-ne v1, v3, :cond_3

    .line 174
    add-int v3, p1, p2

    xor-int/lit8 v1, v3, -0x1

    .line 178
    .end local v1           #high:I
    :cond_2
    :goto_1
    return v1

    .line 175
    .restart local v1       #high:I
    :cond_3
    aget v3, p0, v1

    if-eq v3, p3, :cond_2

    .line 178
    xor-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public append(I)V
    .locals 7
    .parameter "key"

    .prologue
    const/4 v6, 0x0

    .line 139
    iget v4, p0, Lcom/htc/music/widget/FastSparseVector;->mSize:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/widget/FastSparseVector;->mKeys:[I

    iget v5, p0, Lcom/htc/music/widget/FastSparseVector;->mSize:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-gt p1, v4, :cond_0

    .line 140
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/FastSparseVector;->put(I)V

    .line 159
    :goto_0
    return-void

    .line 144
    :cond_0
    iget v3, p0, Lcom/htc/music/widget/FastSparseVector;->mSize:I

    .line 145
    .local v3, pos:I
    iget-object v4, p0, Lcom/htc/music/widget/FastSparseVector;->mKeys:[I

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 146
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->idealIntArraySize(I)I

    move-result v0

    .line 148
    .local v0, n:I
    new-array v1, v0, [I

    .line 149
    .local v1, nkeys:[I
    new-array v2, v0, [Z

    .line 152
    .local v2, nvalues:[Z
    iget-object v4, p0, Lcom/htc/music/widget/FastSparseVector;->mKeys:[I

    iget-object v5, p0, Lcom/htc/music/widget/FastSparseVector;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iput-object v1, p0, Lcom/htc/music/widget/FastSparseVector;->mKeys:[I

    .line 157
    .end local v0           #n:I
    .end local v1           #nkeys:[I
    .end local v2           #nvalues:[Z
    :cond_1
    iget-object v4, p0, Lcom/htc/music/widget/FastSparseVector;->mKeys:[I

    aput p1, v4, v3

    .line 158
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/htc/music/widget/FastSparseVector;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/widget/FastSparseVector;->mSize:I

    .line 99
    return-void
.end method

.method public contain(I)I
    .locals 4
    .parameter "key"

    .prologue
    .line 52
    iget-object v1, p0, Lcom/htc/music/widget/FastSparseVector;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/music/widget/FastSparseVector;->mSize:I

    invoke-static {v1, v2, v3, p1}, Lcom/htc/music/widget/FastSparseVector;->binarySearch([IIII)I

    move-result v0

    .line 53
    .local v0, i:I
    return v0
.end method

.method public delete(I)V
    .locals 6
    .parameter "key"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/htc/music/widget/FastSparseVector;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/music/widget/FastSparseVector;->mSize:I

    invoke-static {v1, v2, v3, p1}, Lcom/htc/music/widget/FastSparseVector;->binarySearch([IIII)I

    move-result v0

    .line 61
    .local v0, i:I
    const-string v1, "FastSparseVector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete mSize : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/widget/FastSparseVector;->mSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " i : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    if-ltz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/htc/music/widget/FastSparseVector;->mKeys:[I

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/htc/music/widget/FastSparseVector;->mKeys:[I

    iget v4, p0, Lcom/htc/music/widget/FastSparseVector;->mSize:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iget v1, p0, Lcom/htc/music/widget/FastSparseVector;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/music/widget/FastSparseVector;->mSize:I

    .line 67
    :cond_0
    return-void
.end method

.method public indexOfKey(I)I
    .locals 3
    .parameter "key"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/music/widget/FastSparseVector;->mKeys:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/music/widget/FastSparseVector;->mSize:I

    invoke-static {v0, v1, v2, p1}, Lcom/htc/music/widget/FastSparseVector;->binarySearch([IIII)I

    move-result v0

    return v0
.end method

.method public keyAt(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/music/widget/FastSparseVector;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(I)V
    .locals 7
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    .line 106
    iget-object v3, p0, Lcom/htc/music/widget/FastSparseVector;->mKeys:[I

    iget v4, p0, Lcom/htc/music/widget/FastSparseVector;->mSize:I

    invoke-static {v3, v5, v4, p1}, Lcom/htc/music/widget/FastSparseVector;->binarySearch([IIII)I

    move-result v0

    .line 108
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 109
    iget-object v3, p0, Lcom/htc/music/widget/FastSparseVector;->mKeys:[I

    aput p1, v3, v0

    .line 132
    :goto_0
    return-void

    .line 111
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 113
    iget v3, p0, Lcom/htc/music/widget/FastSparseVector;->mSize:I

    iget-object v4, p0, Lcom/htc/music/widget/FastSparseVector;->mKeys:[I

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 114
    iget v3, p0, Lcom/htc/music/widget/FastSparseVector;->mSize:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->idealIntArraySize(I)I

    move-result v1

    .line 116
    .local v1, n:I
    new-array v2, v1, [I

    .line 119
    .local v2, nkeys:[I
    iget-object v3, p0, Lcom/htc/music/widget/FastSparseVector;->mKeys:[I

    iget-object v4, p0, Lcom/htc/music/widget/FastSparseVector;->mKeys:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    iput-object v2, p0, Lcom/htc/music/widget/FastSparseVector;->mKeys:[I

    .line 124
    .end local v1           #n:I
    .end local v2           #nkeys:[I
    :cond_1
    iget v3, p0, Lcom/htc/music/widget/FastSparseVector;->mSize:I

    sub-int/2addr v3, v0

    if-eqz v3, :cond_2

    .line 126
    iget-object v3, p0, Lcom/htc/music/widget/FastSparseVector;->mKeys:[I

    iget-object v4, p0, Lcom/htc/music/widget/FastSparseVector;->mKeys:[I

    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Lcom/htc/music/widget/FastSparseVector;->mSize:I

    sub-int/2addr v6, v0

    invoke-static {v3, v0, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    :cond_2
    iget-object v3, p0, Lcom/htc/music/widget/FastSparseVector;->mKeys:[I

    aput p1, v3, v0

    .line 130
    iget v3, p0, Lcom/htc/music/widget/FastSparseVector;->mSize:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/music/widget/FastSparseVector;->mSize:I

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/music/widget/FastSparseVector;->mSize:I

    return v0
.end method

.method public toArray()[I
    .locals 4

    .prologue
    .line 182
    iget v1, p0, Lcom/htc/music/widget/FastSparseVector;->mSize:I

    .line 183
    .local v1, len:I
    new-array v2, v1, [I

    .line 184
    .local v2, list:[I
    if-nez v1, :cond_1

    .line 185
    const/4 v2, 0x0

    .line 190
    .end local v2           #list:[I
    :cond_0
    return-object v2

    .line 186
    .restart local v2       #list:[I
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 187
    iget-object v3, p0, Lcom/htc/music/widget/FastSparseVector;->mKeys:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
