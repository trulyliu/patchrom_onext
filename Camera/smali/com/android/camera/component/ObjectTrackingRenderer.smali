.class final Lcom/android/camera/component/ObjectTrackingRenderer;
.super Lcom/android/camera/component/UIComponent;
.source "ObjectTrackingRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ObjectTrackingRenderer$9;
    }
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "Object-Tracking Renderer"

.field private static final OBJECT_FRAME_CENTER_ARROR_SIZE:I = 0xc

.field private static final OBJECT_FRAME_MIN_WIDTH:I = 0x26


# instance fields
.field private m_DetectedObjects:[Lcom/android/camera/ObjectTrackingInfo;

.field private m_FaceFramePaint:Landroid/graphics/Paint;

.field private m_FocusedObject:Lcom/android/camera/ObjectTrackingInfo;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 2
    .parameter "cameraActivity"

    .prologue
    const/4 v1, 0x0

    .line 50
    const-string v0, "Object-Tracking Renderer"

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingRenderer;->disableFakeUIRotation()V

    .line 52
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingRenderer;->disableUIRotationChangeNotification()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ObjectTrackingRenderer;Lcom/android/camera/DrawPreviewFilterEventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/camera/component/ObjectTrackingRenderer;->drawObjects(Lcom/android/camera/DrawPreviewFilterEventArgs;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/ObjectTrackingRenderer;Lcom/android/camera/IViewFinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/camera/component/ObjectTrackingRenderer;->clearObjects(Lcom/android/camera/IViewFinder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/ObjectTrackingRenderer;)[Lcom/android/camera/ObjectTrackingInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingRenderer;->m_DetectedObjects:[Lcom/android/camera/ObjectTrackingInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/component/ObjectTrackingRenderer;[Lcom/android/camera/ObjectTrackingInfo;)[Lcom/android/camera/ObjectTrackingInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/camera/component/ObjectTrackingRenderer;->m_DetectedObjects:[Lcom/android/camera/ObjectTrackingInfo;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/camera/component/ObjectTrackingRenderer;Lcom/android/camera/ObjectTrackingInfo;)Lcom/android/camera/ObjectTrackingInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/camera/component/ObjectTrackingRenderer;->m_FocusedObject:Lcom/android/camera/ObjectTrackingInfo;

    return-object p1
.end method

.method private clearObjects(Lcom/android/camera/IViewFinder;)V
    .locals 1
    .parameter "viewFinder"

    .prologue
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/android/camera/component/ObjectTrackingRenderer;->m_DetectedObjects:[Lcom/android/camera/ObjectTrackingInfo;

    .line 61
    iput-object v0, p0, Lcom/android/camera/component/ObjectTrackingRenderer;->m_FocusedObject:Lcom/android/camera/ObjectTrackingInfo;

    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/android/camera/IViewFinder;->invalidatePreviewFilter()V

    .line 64
    :cond_0
    return-void
.end method

.method private drawObjects(Lcom/android/camera/DrawPreviewFilterEventArgs;)V
    .locals 12
    .parameter "e"

    .prologue
    const/high16 v11, 0x3f80

    .line 87
    iget-object v9, p0, Lcom/android/camera/component/ObjectTrackingRenderer;->m_DetectedObjects:[Lcom/android/camera/ObjectTrackingInfo;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/camera/component/ObjectTrackingRenderer;->m_DetectedObjects:[Lcom/android/camera/ObjectTrackingInfo;

    array-length v9, v9

    if-nez v9, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingRenderer;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v9

    iget-object v9, v9, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 95
    iget-object v9, p1, Lcom/android/camera/DrawPreviewFilterEventArgs;->previewBounds:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 96
    .local v6, previewTop:I
    iget-object v9, p1, Lcom/android/camera/DrawPreviewFilterEventArgs;->previewBounds:Landroid/graphics/Rect;

    iget v5, v9, Landroid/graphics/Rect;->left:I

    .line 97
    .local v5, previewLeft:I
    iget-object v9, p1, Lcom/android/camera/DrawPreviewFilterEventArgs;->previewBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 98
    .local v7, previewWidth:I
    iget-object v9, p1, Lcom/android/camera/DrawPreviewFilterEventArgs;->previewBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 101
    .local v4, previewHeight:I
    iget-object v9, p1, Lcom/android/camera/DrawPreviewFilterEventArgs;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 102
    .local v2, oldClipBounds:Landroid/graphics/Rect;
    iget-object v9, p1, Lcom/android/camera/DrawPreviewFilterEventArgs;->canvas:Landroid/graphics/Canvas;

    iget-object v10, p1, Lcom/android/camera/DrawPreviewFilterEventArgs;->previewBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 105
    iget-object v9, p0, Lcom/android/camera/component/ObjectTrackingRenderer;->m_DetectedObjects:[Lcom/android/camera/ObjectTrackingInfo;

    array-length v9, v9

    add-int/lit8 v1, v9, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_4

    .line 108
    iget-object v9, p0, Lcom/android/camera/component/ObjectTrackingRenderer;->m_DetectedObjects:[Lcom/android/camera/ObjectTrackingInfo;

    aget-object v3, v9, v1

    .line 109
    .local v3, otInfo:Lcom/android/camera/ObjectTrackingInfo;
    if-nez v3, :cond_2

    .line 105
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 113
    :cond_2
    iget-object v8, v3, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    .line 114
    .local v8, srcRect:Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 115
    .local v0, destRect:Landroid/graphics/RectF;
    iget v9, v8, Landroid/graphics/RectF;->bottom:F

    sub-float v9, v11, v9

    int-to-float v10, v7

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v9, v5

    int-to-float v9, v9

    iput v9, v0, Landroid/graphics/RectF;->left:F

    .line 116
    iget v9, v8, Landroid/graphics/RectF;->top:F

    sub-float v9, v11, v9

    int-to-float v10, v7

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v9, v5

    int-to-float v9, v9

    iput v9, v0, Landroid/graphics/RectF;->right:F

    .line 117
    iget v9, v8, Landroid/graphics/RectF;->left:F

    int-to-float v10, v4

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v9, v6

    int-to-float v9, v9

    iput v9, v0, Landroid/graphics/RectF;->top:F

    .line 118
    iget v9, v8, Landroid/graphics/RectF;->right:F

    int-to-float v10, v4

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v9, v6

    int-to-float v9, v9

    iput v9, v0, Landroid/graphics/RectF;->bottom:F

    .line 121
    sget-object v9, Lcom/android/camera/component/ObjectTrackingRenderer$9;->$SwitchMap$com$android$camera$ObjectTrackingInfoType:[I

    iget-object v10, v3, Lcom/android/camera/ObjectTrackingInfo;->type:Lcom/android/camera/ObjectTrackingInfoType;

    invoke-virtual {v10}, Lcom/android/camera/ObjectTrackingInfoType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    goto :goto_2

    .line 126
    :pswitch_0
    iget-object v9, p0, Lcom/android/camera/component/ObjectTrackingRenderer;->m_FocusedObject:Lcom/android/camera/ObjectTrackingInfo;

    if-eq v9, v3, :cond_3

    .line 127
    iget-object v9, p0, Lcom/android/camera/component/ObjectTrackingRenderer;->m_FaceFramePaint:Landroid/graphics/Paint;

    const v10, -0x33000001

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    :goto_3
    iget-object v9, p1, Lcom/android/camera/DrawPreviewFilterEventArgs;->canvas:Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/android/camera/component/ObjectTrackingRenderer;->m_FaceFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 129
    :cond_3
    iget-object v9, p0, Lcom/android/camera/component/ObjectTrackingRenderer;->m_FaceFramePaint:Landroid/graphics/Paint;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 175
    .end local v0           #destRect:Landroid/graphics/RectF;
    .end local v3           #otInfo:Lcom/android/camera/ObjectTrackingInfo;
    .end local v8           #srcRect:Landroid/graphics/RectF;
    :cond_4
    iget-object v9, p1, Lcom/android/camera/DrawPreviewFilterEventArgs;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v9, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto/16 :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ObjectTrackingRenderer;->m_FaceFramePaint:Landroid/graphics/Paint;

    .line 78
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 79
    return-void
.end method

.method protected initializeOverride()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 185
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 188
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/camera/component/ObjectTrackingRenderer;->m_FaceFramePaint:Landroid/graphics/Paint;

    .line 189
    iget-object v3, p0, Lcom/android/camera/component/ObjectTrackingRenderer;->m_FaceFramePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 190
    iget-object v3, p0, Lcom/android/camera/component/ObjectTrackingRenderer;->m_FaceFramePaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4040

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 195
    const-class v3, Lcom/android/camera/IObjectTracker;

    invoke-virtual {p0, v3}, Lcom/android/camera/component/ObjectTrackingRenderer;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IObjectTracker;

    .line 196
    .local v1, objectTracker:Lcom/android/camera/IObjectTracker;
    const-class v3, Lcom/android/camera/IViewFinder;

    invoke-virtual {p0, v3}, Lcom/android/camera/component/ObjectTrackingRenderer;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IViewFinder;

    .line 199
    .local v2, viewFinder:Lcom/android/camera/IViewFinder;
    if-eqz v2, :cond_0

    .line 201
    iget-object v3, v2, Lcom/android/camera/IViewFinder;->drawPreviewFilterEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/component/ObjectTrackingRenderer$1;

    invoke-direct {v4, p0}, Lcom/android/camera/component/ObjectTrackingRenderer$1;-><init>(Lcom/android/camera/component/ObjectTrackingRenderer;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 214
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingRenderer;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 215
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/ObjectTrackingRenderer$2;

    invoke-direct {v4, p0, v2}, Lcom/android/camera/component/ObjectTrackingRenderer$2;-><init>(Lcom/android/camera/component/ObjectTrackingRenderer;Lcom/android/camera/IViewFinder;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 229
    iget-object v3, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/camera/component/ObjectTrackingRenderer$3;

    iget-object v5, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6, v2}, Lcom/android/camera/component/ObjectTrackingRenderer$3;-><init>(Lcom/android/camera/component/ObjectTrackingRenderer;Lcom/android/camera/property/Property;Ljava/lang/Object;Lcom/android/camera/IViewFinder;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v3, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/camera/component/ObjectTrackingRenderer$4;

    iget-object v5, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v6, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-direct {v4, p0, v5, v6, v2}, Lcom/android/camera/component/ObjectTrackingRenderer$4;-><init>(Lcom/android/camera/component/ObjectTrackingRenderer;Lcom/android/camera/property/Property;Ljava/lang/Object;Lcom/android/camera/IViewFinder;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v3, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/camera/component/ObjectTrackingRenderer$5;

    iget-object v5, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v6, Lcom/android/camera/TakingPictureState;->TakingPicture:Lcom/android/camera/TakingPictureState;

    invoke-direct {v4, p0, v5, v6, v2}, Lcom/android/camera/component/ObjectTrackingRenderer$5;-><init>(Lcom/android/camera/component/ObjectTrackingRenderer;Lcom/android/camera/property/Property;Ljava/lang/Object;Lcom/android/camera/IViewFinder;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    if-eqz v1, :cond_1

    .line 255
    iget-object v3, v1, Lcom/android/camera/IObjectTracker;->detectedObjects:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/ObjectTrackingRenderer$6;

    invoke-direct {v4, p0, v2}, Lcom/android/camera/component/ObjectTrackingRenderer$6;-><init>(Lcom/android/camera/component/ObjectTrackingRenderer;Lcom/android/camera/IViewFinder;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 275
    iget-object v3, v1, Lcom/android/camera/IObjectTracker;->focusedObject:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/ObjectTrackingRenderer$7;

    invoke-direct {v4, p0, v2}, Lcom/android/camera/component/ObjectTrackingRenderer$7;-><init>(Lcom/android/camera/component/ObjectTrackingRenderer;Lcom/android/camera/IViewFinder;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 285
    iget-object v3, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/camera/component/ObjectTrackingRenderer$8;

    iget-object v5, v1, Lcom/android/camera/IObjectTracker;->isObjectDetectionEnabled:Lcom/android/camera/property/Property;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6, v2}, Lcom/android/camera/component/ObjectTrackingRenderer$8;-><init>(Lcom/android/camera/component/ObjectTrackingRenderer;Lcom/android/camera/property/Property;Ljava/lang/Object;Lcom/android/camera/IViewFinder;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    :goto_1
    return-void

    .line 211
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "initializeOverride() - No IViewFinder interface"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    .restart local v0       #cameraActivity:Lcom/android/camera/HTCCamera;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "initializeOverride() - No IObjectTracker interface"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
