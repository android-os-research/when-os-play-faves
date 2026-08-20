.class public Lcom/samsung/android/securefolder/fwwrapper/INotificationManagerWrapper;
.super Ljava/lang/Object;
.source "INotificationManagerWrapper.java"


# static fields
.field private static mINotificationManager:Landroid/app/INotificationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    .line 14
    sget-object v0, Lcom/samsung/android/securefolder/fwwrapper/INotificationManagerWrapper;->mINotificationManager:Landroid/app/INotificationManager;

    if-nez v0, :cond_a

    .line 15
    invoke-static {p0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/securefolder/fwwrapper/INotificationManagerWrapper;->mINotificationManager:Landroid/app/INotificationManager;

    .line 18
    :cond_a
    sget-object p0, Lcom/samsung/android/securefolder/fwwrapper/INotificationManagerWrapper;->mINotificationManager:Landroid/app/INotificationManager;

    return-object p0
.end method

.method public static unregisterListener(Landroid/os/IBinder;Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    invoke-static {p0}, Lcom/samsung/android/securefolder/fwwrapper/INotificationManagerWrapper;->getInstance(Landroid/os/IBinder;)Ljava/lang/Object;

    .line 24
    sget-object p0, Lcom/samsung/android/securefolder/fwwrapper/INotificationManagerWrapper;->mINotificationManager:Landroid/app/INotificationManager;

    check-cast p1, Landroid/service/notification/INotificationListener;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->unregisterListener(Landroid/service/notification/INotificationListener;I)V

    return-void
.end method
