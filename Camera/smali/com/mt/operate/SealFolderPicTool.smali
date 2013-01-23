.class public Lcom/mt/operate/SealFolderPicTool;
.super Ljava/lang/Object;
.source "SealFolderPicTool.java"


# static fields
.field public static final FOLDER_ALL_PIC:Ljava/lang/String; = "/FolderAllPic.xml"

.field public static final FOLDER_FIRST_PIC:Ljava/lang/String; = "/FolderFristPic.xml"

.field public static final FOLDER_LIST_FILE:Ljava/lang/String; = "/listFloders.xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DeleteFolderFirstPic()V
    .locals 4

    .prologue
    .line 63
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mt/mtgif/MyData;->strTempSDCardPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/FolderFristPic.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static DeleteFolderPic()V
    .locals 4

    .prologue
    .line 165
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mt/mtgif/MyData;->strTempSDCardPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/FolderAllPic.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static ReadFolderFirstPic()Lcom/mt/operate/ListFolderFirstPic;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 41
    new-instance v3, Lcom/mt/operate/ListFolderFirstPic;

    invoke-direct {v3}, Lcom/mt/operate/ListFolderFirstPic;-><init>()V

    .line 44
    .local v3, temp:Lcom/mt/operate/ListFolderFirstPic;
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/mt/mtgif/MyData;->strTempSDCardPath:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    const-string v7, "/FolderFristPic.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 44
    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v4, tempf:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v3, v5

    .line 57
    .end local v3           #temp:Lcom/mt/operate/ListFolderFirstPic;
    .end local v4           #tempf:Ljava/io/File;
    :goto_0
    return-object v3

    .line 49
    .restart local v3       #temp:Lcom/mt/operate/ListFolderFirstPic;
    .restart local v4       #tempf:Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/mt/mtgif/MyData;->strTempSDCardPath:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v7, "/FolderFristPic.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 49
    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, in:Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 52
    .local v2, s:Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #temp:Lcom/mt/operate/ListFolderFirstPic;
    check-cast v3, Lcom/mt/operate/ListFolderFirstPic;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3       #temp:Lcom/mt/operate/ListFolderFirstPic;
    goto :goto_0

    .line 53
    .end local v1           #in:Ljava/io/FileInputStream;
    .end local v2           #s:Ljava/io/ObjectInputStream;
    .end local v3           #temp:Lcom/mt/operate/ListFolderFirstPic;
    .end local v4           #tempf:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    move-object v3, v5

    .line 55
    goto :goto_0
.end method

.method public static ReadFolderPic()Lcom/mt/operate/MapFolderAllPic;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 145
    new-instance v3, Lcom/mt/operate/MapFolderAllPic;

    invoke-direct {v3}, Lcom/mt/operate/MapFolderAllPic;-><init>()V

    .line 148
    .local v3, temp:Lcom/mt/operate/MapFolderAllPic;
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/mt/mtgif/MyData;->strTempSDCardPath:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/FolderAllPic.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v4, tempf:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v3, v5

    .line 160
    .end local v3           #temp:Lcom/mt/operate/MapFolderAllPic;
    .end local v4           #tempf:Ljava/io/File;
    :goto_0
    return-object v3

    .line 152
    .restart local v3       #temp:Lcom/mt/operate/MapFolderAllPic;
    .restart local v4       #tempf:Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/mt/mtgif/MyData;->strTempSDCardPath:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    const-string v7, "/FolderAllPic.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 152
    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, in:Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 155
    .local v2, s:Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #temp:Lcom/mt/operate/MapFolderAllPic;
    check-cast v3, Lcom/mt/operate/MapFolderAllPic;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3       #temp:Lcom/mt/operate/MapFolderAllPic;
    goto :goto_0

    .line 156
    .end local v1           #in:Ljava/io/FileInputStream;
    .end local v2           #s:Ljava/io/ObjectInputStream;
    .end local v3           #temp:Lcom/mt/operate/MapFolderAllPic;
    .end local v4           #tempf:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    move-object v3, v5

    .line 158
    goto :goto_0
.end method

.method public static checkAllPicExists()Z
    .locals 3

    .prologue
    .line 194
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mt/mtgif/MyData;->strTempSDCardPath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/FolderAllPic.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const/4 v1, 0x1

    .line 198
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkFileExists(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 184
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const/4 v1, 0x1

    .line 188
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkFirstPicExists()Z
    .locals 3

    .prologue
    .line 203
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mt/mtgif/MyData;->strTempSDCardPath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/FolderFristPic.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    const/4 v1, 0x1

    .line 207
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static delSDFile(Ljava/lang/String;)Z
    .locals 5
    .parameter "filePath"

    .prologue
    const/4 v2, 0x0

    .line 218
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    .end local v1           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return v2

    .line 221
    .restart local v1       #file:Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    const/4 v2, 0x1

    goto :goto_0

    .line 223
    .end local v1           #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ee"

    const-string v4, "\u5220\u9664\u6587\u4ef6\u51fa\u73b0\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static saveFolderAllPic(Lcom/mt/operate/MapFolderAllPic;)Z
    .locals 7
    .parameter "folderPic"

    .prologue
    .line 126
    move-object v4, p0

    .line 128
    .local v4, temp:Lcom/mt/operate/MapFolderAllPic;
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/mt/mtgif/MyData;->strTempSDCardPath:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/FolderAllPic.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 130
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 132
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/mt/mtgif/MyData;->strTempSDCardPath:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/FolderAllPic.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 134
    .local v2, out:Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 135
    .local v3, s:Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    const/4 v5, 0x1

    .end local v1           #f:Ljava/io/File;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .end local v3           #s:Ljava/io/ObjectOutputStream;
    :goto_0
    return v5

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    .line 139
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static saveFolderFirstPic(Lcom/mt/operate/ListFolderFirstPic;)Z
    .locals 7
    .parameter "folderFirstPic"

    .prologue
    .line 21
    move-object v4, p0

    .line 23
    .local v4, temp:Lcom/mt/operate/ListFolderFirstPic;
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/mt/mtgif/MyData;->strTempSDCardPath:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/FolderFristPic.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 25
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 27
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 28
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/mt/mtgif/MyData;->strTempSDCardPath:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/FolderFristPic.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 29
    .local v2, out:Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 30
    .local v3, s:Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    const/4 v5, 0x1

    .end local v1           #f:Ljava/io/File;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .end local v3           #s:Ljava/io/ObjectOutputStream;
    :goto_0
    return v5

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    .line 34
    const/4 v5, 0x0

    goto :goto_0
.end method
