.class Lcom/android/server/input/InputManagerService$Injector;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 3

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 639
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$Injector;->mContext:Landroid/content/Context;

    .line 640
    iput-object p2, p0, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 1

    .line 644
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 1

    .line 648
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public getNativeService(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;
    .registers 4

    .line 652
    new-instance v0, Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$Injector;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    invoke-virtual {p0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lcom/android/server/input/NativeInputManagerService$NativeImpl;-><init>(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)V

    return-object v0
.end method

.method public registerLocalService(Landroid/hardware/input/InputManagerInternal;)V
    .registers 2

    .line 656
    const-class p0, Landroid/hardware/input/InputManagerInternal;

    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
