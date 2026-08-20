.class public Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
.super Ljava/lang/Object;
.source "SysinputHAL_V1_2.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$HALDeathReceiver;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    .line 18
    const-string v0, "SysinputHAL_V1_2"

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 22
    return-void

    .line 20
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(V1_2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private declared-synchronized getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .registers 7

    monitor-enter p0

    .line 29
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_9f

    if-nez v0, :cond_9b

    .line 31
    const/4 v0, 0x0

    :try_start_6
    invoke-static {}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    .line 32
    if-nez v1, :cond_17

    .line 33
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v2, "getService: halService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_7d
    .catchall {:try_start_6 .. :try_end_15} :catchall_9f

    .line 34
    monitor-exit p0

    return-object v0

    .line 36
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_35} :catch_7d
    .catchall {:try_start_17 .. :try_end_35} :catchall_9f

    .line 41
    nop

    .line 43
    :try_start_36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 44
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$HALDeathReceiver;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$HALDeathReceiver;-><init>(Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$HALDeathReceiver-IA;)V
    :try_end_4b
    .catchall {:try_start_36 .. :try_end_4b} :catchall_9f

    .line 46
    .local v1, "deathReceiver":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$HALDeathReceiver;
    :try_start_4b
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    if-eqz v2, :cond_5b

    .line 47
    const-wide/16 v3, 0x29

    invoke-interface {v2, v1, v3, v4}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 48
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v3, "getService: register linkToDeath"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5b} :catch_5c
    .catchall {:try_start_4b .. :try_end_5b} :catchall_9f

    .line 55
    :cond_5b
    goto :goto_9b

    .line 50
    :catch_5c
    move-exception v2

    .line 51
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5d
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->setServiceNullAndRecovery()V

    .line 52
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

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

    .line 53
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_5d .. :try_end_7b} :catchall_9f

    .line 54
    monitor-exit p0

    return-object v0

    .line 37
    .end local v1    # "deathReceiver":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$HALDeathReceiver;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_7d
    move-exception v1

    .line 38
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7e
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

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

    .line 39
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_99
    .catchall {:try_start_7e .. :try_end_99} :catchall_9f

    .line 40
    monitor-exit p0

    return-object v0

    .line 58
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9b
    :goto_9b
    :try_start_9b
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :try_end_9d
    .catchall {:try_start_9b .. :try_end_9d} :catchall_9f

    monitor-exit p0

    return-object v0

    .line 28
    :catchall_9f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic lambda$getTspRawdata$12(Ljava/util/ArrayList;ILjava/util/ArrayList;)V
    .registers 4
    .param p0, "rlist"    # Ljava/util/ArrayList;
    .param p1, "ret"    # I
    .param p2, "list"    # Ljava/util/ArrayList;

    .line 699
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 700
    int-to-short v0, p1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    return-void
.end method


# virtual methods
.method public closeTaas()I
    .registers 2

    .line 723
    const/4 v0, 0x0

    return v0
.end method

.method protected convertDevidToInputDeviceType(I)I
    .registers 3
    .param p1, "devid"    # I

    .line 121
    sparse-switch p1, :sswitch_data_e

    .line 131
    const/4 v0, 0x0

    return v0

    .line 129
    :sswitch_5
    const/4 v0, 0x4

    return v0

    .line 127
    :sswitch_7
    const/4 v0, 0x3

    return v0

    .line 125
    :sswitch_9
    const/4 v0, 0x2

    return v0

    .line 123
    :sswitch_b
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_e
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_9
        0xb -> :sswitch_7
        0x15 -> :sswitch_5
    .end sparse-switch
.end method

.method protected convertInputDeviceTypeToDevid(Ljava/lang/Integer;)I
    .registers 3
    .param p1, "type"    # Ljava/lang/Integer;

    .line 106
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 116
    const/4 v0, 0x0

    return v0

    .line 114
    :pswitch_9
    const/16 v0, 0x15

    return v0

    .line 112
    :pswitch_c
    const/16 v0, 0xb

    return v0

    .line 110
    :pswitch_f
    const/4 v0, 0x2

    return v0

    .line 108
    :pswitch_11
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public getDeviceList()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 137
    const/4 v0, 0x0

    const-string v1, "getDeviceList"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->runTspCmd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v3, "NG"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 140
    return-object v2

    .line 143
    :cond_15
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "devices":[Ljava/lang/String;
    array-length v4, v3

    :goto_1c
    if-ge v0, v4, :cond_76

    aget-object v5, v3, v0

    .line 145
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_73

    .line 147
    :try_start_26
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->convertInputDeviceTypeToDevid(Ljava/lang/Integer;)I

    move-result v6

    .line 148
    .local v6, "devid":I
    iget-object v7, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDeviceList: support ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    if-eqz v6, :cond_59

    .line 150
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_59} :catch_5a

    .line 154
    .end local v6    # "devid":I
    :cond_59
    goto :goto_73

    .line 152
    :catch_5a
    move-exception v6

    .line 153
    .local v6, "e":Ljava/lang/NumberFormatException;
    iget-object v7, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDeviceList: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_73
    :goto_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 157
    :cond_76
    return-object v2
