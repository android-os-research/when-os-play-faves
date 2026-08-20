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
    .registers 5
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/ble/BleScanSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

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

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lcom/samsung/android/mcf/a$b;->a:Lcom/samsung/android/mcf/a;

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filter.size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getFilterBundles"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mcf/ble/BleScanFilter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/mcf/ble/BleScanFilter;->getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_3e
    return-object p2
.end method

.method public startScan(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;Lcom/samsung/android/mcf/ble/BleScanCallback;)Z
    .registers 9
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/ble/BleScanSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/ble/BleScanCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    const-string/jumbo v1, "startScan"

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/samsung/android/mcf/a$b;->a:Lcom/samsung/android/mcf/a;

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "Ignore - already started"

    invoke-static {p0, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1c
    if-nez p1, :cond_2a

    if-nez p2, :cond_2a

    iget-object p0, p0, Lcom/samsung/android/mcf/a$b;->a:Lcom/samsung/android/mcf/a;

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "Ignore - both(screenOn/ScreenOff) filters are null"

    invoke-static {p0, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2a
    new-instance v0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;

    invoke-direct {v0, p4}, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;-><init>(Lcom/samsung/android/mcf/ble/BleScanCallback;)V

    iget-object v1, p0, Lcom/samsung/android/mcf/a$b;->a:Lcom/samsung/android/mcf/a;

    invoke-static {v1}, Lcom/samsung/android/mcf/a;->b(Lcom/samsung/android/mcf/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_48

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/mcf/a$b;->a(Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v3, "bleScanOnFilter"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_48
    if-eqz p2, :cond_53

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/mcf/a$b;->a(Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;)Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "bleScanOffFilter"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_53
    invoke-virtual {p3, v1}, Lcom/samsung/android/mcf/ble/BleScanSettings;->getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string p2, "bleScanCallback"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/samsung/android/mcf/a$b;->a:Lcom/samsung/android/mcf/a;

    const/16 p2, 0x192

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_73

    iget-object p0, p0, Lcom/samsung/android/mcf/a$b;->a:Lcom/samsung/android/mcf/a;

    invoke-static {p0}, Lcom/samsung/android/mcf/a;->b(Lcom/samsung/android/mcf/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_73
    const/4 p0, 0x1

    return p0
.end method

.method public stopScan(Lcom/samsung/android/mcf/ble/BleScanCallback;)Z
    .registers 6
    .param p1    # Lcom/samsung/android/mcf/ble/BleScanCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/a$b;->a:Lcom/samsung/android/mcf/a;

    invoke-static {v0}, Lcom/samsung/android/mcf/a;->b(Lcom/samsung/android/mcf/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;

    const-string/jumbo v1, "stopScan"

    if-nez v0, :cond_1c

    iget-object p0, p0, Lcom/samsung/android/mcf/a$b;->a:Lcom/samsung/android/mcf/a;

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "Ignore - not started"

    invoke-static {p0, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1c
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

    iget-object p0, p0, Lcom/samsung/android/mcf/a$b;->a:Lcom/samsung/android/mcf/a;

    const/16 v0, 0x193

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    const/4 p0, 0x1

    return p0
.end method
