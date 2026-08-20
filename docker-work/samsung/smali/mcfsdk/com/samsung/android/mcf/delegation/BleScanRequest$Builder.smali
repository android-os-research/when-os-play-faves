.class public final Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/delegation/BleScanRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final requestId:I

.field private scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

.field private scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

.field private final screenOffFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final screenOnFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->requestId:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->screenOnFilters:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->screenOffFilters:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addScreenOffScanFilter(Lcom/samsung/android/mcf/ble/BleScanFilter;)Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addScreenOnScanFilter(Lcom/samsung/android/mcf/ble/BleScanFilter;)Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/samsung/android/mcf/delegation/BleScanRequest;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->requestId:I

    if-ltz v0, :cond_17

    new-instance v0, Lcom/samsung/android/mcf/delegation/BleScanRequest;

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->requestId:I

    iget-object v4, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->screenOnFilters:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->screenOffFilters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

    iget-object v7, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/mcf/delegation/BleScanRequest;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;Lcom/samsung/android/mcf/delegation/BleScanAction;)V

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request id should be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setScanAction(Lcom/samsung/android/mcf/delegation/BleScanAction;)Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    return-object p0
.end method

.method public setScanSettings(Lcom/samsung/android/mcf/ble/BleScanSettings;)Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;
    .registers 3

    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleScanSettings;->getScanMode()I

    move-result v0

    if-nez v0, :cond_9

    iput-object p1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

    return-object p0

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ONLY allows SCAN_MODE_LOW_POWER"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