.end method

.method public getKeyCodePressed(I)Ljava/lang/String;
    .registers 8
    .param p1, "keycode"    # I

    .line 162
    const-string v0, ""

    .line 163
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v2

    .line 166
    .local v2, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v2, :cond_e

    .line 167
    return-object v0

    .line 169
    :cond_e
    monitor-enter v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_40

    .line 170
    :try_start_f
    new-instance v3, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, p1, v1}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;ILjava/util/ArrayList;)V

    invoke-interface {v2, p1, v3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->getKeyCodePressed(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getKeyCodePressedCallback;)V

    .line 175
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_3d

    .line 180
    .end local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    nop

    .line 182
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_20

    .line 183
    return-object v0

    .line 186
    :cond_20
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 187
    return-object v0

    .line 190
    :cond_2e
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 175
    .restart local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_3d
    move-exception v3

    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .end local p1    # "keycode":I
    :try_start_3f
    throw v3
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_40} :catch_40

    .line 176
    .end local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "result":Ljava/lang/String;
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .restart local p1    # "keycode":I
    :catch_40
    move-exception v2

    .line 177
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getKeyCodePressed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    return-object v0
.end method

.method public getSpenCommandList()Ljava/lang/String;
    .registers 6

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_5
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 606
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_e

    .line 607
    const-string v2, "NG"

    return-object v2

    .line 609
    :cond_e
    monitor-enter v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_53

    .line 610
    :try_start_f
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->getSpenCommandList(Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenCommandListCallback;)V

    .line 614
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_50

    .line 619
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    nop

    .line 621
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_22

    .line 622
    const-string v1, "NG"

    return-object v1

    .line 625
    :cond_22
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 626
    const-string v1, "NG"

    return-object v1

    .line 629
    :cond_32
    const-string v2, "NG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 630
    const-string v1, "NG"

    return-object v1

    .line 633
    :cond_41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, ","

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 614
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_50
    move-exception v2

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    :try_start_52
    throw v2
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_53} :catch_53

    .line 615
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    :catch_53
    move-exception v1

    .line 616
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSpenCommandList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 618
    const-string v2, "NG"

    return-object v2
.end method

.method public getSpenPosition()Ljava/lang/String;
    .registers 6

    .line 567
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_5
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 570
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_e

    .line 571
    const-string v2, "NG"

    return-object v2

    .line 573
    :cond_e
    monitor-enter v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_53

    .line 574
    :try_start_f
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda12;-><init>(Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->getSpenPosition(Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenPositionCallback;)V

    .line 579
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_50

    .line 584
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    nop

    .line 586
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_22

    .line 587
    const-string v1, "NG"

    return-object v1

    .line 590
    :cond_22
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 591
    const-string v1, "NG"

    return-object v1

    .line 594
    :cond_32
    const-string v2, "NG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 595
    const-string v1, "NG"

    return-object v1

    .line 598
    :cond_41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 579
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_50
    move-exception v2

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    :try_start_52
    throw v2
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_53} :catch_53

    .line 580
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    :catch_53
    move-exception v1

    .line 581
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSpenPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 583
    const-string v2, "NG"

    return-object v2
.end method

