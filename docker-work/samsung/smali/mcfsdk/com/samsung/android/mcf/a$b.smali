.class public Lcom/samsung/android/mcf/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/ble/BleScanner;


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

    iput-object p1, p0, Lcom/samsung/android/mcf/a$b;->a:Lcom/samsung/android/mcf/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;",
            "Lcom/samsung/android/mcf/ble/BleScanSettings;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/samsung/android/mcf/a$b;->a:Lcom/samsung/android/mcf/a;

    iget-object v1, v1, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter.size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getFilterBundles"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/ble/BleScanFilter;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-gt v2, v3, :cond_54

    invoke-virtual {v1}, Lcom/samsung/android/mcf/ble/BleScanFilter;->isOnlyIrkFilter()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-virtual {p2}, Lcom/samsung/android/mcf/ble/BleScanSettings;->getTimeout()I

    move-result v2

    const/16 v3, 0x7530

    if-gt v2, v3, :cond_4c

    goto :goto_54

    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scan with only Irk filter can not run more than 30 secs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_54
    :goto_54
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/mcf/ble/BleScanFilter;->getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_5d
    return-object v0
.end method

.method public startScan(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;Lcom/samsung/android/mcf/ble/BleScanCallback;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;",
            "Lcom/samsung/android/mcf/ble/BleScanSettings;",
            "Lcom/samsung/android/mcf/ble/BleScanCallback;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/a$b;->a:Lcom/samsung/android/mcf/a;

    invoke-static {v0}, Lcom/samsung/android/mcf/a;->b(Lcom/samsung/android/mcf/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;

    const-string v1, "startScan"

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    iget-object p1, p0, Lcom/samsung/android/mcf/a$b;->a:Lcom/samsung/android/mcf/a;

    iget-object p1, p1, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p2, "Ignore - already started"

    invoke-static {p1, v1, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1b
    if-nez p1, :cond_29

    if-nez p2, :cond_29

    iget-object p1, p0, Lcom/samsung/android/mcf/a$b;->a:Lcom/samsung/android/mcf/a;

    iget-object p1, p1, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p2, "Ignore - both(screenOn/ScreenOff) filters are null"

    invoke-static {p1, v1, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_29
    new-instance v0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;

    invoke-direct {v0, p4}, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;-><init>(Lcom/samsung/android/mcf/ble/BleScanCallback;)V

    iget-object v1, p0, Lcom/samsung/android/mcf/a$b;->a:Lcom/samsung/android/mcf/a;

    invoke-static {v1}, Lcom/samsung/android/mcf/a;->b(Lcom/samsung/android/mcf/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_47

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/mcf/a$b;->a(Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v3, "bleScanOnFilter"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_47
    if-eqz p2, :cond_52

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/mcf/a$b;->a(Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;)Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "bleScanOffFilter"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_52
    invoke-virtual {p3, v1}, Lcom/samsung/android/mcf/ble/BleScanSettings;->getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string p2, "bleScanCallback"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/samsung/android/mcf/a$b;->a:Lcom/samsung/android/mcf/a;

    const/16 p2, 0x192

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_72

    iget-object p1, p0, Lcom/samsung/android/mcf/a$b;->a:Lcom/samsung/android/mcf/a;

    invoke-static {p1}, Lcom/samsung/android/mcf/a;->b(Lcom/samsung/android/mcf/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_72
    const/4 p1, 0x1

    return p1
.end method

.method public stopScan(Lcom/samsung/android/mcf/ble/BleScanCallback;)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/mcf/a$b;->a:Lcom/samsung/android/mcf/a;

    invoke-static {v0}, Lcom/samsung/android/mcf/a;->b(Lcom/samsung/android/mcf/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;

    const-string v1, "stopScan"

    if-nez v0, :cond_1b

    iget-object p1, p0, Lcom/samsung/android/mcf/a$b;->a:Lcom/samsung/android/mcf/a;

    iget-object p1, p1, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v0, "Ignore - not started"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1b
    iget-object v2, p0, Lcom/samsung/android/mcf/a$b;->a:Lcom/samsung/android/mcf/a;

    iget-object v2, v2, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/mcf/a$b;->a:Lcom/samsung/android/mcf/a;

    invoke-static {v1}, Lcom/samsung/android/mcf/a;->b(Lcom/samsung/android/mcf/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "bleScanCallback"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/a$b;->a:Lcom/samsung/android/mcf/a;

    const/16 v1, 0x193

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    const/4 p1, 0x1

    return p1
.end method
