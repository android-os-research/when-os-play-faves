.class public final Landroid/telephony/DisconnectCause;
.super Ljava/lang/Object;
.source "DisconnectCause.java"


# static fields
.field public static final whitelist ALREADY_DIALING:I = 0x48

.field public static final whitelist ANSWERED_ELSEWHERE:I = 0x34

.field public static final whitelist BUSY:I = 0x4

.field public static final whitelist CALLING_DISABLED:I = 0x4a

.field public static final whitelist CALL_BARRED:I = 0x14

.field public static final whitelist CALL_PULLED:I = 0x33

.field public static final whitelist CANT_CALL_WHILE_RINGING:I = 0x49

.field public static final whitelist CDMA_ACCESS_BLOCKED:I = 0x23

.field public static final whitelist CDMA_ACCESS_FAILURE:I = 0x20

.field public static final whitelist CDMA_ALREADY_ACTIVATED:I = 0x31

.field public static final greylist-max-o CDMA_CALL_LOST:I = 0x29

.field public static final whitelist CDMA_DROP:I = 0x1b

.field public static final whitelist CDMA_INTERCEPT:I = 0x1c

.field public static final whitelist CDMA_LOCKED_UNTIL_POWER_CYCLE:I = 0x1a

.field public static final whitelist CDMA_NOT_EMERGENCY:I = 0x22

.field public static final whitelist CDMA_PREEMPTED:I = 0x21

.field public static final whitelist CDMA_REORDER:I = 0x1d

.field public static final whitelist CDMA_RETRY_ORDER:I = 0x1f

.field public static final whitelist CDMA_SO_REJECT:I = 0x1e

.field public static final whitelist CONGESTION:I = 0x5

.field public static final blacklist CS_CALL_NOT_AVAILABLE:I = 0xf9

.field public static final whitelist CS_RESTRICTED:I = 0x16

.field public static final whitelist CS_RESTRICTED_EMERGENCY:I = 0x18

.field public static final whitelist CS_RESTRICTED_NORMAL:I = 0x17

.field public static final whitelist DATA_DISABLED:I = 0x36

.field public static final whitelist DATA_LIMIT_REACHED:I = 0x37

.field public static final whitelist DIALED_CALL_FORWARDING_WHILE_ROAMING:I = 0x39

.field public static final whitelist DIALED_MMI:I = 0x27

.field public static final whitelist DIAL_LOW_BATTERY:I = 0x3e

.field public static final whitelist DIAL_MODIFIED_TO_DIAL:I = 0x30

.field public static final whitelist DIAL_MODIFIED_TO_DIAL_VIDEO:I = 0x42

.field public static final whitelist DIAL_MODIFIED_TO_SS:I = 0x2f

.field public static final whitelist DIAL_MODIFIED_TO_USSD:I = 0x2e

.field public static final whitelist DIAL_VIDEO_MODIFIED_TO_DIAL:I = 0x45

.field public static final whitelist DIAL_VIDEO_MODIFIED_TO_DIAL_VIDEO:I = 0x46

.field public static final whitelist DIAL_VIDEO_MODIFIED_TO_SS:I = 0x43

.field public static final whitelist DIAL_VIDEO_MODIFIED_TO_USSD:I = 0x44

.field public static final whitelist EMERGENCY_CALL_OVER_WFC_NOT_AVAILABLE:I = 0x4e

.field public static final greylist-max-o EMERGENCY_ONLY:I = 0x25

.field public static final whitelist EMERGENCY_PERM_FAILURE:I = 0x40

.field public static final whitelist EMERGENCY_TEMP_FAILURE:I = 0x3f

.field public static final whitelist ERROR_UNSPECIFIED:I = 0x24

.field public static final greylist-max-o EXITED_ECM:I = 0x2a

.field public static final whitelist FDN_BLOCKED:I = 0x15

.field public static final whitelist ICC_ERROR:I = 0x13

.field public static final whitelist IMEI_NOT_ACCEPTED:I = 0x3a

