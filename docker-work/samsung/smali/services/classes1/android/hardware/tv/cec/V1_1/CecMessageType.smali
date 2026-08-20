.class public final Landroid/hardware/tv/cec/V1_1/CecMessageType;
.super Ljava/lang/Object;
.source "CecMessageType.java"


# static fields
.field public static final ABORT:I = 0xff

.field public static final ACTIVE_SOURCE:I = 0x82

.field public static final CEC_VERSION:I = 0x9e

.field public static final CLEAR_ANALOG_TIMER:I = 0x33

.field public static final CLEAR_DIGITAL_TIMER:I = 0x99

.field public static final CLEAR_EXTERNAL_TIMER:I = 0xa1

.field public static final DECK_CONTROL:I = 0x42

.field public static final DECK_STATUS:I = 0x1b

.field public static final DEVICE_VENDOR_ID:I = 0x87

.field public static final FEATURE_ABORT:I = 0x0

.field public static final GET_CEC_VERSION:I = 0x9f

.field public static final GET_MENU_LANGUAGE:I = 0x91

.field public static final GIVE_AUDIO_STATUS:I = 0x71

.field public static final GIVE_DECK_STATUS:I = 0x1a

.field public static final GIVE_DEVICE_POWER_STATUS:I = 0x8f

.field public static final GIVE_DEVICE_VENDOR_ID:I = 0x8c

.field public static final GIVE_FEATURES:I = 0xa5

.field public static final GIVE_OSD_NAME:I = 0x46

.field public static final GIVE_PHYSICAL_ADDRESS:I = 0x83

.field public static final GIVE_SYSTEM_AUDIO_MODE_STATUS:I = 0x7d

.field public static final GIVE_TUNER_DEVICE_STATUS:I = 0x8

.field public static final IMAGE_VIEW_ON:I = 0x4

.field public static final INACTIVE_SOURCE:I = 0x9d

.field public static final INITIATE_ARC:I = 0xc0

.field public static final MENU_REQUEST:I = 0x8d

.field public static final MENU_STATUS:I = 0x8e

.field public static final PLAY:I = 0x41

.field public static final RECORD_OFF:I = 0xb

.field public static final RECORD_ON:I = 0x9

.field public static final RECORD_STATUS:I = 0xa

.field public static final RECORD_TV_SCREEN:I = 0xf

.field public static final REPORT_ARC_INITIATED:I = 0xc1

.field public static final REPORT_ARC_TERMINATED:I = 0xc2

.field public static final REPORT_AUDIO_STATUS:I = 0x7a

.field public static final REPORT_CURRENT_LATENCY:I = 0xa8

.field public static final REPORT_FEATURES:I = 0xa6

.field public static final REPORT_PHYSICAL_ADDRESS:I = 0x84

.field public static final REPORT_POWER_STATUS:I = 0x90

.field public static final REPORT_SHORT_AUDIO_DESCRIPTOR:I = 0xa3

.field public static final REQUEST_ACTIVE_SOURCE:I = 0x85

.field public static final REQUEST_ARC_INITIATION:I = 0xc3

.field public static final REQUEST_ARC_TERMINATION:I = 0xc4

.field public static final REQUEST_CURRENT_LATENCY:I = 0xa7

.field public static final REQUEST_SHORT_AUDIO_DESCRIPTOR:I = 0xa4

.field public static final ROUTING_CHANGE:I = 0x80

.field public static final ROUTING_INFORMATION:I = 0x81

.field public static final SELECT_ANALOG_SERVICE:I = 0x92

.field public static final SELECT_DIGITAL_SERVICE:I = 0x93

.field public static final SET_ANALOG_TIMER:I = 0x34

.field public static final SET_AUDIO_RATE:I = 0x9a

.field public static final SET_DIGITAL_TIMER:I = 0x97

.field public static final SET_EXTERNAL_TIMER:I = 0xa2

.field public static final SET_MENU_LANGUAGE:I = 0x32

.field public static final SET_OSD_NAME:I = 0x47

.field public static final SET_OSD_STRING:I = 0x64

.field public static final SET_STREAM_PATH:I = 0x86

.field public static final SET_SYSTEM_AUDIO_MODE:I = 0x72

.field public static final SET_TIMER_PROGRAM_TITLE:I = 0x67

.field public static final STANDBY:I = 0x36

