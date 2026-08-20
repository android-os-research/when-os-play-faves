.class public Lcom/android/server/hdmi/PowerManagerWrapper;
.super Ljava/lang/Object;
.source "PowerManagerWrapper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PowerManagerWrapper"


# instance fields
.field public final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/hdmi/PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method public goToSleep(JII)V
    .registers 5

    .line 44
    iget-object p0, p0, Lcom/android/server/hdmi/PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/PowerManager;->goToSleep(JII)V

    return-void
.end method

.method public isInteractive()Z
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/android/server/hdmi/PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    return p0
.end method

.method public newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .registers 3

    .line 48
    iget-object p0, p0, Lcom/android/server/hdmi/PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    return-object p0
.end method

.method public wakeUp(JILjava/lang/String;)V
    .registers 5

    .line 40
    iget-object p0, p0, Lcom/android/server/hdmi/PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    return-void
.end method
