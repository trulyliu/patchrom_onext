.class public final Lcom/android/camera/component/NewMediaBroadcaster;
.super Lcom/android/camera/component/UIComponent;
.source "NewMediaBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "New Media Broadcaster"


# instance fields
.field private final COUNT:I

.field private counter:I

.field eventArgs:[Lcom/android/camera/MediaEventArgs;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4
    .parameter "cameraActivity"

    .prologue
    const/16 v3, 0x63

    const/4 v2, 0x0

    .line 137
    const-string v0, "New Media Broadcaster"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 21
    iput v3, p0, Lcom/android/camera/component/NewMediaBroadcaster;->COUNT:I

    .line 22
    iput v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->counter:I

    .line 23
    new-array v0, v3, [Lcom/android/camera/MediaEventArgs;

    iput-object v0, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEventArgs;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/NewMediaBroadcaster;Lcom/android/camera/MediaEventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/camera/component/NewMediaBroadcaster;->saveEventArgsinBuffer(Lcom/android/camera/MediaEventArgs;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/NewMediaBroadcaster;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/android/camera/component/NewMediaBroadcaster;->counter:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/NewMediaBroadcaster;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->checkAndBroadcastIntent()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/NewMediaBroadcaster;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/NewMediaBroadcaster;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private broadcastIntent(Landroid/net/Uri;Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;)V
    .locals 3
    .parameter "uri"
    .parameter "mediatype"

    .prologue
    .line 170
    const-string v0, ""

    .line 171
    .local v0, action:Ljava/lang/String;
    sget-object v2, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;->Picture:Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    if-ne p2, v2, :cond_0

    .line 172
    const-string v0, "android.hardware.action.NEW_PICTURE"

    .line 175
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v1, captureIntent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    return-void

    .line 174
    .end local v1           #captureIntent:Landroid/content/Intent;
    :cond_0
    const-string v0, "android.hardware.action.NEW_VIDEO"

    goto :goto_0
.end method

.method private checkAndBroadcastIntent()V
    .locals 5

    .prologue
    .line 151
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x63

    if-ge v1, v2, :cond_2

    .line 152
    iget-object v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEventArgs;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEventArgs;

    aget-object v2, v2, v1

    iget-object v0, v2, Lcom/android/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    .line 155
    .local v0, contenturi:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEventArgs;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/camera/MediaEventArgs;->format:Lcom/android/camera/io/FileFormat;

    invoke-virtual {v2}, Lcom/android/camera/io/FileFormat;->isImage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    sget-object v2, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;->Picture:Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    invoke-direct {p0, v0, v2}, Lcom/android/camera/component/NewMediaBroadcaster;->broadcastIntent(Landroid/net/Uri;Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;)V

    .line 160
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEventArgs;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 151
    .end local v0           #contenturi:Landroid/net/Uri;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .restart local v0       #contenturi:Landroid/net/Uri;
    :cond_1
    sget-object v2, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;->Video:Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    invoke-direct {p0, v0, v2}, Lcom/android/camera/component/NewMediaBroadcaster;->broadcastIntent(Landroid/net/Uri;Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;)V

    goto :goto_1

    .line 164
    .end local v0           #contenturi:Landroid/net/Uri;
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->counter:I

    .line 165
    return-void
.end method

.method private saveEventArgsinBuffer(Lcom/android/camera/MediaEventArgs;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 142
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/camera/MediaEventArgs;->filePath:Lcom/android/camera/io/Path;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/camera/MediaEventArgs;->filePath:Lcom/android/camera/io/Path;

    iget-object v0, v0, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    const-string v1, ".*(BURST)\\d+[.]jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEventArgs;

    iget v1, p0, Lcom/android/camera/component/NewMediaBroadcaster;->counter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->counter:I

    aput-object p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 8

    .prologue
    .line 33
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 35
    invoke-virtual {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 37
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    new-instance v3, Lcom/android/camera/component/NewMediaBroadcaster$1;

    invoke-direct {v3, p0}, Lcom/android/camera/component/NewMediaBroadcaster$1;-><init>(Lcom/android/camera/component/NewMediaBroadcaster;)V

    .line 62
    .local v3, m_MediaSavedFinishedEventHandler:Lcom/android/camera/event/EventHandler;,"Lcom/android/camera/event/EventHandler<Lcom/android/camera/MediaEventArgs;>;"
    new-instance v1, Lcom/android/camera/component/NewMediaBroadcaster$2;

    invoke-direct {v1, p0}, Lcom/android/camera/component/NewMediaBroadcaster$2;-><init>(Lcom/android/camera/component/NewMediaBroadcaster;)V

    .line 94
    .local v1, m_DeletedFinishedEventHandler:Lcom/android/camera/event/EventHandler;,"Lcom/android/camera/event/EventHandler<Lcom/android/camera/MediaEventArgs;>;"
    new-instance v4, Lcom/android/camera/component/NewMediaBroadcaster$3;

    invoke-direct {v4, p0, v0, v3, v1}, Lcom/android/camera/component/NewMediaBroadcaster$3;-><init>(Lcom/android/camera/component/NewMediaBroadcaster;Lcom/android/camera/CameraThread;Lcom/android/camera/event/EventHandler;Lcom/android/camera/event/EventHandler;)V

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 105
    iget-object v4, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/camera/component/NewMediaBroadcaster$4;

    invoke-virtual {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-direct {v5, p0, v6, v7}, Lcom/android/camera/component/NewMediaBroadcaster$4;-><init>(Lcom/android/camera/component/NewMediaBroadcaster;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v2, Lcom/android/camera/component/NewMediaBroadcaster$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/NewMediaBroadcaster$5;-><init>(Lcom/android/camera/component/NewMediaBroadcaster;)V

    .line 127
    .local v2, m_HideUIHandlerWithSetParam:Lcom/android/camera/event/EventHandler;,"Lcom/android/camera/event/EventHandler<Lcom/android/camera/event/EventArgs;>;"
    invoke-virtual {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->pausingEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v4, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 129
    return-void
.end method