.method public getSpenSupportFeature()I
    .registers 2

    .line 638
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->convertDevidToInputDeviceType(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->getTspSupportFeature(I)I

    move-result v0

    return v0
.end method

.method public getTspAodActiveArea(I)Ljava/lang/String;
    .registers 7
    .param p1, "devid"    # I

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_5
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 377
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_e

    .line 378
    const-string v2, "NG"

    return-object v2

    .line 380
    :cond_e
    monitor-enter v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_53

    .line 381
    :try_start_f
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;ILjava/util/ArrayList;)V

    invoke-interface {v1, p1, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->getTspAodActiveArea(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspAodActiveAreaCallback;)V

    .line 386
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_50

    .line 391
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    nop

    .line 393
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_22

    .line 394
    const-string v1, "NG"

    return-object v1

    .line 397
    :cond_22
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 398
    const-string v1, "NG"

    return-object v1

    .line 401
    :cond_32
    const-string v2, "NG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 402
    const-string v1, "NG"

    return-object v1

    .line 405
    :cond_41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 386
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_50
    move-exception v2

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .end local p1    # "devid":I
    :try_start_52
    throw v2
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_53} :catch_53

    .line 387
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .restart local p1    # "devid":I
    :catch_53
    move-exception v1

    .line 388
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTspAodActiveArea: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 390
    const-string v2, "NG"

    return-object v2
.end method

.method public getTspCommandList(I)Ljava/lang/String;
    .registers 7
    .param p1, "devid"    # I

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_5
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 342
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_e

    .line 343
    const-string v2, "NG"

    return-object v2

    .line 345
    :cond_e
    monitor-enter v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_53

    .line 346
    :try_start_f
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;ILjava/util/ArrayList;)V

    invoke-interface {v1, p1, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->getTspCommandList(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspCommandListCallback;)V

    .line 350
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_50

    .line 355
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    nop

    .line 357
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_22

    .line 358
    const-string v1, "NG"

    return-object v1

    .line 361
    :cond_22
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 362
    const-string v1, "NG"

    return-object v1

    .line 365
    :cond_32
    const-string v2, "NG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 366
    const-string v1, "NG"

    return-object v1

    .line 369
    :cond_41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, ","

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 350
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_50
    move-exception v2

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .end local p1    # "devid":I
    :try_start_52
    throw v2
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_53} :catch_53

    .line 351
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .restart local p1    # "devid":I
    :catch_53
    move-exception v1

    .line 352
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTspCommandList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 354
    const-string v2, "NG"

    return-object v2
.end method

.method public getTspFodInformation(I)Ljava/lang/String;
    .registers 7
    .param p1, "devid"    # I

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_5
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 413
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_e

    .line 414
    const-string v2, "NG"

    return-object v2

    .line 416
    :cond_e
    monitor-enter v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_53

    .line 417
    :try_start_f
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;ILjava/util/ArrayList;)V

    invoke-interface {v1, p1, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->getTspFodInformation(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspFodInformationCallback;)V

    .line 422
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_50

    .line 427
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    nop

    .line 429
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_22

    .line 430
    const-string v1, "NG"

    return-object v1

    .line 433
    :cond_22
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 434
    const-string v1, "NG"

    return-object v1

    .line 437
    :cond_32
    const-string v2, "NG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 438
    const-string v1, "NG"

    return-object v1

    .line 441
    :cond_41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 422
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_50
    move-exception v2

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .end local p1    # "devid":I
    :try_start_52
    throw v2
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_53} :catch_53

    .line 423
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .restart local p1    # "devid":I
    :catch_53
    move-exception v1

    .line 424
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTspFodInformation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 426
    const-string v2, "NG"

    return-object v2
.end method

.method public getTspFodPosition(I)Ljava/lang/String;
    .registers 7
    .param p1, "devid"    # I

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_5
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 449
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_e

    .line 450
    const-string v2, "NG"

    return-object v2

    .line 452
    :cond_e
    monitor-enter v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_53

    .line 453
    :try_start_f
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;ILjava/util/ArrayList;)V

    invoke-interface {v1, p1, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->getTspFodPosition(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspFodPositionCallback;)V

    .line 458
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_50

    .line 463
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    nop

    .line 465
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_22

    .line 466
    const-string v1, "NG"

    return-object v1

    .line 469
    :cond_22
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 470
    const-string v1, "NG"

    return-object v1

    .line 473
    :cond_32
    const-string v2, "NG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 474
    const-string v1, "NG"

    return-object v1

    .line 477
    :cond_41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 458
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_50
    move-exception v2

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .end local p1    # "devid":I
    :try_start_52
    throw v2
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_53} :catch_53

    .line 459
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .restart local p1    # "devid":I
    :catch_53
    move-exception v1

    .line 460
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTspFodPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 462
    const-string v2, "NG"

    return-object v2
.end method