.field public static final whitelist IMS_ACCESS_BLOCKED:I = 0x3c

.field public static final whitelist IMS_MERGED_SUCCESSFULLY:I = 0x2d

.field public static final whitelist IMS_SIP_ALTERNATE_EMERGENCY_CALL:I = 0x47

.field public static final whitelist INCOMING_AUTO_REJECTED:I = 0x51

.field public static final whitelist INCOMING_MISSED:I = 0x1

.field public static final whitelist INCOMING_REJECTED:I = 0x10

.field public static final whitelist INVALID_CREDENTIALS:I = 0xa

.field public static final whitelist INVALID_NUMBER:I = 0x7

.field public static final whitelist LIMIT_EXCEEDED:I = 0xf

.field public static final whitelist LOCAL:I = 0x3

.field public static final whitelist LOST_SIGNAL:I = 0xe

.field public static final whitelist LOW_BATTERY:I = 0x3d

.field public static final whitelist MAXIMUM_NUMBER_OF_CALLS_REACHED:I = 0x35

.field public static final whitelist MEDIA_TIMEOUT:I = 0x4d

.field public static final whitelist MMI:I = 0x6

.field public static final whitelist NORMAL:I = 0x2

.field public static final whitelist NORMAL_UNSPECIFIED:I = 0x41

.field public static final whitelist NOT_DISCONNECTED:I = 0x0

.field public static final blacklist NOT_POSSIBLE_TO_START_VIDEO_CALL:I = 0xc8

.field public static final whitelist NOT_VALID:I = -0x1

.field public static final whitelist NO_PHONE_NUMBER_SUPPLIED:I = 0x26

.field public static final whitelist NUMBER_UNREACHABLE:I = 0x8

.field public static final whitelist OTASP_PROVISIONING_IN_PROCESS:I = 0x4c

.field public static final whitelist OUTGOING_CANCELED:I = 0x2c

.field public static final whitelist OUTGOING_EMERGENCY_CALL_PLACED:I = 0x50

.field public static final whitelist OUTGOING_FAILURE:I = 0x2b

.field public static final whitelist OUT_OF_NETWORK:I = 0xb

.field public static final whitelist OUT_OF_SERVICE:I = 0x12

.field public static final whitelist POWER_OFF:I = 0x11

.field public static final whitelist SERVER_ERROR:I = 0xc

.field public static final whitelist SERVER_UNREACHABLE:I = 0x9

.field public static final whitelist TIMED_OUT:I = 0xd

.field public static final whitelist TOO_MANY_ONGOING_CALLS:I = 0x4b

.field public static final whitelist UNOBTAINABLE_NUMBER:I = 0x19

.field public static final whitelist VIDEO_CALL_NOT_ALLOWED_WHILE_TTY_ENABLED:I = 0x32

.field public static final whitelist VOICEMAIL_NUMBER_MISSING:I = 0x28

.field public static final whitelist WFC_SERVICE_NOT_AVAILABLE_IN_THIS_LOCATION:I = 0x4f

.field public static final whitelist WIFI_LOST:I = 0x3b


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    return-void
.end method

