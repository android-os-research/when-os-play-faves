.class public Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$1;
.super Ljava/lang/Object;
.source "DualDARDaemonProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;)V
    .registers 2

    .line 337
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$1;->this$0:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARDaemonProxy"

    const-string v2, "coudn\'t connect with daemon!"

    .line 340
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 341
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$1;->this$0:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->isDaemonConnectionFailed:Z

    .line 342
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    return-void
.end method
