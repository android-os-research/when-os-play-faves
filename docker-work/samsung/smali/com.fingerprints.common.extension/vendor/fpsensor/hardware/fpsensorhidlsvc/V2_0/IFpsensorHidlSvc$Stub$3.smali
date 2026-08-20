.class Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub$3;
.super Ljava/lang/Object;
.source "IFpsensorHidlSvc.java"

# interfaces
.implements Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$ext_cmdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;Landroid/os/HwParcel;)V
    .registers 3
    .param p1, "this$0"    # Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;

    .line 726
    iput-object p1, p0, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub$3;->this$0:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;

    iput-object p2, p0, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/util/ArrayList;)V
    .registers 5
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 729
    .local p2, "resp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 730
    iget-object v0, p0, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 731
    iget-object v0, p0, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 732
    iget-object v0, p0, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 733
    return-void
.end method
