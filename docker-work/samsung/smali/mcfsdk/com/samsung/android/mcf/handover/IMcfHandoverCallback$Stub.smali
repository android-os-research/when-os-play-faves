.class public abstract Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub$a;
    }
.end annotation


# static fields
.field public static final TRANSACTION_onConnectionFailed:I = 0x5

.field public static final TRANSACTION_onConnectionStateChanged:I = 0x4

.field public static final TRANSACTION_onHandoverRequest:I = 0x1

.field public static final TRANSACTION_onHandoverResult:I = 0x3

.field public static final TRANSACTION_onReceiveHandoverResponse:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.mcf.handover.IMcfHandoverCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.samsung.android.mcf.handover.IMcfHandoverCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;

    return-object v0

    :cond_13
    new-instance v0, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.samsung.android.mcf.handover.IMcfHandoverCallback"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_6e

    packed-switch p1, :pswitch_data_72

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_1a
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    # invokes: Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    invoke-static {p2, p1}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PersistableBundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;->onConnectionFailed(Landroid/os/PersistableBundle;I)V

    goto :goto_6d

    :pswitch_2a
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    # invokes: Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    invoke-static {p2, p1}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PersistableBundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;->onConnectionStateChanged(Landroid/os/PersistableBundle;I)V

    goto :goto_6d

    :pswitch_3a
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    # invokes: Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    invoke-static {p2, p1}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PersistableBundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;->onHandoverResult(Landroid/os/PersistableBundle;I)V

    goto :goto_6d

    :pswitch_4a
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    # invokes: Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    invoke-static {p2, p1}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PersistableBundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;->onReceiveHandoverResponse(Landroid/os/PersistableBundle;I)V

    goto :goto_6d

    :pswitch_5a
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    # invokes: Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    invoke-static {p2, p1}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PersistableBundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;->onHandoverRequest(Landroid/os/PersistableBundle;II)V

    :goto_6d
    return v0

    :cond_6e
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_4a
        :pswitch_3a
        :pswitch_2a
        :pswitch_1a
    .end packed-switch
.end method
