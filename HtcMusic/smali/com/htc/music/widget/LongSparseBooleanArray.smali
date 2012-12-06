.class public Lcom/htc/music/widget/LongSparseBooleanArray;
.super Ljava/lang/Object;
.source "LongSparseBooleanArray.java"


# instance fields
.field private mKeys:[J

.field private mSize:I

.field private mValues:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/htc/music/widget/LongSparseBooleanArray;-><init>(I)V

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
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mKeys:[J

    .line 44
    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mValues:[Z

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mSize:I

    .line 46
    return-void
.end method

.method private static binarySearch([JIIJ)I
    .locals 5
    .parameter "a"
    .parameter "start"
    .parameter "len"
    .parameter "key"

    .prologue
    .line 208
    add-int v1, p1, p2

    .local v1, high:I
    add-int/lit8 v2, p1, -0x1

    .line 210
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 211
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 213
    .local v0, guess:I
    aget-wide v3, p0, v0

    cmp-long v3, v3, p3

    if-gez v3, :cond_0

    .line 214
    move v2, v0

    goto :goto_0

    .line 216
    :cond_0
    move v1, v0

    goto :goto_0

    .line 219
    .end local v0           #guess:I
    :cond_1
    add-int v3, p1, p2

    if-ne v1, v3, :cond_3

    .line 220
    add-int v3, p1, p2

    xor-int/lit8 v1, v3, -0x1

    .line 224
    .end local v1           #high:I
    :cond_2
    :goto_1
    return v1

    .line 221
    .restart local v1       #high:I
    :cond_3
    aget-wide v3, p0, v1

    cmp-long v3, v3, p3

    if-eqz v3, :cond_2

    .line 224
    xor-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public append(JZ)V
    .locals 7
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    .line 182
    iget v4, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mSize:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mKeys:[J

    iget v5, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mSize:I

    add-int/lit8 v5, v5, -0x1

    aget-wide v4, v4, v5

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    .line 183
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/music/widget/LongSparseBooleanArray;->put(JZ)V

    .line 205
    :goto_0
    return-void

    .line 187
    :cond_0
    iget v3, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mSize:I

    .line 188
    .local v3, pos:I
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mKeys:[J

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 189
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->idealIntArraySize(I)I

    move-result v0

    .line 191
    .local v0, n:I
    new-array v1, v0, [J

    .line 192
    .local v1, nkeys:[J
    new-array v2, v0, [Z

    .line 195
    .local v2, nvalues:[Z
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mKeys:[J

    iget-object v5, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mValues:[Z

    iget-object v5, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mValues:[Z

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iput-object v1, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mKeys:[J

    .line 199
    iput-object v2, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mValues:[Z

    .line 202
    .end local v0           #n:I
    .end local v1           #nkeys:[J
    .end local v2           #nvalues:[Z
    :cond_1
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mKeys:[J

    aput-wide p1, v4, v3

    .line 203
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mValues:[Z

    aput-boolean p3, v4, v3

    .line 204
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mSize:I

    .line 175
    return-void
.end method

.method public delete(J)V
    .locals 6
    .parameter "key"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Lcom/htc/music/widget/LongSparseBooleanArray;->binarySearch([JIIJ)I

    move-result v0

    .line 76
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mKeys:[J

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mKeys:[J

    iget v4, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mSize:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget-object v1, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mValues:[Z

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mValues:[Z

    iget v4, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mSize:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget v1, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mSize:I

    .line 81
    :cond_0
    return-void
.end method

.method public get(J)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/music/widget/LongSparseBooleanArray;->get(JZ)Z

    move-result v0

    return v0
.end method

.method public get(JZ)Z
    .locals 4
    .parameter "key"
    .parameter "valueIfKeyNotFound"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Lcom/htc/music/widget/LongSparseBooleanArray;->binarySearch([JIIJ)I

    move-result v0

    .line 63
    .local v0, i:I
    if-gez v0, :cond_0

    .line 66
    .end local p3
    :goto_0
    return p3

    .restart local p3
    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mValues:[Z

    aget-boolean p3, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(I)I
    .locals 5
    .parameter "key"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mKeys:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mSize:I

    int-to-long v3, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/music/widget/LongSparseBooleanArray;->binarySearch([JIIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Z)I
    .locals 2
    .parameter "value"

    .prologue
    .line 163
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mSize:I

    if-ge v0, v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mValues:[Z

    aget-boolean v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 167
    .end local v0           #i:I
    :goto_1
    return v0

    .line 163
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public keyAt(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JZ)V
    .locals 8
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    .line 88
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mKeys:[J

    iget v5, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mSize:I

    invoke-static {v4, v6, v5, p1, p2}, Lcom/htc/music/widget/LongSparseBooleanArray;->binarySearch([JIIJ)I

    move-result v0

    .line 90
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 91
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mValues:[Z

    aput-boolean p3, v4, v0

    .line 120
    :goto_0
    return-void

    .line 93
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 95
    iget v4, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mSize:I

    iget-object v5, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 96
    iget v4, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->idealIntArraySize(I)I

    move-result v1

    .line 98
    .local v1, n:I
    new-array v2, v1, [J

    .line 99
    .local v2, nkeys:[J
    new-array v3, v1, [Z

    .line 103
    .local v3, nvalues:[Z
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mKeys:[J

    iget-object v5, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mValues:[Z

    iget-object v5, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mValues:[Z

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iput-object v2, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mKeys:[J

    .line 107
    iput-object v3, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mValues:[Z

    .line 110
    .end local v1           #n:I
    .end local v2           #nkeys:[J
    .end local v3           #nvalues:[Z
    :cond_1
    iget v4, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_2

    .line 112
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mKeys:[J

    iget-object v5, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mKeys:[J

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mValues:[Z

    iget-object v5, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mValues:[Z

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    :cond_2
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mKeys:[J

    aput-wide p1, v4, v0

    .line 117
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mValues:[Z

    aput-boolean p3, v4, v0

    .line 118
    iget v4, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mSize:I

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mSize:I

    return v0
.end method

.method public valueAt(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/widget/LongSparseBooleanArray;->mValues:[Z

    aget-boolean v0, v0, p1

    return v0
.end method
