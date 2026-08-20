.class public Landroid/net/shared/NetdUtils;
.super Ljava/lang/Object;
.source "NetdUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetdUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static networkAddInterface(Landroid/net/INetd;Ljava/lang/String;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_1
    if-gt v0, p2, :cond_30

    const/16 v1, 0x63

    .line 56
    :try_start_5
    invoke-interface {p0, v1, p1}, Landroid/net/INetd;->networkAddInterface(ILjava/lang/String;)V
    :try_end_8
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v1

    .line 59
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v3, Landroid/system/OsConstants;->EBUSY:I

    if-ne v2, v3, :cond_19

    if-ge v0, p2, :cond_19

    int-to-long v1, p3

    .line 60
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    :cond_19
    sget-object p0, Landroid/net/shared/NetdUtils;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Retry Netd#networkAddInterface failure: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    throw v1

    :cond_30
    return-void
.end method

.method public static tetherStart(Landroid/net/INetd;Z[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 38
    new-instance v0, Landroid/net/TetherConfigParcel;

    invoke-direct {v0}, Landroid/net/TetherConfigParcel;-><init>()V

    .line 39
    iput-boolean p1, v0, Landroid/net/TetherConfigParcel;->usingLegacyDnsProxy:Z

    .line 40
    iput-object p2, v0, Landroid/net/TetherConfigParcel;->dhcpRanges:[Ljava/lang/String;

    .line 41
    invoke-interface {p0, v0}, Landroid/net/INetd;->tetherStartWithConfiguration(Landroid/net/TetherConfigParcel;)V

    return-void
.end method

.method public static untetherInterface(Landroid/net/INetd;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    const/16 v0, 0x63

    .line 74
    :try_start_2
    invoke-interface {p0, p1}, Landroid/net/INetd;->tetherInterfaceRemove(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_9

    .line 76
    invoke-interface {p0, v0, p1}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V

    return-void

    :catchall_9
    move-exception v1

    invoke-interface {p0, v0, p1}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V

    .line 77
    throw v1
.end method
