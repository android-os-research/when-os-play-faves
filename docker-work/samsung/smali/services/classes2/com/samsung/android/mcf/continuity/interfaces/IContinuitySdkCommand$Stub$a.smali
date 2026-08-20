.class public Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$Stub$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$Stub$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 1

    const-string p0, "com.samsung.android.mcf.continuity.interfaces.IContinuitySdkCommand"

    return-object p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$Stub$a;->a:Landroid/os/IBinder;

    return-object p0
.end method

.method public internalCommand(Landroid/os/Message;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.samsung.android.mcf.continuity.interfaces.IContinuitySdkCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    # invokes: Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {v0, p1, v2}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$Stub$a;->a:Landroid/os/IBinder;

    const/4 p1, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_25

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_25
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public internalCommandWithReturnValue(Landroid/os/Message;Landroid/os/Bundle;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.samsung.android.mcf.continuity.interfaces.IContinuitySdkCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    # invokes: Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {v0, p1, v2}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$Stub$a;->a:Landroid/os/IBinder;

    const/4 p1, 0x2

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_27

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_2e

    :cond_27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2e
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
