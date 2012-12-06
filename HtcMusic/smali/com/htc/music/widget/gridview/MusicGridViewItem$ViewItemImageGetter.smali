.class public interface abstract Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;
.super Ljava/lang/Object;
.source "MusicGridViewItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/MusicGridViewItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ViewItemImageGetter"
.end annotation


# virtual methods
.method public abstract getThumbnailImage(IILcom/htc/sunnyCore/IMediaData;)Lcom/htc/sunnyCore/Texture;
.end method

.method public abstract isGridViewInitFinish()Z
.end method

.method public abstract isUseExtraBackgroundImage(IILcom/htc/sunnyCore/IMediaData;)Z
.end method

.method public abstract isUseExtraThumbnailImage(IILcom/htc/sunnyCore/IMediaData;)Z
.end method
