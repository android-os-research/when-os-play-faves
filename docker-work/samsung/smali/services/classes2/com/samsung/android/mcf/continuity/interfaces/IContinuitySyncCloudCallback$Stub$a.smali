.class public Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback$Stub$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback$Stub;
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

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback$Stub$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 1

    const-string p0, "com.samsung.android.mcf.continuity.interfaces.IContinuitySyncCloudCallback"

    return-object p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback$Stub$a;->a:Landroid/os/IBinder;

    return-object p0
.end method

.method public onCallback(Landroid/os/Message;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.continuity.interfaces.IContinuitySyncCloudCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    # invokes: Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {v0, p1, v1}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback$Stub$a;->a:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v1, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_18
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
