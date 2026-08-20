.class public Landroid/sec/enterprise/BluetoothUtils;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"


# static fields
.field public static final blacklist NO_PROFILE:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothUtils"

.field static final blacklist TYPE_L2CAP:I = 0x3

.field static final blacklist TYPE_RFCOMM:I = 0x1

.field static final blacklist TYPE_SCO:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .registers 11
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "profile"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 424
    const-string v0, ""

    .line 425
    .local v0, "localName":Ljava/lang/String;
    const-string v1, ""

    .line 426
    .local v1, "localAddress":Ljava/lang/String;
    const-string v2, ""

    .line 427
    .local v2, "remoteName":Ljava/lang/String;
    const-string v3, ""

    .line 428
    .local v3, "remoteAddress":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 429
    .local v4, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v4, :cond_16

    .line 430
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 433
    :cond_16
    if-eqz p2, :cond_20

    .line 434
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 435
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 438
    :cond_20
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    .local v5, "logMsg":Ljava/lang/StringBuilder;
    const/4 v6, -0x1

    if-eq p1, v6, :cond_31

    .line 440
    invoke-static {p1}, Landroid/sec/enterprise/BluetoothUtils;->convertBluetoothProfile(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_31
    const/16 v6, 0xa

    if-eqz v3, :cond_46

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_46

    .line 443
    const-string v7, "Remote Address: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 447
    :cond_46
    if-eqz v3, :cond_59

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_59

    .line 448
    const-string v7, "Remote Name: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 452
    :cond_59
    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6c

    .line 453
    const-string v7, "Local Address: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    :cond_6c
    if-eqz v1, :cond_7f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7f

    .line 458
    const-string v7, "Local Name: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
    :cond_7f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public static blacklist bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 351
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v0

    .line 353
    .local v0, "service":Landroid/sec/enterprise/BluetoothPolicy;
    invoke-virtual {v0, p0, p1}, Landroid/sec/enterprise/BluetoothPolicy;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 356
    .end local v0    # "service":Landroid/sec/enterprise/BluetoothPolicy;
    goto :goto_14

    .line 354
    :catch_c
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothUtils"

    const-string v2, "Exception on blutoothLog"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    return-void
.end method

.method public static blacklist bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "remoteName"    # Ljava/lang/String;
    .param p2, "remoteAddress"    # Ljava/lang/String;

    .line 384
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 385
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .local v1, "logMsg":Ljava/lang/StringBuilder;
    const/16 v2, 0xa

    if-eqz v0, :cond_2b

    .line 387
    const-string v3, "Local Name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    const-string v3, "Local Address: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    :cond_2b
    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3e

    .line 395
    const-string v3, "Remote Name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    :cond_3e
    if-eqz p2, :cond_51

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_51

    .line 400
    const-string v3, "Remote Address: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 404
    :cond_51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public static blacklist bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 11
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "remoteName"    # Ljava/lang/String;
    .param p2, "remoteAddress"    # Ljava/lang/String;
    .param p3, "profile"    # Ljava/lang/String;
    .param p4, "filePath"    # Landroid/net/Uri;
    .param p5, "fileName"    # Ljava/lang/String;

    .line 467
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 468
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    .local v1, "logMsg":Ljava/lang/StringBuilder;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-lez v2, :cond_2a

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Profile: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 475
    :cond_2a
    if-eqz p4, :cond_4f

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4f

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URI: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    :cond_4f
    if-eqz p5, :cond_70

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_70

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filename: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 483
    :cond_70
    if-eqz v0, :cond_90

    .line 484
    const-string v2, "Local Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 487
    const-string v2, "Local Address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 491
    :cond_90
    if-eqz p1, :cond_a3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a3

    .line 492
    const-string v2, "Remote Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 496
    :cond_a3
    if-eqz p2, :cond_b6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b6

    .line 497
    const-string v2, "Remote Address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 501
    :cond_b6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method public static blacklist bluetoothSocketLog(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;II)V
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "aPortNum"    # I
    .param p3, "aPortType"    # I

    .line 360
    if-nez p1, :cond_3

    .line 361
    return-void

    .line 366
    :cond_3
    packed-switch p3, :pswitch_data_70

    goto :goto_6d

    .line 374
    :pswitch_7
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L2CAP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    .line 371
    :pswitch_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    goto :goto_6d

    .line 368
    :pswitch_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RFCOMM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_63} :catch_64

    .line 369
    goto :goto_6d

    .line 378
    :catch_64
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothUtils"

    const-string v2, "Exception on bluetoothLogSocket"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 380
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6d
    nop

    .line 381
    :goto_6e
    return-void

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_45
        :pswitch_26
        :pswitch_7
    .end packed-switch
.end method

