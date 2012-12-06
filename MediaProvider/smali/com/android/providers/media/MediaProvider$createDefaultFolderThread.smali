.class Lcom/android/providers/media/MediaProvider$createDefaultFolderThread;
.super Ljava/lang/Thread;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "createDefaultFolderThread"
.end annotation


# instance fields
.field private db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$DatabaseHelper;)V
    .locals 0
    .parameter
    .parameter "db"

    .prologue
    .line 9176
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$createDefaultFolderThread;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 9177
    iput-object p2, p0, Lcom/android/providers/media/MediaProvider$createDefaultFolderThread;->db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 9178
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 9181
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$createDefaultFolderThread;->this$0:Lcom/android/providers/media/MediaProvider;

    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$createDefaultFolderThread;->db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$createDefaultFolderThread;->db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    #calls: Lcom/android/providers/media/MediaProvider;->createDefaultFolders(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 9182
    return-void
.end method
