.class public Lcom/htc/music/widget/gridview/MusicGridViewItem$FolderViewSharedTexture;
.super Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
.source "MusicGridViewItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/MusicGridViewItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FolderViewSharedTexture"
.end annotation


# static fields
.field public static final NAME_TEXTUREE_SELECTED:Ljava/lang/String; = "NAME_TEXTUREE_SELECTED"

.field public static final NAME_TEXTURE_BACKGROUND_EXTRA:Ljava/lang/String; = "NAME_TEXTURE_BACKGROUND_EXTRA"

.field public static final NAME_TEXTURE_THUMBNAIL:Ljava/lang/String; = "NAME_TEXTURE_THUMBNAIL"

.field public static final NAME_TEXTURE_THUMBNAIL_EXTRA:Ljava/lang/String; = "NAME_TEXTURE_THUMBNAIL_EXTRA"


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/gridview/MusicGridViewItem;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/gridview/MusicGridViewItem;Landroid/content/Context;Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "bkgParams"
    .parameter "thumbParams"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$FolderViewSharedTexture;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewItem;

    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;-><init>()V

    .line 51
    if-eqz p3, :cond_2

    .line 52
    iget v2, p3, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    if-lez v2, :cond_0

    .line 53
    iget v2, p3, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    if-lez v2, :cond_5

    iget v2, p3, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    if-lez v2, :cond_5

    .line 54
    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewItem;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->access$000(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Landroid/content/Context;

    move-result-object v2

    iget v3, p3, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    iget v4, p3, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    iget v5, p3, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    invoke-static {v2, v3, v4, v5}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 58
    .local v1, texture:Lcom/htc/sunnyCore/Texture;
    :goto_0
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$FolderViewSharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTURE_BACKGROUND"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .end local v1           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_0
    iget v2, p3, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->extraResourceId:I

    if-lez v2, :cond_1

    .line 61
    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewItem;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->access$200(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Landroid/content/Context;

    move-result-object v2

    iget v3, p3, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->extraResourceId:I

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 62
    .restart local v1       #texture:Lcom/htc/sunnyCore/Texture;
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$FolderViewSharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTURE_BACKGROUND_EXTRA"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .end local v1           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_1
    const v0, 0x20800f3

    .line 65
    .local v0, gridview_delete_resId:I
    if-lez v0, :cond_2

    .line 66
    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewItem;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->access$300(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 67
    .restart local v1       #texture:Lcom/htc/sunnyCore/Texture;
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$FolderViewSharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTUREE_SELECTED"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .end local v0           #gridview_delete_resId:I
    .end local v1           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_2
    if-eqz p4, :cond_4

    .line 71
    iget v2, p4, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    if-lez v2, :cond_3

    .line 72
    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewItem;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->access$400(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Landroid/content/Context;

    move-result-object v2

    iget v3, p4, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 73
    .restart local v1       #texture:Lcom/htc/sunnyCore/Texture;
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$FolderViewSharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTURE_THUMBNAIL"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .end local v1           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_3
    iget v2, p4, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->extraResourceId:I

    if-lez v2, :cond_4

    .line 76
    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewItem;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->access$500(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Landroid/content/Context;

    move-result-object v2

    iget v3, p4, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->extraResourceId:I

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 77
    .restart local v1       #texture:Lcom/htc/sunnyCore/Texture;
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$FolderViewSharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTURE_THUMBNAIL_EXTRA"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .end local v1           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_4
    return-void

    .line 56
    :cond_5
    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewItem;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->access$100(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Landroid/content/Context;

    move-result-object v2

    iget v3, p3, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .restart local v1       #texture:Lcom/htc/sunnyCore/Texture;
    goto :goto_0
.end method


# virtual methods
.method public release()V
    .locals 3

    .prologue
    .line 89
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$FolderViewSharedTexture;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/Texture;

    .line 90
    .local v1, t:Lcom/htc/sunnyCore/Texture;
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    goto :goto_0

    .line 93
    .end local v1           #t:Lcom/htc/sunnyCore/Texture;
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$FolderViewSharedTexture;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 94
    return-void
.end method
