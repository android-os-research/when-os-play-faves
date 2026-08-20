.class public Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;
.super Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
.source "SysinputHAL_V1_3.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3$HALDeathReceiver;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 20
    const-string v0, "SysinputHAL_V1_3"

    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;-><init>(Ljava/lang/String;)V

    .line 17
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    .line 21
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->getService()Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 25
    return-void

    .line 23
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;-><init>(Ljava/lang/String;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(V1_3)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private declared-synchronized getService()Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    .registers 7

    monitor-enter p0

    .line 33
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    if-eqz v0, :cond_b

    invoke-super {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->isSameService(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_a8

    if-nez v0, :cond_86

    .line 35
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;
    :cond_b
    const/4 v0, 0x0

    :try_start_c
    invoke-static {}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;->getService()Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->setService(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;)V

    .line 36
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    if-nez v1, :cond_20

    .line 37
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    const-string v2, "getService: halService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1e} :catch_8a
    .catchall {:try_start_c .. :try_end_1e} :catchall_a8

    .line 38
    monitor-exit p0

    return-object v0

    .line 40
    :cond_20
    :try_start_20
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3e} :catch_8a
    .catchall {:try_start_20 .. :try_end_3e} :catchall_a8

    .line 45
    nop

    .line 47
    :try_start_3f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 48
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3$HALDeathReceiver;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3$HALDeathReceiver;-><init>(Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3$HALDeathReceiver-IA;)V
    :try_end_54
    .catchall {:try_start_3f .. :try_end_54} :catchall_a8

    .line 50
    .local v1, "deathReceiver":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3$HALDeathReceiver;
    :try_start_54
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    if-eqz v2, :cond_64

    .line 51
    const-wide/16 v3, 0x2a

    invoke-interface {v2, v1, v3, v4}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 52
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    const-string v3, "getService: register linkToDeath"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_64} :catch_65
    .catchall {:try_start_54 .. :try_end_64} :catchall_a8

    .line 59
    :cond_64
    goto :goto_86

    .line 54
    :catch_65
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/Exception;
    :try_start_66
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->setServiceNullAndRecovery()V

    .line 56
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getService:linkToDeath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_84
    .catchall {:try_start_66 .. :try_end_84} :catchall_a8

    .line 58
    monitor-exit p0

    return-object v0

    .line 62
    .end local v1    # "deathReceiver":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3$HALDeathReceiver;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_86
    :goto_86
    :try_start_86
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    :try_end_88
    .catchall {:try_start_86 .. :try_end_88} :catchall_a8

    monitor-exit p0

    return-object v0

    .line 41
    :catch_8a
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8b
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a6
    .catchall {:try_start_8b .. :try_end_a6} :catchall_a8

    .line 44
    monitor-exit p0

    return-object v0

    .line 32
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_a8
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clearHwParam(ILjava/lang/String;)I
    .registers 4
    .param p1, "devid"    # I
    .param p2, "mode"    # Ljava/lang/String;

    .line 312
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->setProperty(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected convertDevidToInputDeviceType(I)I
    .registers 3
    .param p1, "devid"    # I

    .line 136
    sparse-switch p1, :sswitch_data_12

    .line 148
    const/4 v0, 0x0

    return v0

    .line 146
    :sswitch_5
    const/16 v0, 0x28

    return v0

    .line 144
    :sswitch_8
    const/16 v0, 0x1e

    return v0

    .line 142
    :sswitch_b
    const/16 v0, 0x14

    return v0

    .line 140
    :sswitch_e
    const/4 v0, 0x2

    return v0

    .line 138
    :sswitch_10
    const/4 v0, 0x1

    return v0

    :sswitch_data_12
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_e
        0xb -> :sswitch_b
        0x15 -> :sswitch_8
        0x1f -> :sswitch_5
    .end sparse-switch
.end method

.method protected convertInputDeviceTypeToDevid(Ljava/lang/Integer;)I
    .registers 3
    .param p1, "type"    # Ljava/lang/Integer;

    .line 119
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_16

    .line 131
    const/4 v0, 0x0

    return v0

    .line 129
    :sswitch_9
    const/16 v0, 0x1f

    return v0

    .line 127
    :sswitch_c
    const/16 v0, 0x15

    return v0

    .line 125
    :sswitch_f
    const/16 v0, 0xb

    return v0

    .line 123
    :sswitch_12
    const/4 v0, 0x2

    return v0

    .line 121
    :sswitch_14
    const/4 v0, 0x1

    return v0

    :sswitch_data_16
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_12
        0x14 -> :sswitch_f
        0x1e -> :sswitch_c
        0x28 -> :sswitch_9
    .end sparse-switch
.end method

.method public getDeviceList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->getDeviceList(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceList(Z)Ljava/util/ArrayList;
    .registers 10
    .param p1, "forceParse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 164
    const/4 v0, 0x0

    .line 166
    .local v0, "integerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->getService()Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    move-result-object v1

    .line 167
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    if-nez v1, :cond_d

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 170
    :cond_d
    monitor-enter v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_18

    .line 171
    :try_start_e
    invoke-interface {v1, p1}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;->getDeviceList(Z)Ljava/util/ArrayList;

    move-result-object v2

    move-object v0, v2

    .line 172
    monitor-exit v1

    .line 176
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    goto :goto_34

    .line 172
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    .end local v0    # "integerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;
    .end local p1    # "forceParse":Z
    :try_start_17
    throw v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_18} :catch_18

    .line 173
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    .restart local v0    # "integerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;
    .restart local p1    # "forceParse":Z
    :catch_18
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v1, "convertList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_89

    .line 180
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 181
    .local v3, "type":Ljava/lang/Integer;
    invoke-virtual {p0, v3}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->convertInputDeviceTypeToDevid(Ljava/lang/Integer;)I

    move-result v4

    .line 182
    .local v4, "devid":I
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDeviceList: support "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lvendor/samsung/hardware/sysinput/V1_3/InputDeviceType;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    if-eqz v4, :cond_88

    .line 184
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .end local v3    # "type":Ljava/lang/Integer;
    .end local v4    # "devid":I
    :cond_88
    goto :goto_3f

    .line 188
    :cond_89
    return-object v1
.end method

.method public getHwParam(I)Ljava/lang/String;
    .registers 3
    .param p1, "devid"    # I

    .line 317
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->getProperty(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLpDump(I)Ljava/lang/String;
    .registers 3
    .param p1, "devid"    # I

    .line 307
    const/16 v0, 0xb

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->getProperty(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getProperty(II)Ljava/lang/String;
    .registers 9
    .param p1, "devid"    # I
    .param p2, "property"    # I

    .line 214
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->convertDevidToInputDeviceType(I)I

    move-result v0

    .line 215
    .local v0, "type":I
    if-nez v0, :cond_9

    .line 216
    const-string v1, "NG"

    return-object v1

    .line 218
    :cond_9
    const-string v1, "NG"

    .line 220
    .local v1, "result":Ljava/lang/String;
    :try_start_b
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->getService()Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    move-result-object v2

    .line 221
    .local v2, "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    if-nez v2, :cond_14

    .line 222
    const-string v3, "NG"

    return-object v3

    .line 224
    :cond_14
    monitor-enter v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_86

    .line 225
    :try_start_15
    invoke-interface {v2, v0, p2}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;->getProperty(II)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 226
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 227
    const/4 v3, 0x2

    if-eq p2, v3, :cond_57

    .line 228
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProperty("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lvendor/samsung/hardware/sysinput/V1_3/InputDeviceType;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Lvendor/samsung/hardware/sysinput/V1_3/InputDeviceProperty;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 230
    :cond_57
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProperty("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lvendor/samsung/hardware/sysinput/V1_3/InputDeviceType;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Lvendor/samsung/hardware/sysinput/V1_3/InputDeviceProperty;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_81
    monitor-exit v2

    .line 236
    .end local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    goto :goto_a2

    .line 232
    .restart local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    :catchall_83
    move-exception v3

    monitor-exit v2
    :try_end_85
    .catchall {:try_start_15 .. :try_end_85} :catchall_83

    .end local v0    # "type":I
    .end local v1    # "result":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;
    .end local p1    # "devid":I
    .end local p2    # "property":I
    :try_start_85
    throw v3
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_86} :catch_86

    .line 233
    .end local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    .restart local v0    # "type":I
    .restart local v1    # "result":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;
    .restart local p1    # "devid":I
    .restart local p2    # "property":I
    :catch_86
    move-exception v2

    .line 234
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProperty: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_a2
    return-object v1
.end method

.method public getProxPowerOff(I)Ljava/lang/String;
    .registers 3
    .param p1, "devid"    # I

    .line 302
    const/16 v0, 0x9

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->getProperty(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpenCommandList()Ljava/lang/String;
    .registers 4

    .line 373
    const/16 v0, 0xb

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->getProperty(II)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "result":Ljava/lang/String;
    const-string v1, "\n"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSpenPosition()Ljava/lang/String;
    .registers 3

    .line 368
    const/16 v0, 0xb

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->getProperty(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpenSupportFeature()I
    .registers 7

    .line 379
    const/16 v0, 0xb

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->getProperty(II)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "result":Ljava/lang/String;
    const-string v1, "NG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 381
    const/4 v1, 0x0

    return v1

    .line 383
    :cond_11
    const/4 v1, 0x0

    .line 385
    .local v1, "ret":I
    :try_start_12
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_16} :catch_18

    move v1, v2

    .line 388
    goto :goto_31

    .line 386
    :catch_18
    move-exception v2

    .line 387
    .local v2, "e":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSpenSupportFeature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_31
    return v1
.end method

.method public getTspAodActiveArea(I)Ljava/lang/String;
    .registers 3
    .param p1, "devid"    # I

    .line 353
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->getProperty(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTspCommandList(I)Ljava/lang/String;
    .registers 5
    .param p1, "devid"    # I

    .line 347
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->getProperty(II)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "result":Ljava/lang/String;
    const-string v1, "\n"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTspFodInformation(I)Ljava/lang/String;
    .registers 3
    .param p1, "devid"    # I

    .line 358
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->getProperty(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTspFodPosition(I)Ljava/lang/String;
    .registers 3
    .param p1, "devid"    # I

    .line 363
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->getProperty(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTspRawdata(I)Ljava/util/ArrayList;
    .registers 3
    .param p1, "devid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getTspScrubPosition(I)Ljava/lang/String;
    .registers 3
    .param p1, "devid"    # I

    .line 327
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->getProperty(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTspSupportFeature(I)I
    .registers 8
    .param p1, "devid"    # I

    .line 332
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->getProperty(II)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "result":Ljava/lang/String;
    const-string v1, "NG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 334
    const/4 v1, 0x0

    return v1

    .line 336
    :cond_f
    const/4 v1, 0x0

    .line 338
    .local v1, "ret":I
    :try_start_10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_14} :catch_16

    move v1, v2

    .line 341
    goto :goto_2f

    .line 339
    :catch_16
    move-exception v2

    .line 340
    .local v2, "e":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTspSupportFeature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_2f
    return v1
.end method

.method public getVersion()F
    .registers 2

    .line 154
    const v0, 0x3fa66666    # 1.3f

    return v0
.end method

.method public initTspRawData(II)I
    .registers 4
    .param p1, "devid"    # I
    .param p2, "mode"    # I

    .line 394
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->getService()Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    .line 395
    invoke-super {p0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->initTspRawData(II)I

    move-result v0

    return v0
.end method

.method protected declared-synchronized isSameService(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;)Z
    .registers 7
    .param p1, "halService"    # Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    monitor-enter p0

    .line 100
    :try_start_1
    invoke-super {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->isSameService(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_28

    .line 101
    .local v0, "superResult":Z
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 102
    monitor-exit p0

    return v1

    .line 105
    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_28

    if-nez v2, :cond_10

    .line 106
    monitor-exit p0

    return v1

    .line 108
    :cond_10
    :try_start_10
    monitor-enter v2
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_28

    .line 109
    :try_start_11
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    if-ne v3, p1, :cond_19

    .line 110
    const/4 v1, 0x1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_23

    monitor-exit p0

    return v1

    .line 112
    :cond_19
    :try_start_19
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    const-string v4, "isSameService: different"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_23

    monitor-exit p0

    return v1

    .line 114
    :catchall_23
    move-exception v1

    :goto_24
    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_26

    :try_start_25
    throw v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_28

    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;
    :catchall_26
    move-exception v1

    goto :goto_24

    .line 99
    .end local v0    # "superResult":Z
    .end local p1    # "halService":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerCallback(Landroid/os/HwBinder;)V
    .registers 6
    .param p1, "binder"    # Landroid/os/HwBinder;

    .line 242
    if-nez p1, :cond_a

    .line 243
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    const-string v1, "registerCallback: binder is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 247
    :cond_a
    :try_start_a
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->getService()Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    move-result-object v0

    .line 248
    .local v0, "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    if-nez v0, :cond_11

    .line 249
    return-void

    .line 251
    :cond_11
    monitor-enter v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_1e

    .line 252
    :try_start_12
    invoke-static {p1}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;->registerCallback(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputCallback;)I

    .line 253
    monitor-exit v0

    .line 257
    .end local v0    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    goto :goto_3a

    .line 253
    .restart local v0    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1b

    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;
    .end local p1    # "binder":Landroid/os/HwBinder;
    :try_start_1d
    throw v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1e} :catch_1e

    .line 254
    .end local v0    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;
    .restart local p1    # "binder":Landroid/os/HwBinder;
    :catch_1e
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerCallback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3a
    return-void
.end method

.method public sendRawdataTsp(ILjava/util/ArrayList;I)I
    .registers 9
    .param p1, "devid"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;I)I"
        }
    .end annotation

    .line 263
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->getService()Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    move-result-object v0

    .line 264
    .local v0, "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    if-nez v0, :cond_8

    .line 265
    const/4 v1, -0x3

    return v1

    .line 268
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    const-string v2, "sendRawdataTsp"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-interface {v0, p1, p2, p3}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;->sendRawdataTsp(ILjava/util/ArrayList;I)I

    move-result v1

    .line 270
    .local v1, "ret":I
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRawdataTsp: ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2d

    .line 275
    nop

    .end local v0    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    .end local v1    # "ret":I
    goto :goto_49

    .line 272
    :catch_2d
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendRawdataTsp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 277
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_49
    const/4 v0, 0x0

    return v0
.end method

.method public setKeyboardEnable(IZ)I
    .registers 8
    .param p1, "enable"    # I
    .param p2, "isBefore"    # Z

    .line 405
    const/4 v0, -0x7

    .line 407
    .local v0, "ret":I
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->getService()Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    move-result-object v1

    .line 408
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    if-nez v1, :cond_9

    .line 409
    const/4 v2, -0x3

    return v2

    .line 411
    :cond_9
    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_47

    .line 412
    :try_start_a
    invoke-interface {v1, p1, p2}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;->setKeyboardEnable(IZ)I

    move-result v2

    move v0, v2

    .line 413
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_44

    .line 414
    :try_start_10
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setKeyboardEnable,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_42} :catch_47

    .line 418
    nop

    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    goto :goto_63

    .line 413
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    :catchall_44
    move-exception v2

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;
    .end local p1    # "enable":I
    .end local p2    # "isBefore":Z
    :try_start_46
    throw v2
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_47} :catch_47

    .line 415
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;
    .restart local p1    # "enable":I
    .restart local p2    # "isBefore":Z
    :catch_47
    move-exception v1

    .line 416
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setKeyboardEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 420
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_63
    return v0
.end method

.method protected setProperty(IILjava/lang/String;)I
    .registers 10
    .param p1, "devid"    # I
    .param p2, "property"    # I
    .param p3, "mode"    # Ljava/lang/String;

    .line 192
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->convertDevidToInputDeviceType(I)I

    move-result v0

    .line 193
    .local v0, "type":I
    if-nez v0, :cond_8

    .line 194
    const/4 v1, -0x2

    return v1

    .line 196
    :cond_8
    const/4 v1, -0x7

    .line 198
    .local v1, "ret":I
    :try_start_9
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->getService()Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    move-result-object v2

    .line 199
    .local v2, "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    if-nez v2, :cond_11

    .line 200
    const/4 v3, -0x3

    return v3

    .line 202
    :cond_11
    monitor-enter v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_60

    .line 203
    :try_start_12
    invoke-interface {v2, v0, p2, p3}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;->setProperty(IILjava/lang/String;)I

    move-result v3

    move v1, v3

    .line 204
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setProperty("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lvendor/samsung/hardware/sysinput/V1_3/InputDeviceType;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Lvendor/samsung/hardware/sysinput/V1_3/InputDeviceProperty;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    monitor-exit v2

    .line 209
    .end local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    goto :goto_7c

    .line 205
    .restart local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    :catchall_5d
    move-exception v3

    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_12 .. :try_end_5f} :catchall_5d

    .end local v0    # "type":I
    .end local v1    # "ret":I
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;
    .end local p1    # "devid":I
    .end local p2    # "property":I
    .end local p3    # "mode":Ljava/lang/String;
    :try_start_5f
    throw v3
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_60} :catch_60

    .line 206
    .end local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    .restart local v0    # "type":I
    .restart local v1    # "ret":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;
    .restart local p1    # "devid":I
    .restart local p2    # "property":I
    .restart local p3    # "mode":Ljava/lang/String;
    :catch_60
    move-exception v2

    .line 207
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setProperty: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_7c
    return v1
.end method

.method public setProxPowerOff(ILjava/lang/String;)I
    .registers 4
    .param p1, "devid"    # I
    .param p2, "mode"    # Ljava/lang/String;

    .line 297
    const/16 v0, 0x9

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->setProperty(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected declared-synchronized setService(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;)V
    .registers 5
    .param p1, "halService"    # Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    monitor-enter p0

    .line 66
    if-nez p1, :cond_c

    .line 67
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    const-string v1, "setService: halService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_29

    .line 68
    monitor-exit p0

    return-void

    .line 70
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;
    :cond_c
    :try_start_c
    invoke-super {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->setService(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    if-nez v0, :cond_16

    .line 72
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    goto :goto_22

    .line 74
    :cond_16
    nop

    .line 75
    .local v0, "tempService":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    monitor-enter v0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_29

    .line 76
    :try_start_18
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    .line 77
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    const-string v2, "setService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_24

    .line 80
    .end local v0    # "tempService":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    :goto_22
    monitor-exit p0

    return-void

    .line 78
    .restart local v0    # "tempService":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;
    :catchall_24
    move-exception v1

    :goto_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_27

    :try_start_26
    throw v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_29

    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;
    :catchall_27
    move-exception v1

    goto :goto_25

    .line 65
    .end local v0    # "tempService":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    .end local p1    # "halService":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected setServiceNullAndRecovery()V
    .registers 2

    .line 92
    invoke-super {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->setServiceNullAndRecovery()V

    .line 93
    monitor-enter p0

    .line 94
    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    .line 95
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_e

    .line 96
    const/16 v0, 0xc8

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->registerCallbackForHalRecovery(I)V

    .line 97
    return-void

    .line 95
    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public setSpenAodEnable(Ljava/lang/String;)I
    .registers 4
    .param p1, "mode"    # Ljava/lang/String;

    .line 322
    const/16 v0, 0xb

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->setProperty(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSpenBleChargingMode(Ljava/lang/String;)I
    .registers 4
    .param p1, "mode"    # Ljava/lang/String;

    .line 292
    const/16 v0, 0xb

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->setProperty(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSpenSavingMode(Ljava/lang/String;)I
    .registers 4
    .param p1, "mode"    # Ljava/lang/String;

    .line 287
    const/16 v0, 0xb

    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->setProperty(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSpenScreenOffMemo(Ljava/lang/String;)I
    .registers 4
    .param p1, "mode"    # Ljava/lang/String;

    .line 282
    const/16 v0, 0xb

    const/16 v1, 0xe

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_3;->setProperty(IILjava/lang/String;)I

    move-result v0

    return v0
.end method
