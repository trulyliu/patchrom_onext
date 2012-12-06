.class public interface abstract Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;
.super Ljava/lang/Object;
.source "MusicGridViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/MusicGridViewUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MusicGridViewItemUpdater"
.end annotation


# virtual methods
.method public abstract getChildCursor(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract getCoverInfo(Ljava/lang/String;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;
.end method

.method public abstract getImagePath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract notifyAllDataChange()V
.end method

.method public abstract notifyViewItemDataChange(I)V
.end method
