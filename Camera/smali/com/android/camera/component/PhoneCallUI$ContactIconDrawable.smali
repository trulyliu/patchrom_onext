.class Lcom/android/camera/component/PhoneCallUI$ContactIconDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "PhoneCallUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/PhoneCallUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactIconDrawable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PhoneCallUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/component/PhoneCallUI;Landroid/content/res/Resources;)V
    .locals 1
    .parameter
    .parameter "res"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/camera/component/PhoneCallUI$ContactIconDrawable;->this$0:Lcom/android/camera/component/PhoneCallUI;

    .line 200
    #getter for: Lcom/android/camera/component/PhoneCallUI;->m_ContactBmp:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/android/camera/component/PhoneCallUI;->access$800(Lcom/android/camera/component/PhoneCallUI;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 201
    return-void
.end method
