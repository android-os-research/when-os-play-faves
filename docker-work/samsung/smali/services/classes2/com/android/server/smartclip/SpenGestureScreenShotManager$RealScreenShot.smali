.class public Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"

# interfaces
.implements Lcom/android/server/smartclip/SpenGestureScreenShotManager$ScreenShot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureScreenShotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RealScreenShot"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public mWmInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(IIZLandroid/graphics/Rect;IIZ)V
    .registers 18

    move-object v0, p0

    .line 2228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2225
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v2, v0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 2230
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/WindowManagerInternal;->takeScreenshotToTargetWindowInternal(IIZLandroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getScreenShot()Landroid/graphics/Bitmap;
    .registers 1

    .line 2237
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method