.field public static final SYSTEM_AUDIO_MODE_REQUEST:I = 0x70

.field public static final SYSTEM_AUDIO_MODE_STATUS:I = 0x7e

.field public static final TERMINATE_ARC:I = 0xc5

.field public static final TEXT_VIEW_ON:I = 0xd

.field public static final TIMER_CLEARED_STATUS:I = 0x43

.field public static final TIMER_STATUS:I = 0x35

.field public static final TUNER_DEVICE_STATUS:I = 0x7

.field public static final TUNER_STEP_DECREMENT:I = 0x6

.field public static final TUNER_STEP_INCREMENT:I = 0x5

.field public static final USER_CONTROL_PRESSED:I = 0x44

.field public static final USER_CONTROL_RELEASED:I = 0x45

.field public static final VENDOR_COMMAND:I = 0x89

.field public static final VENDOR_COMMAND_WITH_ID:I = 0xa0

.field public static final VENDOR_REMOTE_BUTTON_DOWN:I = 0x8a

.field public static final VENDOR_REMOTE_BUTTON_UP:I = 0x8b


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "FEATURE_ABORT"

    .line 308
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_15

    const-string v1, "IMAGE_VIEW_ON"

    .line 310
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_22

    const-string v1, "TUNER_STEP_INCREMENT"

    .line 314
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x5

    :cond_22
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_2e

    const-string v1, "TUNER_STEP_DECREMENT"

    .line 318
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x6

    :cond_2e
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_3a

    const-string v1, "TUNER_DEVICE_STATUS"

    .line 322
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x7

    :cond_3a
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_47

    const-string v1, "GIVE_TUNER_DEVICE_STATUS"

    .line 326
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_47
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_54

    const-string v1, "RECORD_ON"

    .line 330
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x9

    :cond_54
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_61

    const-string v1, "RECORD_STATUS"

    .line 334
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xa

    :cond_61
    and-int/lit8 v1, p0, 0xb

    const/16 v3, 0xb

    if-ne v1, v3, :cond_6e

    const-string v1, "RECORD_OFF"

    .line 338
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xb

    :cond_6e
    and-int/lit8 v1, p0, 0xd

    const/16 v3, 0xd

    if-ne v1, v3, :cond_7b

    const-string v1, "TEXT_VIEW_ON"

    .line 342
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xd

    :cond_7b
    and-int/lit8 v1, p0, 0xf

    const/16 v3, 0xf

    if-ne v1, v3, :cond_88

    const-string v1, "RECORD_TV_SCREEN"

    .line 346
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xf

    :cond_88
    and-int/lit8 v1, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v1, v3, :cond_95

    const-string v1, "GIVE_DECK_STATUS"

    .line 350
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1a

    :cond_95
    and-int/lit8 v1, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v1, v3, :cond_a2

    const-string v1, "DECK_STATUS"

    .line 354
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1b

    :cond_a2
    and-int/lit8 v1, p0, 0x32

    const/16 v3, 0x32

    if-ne v1, v3, :cond_af

    const-string v1, "SET_MENU_LANGUAGE"

    .line 358
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x32

    :cond_af
    and-int/lit8 v1, p0, 0x33

    const/16 v3, 0x33

    if-ne v1, v3, :cond_bc

    const-string v1, "CLEAR_ANALOG_TIMER"

    .line 362
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x33

    :cond_bc
    and-int/lit8 v1, p0, 0x34

    const/16 v3, 0x34

    if-ne v1, v3, :cond_c9

    const-string v1, "SET_ANALOG_TIMER"

    .line 366
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x34

    :cond_c9
    and-int/lit8 v1, p0, 0x35

    const/16 v3, 0x35

    if-ne v1, v3, :cond_d6

    const-string v1, "TIMER_STATUS"

    .line 370
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x35

    :cond_d6
    and-int/lit8 v1, p0, 0x36

    const/16 v3, 0x36

    if-ne v1, v3, :cond_e3

    const-string v1, "STANDBY"

    .line 374
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x36

    :cond_e3
    and-int/lit8 v1, p0, 0x41

    const/16 v3, 0x41

    if-ne v1, v3, :cond_f0

    const-string v1, "PLAY"

    .line 378
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x41

    :cond_f0
    and-int/lit8 v1, p0, 0x42

    const/16 v3, 0x42

    if-ne v1, v3, :cond_fd

    const-string v1, "DECK_CONTROL"

    .line 382
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x42

    :cond_fd
    and-int/lit8 v1, p0, 0x43

    const/16 v3, 0x43

    if-ne v1, v3, :cond_10a

    const-string v1, "TIMER_CLEARED_STATUS"

    .line 386
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x43

    :cond_10a
    and-int/lit8 v1, p0, 0x44

    const/16 v3, 0x44

    if-ne v1, v3, :cond_117

    const-string v1, "USER_CONTROL_PRESSED"

    .line 390
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x44

    :cond_117
    and-int/lit8 v1, p0, 0x45

    const/16 v3, 0x45

    if-ne v1, v3, :cond_124

    const-string v1, "USER_CONTROL_RELEASED"

    .line 394
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x45

    :cond_124
    and-int/lit8 v1, p0, 0x46

    const/16 v3, 0x46

    if-ne v1, v3, :cond_131

    const-string v1, "GIVE_OSD_NAME"

    .line 398
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x46

    :cond_131
    and-int/lit8 v1, p0, 0x47

    const/16 v3, 0x47

    if-ne v1, v3, :cond_13e

    const-string v1, "SET_OSD_NAME"

    .line 402
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x47

    :cond_13e
    and-int/lit8 v1, p0, 0x64

    const/16 v3, 0x64

    if-ne v1, v3, :cond_14b

    const-string v1, "SET_OSD_STRING"

    .line 406
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x64

    :cond_14b
    and-int/lit8 v1, p0, 0x67

    const/16 v3, 0x67

    if-ne v1, v3, :cond_158

    const-string v1, "SET_TIMER_PROGRAM_TITLE"

    .line 410
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x67

    :cond_158
    and-int/lit8 v1, p0, 0x70

    const/16 v3, 0x70

    if-ne v1, v3, :cond_165

    const-string v1, "SYSTEM_AUDIO_MODE_REQUEST"

    .line 414
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x70

    :cond_165
    and-int/lit8 v1, p0, 0x71

    const/16 v3, 0x71

    if-ne v1, v3, :cond_172

    const-string v1, "GIVE_AUDIO_STATUS"

    .line 418
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x71

    :cond_172
    and-int/lit8 v1, p0, 0x72

    const/16 v3, 0x72

    if-ne v1, v3, :cond_17f

    const-string v1, "SET_SYSTEM_AUDIO_MODE"

    .line 422
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x72

    :cond_17f
    and-int/lit8 v1, p0, 0x7a

    const/16 v3, 0x7a

    if-ne v1, v3, :cond_18c

    const-string v1, "REPORT_AUDIO_STATUS"

    .line 426
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x7a

    :cond_18c
    and-int/lit8 v1, p0, 0x7d

    const/16 v3, 0x7d

    if-ne v1, v3, :cond_199

    const-string v1, "GIVE_SYSTEM_AUDIO_MODE_STATUS"

    .line 430
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x7d

    :cond_199
    and-int/lit8 v1, p0, 0x7e

    const/16 v3, 0x7e

    if-ne v1, v3, :cond_1a6

    const-string v1, "SYSTEM_AUDIO_MODE_STATUS"

    .line 434
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x7e

    :cond_1a6
    and-int/lit16 v1, p0, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_1b3

    const-string v1, "ROUTING_CHANGE"

    .line 438
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x80

    :cond_1b3
    and-int/lit16 v1, p0, 0x81

    const/16 v3, 0x81

    if-ne v1, v3, :cond_1c0

    const-string v1, "ROUTING_INFORMATION"

    .line 442
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x81

    :cond_1c0
    and-int/lit16 v1, p0, 0x82

    const/16 v3, 0x82

    if-ne v1, v3, :cond_1cd

    const-string v1, "ACTIVE_SOURCE"

    .line 446
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x82

    :cond_1cd
    and-int/lit16 v1, p0, 0x83

    const/16 v3, 0x83

    if-ne v1, v3, :cond_1da

    const-string v1, "GIVE_PHYSICAL_ADDRESS"

    .line 450
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x83

    :cond_1da
    and-int/lit16 v1, p0, 0x84

    const/16 v3, 0x84

    if-ne v1, v3, :cond_1e7

    const-string v1, "REPORT_PHYSICAL_ADDRESS"

    .line 454
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x84

    :cond_1e7
    and-int/lit16 v1, p0, 0x85

    const/16 v3, 0x85

    if-ne v1, v3, :cond_1f4

    const-string v1, "REQUEST_ACTIVE_SOURCE"

    .line 458
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x85

    :cond_1f4
    and-int/lit16 v1, p0, 0x86

    const/16 v3, 0x86

    if-ne v1, v3, :cond_201

    const-string v1, "SET_STREAM_PATH"

    .line 462
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x86

    :cond_201
    and-int/lit16 v1, p0, 0x87

    const/16 v3, 0x87

    if-ne v1, v3, :cond_20e

    const-string v1, "DEVICE_VENDOR_ID"

    .line 466
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x87

    :cond_20e
    and-int/lit16 v1, p0, 0x89

    const/16 v3, 0x89

    if-ne v1, v3, :cond_21b

    const-string v1, "VENDOR_COMMAND"

    .line 470
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x89

    :cond_21b
    and-int/lit16 v1, p0, 0x8a

    const/16 v3, 0x8a

    if-ne v1, v3, :cond_228

    const-string v1, "VENDOR_REMOTE_BUTTON_DOWN"

    .line 474
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x8a

    :cond_228
    and-int/lit16 v1, p0, 0x8b

    const/16 v3, 0x8b

    if-ne v1, v3, :cond_235

    const-string v1, "VENDOR_REMOTE_BUTTON_UP"

    .line 478
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x8b

    :cond_235
    and-int/lit16 v1, p0, 0x8c

    const/16 v3, 0x8c

    if-ne v1, v3, :cond_242

    const-string v1, "GIVE_DEVICE_VENDOR_ID"

    .line 482
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x8c

    :cond_242
    and-int/lit16 v1, p0, 0x8d

    const/16 v3, 0x8d

    if-ne v1, v3, :cond_24f

    const-string v1, "MENU_REQUEST"

    .line 486
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x8d

    :cond_24f
    and-int/lit16 v1, p0, 0x8e

    const/16 v3, 0x8e

    if-ne v1, v3, :cond_25c

    const-string v1, "MENU_STATUS"

    .line 490
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x8e

    :cond_25c
    and-int/lit16 v1, p0, 0x8f

    const/16 v3, 0x8f

    if-ne v1, v3, :cond_269

    const-string v1, "GIVE_DEVICE_POWER_STATUS"

    .line 494
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x8f

    :cond_269
    and-int/lit16 v1, p0, 0x90

    const/16 v3, 0x90

    if-ne v1, v3, :cond_276

    const-string v1, "REPORT_POWER_STATUS"

    .line 498
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x90

    :cond_276
    and-int/lit16 v1, p0, 0x91

    const/16 v3, 0x91

    if-ne v1, v3, :cond_283

    const-string v1, "GET_MENU_LANGUAGE"

    .line 502
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x91

    :cond_283
    and-int/lit16 v1, p0, 0x92

    const/16 v3, 0x92

    if-ne v1, v3, :cond_290

    const-string v1, "SELECT_ANALOG_SERVICE"

    .line 506
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x92

    :cond_290
    and-int/lit16 v1, p0, 0x93

    const/16 v3, 0x93

    if-ne v1, v3, :cond_29d

    const-string v1, "SELECT_DIGITAL_SERVICE"

    .line 510
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x93

    :cond_29d
    and-int/lit16 v1, p0, 0x97

    const/16 v3, 0x97

    if-ne v1, v3, :cond_2aa

    const-string v1, "SET_DIGITAL_TIMER"

    .line 514
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x97

    :cond_2aa
    and-int/lit16 v1, p0, 0x99

    const/16 v3, 0x99

    if-ne v1, v3, :cond_2b7

    const-string v1, "CLEAR_DIGITAL_TIMER"

    .line 518
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x99

    :cond_2b7
    and-int/lit16 v1, p0, 0x9a

    const/16 v3, 0x9a

    if-ne v1, v3, :cond_2c4

    const-string v1, "SET_AUDIO_RATE"

    .line 522
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x9a

    :cond_2c4
    and-int/lit16 v1, p0, 0x9d

    const/16 v3, 0x9d

    if-ne v1, v3, :cond_2d1

    const-string v1, "INACTIVE_SOURCE"

    .line 526
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x9d

    :cond_2d1
    and-int/lit16 v1, p0, 0x9e

    const/16 v3, 0x9e

    if-ne v1, v3, :cond_2de

    const-string v1, "CEC_VERSION"

    .line 530
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x9e

    :cond_2de
    and-int/lit16 v1, p0, 0x9f

    const/16 v3, 0x9f

    if-ne v1, v3, :cond_2eb

    const-string v1, "GET_CEC_VERSION"

    .line 534
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x9f

    :cond_2eb
    and-int/lit16 v1, p0, 0xa0

    const/16 v3, 0xa0

    if-ne v1, v3, :cond_2f8

    const-string v1, "VENDOR_COMMAND_WITH_ID"

    .line 538
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0xa0

    :cond_2f8
    and-int/lit16 v1, p0, 0xa1

    const/16 v3, 0xa1

    if-ne v1, v3, :cond_305

    const-string v1, "CLEAR_EXTERNAL_TIMER"

    .line 542
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0xa1

    :cond_305
    and-int/lit16 v1, p0, 0xa2

    const/16 v3, 0xa2

    if-ne v1, v3, :cond_312

    const-string v1, "SET_EXTERNAL_TIMER"

    .line 546
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0xa2

    :cond_312
    and-int/lit16 v1, p0, 0xa3

    const/16 v3, 0xa3

    if-ne v1, v3, :cond_31f

    const-string v1, "REPORT_SHORT_AUDIO_DESCRIPTOR"

    .line 550
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0xa3

    :cond_31f
    and-int/lit16 v1, p0, 0xa4

    const/16 v3, 0xa4

    if-ne v1, v3, :cond_32c

    const-string v1, "REQUEST_SHORT_AUDIO_DESCRIPTOR"

    .line 554
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0xa4

    :cond_32c
    and-int/lit16 v1, p0, 0xc0

    const/16 v3, 0xc0

    if-ne v1, v3, :cond_339

    const-string v1, "INITIATE_ARC"

    .line 558
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0xc0

    :cond_339
    and-int/lit16 v1, p0, 0xc1

    const/16 v3, 0xc1

    if-ne v1, v3, :cond_346

    const-string v1, "REPORT_ARC_INITIATED"

    .line 562
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0xc1

    :cond_346
    and-int/lit16 v1, p0, 0xc2

    const/16 v3, 0xc2

    if-ne v1, v3, :cond_353

    const-string v1, "REPORT_ARC_TERMINATED"

    .line 566
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0xc2

    :cond_353
    and-int/lit16 v1, p0, 0xc3

    const/16 v3, 0xc3

    if-ne v1, v3, :cond_360

    const-string v1, "REQUEST_ARC_INITIATION"

    .line 570
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0xc3

    :cond_360
    and-int/lit16 v1, p0, 0xc4

    const/16 v3, 0xc4

    if-ne v1, v3, :cond_36d

    const-string v1, "REQUEST_ARC_TERMINATION"

    .line 574
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0xc4

    :cond_36d
    and-int/lit16 v1, p0, 0xc5

    const/16 v3, 0xc5

    if-ne v1, v3, :cond_37a

    const-string v1, "TERMINATE_ARC"

    .line 578
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0xc5

    :cond_37a
    and-int/lit16 v1, p0, 0xff

    const/16 v3, 0xff

    if-ne v1, v3, :cond_387

    const-string v1, "ABORT"

    .line 582
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0xff

    :cond_387
    and-int/lit16 v1, p0, 0xa5

    const/16 v3, 0xa5

    if-ne v1, v3, :cond_394

    const-string v1, "GIVE_FEATURES"

    .line 586
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0xa5

    :cond_394
    and-int/lit16 v1, p0, 0xa6

    const/16 v3, 0xa6

    if-ne v1, v3, :cond_3a1

    const-string v1, "REPORT_FEATURES"

    .line 590
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0xa6

    :cond_3a1
    and-int/lit16 v1, p0, 0xa7

    const/16 v3, 0xa7

    if-ne v1, v3, :cond_3ae

    const-string v1, "REQUEST_CURRENT_LATENCY"

    .line 594
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0xa7

    :cond_3ae
    and-int/lit16 v1, p0, 0xa8

    const/16 v3, 0xa8

    if-ne v1, v3, :cond_3bb

    const-string v1, "REPORT_CURRENT_LATENCY"

    .line 598
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0xa8

    :cond_3bb
    if-eq p0, v2, :cond_3d7

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v2, v2

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d7
    const-string p0, " | "

    .line 604
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, "FEATURE_ABORT"

    return-object p0

    :cond_5
    const/4 v0, 0x4

    if-ne p0, v0, :cond_b

    const-string p0, "IMAGE_VIEW_ON"

    return-object p0

    :cond_b
    const/4 v0, 0x5

    if-ne p0, v0, :cond_11

    const-string p0, "TUNER_STEP_INCREMENT"

    return-object p0

    :cond_11
    const/4 v0, 0x6

    if-ne p0, v0, :cond_17

    const-string p0, "TUNER_STEP_DECREMENT"

    return-object p0

    :cond_17
    const/4 v0, 0x7

    if-ne p0, v0, :cond_1d

    const-string p0, "TUNER_DEVICE_STATUS"

    return-object p0

    :cond_1d
    const/16 v0, 0x8

    if-ne p0, v0, :cond_24

    const-string p0, "GIVE_TUNER_DEVICE_STATUS"

    return-object p0

    :cond_24
    const/16 v0, 0x9

    if-ne p0, v0, :cond_2b

    const-string p0, "RECORD_ON"

    return-object p0

    :cond_2b
    const/16 v0, 0xa

    if-ne p0, v0, :cond_32

    const-string p0, "RECORD_STATUS"

    return-object p0

    :cond_32
    const/16 v0, 0xb

    if-ne p0, v0, :cond_39

    const-string p0, "RECORD_OFF"

    return-object p0

    :cond_39
    const/16 v0, 0xd

    if-ne p0, v0, :cond_40

    const-string p0, "TEXT_VIEW_ON"

    return-object p0

    :cond_40
    const/16 v0, 0xf

    if-ne p0, v0, :cond_47

    const-string p0, "RECORD_TV_SCREEN"

    return-object p0

    :cond_47
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_4e

    const-string p0, "GIVE_DECK_STATUS"

    return-object p0

    :cond_4e
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_55

    const-string p0, "DECK_STATUS"

    return-object p0

    :cond_55
    const/16 v0, 0x32

    if-ne p0, v0, :cond_5c

    const-string p0, "SET_MENU_LANGUAGE"

    return-object p0

    :cond_5c
    const/16 v0, 0x33

    if-ne p0, v0, :cond_63

    const-string p0, "CLEAR_ANALOG_TIMER"

    return-object p0

    :cond_63
    const/16 v0, 0x34

    if-ne p0, v0, :cond_6a

    const-string p0, "SET_ANALOG_TIMER"

    return-object p0

    :cond_6a
    const/16 v0, 0x35

    if-ne p0, v0, :cond_71

    const-string p0, "TIMER_STATUS"

    return-object p0

    :cond_71
    const/16 v0, 0x36

    if-ne p0, v0, :cond_78

    const-string p0, "STANDBY"

    return-object p0

    :cond_78
    const/16 v0, 0x41

    if-ne p0, v0, :cond_7f

    const-string p0, "PLAY"

    return-object p0

    :cond_7f
    const/16 v0, 0x42

    if-ne p0, v0, :cond_86

    const-string p0, "DECK_CONTROL"

    return-object p0

    :cond_86
    const/16 v0, 0x43

    if-ne p0, v0, :cond_8d

    const-string p0, "TIMER_CLEARED_STATUS"

    return-object p0

    :cond_8d
    const/16 v0, 0x44

    if-ne p0, v0, :cond_94

    const-string p0, "USER_CONTROL_PRESSED"

    return-object p0

    :cond_94
    const/16 v0, 0x45

    if-ne p0, v0, :cond_9b

    const-string p0, "USER_CONTROL_RELEASED"

    return-object p0

    :cond_9b
    const/16 v0, 0x46

    if-ne p0, v0, :cond_a2

    const-string p0, "GIVE_OSD_NAME"

    return-object p0

    :cond_a2
    const/16 v0, 0x47

    if-ne p0, v0, :cond_a9

    const-string p0, "SET_OSD_NAME"

    return-object p0

    :cond_a9
    const/16 v0, 0x64

    if-ne p0, v0, :cond_b0

    const-string p0, "SET_OSD_STRING"

    return-object p0

    :cond_b0
    const/16 v0, 0x67

    if-ne p0, v0, :cond_b7

    const-string p0, "SET_TIMER_PROGRAM_TITLE"

    return-object p0

    :cond_b7
    const/16 v0, 0x70

    if-ne p0, v0, :cond_be

    const-string p0, "SYSTEM_AUDIO_MODE_REQUEST"

    return-object p0

    :cond_be
    const/16 v0, 0x71

    if-ne p0, v0, :cond_c5

    const-string p0, "GIVE_AUDIO_STATUS"

    return-object p0

    :cond_c5
    const/16 v0, 0x72

    if-ne p0, v0, :cond_cc

    const-string p0, "SET_SYSTEM_AUDIO_MODE"

    return-object p0

    :cond_cc
    const/16 v0, 0x7a

    if-ne p0, v0, :cond_d3

    const-string p0, "REPORT_AUDIO_STATUS"

    return-object p0

    :cond_d3
    const/16 v0, 0x7d

    if-ne p0, v0, :cond_da

    const-string p0, "GIVE_SYSTEM_AUDIO_MODE_STATUS"

    return-object p0

    :cond_da
    const/16 v0, 0x7e

    if-ne p0, v0, :cond_e1

    const-string p0, "SYSTEM_AUDIO_MODE_STATUS"

    return-object p0

    :cond_e1
    const/16 v0, 0x80

    if-ne p0, v0, :cond_e8

    const-string p0, "ROUTING_CHANGE"

    return-object p0

    :cond_e8
    const/16 v0, 0x81

    if-ne p0, v0, :cond_ef

    const-string p0, "ROUTING_INFORMATION"

    return-object p0

    :cond_ef
    const/16 v0, 0x82

    if-ne p0, v0, :cond_f6

    const-string p0, "ACTIVE_SOURCE"

    return-object p0

    :cond_f6
    const/16 v0, 0x83

    if-ne p0, v0, :cond_fd

    const-string p0, "GIVE_PHYSICAL_ADDRESS"

    return-object p0

    :cond_fd
    const/16 v0, 0x84

    if-ne p0, v0, :cond_104

    const-string p0, "REPORT_PHYSICAL_ADDRESS"

    return-object p0

    :cond_104
    const/16 v0, 0x85

    if-ne p0, v0, :cond_10b

    const-string p0, "REQUEST_ACTIVE_SOURCE"

    return-object p0

    :cond_10b
    const/16 v0, 0x86

    if-ne p0, v0, :cond_112

    const-string p0, "SET_STREAM_PATH"

    return-object p0

    :cond_112
    const/16 v0, 0x87

    if-ne p0, v0, :cond_119

    const-string p0, "DEVICE_VENDOR_ID"

    return-object p0

    :cond_119
    const/16 v0, 0x89

    if-ne p0, v0, :cond_120

    const-string p0, "VENDOR_COMMAND"

    return-object p0

    :cond_120
    const/16 v0, 0x8a

    if-ne p0, v0, :cond_127

    const-string p0, "VENDOR_REMOTE_BUTTON_DOWN"

    return-object p0

    :cond_127
    const/16 v0, 0x8b

    if-ne p0, v0, :cond_12e

    const-string p0, "VENDOR_REMOTE_BUTTON_UP"

    return-object p0

    :cond_12e
    const/16 v0, 0x8c

    if-ne p0, v0, :cond_135

    const-string p0, "GIVE_DEVICE_VENDOR_ID"

    return-object p0

    :cond_135
    const/16 v0, 0x8d

    if-ne p0, v0, :cond_13c

    const-string p0, "MENU_REQUEST"

    return-object p0

    :cond_13c
    const/16 v0, 0x8e

    if-ne p0, v0, :cond_143

    const-string p0, "MENU_STATUS"

    return-object p0

    :cond_143
    const/16 v0, 0x8f

    if-ne p0, v0, :cond_14a

    const-string p0, "GIVE_DEVICE_POWER_STATUS"

    return-object p0

    :cond_14a
    const/16 v0, 0x90

    if-ne p0, v0, :cond_151

    const-string p0, "REPORT_POWER_STATUS"

    return-object p0

    :cond_151
    const/16 v0, 0x91

    if-ne p0, v0, :cond_158

    const-string p0, "GET_MENU_LANGUAGE"

    return-object p0

    :cond_158
    const/16 v0, 0x92

    if-ne p0, v0, :cond_15f

    const-string p0, "SELECT_ANALOG_SERVICE"

    return-object p0

    :cond_15f
    const/16 v0, 0x93

    if-ne p0, v0, :cond_166

    const-string p0, "SELECT_DIGITAL_SERVICE"

    return-object p0

    :cond_166
    const/16 v0, 0x97

    if-ne p0, v0, :cond_16d

    const-string p0, "SET_DIGITAL_TIMER"

    return-object p0

    :cond_16d
    const/16 v0, 0x99

    if-ne p0, v0, :cond_174

    const-string p0, "CLEAR_DIGITAL_TIMER"

    return-object p0

    :cond_174
    const/16 v0, 0x9a

    if-ne p0, v0, :cond_17b

    const-string p0, "SET_AUDIO_RATE"

    return-object p0

    :cond_17b
    const/16 v0, 0x9d

    if-ne p0, v0, :cond_182

    const-string p0, "INACTIVE_SOURCE"

    return-object p0

    :cond_182
    const/16 v0, 0x9e

    if-ne p0, v0, :cond_189

    const-string p0, "CEC_VERSION"

    return-object p0

    :cond_189
    const/16 v0, 0x9f

    if-ne p0, v0, :cond_190

    const-string p0, "GET_CEC_VERSION"

    return-object p0

    :cond_190
    const/16 v0, 0xa0

    if-ne p0, v0, :cond_197

    const-string p0, "VENDOR_COMMAND_WITH_ID"

    return-object p0

    :cond_197
    const/16 v0, 0xa1

    if-ne p0, v0, :cond_19e

    const-string p0, "CLEAR_EXTERNAL_TIMER"

    return-object p0

    :cond_19e
    const/16 v0, 0xa2

    if-ne p0, v0, :cond_1a5

    const-string p0, "SET_EXTERNAL_TIMER"

    return-object p0

    :cond_1a5
    const/16 v0, 0xa3

    if-ne p0, v0, :cond_1ac

    const-string p0, "REPORT_SHORT_AUDIO_DESCRIPTOR"

    return-object p0

    :cond_1ac
    const/16 v0, 0xa4

    if-ne p0, v0, :cond_1b3

    const-string p0, "REQUEST_SHORT_AUDIO_DESCRIPTOR"

    return-object p0

    :cond_1b3
    const/16 v0, 0xc0

    if-ne p0, v0, :cond_1ba

    const-string p0, "INITIATE_ARC"

    return-object p0

    :cond_1ba
    const/16 v0, 0xc1

    if-ne p0, v0, :cond_1c1

    const-string p0, "REPORT_ARC_INITIATED"

    return-object p0

    :cond_1c1
    const/16 v0, 0xc2

    if-ne p0, v0, :cond_1c8

    const-string p0, "REPORT_ARC_TERMINATED"

    return-object p0

    :cond_1c8
    const/16 v0, 0xc3

    if-ne p0, v0, :cond_1cf

    const-string p0, "REQUEST_ARC_INITIATION"

    return-object p0

    :cond_1cf
    const/16 v0, 0xc4

    if-ne p0, v0, :cond_1d6

    const-string p0, "REQUEST_ARC_TERMINATION"

    return-object p0

    :cond_1d6
    const/16 v0, 0xc5

    if-ne p0, v0, :cond_1dd

    const-string p0, "TERMINATE_ARC"

    return-object p0

    :cond_1dd
    const/16 v0, 0xff

    if-ne p0, v0, :cond_1e4

    const-string p0, "ABORT"

    return-object p0

    :cond_1e4
    const/16 v0, 0xa5

    if-ne p0, v0, :cond_1eb

    const-string p0, "GIVE_FEATURES"

    return-object p0

    :cond_1eb
    const/16 v0, 0xa6

    if-ne p0, v0, :cond_1f2

    const-string p0, "REPORT_FEATURES"

    return-object p0

    :cond_1f2
    const/16 v0, 0xa7

    if-ne p0, v0, :cond_1f9

    const-string p0, "REQUEST_CURRENT_LATENCY"

    return-object p0

    :cond_1f9
    const/16 v0, 0xa8

    if-ne p0, v0, :cond_200

    const-string p0, "REPORT_CURRENT_LATENCY"

    return-object p0

    .line 302
    :cond_200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
