.class public Landroid/hardware/health/V2_1/IHealth$Stub$8;
.super Ljava/lang/Object;
.source "IHealth.java"

# interfaces
.implements Landroid/hardware/health/V2_0/IHealth$getDiskStatsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/health/V2_1/IHealth$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/hardware/health/V2_1/IHealth$Stub;

.field public final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method public constructor <init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V
    .registers 3

    .line 1021
    iput-object p1, p0, Landroid/hardware/health/V2_1/IHealth$Stub$8;->this$0:Landroid/hardware/health/V2_1/IHealth$Stub;

    iput-object p2, p0, Landroid/hardware/health/V2_1/IHealth$Stub$8;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/health/V2_0/DiskStats;",
            ">;)V"
        }
    .end annotation

    .line 1024
    iget-object v0, p0, Landroid/hardware/health/V2_1/IHealth$Stub$8;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1025
    iget-object v0, p0, Landroid/hardware/health/V2_1/IHealth$Stub$8;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1026
    iget-object p1, p0, Landroid/hardware/health/V2_1/IHealth$Stub$8;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-static {p1, p2}, Landroid/hardware/health/V2_0/DiskStats;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1027
    iget-object p0, p0, Landroid/hardware/health/V2_1/IHealth$Stub$8;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
