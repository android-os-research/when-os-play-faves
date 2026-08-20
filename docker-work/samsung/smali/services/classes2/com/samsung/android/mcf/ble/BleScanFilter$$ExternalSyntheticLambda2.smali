.class public final synthetic Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/ble/BleScanFilter;

.field public final synthetic f$1:Landroid/bluetooth/le/ScanFilter$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/ble/BleScanFilter;Landroid/bluetooth/le/ScanFilter$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/mcf/ble/BleScanFilter;

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda2;->f$1:Landroid/bluetooth/le/ScanFilter$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/mcf/ble/BleScanFilter;

    iget-object p0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda2;->f$1:Landroid/bluetooth/le/ScanFilter$Builder;

    check-cast p1, [B

    invoke-static {v0, p0, p1}, Lcom/samsung/android/mcf/ble/BleScanFilter;->$r8$lambda$ORmamEZlYtnMRvLFDZF2elUvFxE(Lcom/samsung/android/mcf/ble/BleScanFilter;Landroid/bluetooth/le/ScanFilter$Builder;[B)V

    return-void
.end method