.method public getTspRawdata(I)Ljava/util/ArrayList;
    .registers 7
    .param p1, "devid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 693
    .local v0, "rlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    :try_start_5
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 694
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_c

    .line 695
    return-object v0

    .line 697
    :cond_c
    monitor-enter v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_1a

    .line 698
    :try_start_d
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda6;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v1, p1, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->getTspRawdata(ILvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$getTspRawdataCallback;)V

    .line 702
    monitor-exit v1

    .line 706
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    goto :goto_36

    .line 702
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_17
    move-exception v2

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_17

    .end local v0    # "rlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .end local p1    # "devid":I
    :try_start_19
    throw v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1a} :catch_1a

    .line 703
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "rlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .restart local p1    # "devid":I
    :catch_1a
    move-exception v1

    .line 704
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTspRawdata: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 708
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_36
    return-object v0
.end method

.method public getTspScrubPosition(I)Ljava/lang/String;
    .registers 7
    .param p1, "devid"    # I

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_5
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 267
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_e

    .line 268
    const-string v2, "NG"

    return-object v2

    .line 270
    :cond_e
    monitor-enter v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_44

    .line 271
    :try_start_f
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;ILjava/util/ArrayList;)V

    invoke-interface {v1, p1, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->getTspScrubPosition(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspScrubPositionCallback;)V

    .line 276
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_41

    .line 281
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    nop

    .line 283
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_22

    .line 284
    const-string v1, "NG"

    return-object v1

    .line 287
    :cond_22
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 288
    const-string v1, "NG"

    return-object v1

    .line 291
    :cond_32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 276
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_41
    move-exception v2

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .end local p1    # "devid":I
    :try_start_43
    throw v2
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_44} :catch_44

    .line 277
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .restart local p1    # "devid":I
    :catch_44
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTspScrubPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    const-string v2, "NG"

    return-object v2
.end method

.method public getTspSupportFeature(I)I
    .registers 8
    .param p1, "devid"    # I

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    :try_start_6
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v2

    .line 299
    .local v2, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v2, :cond_d

    .line 300
    return v1

    .line 302
    :cond_d
    monitor-enter v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_6d

    .line 303
    :try_start_e
    new-instance v3, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;ILjava/util/ArrayList;)V

    invoke-interface {v2, p1, v3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->getTspSupportFeature(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspSupportFeatureCallback;)V

    .line 308
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_6a

    .line 313
    .end local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    nop

    .line 315
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1f

    .line 316
    return v1

    .line 319
    :cond_1f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 320
    return v1

    .line 323
    :cond_2c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "NG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 324
    return v1

    .line 327
    :cond_3b
    const/4 v2, 0x0

    .line 329
    .local v2, "value":I
    :try_start_3c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_4e} :catch_50

    move v2, v1

    .line 332
    goto :goto_69

    .line 330
    :catch_50
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTspSupportFeature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_69
    return v2

    .line 308
    .local v2, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_6a
    move-exception v3

    :try_start_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .end local p1    # "devid":I
    :try_start_6c
    throw v3
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6d} :catch_6d

    .line 309
    .end local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .restart local p1    # "devid":I
    :catch_6d
    move-exception v2

    .line 310
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

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

    .line 311
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 312
    return v1
.end method

.method public getVersion()F
    .registers 2

    .line 102
    const v0, 0x3f99999a    # 1.2f

    return v0
.end method

.method public initTspRawData(II)I
    .registers 9
    .param p1, "devid"    # I
    .param p2, "mode"    # I

    .line 663
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .local v0, "maxlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    const/4 v1, -0x7

    .line 666
    .local v1, "result":I
    :try_start_6
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v2

    .line 667
    .local v2, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v2, :cond_e

    .line 668
    const/4 v3, -0x3

    return v3

    .line 670
    :cond_e
    monitor-enter v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_1c

    .line 671
    :try_start_f
    new-instance v3, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, v0, p2}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;Ljava/util/ArrayList;I)V

    invoke-interface {v2, p1, p2, v3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->initTspRawData(IILvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$initTspRawDataCallback;)V

    .line 675
    monitor-exit v2

    .line 679
    .end local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    goto :goto_38

    .line 675
    .restart local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_19
    move-exception v3

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_19

    .end local v0    # "maxlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    .end local v1    # "result":I
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .end local p1    # "devid":I
    .end local p2    # "mode":I
    :try_start_1b
    throw v3
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1c} :catch_1c

    .line 676
    .end local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "maxlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    .restart local v1    # "result":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .restart local p1    # "devid":I
    .restart local p2    # "mode":I
    :catch_1c
    move-exception v2

    .line 677
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initTspRawData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 681
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3f

    .line 682
    return v1

    .line 684
    :cond_3f
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->intValue()I

    move-result v1

    .line 686
    return v1
