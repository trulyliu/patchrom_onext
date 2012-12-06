.class Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;
.super Landroid/os/Handler;
.source "LocalMusicSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/LocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const v10, 0x7f06003d

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 149
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v5, v5, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

    if-eqz v5, :cond_0

    .line 152
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v5, v5, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 157
    :pswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 160
    .local v3, queryType:I
    const/4 v5, 0x1

    if-ne v5, v3, :cond_6

    .line 161
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$108(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    .line 163
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 165
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_3

    .line 168
    :cond_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$408(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    .line 247
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mQueryResultCount:I
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v5

    if-ge v5, v9, :cond_10

    .line 248
    const-string v5, "[LocalMusicSearchActivity]"

    const-string v6, "result still minor than all count, skip notify..."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_3
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 174
    :goto_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_2

    .line 175
    new-instance v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    invoke-direct {v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;-><init>()V

    .line 176
    .local v0, addItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursorIdIndex:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setId(J)V

    .line 177
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursorArtistIndex:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, artist:Ljava/lang/String;
    if-eqz v2, :cond_4

    const-string v5, "<unknown>"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 179
    :cond_4
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-virtual {v5, v10}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 181
    :cond_5
    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setPrimaryText(Ljava/lang/String;)V

    .line 182
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 187
    .end local v0           #addItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    .end local v2           #artist:Ljava/lang/String;
    :cond_6
    const/4 v5, 0x2

    if-ne v5, v3, :cond_b

    .line 188
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$108(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    .line 189
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 191
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_8

    .line 194
    :cond_7
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$408(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    goto/16 :goto_1

    .line 197
    :cond_8
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 200
    :goto_3
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_2

    .line 201
    new-instance v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    invoke-direct {v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;-><init>()V

    .line 202
    .restart local v0       #addItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorIdIndex:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setId(J)V

    .line 203
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorAlbumIndex:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, album:Ljava/lang/String;
    if-eqz v1, :cond_9

    const-string v5, "<unknown>"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 205
    :cond_9
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    const v6, 0x7f06003e

    invoke-virtual {v5, v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    :cond_a
    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setPrimaryText(Ljava/lang/String;)V

    .line 208
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorArtIndex:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setArtPath(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setAlbum(Ljava/lang/String;)V

    .line 210
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorAlbumKeyIndex:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/music/util/MusicUtils;->processAlbumKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setAlbumKey(Ljava/lang/String;)V

    .line 211
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_3

    .line 216
    .end local v0           #addItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    .end local v1           #album:Ljava/lang/String;
    :cond_b
    if-ne v9, v3, :cond_2

    .line 217
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$108(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    .line 218
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 220
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_d

    .line 223
    :cond_c
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$408(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    goto/16 :goto_1

    .line 226
    :cond_d
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 229
    :goto_4
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_2

    .line 230
    new-instance v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    invoke-direct {v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;-><init>()V

    .line 231
    .restart local v0       #addItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorIdIndex:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setId(J)V

    .line 232
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorTitleIndex:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setPrimaryText(Ljava/lang/String;)V

    .line 233
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorArtistIndex:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 234
    .restart local v2       #artist:Ljava/lang/String;
    if-eqz v2, :cond_e

    const-string v5, "<unknown>"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 235
    :cond_e
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-virtual {v5, v10}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 237
    :cond_f
    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setSecondaryText(Ljava/lang/String;)V

    .line 238
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorArtIndex:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setArtPath(Ljava/lang/String;)V

    .line 239
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorAlbumIndex:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setAlbum(Ljava/lang/String;)V

    .line 240
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorAlbumKeyIndex:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/music/util/MusicUtils;->processAlbumKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setAlbumKey(Ljava/lang/String;)V

    .line 241
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 252
    .end local v0           #addItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    .end local v2           #artist:Ljava/lang/String;
    :cond_10
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 253
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->clear()V

    .line 256
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 257
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mOnlineSearchItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_11
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->hideEmptyErrorView()V

    .line 277
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 278
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 282
    :cond_12
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 283
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 287
    :cond_13
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 288
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 292
    :cond_14
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mOnlineSearchItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mOnlineSearchIndex:I
    invoke-static {v5, v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2702(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 293
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistSubTitleIndex:I
    invoke-static {v5, v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2802(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 294
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumSubTitleIndex:I
    invoke-static {v5, v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2902(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 295
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackSubTitleIndex:I
    invoke-static {v5, v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3002(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 296
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistNoResultItemIndex:I
    invoke-static {v5, v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3102(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 297
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumNoResultItemIndex:I
    invoke-static {v5, v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3202(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 298
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackNoResultItemIndex:I
    invoke-static {v5, v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3302(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 300
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->DumpQueryItemIndex()V

    .line 302
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v5, v5, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 259
    :cond_15
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mNoResultCount:I
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v5

    if-lt v5, v9, :cond_11

    .line 260
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    const v6, 0x7f06002a

    invoke-virtual {v5, v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->showEmptyView(I)V

    .line 262
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mOnlineSearchIndex:I
    invoke-static {v5, v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2702(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 263
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistSubTitleIndex:I
    invoke-static {v5, v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2802(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 264
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumSubTitleIndex:I
    invoke-static {v5, v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2902(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 265
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackSubTitleIndex:I
    invoke-static {v5, v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3002(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 266
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistNoResultItemIndex:I
    invoke-static {v5, v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3102(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 267
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumNoResultItemIndex:I
    invoke-static {v5, v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3202(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 268
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackNoResultItemIndex:I
    invoke-static {v5, v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3302(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 270
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v5, v5, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 308
    .end local v3           #queryType:I
    :pswitch_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I
    invoke-static {v5, v8}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3702(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 310
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mNoResultCount:I
    invoke-static {v5, v8}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$402(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 311
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mQueryResultCount:I
    invoke-static {v5, v8}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$102(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 314
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 315
    .local v4, searchStr:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->initLocalSearch(Ljava/lang/String;)V
    invoke-static {v5, v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 319
    .end local v4           #searchStr:Ljava/lang/String;
    :pswitch_3
    const-string v5, "[LocalMusicSearchActivity]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Message MSG_HANDLE_PROGRESS, mIsSearchingCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I
    invoke-static {v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v5

    if-lez v5, :cond_16

    .line 321
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v5, v5, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v5, v8}, Lcom/htc/widget/ActionBarSearch;->setProgressVisibility(I)V

    goto/16 :goto_0

    .line 324
    :cond_16
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v5, v5, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/ActionBarSearch;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/htc/widget/ActionBarSearch;->setProgressVisibility(I)V

    goto/16 :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
