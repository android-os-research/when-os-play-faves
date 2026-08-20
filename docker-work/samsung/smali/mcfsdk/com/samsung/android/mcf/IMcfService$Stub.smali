.class public abstract Lcom/samsung/android/mcf/IMcfService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/IMcfService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/IMcfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/IMcfService$Stub$a;
    }
.end annotation


# static fields
.field public static final TRANSACTION_internalCommand:I = 0x3

.field public static final TRANSACTION_internalStringCommand:I = 0x4

.field public static final TRANSACTION_registerInsyncEventListenerDelegator:I = 0x1

.field public static final TRANSACTION_unregisterInsyncEventListenerDelegator:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.mcf.IMcfService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/IMcfService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.samsung.android.mcf.IMcfService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/mcf/IMcfService;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/samsung/android/mcf/IMcfService;

    return-object v0

    :cond_13
    new-instance v0, Lcom/samsung/android/mcf/IMcfService$Stub$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/IMcfService$Stub$a;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.samsung.android.mcf.IMcfService"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_5b

    packed-switch p1, :pswitch_data_60

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_1a
    sget-object p1, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    # invokes: Lcom/samsung/android/mcf/IMcfService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    invoke-static {p2, p1}, Lcom/samsung/android/mcf/IMcfService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Message;

    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/IMcfService;->internalStringCommand(Landroid/os/Message;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5a

    :pswitch_2d
    sget-object p1, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    # invokes: Lcom/samsung/android/mcf/IMcfService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    invoke-static {p2, p1}, Lcom/samsung/android/mcf/IMcfService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Message;

    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/IMcfService;->internalCommand(Landroid/os/Message;)I

    move-result p1

    :goto_39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5a

    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/net/a$b;->a(Landroid/os/IBinder;)Lcom/samsung/android/net/a;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/IMcfService;->unregisterInsyncEventListenerDelegator(Lcom/samsung/android/net/a;)Z

    move-result p1

    goto :goto_39

    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/net/a$b;->a(Landroid/os/IBinder;)Lcom/samsung/android/net/a;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/IMcfService;->registerInsyncEventListenerDelegator(Lcom/samsung/android/net/a;)Z

    move-result p1

    goto :goto_39

    :goto_5a
    return v0

    :cond_5b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_40
        :pswitch_2d
        :pswitch_1a
    .end packed-switch
.end method
