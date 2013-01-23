.class final Lcom/android/camera/io/DCFUtility$2;
.super Ljava/lang/Object;
.source "DCFUtility.java"

# interfaces
.implements Lcom/android/camera/io/FileUtility$FileEnumerationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/io/DCFUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 12
    .parameter "fileName"
    .parameter "userState"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 201
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    move-object v8, p2

    check-cast v8, [Ljava/lang/Object;

    .line 202
    .local v8, params:[Ljava/lang/Object;
    aget-object v2, v8, v11

    check-cast v2, Lcom/android/camera/io/DCFInfo;

    .line 203
    .local v2, dcfInfo:Lcom/android/camera/io/DCFInfo;
    aget-object v9, v8, v10

    check-cast v9, [I

    move-object v7, v9

    check-cast v7, [I

    .line 204
    .local v7, maxFileCounter:[I
    iget-object v5, v2, Lcom/android/camera/io/DCFInfo;->fileTag:Ljava/lang/String;

    .line 205
    .local v5, fileTag:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 206
    .local v6, fileTagLength:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 209
    .local v4, fileNameLength:I
    if-lt v4, v6, :cond_0

    invoke-virtual {p1, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    move v9, v10

    .line 239
    :goto_0
    return v9

    .line 214
    :cond_1
    move v1, v6

    .line 215
    .local v1, counterEndIndex:I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 217
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_3

    .line 221
    :cond_2
    if-ne v1, v6, :cond_4

    move v9, v10

    .line 222
    goto :goto_0

    .line 219
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 225
    :cond_4
    :try_start_0
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 231
    .local v0, counter:I
    aget v9, v7, v11

    if-le v0, v9, :cond_5

    iget v9, v2, Lcom/android/camera/io/DCFInfo;->maxFileCounter:I

    if-gt v0, v9, :cond_5

    .line 233
    aput v0, v7, v11

    .line 234
    iget v9, v2, Lcom/android/camera/io/DCFInfo;->maxFileCounter:I

    if-ne v0, v9, :cond_5

    move v9, v11

    .line 235
    goto :goto_0

    .line 227
    .end local v0           #counter:I
    :catch_0
    move-exception v3

    .local v3, ex:Ljava/lang/NumberFormatException;
    move v9, v10

    .line 229
    goto :goto_0

    .end local v3           #ex:Ljava/lang/NumberFormatException;
    .restart local v0       #counter:I
    :cond_5
    move v9, v10

    .line 239
    goto :goto_0
.end method
