.class public Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;
.super Ljava/lang/Object;
.source "BlueToothConnectedFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter$BlueToothConnectedFilterHolder;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "BlueToothConnectedFilter"


# instance fields
.field public mBTAllowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mBTTargetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->mBTAllowList:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->mBTTargetList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;
    .registers 1

    .line 27
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter$BlueToothConnectedFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 1

    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .registers 5

    .line 40
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0, p3}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->isInBTAllowList(I)Z

    move-result p0

    if-eqz p0, :cond_13

    const/16 p0, 0x1c

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public isInBTAllowList(I)Z
    .registers 2

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 48
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->mBTAllowList:Ljava/util/List;

    if-eqz p0, :cond_10

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isInBTTargetList(I)Z
    .registers 2

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 57
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->mBTTargetList:Ljava/util/List;

    if-eqz p0, :cond_10

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public updateBTUsingPackages()V
    .registers 5

    .line 64
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->mBTAllowList:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 65
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_11

    .line 69
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 71
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_53

    .line 72
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getHWUsingApps()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 74
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_43

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->mBTAllowList:Ljava/util/List;

    goto :goto_23

    :cond_43
    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->mBTTargetList:Ljava/util/List;

    goto :goto_23

    :cond_53
    return-void
.end method