.method private static blacklist convertBluetoothProfile(I)Ljava/lang/String;
    .registers 2
    .param p0, "profile"    # I

    .line 505
    packed-switch p0, :pswitch_data_1c

    .line 521
    :pswitch_3
    const-string v0, ""

    return-object v0

    .line 515
    :pswitch_6
    const-string v0, "Profile: MAP\n"

    return-object v0

    .line 519
    :pswitch_9
    const-string v0, "Profile: PBAP\n"

    return-object v0

    .line 517
    :pswitch_c
    const-string v0, "Profile: PAN\n"

    return-object v0

    .line 513
    :pswitch_f
    const-string v0, "Profile: INPUT DEVICE\n"

    return-object v0

    .line 511
    :pswitch_12
    const-string v0, "Profile: HEALTH\n"

    return-object v0

    .line 507
    :pswitch_15
    const-string v0, "Profile: A2DP\n"

    return-object v0

    .line 509
    :pswitch_18
    const-string v0, "Profile: Headset and Handsfree\n"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private static blacklist getBluetoothProfileEnabled(Landroid/os/ParcelUuid;)Z
    .registers 3
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .line 149
    const/4 v0, -0x1

    .line 150
    .local v0, "profile":I
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 151
    const/16 v0, 0x100

    goto :goto_44

    .line 164
    :cond_c
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->A2DP_SOURCE:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->ADV_AUDIO_DIST:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_42

    .line 166
    :cond_1d
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    .line 167
    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_40

    .line 169
    :cond_2e
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HFP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HFP_AG:Landroid/os/ParcelUuid;

    .line 170
    invoke-virtual {p0, v1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 171
    :cond_3e
    const/4 v0, 0x2

    goto :goto_44

    .line 168
    :cond_40
    :goto_40
    const/4 v0, 0x1

    goto :goto_44

    .line 165
    :cond_42
    :goto_42
    const/16 v0, 0x8

    .line 173
    :cond_44
    :goto_44
    const/4 v1, -0x1

    if-eq v0, v1, :cond_54

    .line 174
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v1

    .line 175
    invoke-virtual {v1, v0}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v1

    .line 174
    return v1

    .line 178
    :cond_54
    const/4 v1, 0x1

    return v1
.end method

.method public static blacklist isBluetoothLogEnabled()Z
    .registers 3

    .line 412
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v0

    .line 413
    .local v0, "service":Landroid/sec/enterprise/BluetoothPolicy;
    invoke-virtual {v0}, Landroid/sec/enterprise/BluetoothPolicy;->isBluetoothLogEnabled()Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v1

    .line 414
    .end local v0    # "service":Landroid/sec/enterprise/BluetoothPolicy;
    :catch_d
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothUtils"

    const-string v2, "Exception on isBluetoothLogEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist isHeadsetAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 216
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 217
    return v0

    .line 220
    :cond_4
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v1

    .line 222
    .local v1, "service":Landroid/sec/enterprise/BluetoothPolicy;
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "BluetoothUtils"

    if-nez v2, :cond_1d

    .line 223
    const-string v0, "MDM - SPP Profile is disabled"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return v3

    .line 230
    :cond_1d
    invoke-virtual {v1, v0}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v2

    if-nez v2, :cond_29

    .line 231
    const-string v0, "MDM: HSP profile  is disabled"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return v3

    .line 237
    :cond_29
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v2

    if-nez v2, :cond_36

    .line 238
    const-string v0, "MDM: HFP profile is disabled"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return v3

    .line 242
    :cond_36
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/sec/enterprise/BluetoothPolicy;->isBluetoothDeviceAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 243
    const-string v0, "MDM: Remote Device Blocked"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return v3

    .line 249
    :cond_46
    return v0
.end method

.method public static blacklist isPairingAllowedbySecurityPolicy(Ljava/lang/String;)Z
    .registers 5
    .param p0, "address"    # Ljava/lang/String;

    .line 254
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v0

    .line 256
    .local v0, "service":Landroid/sec/enterprise/BluetoothPolicy;
    invoke-virtual {v0}, Landroid/sec/enterprise/BluetoothPolicy;->isPairingEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "BluetoothUtils"

    if-nez v1, :cond_17

    .line 257
    const-string v1, "MDM: Pairing Blocked"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return v2

    .line 261
    :cond_17
    invoke-virtual {v0, p0}, Landroid/sec/enterprise/BluetoothPolicy;->isBluetoothDeviceAllowed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 262
    const-string v1, "MDM: Remote Device Blocked"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return v2

    .line 266
    :cond_23
    const/4 v1, 0x1

    return v1
.end method

.method public static blacklist isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z
    .registers 2
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .line 273
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/sec/enterprise/BluetoothUtils;->isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;I)Z
    .registers 15
    .param p0, "uuid"    # Landroid/os/ParcelUuid;
    .param p1, "portType"    # I

    .line 278
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v0

    .line 282
    .local v0, "service":Landroid/sec/enterprise/BluetoothPolicy;
    const/4 v1, 0x0

    const-string v2, "BluetoothUtils"

    const/4 v3, 0x2

    if-ne v3, p1, :cond_1a

    invoke-virtual {v0}, Landroid/sec/enterprise/BluetoothPolicy;->isOutgoingCallsAllowed()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 283
    const-string v3, "MDM: Outgoing Call is Disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return v1

    .line 286
    :cond_1a
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->A2DP_SOURCE:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x80

    if-nez v3, :cond_2c

    sget-object v3, Landroid/bluetooth/BluetoothUuid;->ADV_AUDIO_DIST:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    :cond_2c
    const/16 v3, 0x8

    .line 287
    invoke-virtual {v0, v3}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_12e

    .line 288
    invoke-virtual {v0, v4}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3c

    goto/16 :goto_12e

    .line 292
    :cond_3c
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->AVRCP_TARGET:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    sget-object v3, Landroid/bluetooth/BluetoothUuid;->AVRCP_CONTROLLER:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    :cond_4c
    const/16 v3, 0x10

    .line 293
    invoke-virtual {v0, v3}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_128

    .line 294
    invoke-virtual {v0, v4}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v3

    if-nez v3, :cond_5c

    goto/16 :goto_128

    .line 299
    :cond_5c
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->OBEX_OBJECT_PUSH:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_9a

    .line 300
    invoke-virtual {v0, v5}, Landroid/sec/enterprise/BluetoothPolicy;->getAllowBluetoothDataTransfer(Z)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 301
    invoke-virtual {v0, v4}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v3

    if-nez v3, :cond_9a

    .line 302
    :cond_71
    const-string v3, "MDM: OPP profile is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 305
    .local v2, "token":J
    const/4 v4, 0x5

    const/4 v5, 0x5

    const/4 v6, 0x0

    .line 306
    :try_start_7d
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "BluetoothUtils"

    const-string v9, "Exchanging data via bluetooth failed - restricted."

    .line 309
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 305
    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_90
    .catchall {:try_start_7d .. :try_end_90} :catchall_95

    .line 311
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 312
    nop

    .line 313
    return v1

    .line 311
    :catchall_95
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 312
    throw v1

    .line 316
    .end local v2    # "token":J
    :cond_9a
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 317
    invoke-virtual {v0, v4}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v3

    if-nez v3, :cond_ae

    .line 318
    const-string v3, "MDM: MAP profile is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return v1

    .line 322
    :cond_ae
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    invoke-virtual {v3, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ca

    const/16 v3, 0x100

    .line 323
    invoke-virtual {v0, v3}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 324
    invoke-virtual {v0, v4}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v3

    if-nez v3, :cond_ca

    .line 325
    :cond_c4
    const-string v3, "MDM: SAP profile is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return v1

    .line 328
    :cond_ca
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/sec/enterprise/BluetoothPolicy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_107

    .line 329
    invoke-static {p0}, Landroid/sec/enterprise/BluetoothUtils;->getBluetoothProfileEnabled(Landroid/os/ParcelUuid;)Z

    move-result v3

    if-nez v3, :cond_db

    goto :goto_107

    .line 334
    :cond_db
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->OBEX_OBJECT_PUSH:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_106

    .line 335
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 337
    .local v1, "token":J
    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v8, 0x1

    .line 338
    :try_start_ea
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "BluetoothUtils"

    const-string v11, "Exchanging data via bluetooth succeeded."

    .line 341
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 337
    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_fd
    .catchall {:try_start_ea .. :try_end_fd} :catchall_101

    .line 343
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 344
    goto :goto_106

    .line 343
    :catchall_101
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 344
    throw v3

    .line 346
    .end local v1    # "token":J
    :cond_106
    :goto_106
    return v5

    .line 330
    :cond_107
    :goto_107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MDM: profile UUID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return v1

    .line 295
    :cond_128
    :goto_128
    const-string v3, "MDM: AVRCP profile is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return v1

    .line 289
    :cond_12e
    :goto_12e
    const-string v3, "MDM: SPP or A2DP profile is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return v1
.end method

.method public static blacklist isSocketAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelUuid;)Z
    .registers 18
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "aPortNum"    # I
    .param p2, "aPortType"    # I
    .param p3, "uuid"    # Landroid/os/ParcelUuid;

    .line 85
    move/from16 v1, p2

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v2

    .line 87
    .local v2, "service":Landroid/sec/enterprise/BluetoothPolicy;
    const/4 v0, 0x0

    const-string v3, "BluetoothUtils"

    const/4 v4, 0x1

    if-ne v4, v1, :cond_48

    .line 88
    invoke-virtual {v2, v4}, Landroid/sec/enterprise/BluetoothPolicy;->getAllowBluetoothDataTransfer(Z)Z

    move-result v5

    if-eqz v5, :cond_1e

    const/16 v5, 0x80

    .line 89
    invoke-virtual {v2, v5}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v5

    if-nez v5, :cond_48

    .line 90
    :cond_1e
    const-string/jumbo v4, "isSocketAllowedBySecurityPolicy : device requesting for spp, block it"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 93
    .local v3, "token":J
    const/4 v5, 0x5

    const/4 v6, 0x5

    const/4 v7, 0x0

    .line 94
    :try_start_2b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "BluetoothUtils"

    const-string v10, "Exchanging data via bluetooth failed - restricted."

    .line 96
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 93
    invoke-static/range {v5 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3e
    .catchall {:try_start_2b .. :try_end_3e} :catchall_43

    .line 98
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    nop

    .line 100
    return v0

    .line 98
    :catchall_43
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    throw v0

    .line 108
    .end local v3    # "token":J
    :cond_48
    if-eqz p3, :cond_7b

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/sec/enterprise/BluetoothPolicy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 109
    invoke-static/range {p3 .. p3}, Landroid/sec/enterprise/BluetoothUtils;->getBluetoothProfileEnabled(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-nez v5, :cond_7b

    .line 110
    :cond_5a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MDM: profile UUID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is disabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return v0

    .line 114
    :cond_7b
    if-eqz p0, :cond_b4

    if-gez p1, :cond_80

    goto :goto_b4

    .line 119
    :cond_80
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v3

    .line 121
    .local v3, "ids":[Landroid/os/ParcelUuid;
    if-nez v3, :cond_87

    .line 122
    return v4

    .line 123
    :cond_87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_88
    array-length v5, v3

    if-ge v0, v5, :cond_8e

    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    .line 133
    .end local v0    # "i":I
    :cond_8e
    if-ne v4, v1, :cond_b3

    .line 134
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 136
    .local v5, "token":J
    const/4 v7, 0x5

    const/4 v8, 0x5

    const/4 v9, 0x1

    .line 137
    :try_start_97
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    const-string v11, "BluetoothUtils"

    const-string v12, "Exchanging data via bluetooth succeeded."

    .line 140
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 136
    invoke-static/range {v7 .. v13}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_aa
    .catchall {:try_start_97 .. :try_end_aa} :catchall_ae

    .line 142
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 143
    goto :goto_b3

    .line 142
    :catchall_ae
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 143
    throw v0

    .line 145
    .end local v5    # "token":J
    :cond_b3
    :goto_b3
    return v4

    .line 115
    .end local v3    # "ids":[Landroid/os/ParcelUuid;
    :cond_b4
    :goto_b4
    const-string/jumbo v0, "isSocketAllowedBySecurityPolicy start : device null"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return v4
.end method

.method public static blacklist isSvcRfComPortNumberBlockedBySecurityPolicy(I)Z
    .registers 11
    .param p0, "aPortNum"    # I

    .line 182
    const-string v0, "BluetoothUtils"

    const/4 v1, 0x0

    .line 185
    .local v1, "ret":Z
    :try_start_3
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v2

    .line 187
    .local v2, "service":Landroid/sec/enterprise/BluetoothPolicy;
    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1a

    .line 188
    const-string v3, "MDM - SPP Profile is disabled"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return v4

    .line 192
    :cond_1a
    const/4 v3, 0x2

    new-array v3, v3, [[Ljava/lang/String;

    const-string v5, "12"

    const-string v6, "00001105-0000-1000-8000-00805f9b34fb"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v5, "19"

    const-string v6, "00001130-0000-1000-8000-00805f9b34fb"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    .line 199
    .local v3, "RESERVED_RFCOMM_CHANNELS":[[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_33
    array-length v7, v3

    if-ge v5, v7, :cond_6a

    .line 200
    aget-object v7, v3, v5

    aget-object v7, v7, v4

    .line 201
    .local v7, "port":Ljava/lang/String;
    aget-object v8, v3, v5

    aget-object v8, v8, v6

    .line 202
    .local v8, "uuid":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, p0, :cond_67

    .line 203
    invoke-virtual {v2, v8}, Landroid/sec/enterprise/BluetoothPolicy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_67

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MDM: Profile UUID = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " Blocked"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_66} :catch_6b

    .line 205
    return v6

    .line 199
    .end local v7    # "port":Ljava/lang/String;
    .end local v8    # "uuid":Ljava/lang/String;
    :cond_67
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 210
    .end local v2    # "service":Landroid/sec/enterprise/BluetoothPolicy;
    .end local v3    # "RESERVED_RFCOMM_CHANNELS":[[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_6a
    goto :goto_73

    .line 208
    :catch_6b
    move-exception v2

    .line 209
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_73
    return v1
.end method