.method public static greylist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "cause"    # I

    .line 391
    sparse-switch p0, :sswitch_data_10e

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 558
    :sswitch_17
    const-string v0, "CS_CALL_NOT_AVAILABLE"

    return-object v0

    .line 554
    :sswitch_1a
    const-string v0, "NOT_POSSIBLE_TO_START_VIDEO_CALL"

    return-object v0

    .line 551
    :sswitch_1d
    const-string v0, "INCOMING_AUTO_REJECTED"

    return-object v0

    .line 549
    :sswitch_20
    const-string v0, "OUTGOING_EMERGENCY_CALL_PLACED"

    return-object v0

    .line 547
    :sswitch_23
    const-string v0, "WFC_SERVICE_NOT_AVAILABLE_IN_THIS_LOCATION"

    return-object v0

    .line 545
    :sswitch_26
    const-string v0, "EMERGENCY_CALL_OVER_WFC_NOT_AVAILABLE"

    return-object v0

    .line 543
    :sswitch_29
    const-string v0, "MEDIA_TIMEOUT"

    return-object v0

    .line 541
    :sswitch_2c
    const-string v0, "OTASP_PROVISIONING_IN_PROCESS"

    return-object v0

    .line 539
    :sswitch_2f
    const-string v0, "TOO_MANY_ONGOING_CALLS"

    return-object v0

    .line 537
    :sswitch_32
    const-string v0, "CALLING_DISABLED"

    return-object v0

    .line 535
    :sswitch_35
    const-string v0, "CANT_CALL_WHILE_RINGING"

    return-object v0

    .line 533
    :sswitch_38
    const-string v0, "ALREADY_DIALING"

    return-object v0

    .line 531
    :sswitch_3b
    const-string v0, "IMS_SIP_ALTERNATE_EMERGENCY_CALL"

    return-object v0

    .line 489
    :sswitch_3e
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_DIAL_VIDEO"

    return-object v0

    .line 487
    :sswitch_41
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_DIAL"

    return-object v0

    .line 485
    :sswitch_44
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_USSD"

    return-object v0

    .line 483
    :sswitch_47
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_SS"

    return-object v0

    .line 481
    :sswitch_4a
    const-string v0, "DIAL_MODIFIED_TO_DIAL_VIDEO"

    return-object v0

    .line 529
    :sswitch_4d
    const-string v0, "NORMAL_UNSPECIFIED"

    return-object v0

    .line 527
    :sswitch_50
    const-string v0, "EMERGENCY_PERM_FAILURE"

    return-object v0

    .line 525
    :sswitch_53
    const-string v0, "EMERGENCY_TEMP_FAILURE"

    return-object v0

    .line 523
    :sswitch_56
    const-string v0, "DIAL_LOW_BATTERY"

    return-object v0

    .line 521
    :sswitch_59
    const-string v0, "LOW_BATTERY"

    return-object v0

    .line 519
    :sswitch_5c
    const-string v0, "IMS_ACCESS_BLOCKED"

    return-object v0

    .line 517
    :sswitch_5f
    const-string v0, "WIFI_LOST"

    return-object v0

    .line 515
    :sswitch_62
    const-string v0, "IMEI_NOT_ACCEPTED"

    return-object v0

    .line 513
    :sswitch_65
    const-string v0, "DIALED_CALL_FORWARDING_WHILE_ROAMING"

    return-object v0

    .line 511
    :sswitch_68
    const-string v0, "DATA_LIMIT_REACHED"

    return-object v0

    .line 509
    :sswitch_6b
    const-string v0, "DATA_DISABLED"

    return-object v0

    .line 507
    :sswitch_6e
    const-string v0, "MAXIMUM_NUMER_OF_CALLS_REACHED"

    return-object v0

    .line 505
    :sswitch_71
    const-string v0, "ANSWERED_ELSEWHERE"

    return-object v0

    .line 503
    :sswitch_74
    const-string v0, "CALL_PULLED"

    return-object v0

    .line 501
    :sswitch_77
    const-string v0, "VIDEO_CALL_NOT_ALLOWED_WHILE_TTY_ENABLED"

    return-object v0

    .line 499
    :sswitch_7a
    const-string v0, "CDMA_ALREADY_ACTIVATED"

    return-object v0

    .line 479
    :sswitch_7d
    const-string v0, "DIAL_MODIFIED_TO_DIAL"

    return-object v0

    .line 477
    :sswitch_80
    const-string v0, "DIAL_MODIFIED_TO_SS"

    return-object v0

    .line 475
    :sswitch_83
    const-string v0, "DIAL_MODIFIED_TO_USSD"

    return-object v0

    .line 497
    :sswitch_86
    const-string v0, "IMS_MERGED_SUCCESSFULLY"

    return-object v0

    .line 495
    :sswitch_89
    const-string v0, "OUTGOING_CANCELED"

    return-object v0

    .line 493
    :sswitch_8c
    const-string v0, "OUTGOING_FAILURE"

    return-object v0

    .line 473
    :sswitch_8f
    const-string v0, "EXITED_ECM"

    return-object v0

    .line 471
    :sswitch_92
    const-string v0, "CDMA_CALL_LOST"

    return-object v0

    .line 469
    :sswitch_95
    const-string v0, "VOICEMAIL_NUMBER_MISSING"

    return-object v0

    .line 467
    :sswitch_98
    const-string v0, "DIALED_MMI"

    return-object v0

    .line 465
    :sswitch_9b
    const-string v0, "NO_PHONE_NUMBER_SUPPLIED"

    return-object v0

    .line 463
    :sswitch_9e
    const-string v0, "EMERGENCY_ONLY"

    return-object v0

    .line 491
    :sswitch_a1
    const-string v0, "ERROR_UNSPECIFIED"

    return-object v0

    .line 461
    :sswitch_a4
    const-string v0, "CDMA_ACCESS_BLOCKED"

    return-object v0

    .line 459
    :sswitch_a7
    const-string v0, "CDMA_NOT_EMERGENCY"

    return-object v0

    .line 457
    :sswitch_aa
    const-string v0, "CDMA_PREEMPTED"

    return-object v0

    .line 455
    :sswitch_ad
    const-string v0, "CDMA_ACCESS_FAILURE"

    return-object v0

    .line 453
    :sswitch_b0
    const-string v0, "CDMA_RETRY_ORDER"

    return-object v0

    .line 451
    :sswitch_b3
    const-string v0, "CDMA_SO_REJECT"

    return-object v0

    .line 449
    :sswitch_b6
    const-string v0, "CDMA_REORDER"

    return-object v0

    .line 447
    :sswitch_b9
    const-string v0, "CDMA_INTERCEPT"

    return-object v0

    .line 445
    :sswitch_bc
    const-string v0, "CDMA_DROP"

    return-object v0

    .line 443
    :sswitch_bf
    const-string v0, "CDMA_LOCKED_UNTIL_POWER_CYCLE"

    return-object v0

    .line 441
    :sswitch_c2
    const-string v0, "UNOBTAINABLE_NUMBER"

    return-object v0

    .line 439
    :sswitch_c5
    const-string v0, "CS_RESTRICTED_EMERGENCY"

    return-object v0

    .line 437
    :sswitch_c8
    const-string v0, "CS_RESTRICTED_NORMAL"

    return-object v0

    .line 435
    :sswitch_cb
    const-string v0, "CS_RESTRICTED"

    return-object v0

    .line 433
    :sswitch_ce
    const-string v0, "FDN_BLOCKED"

    return-object v0

    .line 431
    :sswitch_d1
    const-string v0, "CALL_BARRED"

    return-object v0

    .line 429
    :sswitch_d4
    const-string v0, "ICC_ERROR"

    return-object v0

    .line 427
    :sswitch_d7
    const-string v0, "OUT_OF_SERVICE"

    return-object v0

    .line 425
    :sswitch_da
    const-string v0, "POWER_OFF"

    return-object v0

    .line 423
    :sswitch_dd
    const-string v0, "INCOMING_REJECTED"

    return-object v0

    .line 421
    :sswitch_e0
    const-string v0, "LIMIT_EXCEEDED"

    return-object v0

    .line 419
    :sswitch_e3
    const-string v0, "LOST_SIGNAL"

    return-object v0

    .line 417
    :sswitch_e6
    const-string v0, "TIMED_OUT"

    return-object v0

    .line 415
    :sswitch_e9
    const-string v0, "SERVER_ERROR"

    return-object v0

    .line 413
    :sswitch_ec
    const-string v0, "OUT_OF_NETWORK"

    return-object v0

    .line 411
    :sswitch_ef
    const-string v0, "INVALID_CREDENTIALS"

    return-object v0

    .line 409
    :sswitch_f2
    const-string v0, "SERVER_UNREACHABLE"

    return-object v0

    .line 407
    :sswitch_f5
    const-string v0, "NUMBER_UNREACHABLE"

    return-object v0

    .line 405
    :sswitch_f8
    const-string v0, "INVALID_NUMBER"

    return-object v0

    .line 403
    :sswitch_fb
    const-string v0, "CONGESTION"

    return-object v0

    .line 401
    :sswitch_fe
    const-string v0, "BUSY"

    return-object v0

    .line 399
    :sswitch_101
    const-string v0, "LOCAL"

    return-object v0

    .line 397
    :sswitch_104
    const-string v0, "NORMAL"

    return-object v0

    .line 395
    :sswitch_107
    const-string v0, "INCOMING_MISSED"

    return-object v0

    .line 393
    :sswitch_10a
    const-string v0, "NOT_DISCONNECTED"

    return-object v0

    nop

    :sswitch_data_10e
    .sparse-switch
        0x0 -> :sswitch_10a
        0x1 -> :sswitch_107
        0x2 -> :sswitch_104
        0x3 -> :sswitch_101
        0x4 -> :sswitch_fe
        0x5 -> :sswitch_fb
        0x7 -> :sswitch_f8
        0x8 -> :sswitch_f5
        0x9 -> :sswitch_f2
        0xa -> :sswitch_ef
        0xb -> :sswitch_ec
        0xc -> :sswitch_e9
        0xd -> :sswitch_e6
        0xe -> :sswitch_e3
        0xf -> :sswitch_e0
        0x10 -> :sswitch_dd
        0x11 -> :sswitch_da
        0x12 -> :sswitch_d7
        0x13 -> :sswitch_d4
        0x14 -> :sswitch_d1
        0x15 -> :sswitch_ce
        0x16 -> :sswitch_cb
        0x17 -> :sswitch_c8
        0x18 -> :sswitch_c5
        0x19 -> :sswitch_c2
        0x1a -> :sswitch_bf
        0x1b -> :sswitch_bc
        0x1c -> :sswitch_b9
        0x1d -> :sswitch_b6
        0x1e -> :sswitch_b3
        0x1f -> :sswitch_b0
        0x20 -> :sswitch_ad
        0x21 -> :sswitch_aa
        0x22 -> :sswitch_a7
        0x23 -> :sswitch_a4
        0x24 -> :sswitch_a1
        0x25 -> :sswitch_9e
        0x26 -> :sswitch_9b
        0x27 -> :sswitch_98
        0x28 -> :sswitch_95
        0x29 -> :sswitch_92
        0x2a -> :sswitch_8f
        0x2b -> :sswitch_8c
        0x2c -> :sswitch_89
        0x2d -> :sswitch_86
        0x2e -> :sswitch_83
        0x2f -> :sswitch_80
        0x30 -> :sswitch_7d
        0x31 -> :sswitch_7a
        0x32 -> :sswitch_77
        0x33 -> :sswitch_74
        0x34 -> :sswitch_71
        0x35 -> :sswitch_6e
        0x36 -> :sswitch_6b
        0x37 -> :sswitch_68
        0x39 -> :sswitch_65
        0x3a -> :sswitch_62
        0x3b -> :sswitch_5f
        0x3c -> :sswitch_5c
        0x3d -> :sswitch_59
        0x3e -> :sswitch_56
        0x3f -> :sswitch_53
        0x40 -> :sswitch_50
        0x41 -> :sswitch_4d
        0x42 -> :sswitch_4a
        0x43 -> :sswitch_47
        0x44 -> :sswitch_44
        0x45 -> :sswitch_41
        0x46 -> :sswitch_3e
        0x47 -> :sswitch_3b
        0x48 -> :sswitch_38
        0x49 -> :sswitch_35
        0x4a -> :sswitch_32
        0x4b -> :sswitch_2f
        0x4c -> :sswitch_2c
        0x4d -> :sswitch_29
        0x4e -> :sswitch_26
        0x4f -> :sswitch_23
        0x50 -> :sswitch_20
        0x51 -> :sswitch_1d
        0xc8 -> :sswitch_1a
        0xf9 -> :sswitch_17
    .end sparse-switch
.end method
