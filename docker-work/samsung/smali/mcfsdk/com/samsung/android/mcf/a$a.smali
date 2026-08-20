.class public Lcom/samsung/android/mcf/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/ble/BleAdvertiser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/a;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/a;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/mcf/a$a;->a:Lcom/samsung/android/mcf/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startAdvertise(Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;Lcom/samsung/android/mcf/ble/BleAdvertiseData;Lcom/samsung/android/mcf/ble/BleAdvertiseData;Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;)Z
    .registers 9

    iget-object v0, p0, Lcom/samsung/android/mcf/a$a;->a:Lcom/samsung/android/mcf/a;

    invoke-static {v0}, Lcom/samsung/android/mcf/a;->a(Lcom/samsung/android/mcf/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;

    const-string v1, "startAdvertise"

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    iget-object p1, p0, Lcom/samsung/android/mcf/a$a;->a:Lcom/samsung/android/mcf/a;

    iget-object p1, p1, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p2, "Ignore - already started"

    invoke-static {p1, v1, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/mcf/a$a;->a:Lcom/samsung/android/mcf/a;

    invoke-static {v0}, Lcom/samsung/android/mcf/a;->a(Lcom/samsung/android/mcf/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_32

    iget-object p1, p0, Lcom/samsung/android/mcf/a$a;->a:Lcom/samsung/android/mcf/a;

    iget-object p1, p1, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p2, "Ignore - too many advertise(5) is working. stop some advertise."

    invoke-static {p1, v1, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_32
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->isConnectable()Z

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/mcf/a$a;->a:Lcom/samsung/android/mcf/a;

    invoke-static {v3, p2, v0}, Lcom/samsung/android/mcf/a;->a(Lcom/samsung/android/mcf/a;Lcom/samsung/android/mcf/ble/BleAdvertiseData;Z)I

    move-result v0

    const/16 v3, 0x1f

    if-gt v0, v3, :cond_b0

    iget-object v0, p0, Lcom/samsung/android/mcf/a$a;->a:Lcom/samsung/android/mcf/a;

    invoke-static {v0, p3, v2}, Lcom/samsung/android/mcf/a;->a(Lcom/samsung/android/mcf/a;Lcom/samsung/android/mcf/ble/BleAdvertiseData;Z)I

    move-result v0

    if-gt v0, v3, :cond_a8

    sget-boolean v0, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    if-eqz v0, :cond_62

    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->getTimeout()I

    move-result v0

    const v3, 0x36ee80

    if-gt v0, v3, :cond_5b

    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->getTimeout()I

    move-result v0

    if-nez v0, :cond_62

    :cond_5b
    iget-object v0, p0, Lcom/samsung/android/mcf/a$a;->a:Lcom/samsung/android/mcf/a;

    const-string v3, "Advertise-Timout is set too long, please check it again"

    invoke-virtual {v0, v3}, Lcom/samsung/android/mcf/AbstractClient;->c(Ljava/lang/String;)V

    :cond_62
    iget-object v0, p0, Lcom/samsung/android/mcf/a$a;->a:Lcom/samsung/android/mcf/a;

    iget-object v0, v0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;

    invoke-direct {v0, p4}, Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;-><init>(Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;)V

    iget-object v1, p0, Lcom/samsung/android/mcf/a$a;->a:Lcom/samsung/android/mcf/a;

    invoke-static {v1}, Lcom/samsung/android/mcf/a;->a(Lcom/samsung/android/mcf/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v1}, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-virtual {p2, v1, v2}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->getBundle(Landroid/os/Bundle;I)Landroid/os/Bundle;

    const/4 p1, 0x1

    if-eqz p3, :cond_8a

    invoke-virtual {p3, v1, p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->getBundle(Landroid/os/Bundle;I)Landroid/os/Bundle;

    :cond_8a
    invoke-virtual {v0}, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const-string p3, "bleAdvCallback"

    invoke-virtual {v1, p3, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object p2, p0, Lcom/samsung/android/mcf/a$a;->a:Lcom/samsung/android/mcf/a;

    const/16 p3, 0x190

    invoke-virtual {p2, p3, v1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p2

    if-eqz p2, :cond_a7

    iget-object p1, p0, Lcom/samsung/android/mcf/a$a;->a:Lcom/samsung/android/mcf/a;

    invoke-static {p1}, Lcom/samsung/android/mcf/a;->a(Lcom/samsung/android/mcf/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_a7
    return p1

    :cond_a8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Legacy scan response data too big"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Legacy advertising data too big"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopAdvertise(Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/mcf/a$a;->a:Lcom/samsung/android/mcf/a;

    invoke-static {v0}, Lcom/samsung/android/mcf/a;->a(Lcom/samsung/android/mcf/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;

    const-string v1, "stopAdvertise"

    if-nez v0, :cond_1b

    iget-object p1, p0, Lcom/samsung/android/mcf/a$a;->a:Lcom/samsung/android/mcf/a;

    iget-object p1, p1, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v0, "Ignore - not started"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1b
    iget-object v2, p0, Lcom/samsung/android/mcf/a$a;->a:Lcom/samsung/android/mcf/a;

    iget-object v2, v2, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/mcf/a$a;->a:Lcom/samsung/android/mcf/a;

    invoke-static {v1}, Lcom/samsung/android/mcf/a;->a(Lcom/samsung/android/mcf/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "bleAdvCallback"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/a$a;->a:Lcom/samsung/android/mcf/a;

    const/16 v1, 0x191

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    const/4 p1, 0x1

    return p1
.end method