.end method

.method protected declared-synchronized isSameService(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;)Z
    .registers 6
    .param p1, "halService"    # Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    monitor-enter p0

    .line 88
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_20

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 89
    monitor-exit p0

    return v1

    .line 91
    :cond_8
    :try_start_8
    monitor-enter v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_20

    .line 92
    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    if-ne v2, p1, :cond_11

    .line 93
    const/4 v1, 0x1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_1b

    monitor-exit p0

    return v1

    .line 95
    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v3, "isSameService: different"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return v1

    .line 97
    :catchall_1b
    move-exception v1

    :goto_1c
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1e

    :try_start_1d
    throw v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_20

    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    :catchall_1e
    move-exception v1

    goto :goto_1c

    .line 87
    .end local p1    # "halService":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method synthetic lambda$getKeyCodePressed$0$com-samsung-android-hardware-secinputdev-SysinputHAL_V1_2(ILjava/util/ArrayList;ILjava/lang/String;)V
    .registers 8
    .param p1, "keycode"    # I
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "ret"    # I
    .param p4, "buff"    # Ljava/lang/String;

    .line 171
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 172
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyCodePressed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method synthetic lambda$getSpenCommandList$10$com-samsung-android-hardware-secinputdev-SysinputHAL_V1_2(Ljava/util/ArrayList;ILjava/lang/String;)V
    .registers 7
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "ret"    # I
    .param p3, "buff"    # Ljava/lang/String;

    .line 611
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSpenCommandList: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    return-void
.end method

.method synthetic lambda$getSpenPosition$9$com-samsung-android-hardware-secinputdev-SysinputHAL_V1_2(Ljava/util/ArrayList;ILjava/lang/String;)V
    .registers 7
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "ret"    # I
    .param p3, "buff"    # Ljava/lang/String;

    .line 575
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 576
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSpenPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    return-void
.end method

