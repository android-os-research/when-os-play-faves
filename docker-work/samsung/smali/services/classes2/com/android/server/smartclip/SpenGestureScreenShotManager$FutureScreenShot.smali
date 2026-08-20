.class public Lcom/android/server/smartclip/SpenGestureScreenShotManager$FutureScreenShot;
.super Ljava/util/concurrent/FutureTask;
.source "SpenGestureManagerService.java"

# interfaces
.implements Lcom/android/server/smartclip/SpenGestureScreenShotManager$ScreenShot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureScreenShotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FutureScreenShot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;",
        ">;",
        "Lcom/android/server/smartclip/SpenGestureScreenShotManager$ScreenShot;"
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "FutureScreenShot"


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;",
            ">;)V"
        }
    .end annotation

    .line 2245
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public getScreenShot()Landroid/graphics/Bitmap;
    .registers 2

    .line 2252
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;->getScreenShot()Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_16
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_21

    :catch_b
    move-exception p0

    .line 2256
    sget-object v0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$FutureScreenShot;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :catch_16
    move-exception p0

    .line 2254
    sget-object v0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$FutureScreenShot;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    const/4 p0, 0x0

    :goto_21
    return-object p0
.end method
