.class final Lcom/android/camera/io/DCFUtility$1;
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
    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 11
    .parameter "fileName"
    .parameter "userState"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 135
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    move-object v7, p2

    check-cast v7, [Ljava/lang/Object;

    .line 136
    .local v7, params:[Ljava/lang/Object;
    aget-object v2, v7, v10

    check-cast v2, Lcom/android/camera/io/DCFInfo;

    .line 137
    .local v2, dcfInfo:Lcom/android/camera/io/DCFInfo;
    aget-object v8, v7, v9

    check-cast v8, [I

    move-object v6, v8

    check-cast v6, [I

    .line 138
    .local v6, maxDirCounter:[I
    iget-object v3, v2, Lcom/android/camera/io/DCFInfo;->dirFreeChar:Ljava/lang/String;

    .line 139
    .local v3, dirFreeChar:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 143
    .local v5, fileNameLength:I
    const/4 v1, 0x0

    .line 144
    .local v1, counterEndIndex:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 146
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_1

    .line 150
    :cond_0
    if-nez v1, :cond_2

    move v8, v9

    .line 173
    :goto_1
    return v8

    .line 148
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_2
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 160
    .local v0, counter:I
    aget v8, v6, v10

    if-le v0, v8, :cond_3

    iget v8, v2, Lcom/android/camera/io/DCFInfo;->maxDirectoryCounter:I

    if-le v0, v8, :cond_4

    :cond_3
    move v8, v9

    .line 161
    goto :goto_1

    .line 156
    .end local v0           #counter:I
    :catch_0
    move-exception v4

    .local v4, ex:Ljava/lang/NumberFormatException;
    move v8, v9

    .line 158
    goto :goto_1

    .line 164
    .end local v4           #ex:Ljava/lang/NumberFormatException;
    .restart local v0       #counter:I
    :cond_4
    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    move v8, v9

    .line 165
    goto :goto_1

    .line 168
    :cond_5
    aput v0, v6, v10

    .line 169
    iget v8, v2, Lcom/android/camera/io/DCFInfo;->maxDirectoryCounter:I

    if-ne v0, v8, :cond_6

    move v8, v10

    .line 170
    goto :goto_1

    :cond_6
    move v8, v9

    .line 173
    goto :goto_1
.end method