.method synthetic lambda$getTspAodActiveArea$5$com-samsung-android-hardware-secinputdev-SysinputHAL_V1_2(ILjava/util/ArrayList;ILjava/lang/String;)V
    .registers 8
    .param p1, "devid"    # I
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "ret"    # I
    .param p4, "buff"    # Ljava/lang/String;

    .line 382
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 383
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTspAodActiveArea("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    return-void
.end method

.method synthetic lambda$getTspCommandList$4$com-samsung-android-hardware-secinputdev-SysinputHAL_V1_2(ILjava/util/ArrayList;ILjava/lang/String;)V
    .registers 8
    .param p1, "devid"    # I
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "ret"    # I
    .param p4, "buff"    # Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTspCommandList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    return-void
.end method

.method synthetic lambda$getTspFodInformation$6$com-samsung-android-hardware-secinputdev-SysinputHAL_V1_2(ILjava/util/ArrayList;ILjava/lang/String;)V
    .registers 8
    .param p1, "devid"    # I
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "ret"    # I
    .param p4, "buff"    # Ljava/lang/String;

    .line 418
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 419
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTspFodInformation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    return-void
.end method

.method synthetic lambda$getTspFodPosition$7$com-samsung-android-hardware-secinputdev-SysinputHAL_V1_2(ILjava/util/ArrayList;ILjava/lang/String;)V
    .registers 8
    .param p1, "devid"    # I
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "ret"    # I
    .param p4, "buff"    # Ljava/lang/String;

    .line 454
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 455
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTspFodPosition("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    return-void
.end method

.method synthetic lambda$getTspScrubPosition$2$com-samsung-android-hardware-secinputdev-SysinputHAL_V1_2(ILjava/util/ArrayList;ILjava/lang/String;)V
    .registers 8
    .param p1, "devid"    # I
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "ret"    # I
    .param p4, "buff"    # Ljava/lang/String;

    .line 272
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 273
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTspScrubPosition("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method synthetic lambda$getTspSupportFeature$3$com-samsung-android-hardware-secinputdev-SysinputHAL_V1_2(ILjava/util/ArrayList;ILjava/lang/String;)V
    .registers 8
    .param p1, "devid"    # I
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "ret"    # I
    .param p4, "buff"    # Ljava/lang/String;

    .line 304
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 305
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTspSupportFeature("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    return-void
.end method

.method synthetic lambda$initTspRawData$11$com-samsung-android-hardware-secinputdev-SysinputHAL_V1_2(Ljava/util/ArrayList;IILjava/util/ArrayList;)V
    .registers 8
    .param p1, "maxlist"    # Ljava/util/ArrayList;
    .param p2, "mode"    # I
    .param p3, "ret"    # I
    .param p4, "list"    # Ljava/util/ArrayList;

    .line 672
    int-to-short v0, p3

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initTspRawData,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    return-void
.end method

.method synthetic lambda$readTaas$13$com-samsung-android-hardware-secinputdev-SysinputHAL_V1_2(Ljava/util/ArrayList;ILjava/lang/String;)V
    .registers 7
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "ret"    # I
    .param p3, "buff"    # Ljava/lang/String;

    .line 736
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readTaas: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    return-void
.end method

.method synthetic lambda$runSpenCmd$8$com-samsung-android-hardware-secinputdev-SysinputHAL_V1_2(Ljava/util/ArrayList;ILjava/lang/String;)V
    .registers 7
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "ret"    # I
    .param p3, "buff"    # Ljava/lang/String;

    .line 510
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 511
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runSpenCmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    return-void
.end method

.method synthetic lambda$runTspCmd$1$com-samsung-android-hardware-secinputdev-SysinputHAL_V1_2(ILjava/util/ArrayList;ILjava/lang/String;)V
    .registers 8
    .param p1, "devid"    # I
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "ret"    # I
    .param p4, "buff"    # Ljava/lang/String;

    .line 203
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 204
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runTspCmd("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public openTaas()I
    .registers 2

    .line 718
    const/4 v0, 0x0

    return v0
.end method

.method public pollTspIrq(I)I
    .registers 3
    .param p1, "devid"    # I

    .line 713
    const/4 v0, 0x0

    return v0
.end method

.method public readTaas()Ljava/lang/String;
    .registers 6

    .line 728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 730
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_5
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 731
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_e

    .line 732
    const-string v2, "NG"

    return-object v2

    .line 734
    :cond_e
    monitor-enter v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_1c

    .line 735
    :try_start_f
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->readTaas(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$readTaasCallback;)V

    .line 739
    monitor-exit v1

    .line 743
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    goto :goto_38

    .line 739
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_19

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    :try_start_1b
    throw v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1c} :catch_1c

    .line 740
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    :catch_1c
    move-exception v1

    .line 741
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readTaas: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 745
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_41

    .line 746
    const-string v1, "NG"

    return-object v1

    .line 749
    :cond_41
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 750
    const-string v1, "NG"

    return-object v1

    .line 753
    :cond_51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public runSpenCmd(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "cmdname"    # Ljava/lang/String;

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_5
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 505
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_e

    .line 506
    const-string v2, "NG"

    return-object v2

    .line 508
    :cond_e
    monitor-enter v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_84

    .line 509
    :try_start_f
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;Ljava/util/ArrayList;)V

    invoke-interface {v1, p1, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->runSpenCmd(Ljava/lang/String;Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runSpenCmdCallback;)V

    .line 514
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_81

    .line 519
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    nop

    .line 521
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_22

    .line 522
    const-string v1, "NG"

    return-object v1

    .line 525
    :cond_22
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 526
    const-string v1, "NG"

    return-object v1

    .line 529
    :cond_32
    const-string v2, "NG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 530
    const-string v1, "NG"

    return-object v1

    .line 533
    :cond_41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, "str":Ljava/lang/String;
    :try_start_4f
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 536
    .local v3, "array":[Ljava/lang/String;
    aget-object v1, v3, v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    array-length v1, v3

    const/4 v4, 0x1

    if-le v1, v4, :cond_64

    .line 537
    aget-object v1, v3, v4
    :try_end_63
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_4f .. :try_end_63} :catch_65

    return-object v1

    .line 541
    .end local v3    # "array":[Ljava/lang/String;
    :cond_64
    goto :goto_7e

    .line 539
    :catch_65
    move-exception v1

    .line 540
    .local v1, "e":Ljava/util/regex/PatternSyntaxException;
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runSpenCmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    .end local v1    # "e":Ljava/util/regex/PatternSyntaxException;
    :goto_7e
    const-string v1, "NG"

    return-object v1

    .line 514
    .end local v2    # "str":Ljava/lang/String;
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_81
    move-exception v2

    :try_start_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .end local p1    # "cmdname":Ljava/lang/String;
    :try_start_83
    throw v2
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_84} :catch_84

    .line 515
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .restart local p1    # "cmdname":Ljava/lang/String;
    :catch_84
    move-exception v1

    .line 516
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runSpenCmd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 518
    const-string v2, "NG"

    return-object v2
.end method

.method public runSpenCmdNoRead(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmdname"    # Ljava/lang/String;

    .line 547
    const/4 v0, -0x7

    .line 549
    .local v0, "ret":I
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 550
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_9

    .line 551
    const/4 v2, -0x3

    return v2

    .line 553
    :cond_9
    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_3d

    .line 554
    :try_start_a
    invoke-interface {v1, p1}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->runSpenCmdNoRead(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .line 555
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_3a

    .line 556
    :try_start_10
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runSpenCmdNoRead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_38} :catch_3d

    .line 560
    nop

    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    goto :goto_59

    .line 555
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .end local p1    # "cmdname":Ljava/lang/String;
    :try_start_3c
    throw v2
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3d} :catch_3d

    .line 557
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .restart local p1    # "cmdname":Ljava/lang/String;
    :catch_3d
    move-exception v1

    .line 558
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runSpenCmdNoRead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 562
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_59
    return v0
.end method

.method public runTspCmd(ILjava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "devid"    # I
    .param p2, "cmdname"    # Ljava/lang/String;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_5
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 198
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_e

    .line 199
    const-string v2, "NG"

    return-object v2

    .line 201
    :cond_e
    monitor-enter v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_9a

    .line 202
    :try_start_f
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;ILjava/util/ArrayList;)V

    invoke-interface {v1, p1, p2, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->runTspCmd(ILjava/lang/String;Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runTspCmdCallback;)V

    .line 207
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_97

    .line 212
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    nop

    .line 214
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_22

    .line 215
    const-string v1, "NG"

    return-object v1

    .line 218
    :cond_22
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 219
    const-string v1, "NG"

    return-object v1

    .line 222
    :cond_32
    const-string v2, "NG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 223
    const-string v1, "NG"

    return-object v1

    .line 226
    :cond_41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "str":Ljava/lang/String;
    :try_start_4f
    const-string v3, "factory_cmd_result_all"

    .line 229
    .local v3, "factory_cmd_result_all":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 230
    return-object v2

    .line 232
    :cond_58
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, "array":[Ljava/lang/String;
    aget-object v5, v4, v1

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_76

    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_76

    .line 234
    aget-object v1, v4, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v6

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_75
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_4f .. :try_end_75} :catch_77

    return-object v1

    .line 238
    .end local v3    # "factory_cmd_result_all":Ljava/lang/String;
    .end local v4    # "array":[Ljava/lang/String;
    :cond_76
    goto :goto_94

    .line 236
    :catch_77
    move-exception v1

    .line 237
    .local v1, "e":Ljava/util/regex/PatternSyntaxException;
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runTspCmd: PatternSyntaxException e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/regex/PatternSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v1    # "e":Ljava/util/regex/PatternSyntaxException;
    :goto_94
    const-string v1, "NG"

    return-object v1

    .line 207
    .end local v2    # "str":Ljava/lang/String;
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_97
    move-exception v2

    :try_start_98
    monitor-exit v1
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .end local p1    # "devid":I
    .end local p2    # "cmdname":Ljava/lang/String;
    :try_start_99
    throw v2
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9a} :catch_9a

    .line 208
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .restart local p1    # "devid":I
    .restart local p2    # "cmdname":Ljava/lang/String;
    :catch_9a
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runTspCmd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    const-string v2, "NG"

    return-object v2
.end method

.method public runTspCmdNoRead(ILjava/lang/String;)I
    .registers 8
    .param p1, "devid"    # I
    .param p2, "cmdname"    # Ljava/lang/String;

    .line 244
    const/4 v0, -0x7

    .line 246
    .local v0, "ret":I
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 247
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_9

    .line 248
    const/4 v2, -0x3

    return v2

    .line 250
    :cond_9
    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_47

    .line 251
    :try_start_a
    invoke-interface {v1, p1, p2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->runTspCmdNoRead(ILjava/lang/String;)I

    move-result v2

    move v0, v2

    .line 252
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_44

    .line 253
    :try_start_10
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runTspCmdNoRead("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 257
    nop

    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    goto :goto_63

    .line 252
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_44
    move-exception v2

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .end local p1    # "devid":I
    .end local p2    # "cmdname":Ljava/lang/String;
    :try_start_46
    throw v2
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_47} :catch_47

    .line 254
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .restart local p1    # "devid":I
    .restart local p2    # "cmdname":Ljava/lang/String;
    :catch_47
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runTspCmdNoRead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 259
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_63
    return v0
.end method

.method protected declared-synchronized setService(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;)V
    .registers 5
    .param p1, "halService"    # Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    monitor-enter p0

    .line 76
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    if-nez v0, :cond_8

    .line 77
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    goto :goto_14

    .line 79
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    :cond_8
    nop

    .line 80
    .local v0, "tempService":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    monitor-enter v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1b

    .line 81
    :try_start_a
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    .line 82
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v2, "setService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_16

    .line 85
    .end local v0    # "tempService":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :goto_14
    monitor-exit p0

    return-void

    .line 83
    .restart local v0    # "tempService":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    :catchall_16
    move-exception v1

    :goto_17
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_19

    :try_start_18
    throw v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_1b

    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    :catchall_19
    move-exception v1

    goto :goto_17

    .line 75
    .end local v0    # "tempService":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .end local p1    # "halService":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected setServiceNullAndRecovery()V
    .registers 2

    .line 70
    monitor-enter p0

    .line 71
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    .line 72
    monitor-exit p0

    .line 73
    return-void

    .line 72
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public setSpenEnable(IZ)I
    .registers 8
    .param p1, "enable"    # I
    .param p2, "isBefore"    # Z

    .line 643
    const/4 v0, -0x7

    .line 645
    .local v0, "ret":I
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 646
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_9

    .line 647
    const/4 v2, -0x3

    return v2

    .line 649
    :cond_9
    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_47

    .line 650
    :try_start_a
    invoke-interface {v1, p1, p2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->setSpenEnable(IZ)I

    move-result v2

    move v0, v2

    .line 651
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_44

    .line 652
    :try_start_10
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSpenEnable,"

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

    .line 656
    nop

    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    goto :goto_63

    .line 651
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_44
    move-exception v2

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .end local p1    # "enable":I
    .end local p2    # "isBefore":Z
    :try_start_46
    throw v2
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_47} :catch_47

    .line 653
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .restart local p1    # "enable":I
    .restart local p2    # "isBefore":Z
    :catch_47
    move-exception v1

    .line 654
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSpenEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 658
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_63
    return v0
.end method

.method public setTspEnable(IIZ)I
    .registers 9
    .param p1, "devid"    # I
    .param p2, "enable"    # I
    .param p3, "isBefore"    # Z

    .line 482
    const/4 v0, -0x7

    .line 484
    .local v0, "ret":I
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 485
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_9

    .line 486
    const/4 v2, -0x3

    return v2

    .line 488
    :cond_9
    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_51

    .line 489
    :try_start_a
    invoke-interface {v1, p1, p2, p3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->setTspEnable(IIZ)I

    move-result v2

    move v0, v2

    .line 490
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_4e

    .line 491
    :try_start_10
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTspEnable("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "),"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_4c} :catch_51

    .line 495
    nop

    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    goto :goto_6d

    .line 490
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_4e
    move-exception v2

    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .end local p1    # "devid":I
    .end local p2    # "enable":I
    .end local p3    # "isBefore":Z
    :try_start_50
    throw v2
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_51} :catch_51

    .line 492
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .restart local p1    # "devid":I
    .restart local p2    # "enable":I
    .restart local p3    # "isBefore":Z
    :catch_51
    move-exception v1

    .line 493
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTspEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 497
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6d
    return v0
.end method

.method public writeTaas(Ljava/lang/String;)I
    .registers 7
    .param p1, "wstr"    # Ljava/lang/String;

    .line 758
    const/4 v0, -0x7

    .line 760
    .local v0, "ret":I
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 761
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_9

    .line 762
    const/4 v2, -0x3

    return v2

    .line 764
    :cond_9
    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_33

    .line 765
    :try_start_a
    invoke-interface {v1, p1}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->writeTaas(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .line 766
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_30

    .line 767
    :try_start_10
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeTaas: ("

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
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2e} :catch_33

    .line 771
    nop

    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    goto :goto_4f

    .line 766
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_30
    move-exception v2

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .end local p1    # "wstr":Ljava/lang/String;
    :try_start_32
    throw v2
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_33} :catch_33

    .line 768
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
    .restart local p1    # "wstr":Ljava/lang/String;
    :catch_33
    move-exception v1

    .line 769
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeTaas: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 773
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4f
    return v0
.end method
