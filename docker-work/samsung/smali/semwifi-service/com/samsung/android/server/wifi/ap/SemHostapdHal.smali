.class public Lcom/samsung/android/server/wifi/ap/SemHostapdHal;
.super Ljava/lang/Object;
.source "SemHostapdHal.java"


# static fields
.field private static TAG:Ljava/lang/String; = "SemWifiApHostapdHal"


# instance fields
.field private device_first_api_level:I

.field private mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

.field private mSemHostapdHalV3:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

.field private mSemHostapdHalV4:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .registers 6

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->device_first_api_level:I

    const-string v1, "ro.product.first_api_level"

    .line 35
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->device_first_api_level:I

    .line 36
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 37
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV4:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    .line 38
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV3:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    return-void
.end method


# virtual methods
.method public declared-synchronized addMHSDumpLog(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 121
    :try_start_1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->serviceDeclared()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 122
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->addMHSDumpLog(Ljava/lang/String;)V

    goto :goto_41

    .line 123
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV4:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 124
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV4:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->addMHSDumpLog(Ljava/lang/String;)V

    goto :goto_41

    .line 125
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV3:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 126
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV3:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->addMHSDumpLog(Ljava/lang/String;)V

    goto :goto_41

    .line 128
    :cond_29
    sget-object p1, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " not registered ISehHostapd,device_first_api_level:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->device_first_api_level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_43

    .line 130
    :goto_41
    monitor-exit p0

    return-void

    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDumpLogs()Ljava/lang/String;
    .registers 4

    .line 107
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->serviceDeclared()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 108
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->getDumpLogs()Ljava/lang/String;

    move-result-object p0

    goto :goto_45

    .line 109
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV4:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 110
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV4:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->getDumpLogs()Ljava/lang/String;

    move-result-object p0

    goto :goto_45

    .line 111
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV3:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 112
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV3:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->getDumpLogs()Ljava/lang/String;

    move-result-object p0

    goto :goto_45

    .line 114
    :cond_2b
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not registered ISehHostapd,device_first_api_level"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->device_first_api_level:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "null"

    :goto_45
    return-object p0
.end method

.method public isRegisteredHostapdAidl()Z
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->isRegistered()Z

    move-result p0

    return p0
.end method

.method public readAllowList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 66
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->readAllowList()Ljava/util/List;

    move-result-object v0

    goto :goto_4a

    .line 67
    :cond_14
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV4:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 68
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV4:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->readAllowList()Ljava/util/List;

    move-result-object v0

    goto :goto_4a

    .line 69
    :cond_23
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV3:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 70
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV3:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->readAllowList()Ljava/util/List;

    move-result-object v0

    goto :goto_4a

    .line 72
    :cond_32
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " not registered ISehHostapd,device_first_api_level:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->device_first_api_level:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4a
    return-object v0
.end method

.method public readDenyList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 80
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->readDenyList()Ljava/util/List;

    move-result-object v0

    goto :goto_4a

    .line 81
    :cond_14
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV4:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 82
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV4:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->readDenyList()Ljava/util/List;

    move-result-object v0

    goto :goto_4a

    .line 83
    :cond_23
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV3:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 84
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV3:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->readDenyList()Ljava/util/List;

    move-result-object v0

    goto :goto_4a

    .line 86
    :cond_32
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " not registered ISehHostapd,device_first_api_level:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->device_first_api_level:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4a
    return-object v0
.end method

.method public sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 93
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 94
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4f

    .line 95
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV4:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 96
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV4:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4f

    .line 97
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV3:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 98
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV3:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4f

    .line 100
    :cond_2d
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not registered ISehHostapd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",device_first_api_level:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->device_first_api_level:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    :goto_4f
    return-object p0
.end method

.method public setUpHostapdAidl()I
    .registers 4

    .line 42
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->serviceDeclared()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 43
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->attachDaemon()I

    move-result p0

    .line 44
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUpHostapdAidl status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 47
    :cond_23
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->TAG:Ljava/lang/String;

    const-string v0, "setUpHostapdAidl, did not executed"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public stopHostapdAidl()V
    .registers 2

    .line 53
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->serviceDeclared()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 54
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->terminate()V

    :cond_b
    return-void
.end method
