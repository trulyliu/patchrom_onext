.class public Lcom/android/camera/property/PropertyChangedEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "PropertyChangedEventArgs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/camera/event/EventArgs;"
    }
.end annotation


# instance fields
.field public final newValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field

.field public final oldValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field

.field public final property:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<TTValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;TTValue;TTValue;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, this:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<TTValue;>;"
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p2, oldValue:Ljava/lang/Object;,"TTValue;"
    .local p3, newValue:Ljava/lang/Object;,"TTValue;"
    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/camera/property/PropertyChangedEventArgs;->property:Lcom/android/camera/property/Property;

    .line 20
    iput-object p2, p0, Lcom/android/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    .line 21
    iput-object p3, p0, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    .line 22
    return-void
.end method
