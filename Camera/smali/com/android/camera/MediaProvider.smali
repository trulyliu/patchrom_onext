.class public final Lcom/android/camera/MediaProvider;
.super Ljava/lang/Object;
.source "MediaProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaProvider(Camera)"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static insertImage(Landroid/content/Context;Lcom/android/camera/io/StorageSlot;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;JILandroid/content/ContentValues;Lcom/android/camera/io/FileFormat;)Landroid/net/Uri;
    .locals 15
    .parameter "context"
    .parameter "storageSlot"
    .parameter "directoryName"
    .parameter "fileName"
    .parameter "gpsLocation"
    .parameter "takenTime"
    .parameter "orientation"
    .parameter "preparedValues"
    .parameter "fileFormat"

    .prologue
    .line 39
    const-string v12, "MediaProvider(Camera)"

    const-string v13, "insertImage() - start"

    invoke-static {v12, v13}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    if-nez p0, :cond_0

    .line 44
    const-string v12, "context"

    invoke-static {v12}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 45
    const/4 v9, 0x0

    .line 124
    :goto_0
    return-object v9

    .line 47
    :cond_0
    if-nez p1, :cond_1

    .line 49
    const-string v12, "storageSlot"

    invoke-static {v12}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 50
    const/4 v9, 0x0

    goto :goto_0

    .line 52
    :cond_1
    if-nez p2, :cond_2

    .line 54
    const-string v12, "directoryName"

    invoke-static {v12}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 55
    const/4 v9, 0x0

    goto :goto_0

    .line 57
    :cond_2
    if-nez p3, :cond_3

    .line 59
    const-string v12, "fileName"

    invoke-static {v12}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 60
    const/4 v9, 0x0

    goto :goto_0

    .line 64
    :cond_3
    invoke-static/range {p2 .. p3}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, filePath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 68
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 79
    .local v4, fileSize:J
    :goto_1
    :try_start_0
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 80
    .local v11, values:Landroid/content/ContentValues;
    if-eqz p8, :cond_9

    .line 82
    invoke-virtual/range {p8 .. p8}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 84
    .local v7, key:Ljava/lang/String;
    move-object/from16 v0, p8

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 85
    .local v10, value:Ljava/lang/Object;
    instance-of v12, v10, Ljava/lang/Integer;

    if-eqz v12, :cond_5

    .line 86
    check-cast v10, Ljava/lang/Integer;

    .end local v10           #value:Ljava/lang/Object;
    invoke-virtual {v11, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 121
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #key:Ljava/lang/String;
    .end local v11           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 123
    .local v1, ex:Ljava/lang/Throwable;
    const-string v12, "MediaProvider(Camera)"

    const-string v13, "insertImage() - failed"

    invoke-static {v12, v13, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    const/4 v9, 0x0

    goto :goto_0

    .line 71
    .end local v1           #ex:Ljava/lang/Throwable;
    .end local v4           #fileSize:J
    :cond_4
    const-string v12, "MediaProvider(Camera)"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "insertImage() - File \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' does not exist"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-wide/16 v4, 0x0

    .restart local v4       #fileSize:J
    goto :goto_1

    .line 87
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v7       #key:Ljava/lang/String;
    .restart local v10       #value:Ljava/lang/Object;
    .restart local v11       #values:Landroid/content/ContentValues;
    :cond_5
    :try_start_1
    instance-of v12, v10, Ljava/lang/Long;

    if-eqz v12, :cond_6

    .line 88
    check-cast v10, Ljava/lang/Double;

    .end local v10           #value:Ljava/lang/Object;
    invoke-virtual {v11, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_2

    .line 89
    .restart local v10       #value:Ljava/lang/Object;
    :cond_6
    instance-of v12, v10, Ljava/lang/Double;

    if-eqz v12, :cond_7

    .line 90
    check-cast v10, Ljava/lang/Long;

    .end local v10           #value:Ljava/lang/Object;
    invoke-virtual {v11, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 91
    .restart local v10       #value:Ljava/lang/Object;
    :cond_7
    instance-of v12, v10, Ljava/lang/Boolean;

    if-eqz v12, :cond_8

    .line 92
    check-cast v10, Ljava/lang/Boolean;

    .end local v10           #value:Ljava/lang/Object;
    invoke-virtual {v11, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_2

    .line 94
    .restart local v10       #value:Ljava/lang/Object;
    :cond_8
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 97
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #key:Ljava/lang/String;
    .end local v10           #value:Ljava/lang/Object;
    :cond_9
    invoke-static/range {p3 .. p3}, Lcom/android/camera/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, title:Ljava/lang/String;
    const-string v12, "title"

    invoke-virtual {v11, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v12, "_display_name"

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v12, "description"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v12, "datetaken"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    const-string v12, "orientation"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v12, "bucket_id"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v12, "bucket_display_name"

    invoke-static/range {p2 .. p2}, Lcom/android/camera/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v12, "_data"

    invoke-virtual {v11, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v12, "_size"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    const-string v12, "mime_type"

    move-object/from16 v0, p9

    iget-object v13, v0, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    if-eqz p4, :cond_a

    .line 110
    const-string v12, "latitude"

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 111
    const-string v12, "longitude"

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 115
    :cond_a
    const-string v12, "MediaProvider(Camera)"

    const-string v13, "insertImage() - Path = \'"

    const-string v14, "\'"

    invoke-static {v12, v13, v3, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    const-string v12, "MediaProvider(Camera)"

    const-string v13, "insertImage() - ContentResolver.insert()"

    invoke-static {v12, v13}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/camera/io/StorageSlot;->imageContentUri:Landroid/net/Uri;

    invoke-virtual {v12, v13, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 118
    .local v9, uri:Landroid/net/Uri;
    const-string v12, "MediaProvider(Camera)"

    const-string v13, "insertImage() - end"

    invoke-static {v12, v13}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static insertVideo(Landroid/content/Context;Lcom/android/camera/io/StorageSlot;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;Lcom/android/camera/io/FileFormat;JJ)Landroid/net/Uri;
    .locals 10
    .parameter "context"
    .parameter "storageSlot"
    .parameter "directoryPath"
    .parameter "fileName"
    .parameter "gpsLocation"
    .parameter "fileFormat"
    .parameter "dateTaken"
    .parameter "duration"

    .prologue
    .line 141
    const-string v7, "MediaProvider(Camera)"

    const-string v8, "insertVideo() - start"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    if-nez p0, :cond_0

    .line 146
    const-string v7, "context"

    invoke-static {v7}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 147
    const/4 v5, 0x0

    .line 207
    :goto_0
    return-object v5

    .line 149
    :cond_0
    if-nez p1, :cond_1

    .line 151
    const-string v7, "storageSlot"

    invoke-static {v7}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 152
    const/4 v5, 0x0

    goto :goto_0

    .line 154
    :cond_1
    if-nez p2, :cond_2

    .line 156
    const-string v7, "directoryPath"

    invoke-static {v7}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 157
    const/4 v5, 0x0

    goto :goto_0

    .line 159
    :cond_2
    if-nez p3, :cond_3

    .line 161
    const-string v7, "fileName"

    invoke-static {v7}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 162
    const/4 v5, 0x0

    goto :goto_0

    .line 169
    :cond_3
    :try_start_0
    invoke-static {p2, p3}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 173
    .local v3, fullPath:Ljava/lang/String;
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v1

    .line 182
    .local v1, fileSize:J
    :goto_1
    :try_start_2
    new-instance v6, Landroid/content/ContentValues;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 183
    .local v6, values:Landroid/content/ContentValues;
    invoke-static {p3}, Lcom/android/camera/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, title:Ljava/lang/String;
    const-string v7, "_data"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v7, "title"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v7, "_display_name"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v7, "description"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v7, "datetaken"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 189
    const-string v7, "mime_type"

    iget-object v8, p5, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v7, "duration"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    const-string v7, "_size"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 192
    if-eqz p4, :cond_4

    .line 194
    const-string v7, "latitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 195
    const-string v7, "longitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 199
    :cond_4
    const-string v7, "MediaProvider(Camera)"

    const-string v8, "insertVideo() - ContentResolver.insert()"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p1, Lcom/android/camera/io/StorageSlot;->videoContentUri:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 201
    .local v5, uri:Landroid/net/Uri;
    const-string v7, "MediaProvider(Camera)"

    const-string v8, "insertVideo() - end"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 204
    .end local v1           #fileSize:J
    .end local v3           #fullPath:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #uri:Landroid/net/Uri;
    .end local v6           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 206
    .local v0, ex:Ljava/lang/Throwable;
    const-string v7, "MediaProvider(Camera)"

    const-string v8, "insertVideo() - failed"

    invoke-static {v7, v8, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 175
    .end local v0           #ex:Ljava/lang/Throwable;
    .restart local v3       #fullPath:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 177
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_3
    const-string v7, "MediaProvider(Camera)"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertVideo() - Cannot get file size for \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 178
    const-wide/16 v1, 0x0

    .restart local v1       #fileSize:J
    goto/16 :goto_1
.end method
