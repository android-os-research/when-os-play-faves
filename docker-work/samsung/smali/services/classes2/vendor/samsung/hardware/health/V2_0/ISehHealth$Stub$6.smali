.class public Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$6;
.super Ljava/lang/Object;
.source "ISehHealth.java"

# interfaces
.implements Landroid/hardware/health/V2_0/IHealth$getChargeStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;

.field public final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method public constructor <init>(Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;Landroid/os/HwParcel;)V
    .registers 3

    .line 1014
    iput-object p1, p0, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$6;->this$0:Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;

    iput-object p2, p0, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(II)V
    .registers 5

    .line 1017
    iget-object v0, p0, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1018
    iget-object v0, p0, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1019
    iget-object p1, p0, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1020
    iget-object p0, p0, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
