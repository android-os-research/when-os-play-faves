.class public final Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;
.super Ljava/lang/Object;
.source "VirtualDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/virtual/VirtualDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingTrampolineMap"
.end annotation


# static fields
.field public static final TRAMPOLINE_WAIT_MS:I = 0x1388


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$_y036F1iRaJZy8kHo_owvb_Z0MI(Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->lambda$put$0(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 451
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$put$0(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V
    .registers 2

    .line 460
    iget-object p1, p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mPendingIntent:Landroid/app/PendingIntent;

    .line 461
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 463
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->remove(Ljava/lang/String;)Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    :cond_b
    return-void
.end method


# virtual methods
.method public put(Ljava/lang/String;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;
    .registers 7

    .line 456
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    .line 457
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 458
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-object p1
.end method

.method public remove(Ljava/lang/String;)Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;
    .registers 3

    .line 472
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    .line 473
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-object p1
.end method
