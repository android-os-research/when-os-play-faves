.class public abstract Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;
.super Landroid/os/Binder;
.source "IRestrictionPolicy.java"

# interfaces
.implements Lcom/samsung/android/knox/restriction/IRestrictionPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist TRANSACTION_addNewAdminActivationAppWhiteList:I = 0x7c

.field public static final greylist TRANSACTION_allowActivationLock:I = 0x9a

.field public static final greylist TRANSACTION_allowAirplaneMode:I = 0x65

.field public static final greylist TRANSACTION_allowAndroidBeam:I = 0x51

.field public static final greylist TRANSACTION_allowAudioRecord:I = 0x3b

.field public static final greylist TRANSACTION_allowBackgroundProcessLimit:I = 0x43

.field public static final greylist TRANSACTION_allowClipboardShare:I = 0x49

.field public static final greylist TRANSACTION_allowDataSaving:I = 0x8b

.field public static final greylist TRANSACTION_allowDeveloperMode:I = 0x63

.field public static final greylist TRANSACTION_allowFaceRecognitionEvenCameraBlocked:I = 0x92

.field public static final greylist TRANSACTION_allowFactoryReset:I = 0x1f

.field public static final greylist TRANSACTION_allowFastEncryption:I = 0x70

.field public static final greylist TRANSACTION_allowFirmwareAutoUpdate:I = 0x6a

.field public static final greylist TRANSACTION_allowFirmwareRecovery:I = 0x60

.field public static final greylist TRANSACTION_allowGoogleAccountsAutoSync:I = 0x67

.field public static final greylist TRANSACTION_allowGoogleCrashReport:I = 0x32

.field public static final greylist TRANSACTION_allowKillingActivitiesOnLeave:I = 0x45

.field public static final greylist TRANSACTION_allowLocalContactStorage:I = 0x94

.field public static final greylist TRANSACTION_allowLockScreenView:I = 0x5c

.field public static final greylist TRANSACTION_allowOTAUpgrade:I = 0x2e

.field public static final greylist TRANSACTION_allowPowerOff:I = 0x39

.field public static final greylist TRANSACTION_allowPowerSavingMode:I = 0x8d

.field public static final greylist TRANSACTION_allowSBeam:I = 0x4f

.field public static final greylist TRANSACTION_allowSDCardMove:I = 0x6e

.field public static final greylist TRANSACTION_allowSDCardWrite:I = 0x30

.field public static final greylist TRANSACTION_allowSVoice:I = 0x4c

.field public static final greylist TRANSACTION_allowSafeMode:I = 0x5a

.field public static final greylist TRANSACTION_allowScreenPinning:I = 0x83

.field public static final greylist TRANSACTION_allowSettingsChanges:I = 0x27

.field public static final greylist TRANSACTION_allowShareList:I = 0x55

.field public static final greylist TRANSACTION_allowSmartClipMode:I = 0x80

.field public static final greylist TRANSACTION_allowStatusBarExpansion:I = 0x37

.field public static final greylist TRANSACTION_allowStopSystemApp:I = 0x3f

.field public static final greylist TRANSACTION_allowUWB:I = 0x98

.field public static final greylist TRANSACTION_allowUsbHostStorage:I = 0x53

.field public static final greylist TRANSACTION_allowUserMobileDataLimit:I = 0x47

.field public static final greylist TRANSACTION_allowVideoRecord:I = 0x3d

.field public static final greylist TRANSACTION_allowVpn:I = 0x2c

.field public static final greylist TRANSACTION_allowWallpaperChange:I = 0x35

.field public static final greylist TRANSACTION_allowWifiDirect:I = 0x41

.field public static final greylist TRANSACTION_checkAdminActivationEnabled:I = 0xa5

.field public static final greylist TRANSACTION_checkPackageSource:I = 0xa4

.field public static final greylist TRANSACTION_clearNewAdminActivationAppWhiteList:I = 0x7b

.field public static final greylist TRANSACTION_disableConstrainedState:I = 0xa9

.field public static final greylist TRANSACTION_enableConstrainedState:I = 0xa8

.field public static final greylist TRANSACTION_enableODETrustedBootVerification:I = 0x75

.field public static final greylist TRANSACTION_enableWearablePolicy:I = 0x84

.field public static final greylist TRANSACTION_getAllowedFOTAInfo:I = 0x88

.field public static final greylist TRANSACTION_getAllowedFOTAVersion:I = 0x87

.field public static final greylist TRANSACTION_getCCModeState:I = 0x81

.field public static final greylist TRANSACTION_getConstrainedState:I = 0xaa

.field public static final greylist TRANSACTION_getNewAdminActivationAppWhiteList:I = 0x7d

.field public static final greylist TRANSACTION_getUsbExceptionList:I = 0x90

.field public static final greylist TRANSACTION_isActivationLockAllowed:I = 0x9b

.field public static final greylist TRANSACTION_isAirplaneModeAllowed:I = 0x66

.field public static final greylist TRANSACTION_isAndroidBeamAllowed:I = 0x52

.field public static final greylist TRANSACTION_isAudioRecordAllowed:I = 0x3c

.field public static final greylist TRANSACTION_isBackgroundDataEnabled:I = 0x24

.field public static final greylist TRANSACTION_isBackgroundProcessLimitAllowed:I = 0x44

.field public static final greylist TRANSACTION_isBackupAllowed:I = 0x1b

.field public static final greylist TRANSACTION_isBluetoothTetheringEnabled:I = 0x9

.field public static final greylist TRANSACTION_isCCModeEnabled:I = 0xa3

.field public static final greylist TRANSACTION_isCCModeSupported:I = 0x74

.field public static final greylist TRANSACTION_isCameraEnabled:I = 0x2

.field public static final greylist TRANSACTION_isCellularDataAllowed:I = 0x26

.field public static final greylist TRANSACTION_isClipboardAllowed:I = 0x1d

.field public static final greylist TRANSACTION_isClipboardAllowedAsUser:I = 0x1e

.field public static final greylist TRANSACTION_isClipboardShareAllowed:I = 0x4a

.field public static final greylist TRANSACTION_isClipboardShareAllowedAsUser:I = 0x4b

.field public static final greylist TRANSACTION_isDataSavingAllowed:I = 0x8c

.field public static final greylist TRANSACTION_isDeveloperModeAllowed:I = 0x64

.field public static final greylist TRANSACTION_isFaceRecognitionAllowedEvenCameraBlocked:I = 0x93

.field public static final greylist TRANSACTION_isFactoryResetAllowed:I = 0x20

.field public static final greylist TRANSACTION_isFastEncryptionAllowed:I = 0x71

.field public static final greylist TRANSACTION_isFirmwareAutoUpdateAllowed:I = 0x6b

.field public static final greylist TRANSACTION_isFirmwareRecoveryAllowed:I = 0x61

.field public static final greylist TRANSACTION_isGoogleAccountsAutoSyncAllowed:I = 0x68

.field public static final greylist TRANSACTION_isGoogleAccountsAutoSyncAllowedAsUser:I = 0x69

.field public static final greylist TRANSACTION_isGoogleCrashReportAllowed:I = 0x33

.field public static final greylist TRANSACTION_isGoogleCrashReportAllowedAsUser:I = 0x34

.field public static final greylist TRANSACTION_isHeadphoneEnabled:I = 0x6d

.field public static final greylist TRANSACTION_isHomeKeyEnabled:I = 0x22

.field public static final greylist TRANSACTION_isIrisCameraEnabled:I = 0x89

.field public static final greylist TRANSACTION_isKillingActivitiesOnLeaveAllowed:I = 0x46

.field public static final greylist TRANSACTION_isKnoxDelegationEnabled:I = 0x97

.field public static final greylist TRANSACTION_isLocalContactStorageAllowed:I = 0x95

.field public static final greylist TRANSACTION_isLockScreenEnabled:I = 0x5f

.field public static final greylist TRANSACTION_isLockScreenViewAllowed:I = 0x5d

.field public static final greylist TRANSACTION_isMicrophoneEnabled:I = 0x4

.field public static final greylist TRANSACTION_isMicrophoneEnabledAsUser:I = 0x5

.field public static final greylist TRANSACTION_isMockLocationEnabled:I = 0x19

.field public static final greylist TRANSACTION_isNewAdminActivationEnabled:I = 0x7a

.field public static final greylist TRANSACTION_isNewAdminInstallationEnabled:I = 0x78

.field public static final greylist TRANSACTION_isNewAdminInstallationEnabledAsUser:I = 0xa6

.field public static final greylist TRANSACTION_isNonMarketAppAllowed:I = 0x2b

.field public static final greylist TRANSACTION_isNonTrustedAppInstallBlocked:I = 0x9c

.field public static final greylist TRANSACTION_isNonTrustedAppInstallBlockedAsUser:I = 0x9d

.field public static final greylist TRANSACTION_isODETrustedBootVerificationEnabled:I = 0x76

.field public static final greylist TRANSACTION_isOTAUpgradeAllowed:I = 0x2f

.field public static final greylist TRANSACTION_isPowerOffAllowed:I = 0x3a

.field public static final greylist TRANSACTION_isPowerSavingModeAllowed:I = 0x8e

.field public static final greylist TRANSACTION_isSBeamAllowed:I = 0x50

.field public static final greylist TRANSACTION_isSDCardMoveAllowed:I = 0x6f

.field public static final greylist TRANSACTION_isSDCardWriteAllowed:I = 0x31

.field public static final greylist TRANSACTION_isSVoiceAllowed:I = 0x4d

.field public static final greylist TRANSACTION_isSVoiceAllowedAsUser:I = 0x4e

.field public static final greylist TRANSACTION_isSafeModeAllowed:I = 0x5b

.field public static final greylist TRANSACTION_isScreenCaptureEnabled:I = 0x15

.field public static final greylist TRANSACTION_isScreenCaptureEnabledEx:I = 0x16

.field public static final greylist TRANSACTION_isScreenCaptureEnabledInternal:I = 0x17

.field public static final greylist TRANSACTION_isScreenPinningAllowed:I = 0x82

.field public static final greylist TRANSACTION_isSdCardEnabled:I = 0x7

.field public static final greylist TRANSACTION_isSettingsChangesAllowed:I = 0x28

.field public static final greylist TRANSACTION_isSettingsChangesAllowedAsUser:I = 0x29

.field public static final greylist TRANSACTION_isShareListAllowed:I = 0x56

.field public static final greylist TRANSACTION_isShareListAllowedAsUser:I = 0x57

.field public static final greylist TRANSACTION_isSmartClipModeAllowed:I = 0x7e

.field public static final greylist TRANSACTION_isSmartClipModeAllowedInternal:I = 0x7f

.field public static final greylist TRANSACTION_isStatusBarExpansionAllowed:I = 0x38

.field public static final greylist TRANSACTION_isStatusBarExpansionAllowedAsUser:I = 0x62

.field public static final greylist TRANSACTION_isStopSystemAppAllowed:I = 0x40

.field public static final greylist TRANSACTION_isTetheringEnabled:I = 0xf

.field public static final greylist TRANSACTION_isUWBAllowed:I = 0x99

.field public static final greylist TRANSACTION_isUsbDebuggingEnabled:I = 0x11

.field public static final greylist TRANSACTION_isUsbHostStorageAllowed:I = 0x54

.field public static final greylist TRANSACTION_isUsbKiesAvailable:I = 0x9f

.field public static final greylist TRANSACTION_isUsbMassStorageEnabled:I = 0x9e

.field public static final greylist TRANSACTION_isUsbMediaPlayerAvailable:I = 0x13

.field public static final greylist TRANSACTION_isUsbTetheringEnabled:I = 0xb

.field public static final greylist TRANSACTION_isUseSecureKeypadEnabled:I = 0x59

.field public static final greylist TRANSACTION_isUserMobileDataLimitAllowed:I = 0x48

.field public static final greylist TRANSACTION_isVideoRecordAllowed:I = 0x3e

.field public static final greylist TRANSACTION_isVpnAllowed:I = 0x2d

.field public static final greylist TRANSACTION_isWallpaperChangeAllowed:I = 0x36

.field public static final greylist TRANSACTION_isWearablePolicyEnabled:I = 0x85

.field public static final greylist TRANSACTION_isWifiDirectAllowed:I = 0x42

.field public static final greylist TRANSACTION_isWifiTetheringEnabled:I = 0xd

.field public static final greylist TRANSACTION_preventNewAdminActivation:I = 0x79

.field public static final greylist TRANSACTION_preventNewAdminInstallation:I = 0x77

.field public static final greylist TRANSACTION_setAllowNonMarketApps:I = 0x2a

.field public static final greylist TRANSACTION_setAllowedFOTAVersion:I = 0x86

.field public static final greylist TRANSACTION_setBackgroundData:I = 0x23

.field public static final greylist TRANSACTION_setBackup:I = 0x1a

.field public static final greylist TRANSACTION_setBluetoothTethering:I = 0x8

.field public static final greylist TRANSACTION_setCCMode:I = 0x72

.field public static final greylist TRANSACTION_setCCModeOnlyForCallerSystem:I = 0x73

.field public static final greylist TRANSACTION_setCamera:I = 0x1

.field public static final greylist TRANSACTION_setCellularData:I = 0x25

.field public static final greylist TRANSACTION_setClipboardEnabled:I = 0x1c

.field public static final greylist TRANSACTION_setHeadphoneState:I = 0x6c

.field public static final greylist TRANSACTION_setHomeKeyState:I = 0x21

.field public static final greylist TRANSACTION_setIrisCameraState:I = 0x8a

.field public static final greylist TRANSACTION_setKnoxDelegationEnabled:I = 0x96

.field public static final greylist TRANSACTION_setLockScreenState:I = 0x5e

.field public static final greylist TRANSACTION_setMicrophoneState:I = 0x3

.field public static final greylist TRANSACTION_setMockLocation:I = 0x18

.field public static final greylist TRANSACTION_setNonTrustedAppInstallBlock:I = 0xa0

.field public static final greylist TRANSACTION_setScreenCapture:I = 0x14

.field public static final greylist TRANSACTION_setSdCardState:I = 0x6

.field public static final greylist TRANSACTION_setTethering:I = 0xe

.field public static final greylist TRANSACTION_setUsbDebuggingEnabled:I = 0x10

.field public static final greylist TRANSACTION_setUsbExceptionList:I = 0x8f

.field public static final greylist TRANSACTION_setUsbKiesAvailability:I = 0xa1

.field public static final greylist TRANSACTION_setUsbMassStorage:I = 0xa2

.field public static final greylist TRANSACTION_setUsbMediaPlayerAvailability:I = 0x12

.field public static final greylist TRANSACTION_setUsbTethering:I = 0xa

.field public static final greylist TRANSACTION_setUseSecureKeypad:I = 0x58

.field public static final greylist TRANSACTION_setWifiTethering:I = 0xc

.field public static final greylist TRANSACTION_showRestrictionToast:I = 0xa7

.field public static final greylist TRANSACTION_systemReady:I = 0x91


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1
    .line 2
    .line 3
    const-string v0, "com.samsung.android.knox.restriction.IRestrictionPolicy"

    .line 4
    .line 5
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .registers 3

    .line 0
    if-nez p0, :cond_4

    .line 1
    .line 2
    const/4 p0, 0x0

    .line 3
    return-object p0

    .line 4
    :cond_4
    const-string v0, "com.samsung.android.knox.restriction.IRestrictionPolicy"

    .line 5
    .line 6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_13

    .line 11
    .line 12
    instance-of v1, v0, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 13
    .line 14
    if-eqz v1, :cond_13

    .line 15
    .line 16
    check-cast v0, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_13
    new-instance v0, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 22
    .line 23
    .line 24
    return-object v0
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
.end method


# virtual methods
.method public final whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public final whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 v0, 0x1

    .line 1
    const-string v1, "com.samsung.android.knox.restriction.IRestrictionPolicy"

    .line 2
    .line 3
    if-lt p1, v0, :cond_d

    .line 4
    .line 5
    const v2, 0xffffff

    .line 6
    .line 7
    .line 8
    if-gt p1, v2, :cond_d

    .line 9
    .line 10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_d
    const v2, 0x5f4e5446

    .line 14
    .line 15
    .line 16
    if-eq p1, v2, :cond_10e1

    .line 17
    .line 18
    packed-switch p1, :pswitch_data_10e6

    .line 19
    .line 20
    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :pswitch_1a
    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getConstrainedState()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_10e0

    .line 37
    .line 38
    :pswitch_26
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 47
    .line 48
    .line 49
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_10e0

    .line 60
    .line 61
    :pswitch_3d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    move-object v2, p1

    .line 68
    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    .line 69
    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 91
    .line 92
    .line 93
    move-object v1, p0

    .line 94
    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_10e0

    .line 105
    .line 106
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    .line 112
    .line 113
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->showRestrictionToast(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_10e0

    .line 120
    .line 121
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 126
    .line 127
    .line 128
    move-result p4

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    .line 131
    .line 132
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNewAdminInstallationEnabledAsUser(IZ)Z

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_10e0

    .line 143
    .line 144
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p4

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    .line 154
    .line 155
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->checkAdminActivationEnabled(ILjava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_10e0

    .line 166
    .line 167
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p4

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    .line 177
    .line 178
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->checkPackageSource(ILjava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_10e0

    .line 189
    .line 190
    :pswitch_be
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 191
    .line 192
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 197
    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 199
    .line 200
    .line 201
    move-result p4

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    .line 204
    .line 205
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isCCModeEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 206
    .line 207
    .line 208
    move-result p0

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_10e0

    .line 216
    .line 217
    :pswitch_d9
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 218
    .line 219
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 224
    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 226
    .line 227
    .line 228
    move-result p4

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    .line 231
    .line 232
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUsbMassStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 233
    .line 234
    .line 235
    move-result p0

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_10e0

    .line 243
    .line 244
    :pswitch_f4
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 245
    .line 246
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 251
    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 253
    .line 254
    .line 255
    move-result p4

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    .line 258
    .line 259
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUsbKiesAvailability(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 260
    .line 261
    .line 262
    move-result p0

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_10e0

    .line 270
    .line 271
    :pswitch_10f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 272
    .line 273
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 278
    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 280
    .line 281
    .line 282
    move-result p4

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    .line 285
    .line 286
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setNonTrustedAppInstallBlock(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 287
    .line 288
    .line 289
    move-result p0

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_10e0

    .line 297
    .line 298
    :pswitch_12a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 299
    .line 300
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 305
    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 307
    .line 308
    .line 309
    move-result p4

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    .line 312
    .line 313
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbKiesAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 314
    .line 315
    .line 316
    move-result p0

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 321
    .line 322
    .line 323
    goto/16 :goto_10e0

    .line 324
    .line 325
    :pswitch_145
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 326
    .line 327
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 332
    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 334
    .line 335
    .line 336
    move-result p4

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    .line 339
    .line 340
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbMassStorageEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 341
    .line 342
    .line 343
    move-result p0

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    .line 346
    .line 347
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 348
    .line 349
    .line 350
    goto/16 :goto_10e0

    .line 351
    .line 352
    :pswitch_160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    .line 358
    .line 359
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNonTrustedAppInstallBlockedAsUser(I)Z

    .line 360
    .line 361
    .line 362
    move-result p0

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 367
    .line 368
    .line 369
    goto/16 :goto_10e0

    .line 370
    .line 371
    :pswitch_173
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 372
    .line 373
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 378
    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    .line 381
    .line 382
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNonTrustedAppInstallBlocked(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 383
    .line 384
    .line 385
    move-result p0

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 390
    .line 391
    .line 392
    goto/16 :goto_10e0

    .line 393
    .line 394
    :pswitch_18a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 395
    .line 396
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 401
    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 403
    .line 404
    .line 405
    move-result p4

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    .line 408
    .line 409
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isActivationLockAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 410
    .line 411
    .line 412
    move-result p0

    .line 413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    .line 415
    .line 416
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_10e0

    .line 420
    .line 421
    :pswitch_1a5
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 422
    .line 423
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 428
    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 430
    .line 431
    .line 432
    move-result p4

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    .line 435
    .line 436
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowActivationLock(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 437
    .line 438
    .line 439
    move-result p0

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    .line 442
    .line 443
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 444
    .line 445
    .line 446
    goto/16 :goto_10e0

    .line 447
    .line 448
    :pswitch_1c0
    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUWBAllowed()Z

    .line 449
    .line 450
    .line 451
    move-result p0

    .line 452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    .line 454
    .line 455
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 456
    .line 457
    .line 458
    goto/16 :goto_10e0

    .line 459
    .line 460
    :pswitch_1cc
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 461
    .line 462
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 467
    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 469
    .line 470
    .line 471
    move-result p4

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    .line 474
    .line 475
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowUWB(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 476
    .line 477
    .line 478
    move-result p0

    .line 479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    .line 481
    .line 482
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 483
    .line 484
    .line 485
    goto/16 :goto_10e0

    .line 486
    .line 487
    :pswitch_1e7
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 488
    .line 489
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object p1

    .line 493
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 494
    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    .line 497
    .line 498
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isKnoxDelegationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 499
    .line 500
    .line 501
    move-result p0

    .line 502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    .line 504
    .line 505
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 506
    .line 507
    .line 508
    goto/16 :goto_10e0

    .line 509
    .line 510
    :pswitch_1fe
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 511
    .line 512
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 517
    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 519
    .line 520
    .line 521
    move-result p4

    .line 522
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 523
    .line 524
    .line 525
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setKnoxDelegationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 526
    .line 527
    .line 528
    move-result p0

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    .line 531
    .line 532
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 533
    .line 534
    .line 535
    goto/16 :goto_10e0

    .line 536
    .line 537
    :pswitch_219
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 538
    .line 539
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object p1

    .line 543
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 544
    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 546
    .line 547
    .line 548
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isLocalContactStorageAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 549
    .line 550
    .line 551
    move-result p0

    .line 552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    .line 554
    .line 555
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 556
    .line 557
    .line 558
    goto/16 :goto_10e0

    .line 559
    .line 560
    :pswitch_230
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 561
    .line 562
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object p1

    .line 566
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 567
    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 569
    .line 570
    .line 571
    move-result p4

    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 573
    .line 574
    .line 575
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowLocalContactStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 576
    .line 577
    .line 578
    move-result p0

    .line 579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    .line 581
    .line 582
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 583
    .line 584
    .line 585
    goto/16 :goto_10e0

    .line 586
    .line 587
    :pswitch_24b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 588
    .line 589
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    move-result-object p1

    .line 593
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 594
    .line 595
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 596
    .line 597
    .line 598
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFaceRecognitionAllowedEvenCameraBlocked(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 599
    .line 600
    .line 601
    move-result p0

    .line 602
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    .line 604
    .line 605
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 606
    .line 607
    .line 608
    goto/16 :goto_10e0

    .line 609
    .line 610
    :pswitch_262
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 611
    .line 612
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object p1

    .line 616
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 617
    .line 618
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 619
    .line 620
    .line 621
    move-result p4

    .line 622
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    .line 624
    .line 625
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowFaceRecognitionEvenCameraBlocked(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 626
    .line 627
    .line 628
    move-result p0

    .line 629
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    .line 631
    .line 632
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 633
    .line 634
    .line 635
    goto/16 :goto_10e0

    .line 636
    .line 637
    :pswitch_27d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 638
    .line 639
    .line 640
    move-result p1

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    .line 643
    .line 644
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->systemReady(I)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    .line 649
    .line 650
    goto/16 :goto_10e0

    .line 651
    .line 652
    :pswitch_28c
    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getUsbExceptionList()I

    .line 653
    .line 654
    .line 655
    move-result p0

    .line 656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    .line 658
    .line 659
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    .line 661
    .line 662
    goto/16 :goto_10e0

    .line 663
    .line 664
    :pswitch_298
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 665
    .line 666
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object p1

    .line 670
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 671
    .line 672
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 673
    .line 674
    .line 675
    move-result p4

    .line 676
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    .line 678
    .line 679
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUsbExceptionList(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 680
    .line 681
    .line 682
    move-result p0

    .line 683
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    .line 685
    .line 686
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 687
    .line 688
    .line 689
    goto/16 :goto_10e0

    .line 690
    .line 691
    :pswitch_2b3
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 692
    .line 693
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object p1

    .line 697
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 698
    .line 699
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 700
    .line 701
    .line 702
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isPowerSavingModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 703
    .line 704
    .line 705
    move-result p0

    .line 706
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    .line 708
    .line 709
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 710
    .line 711
    .line 712
    goto/16 :goto_10e0

    .line 713
    .line 714
    :pswitch_2ca
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 715
    .line 716
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object p1

    .line 720
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 721
    .line 722
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 723
    .line 724
    .line 725
    move-result p4

    .line 726
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 727
    .line 728
    .line 729
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowPowerSavingMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 730
    .line 731
    .line 732
    move-result p0

    .line 733
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    .line 735
    .line 736
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 737
    .line 738
    .line 739
    goto/16 :goto_10e0

    .line 740
    .line 741
    :pswitch_2e5
    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isDataSavingAllowed()Z

    .line 742
    .line 743
    .line 744
    move-result p0

    .line 745
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    .line 747
    .line 748
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 749
    .line 750
    .line 751
    goto/16 :goto_10e0

    .line 752
    .line 753
    :pswitch_2f1
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 754
    .line 755
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object p1

    .line 759
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 760
    .line 761
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 762
    .line 763
    .line 764
    move-result p4

    .line 765
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 766
    .line 767
    .line 768
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowDataSaving(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 769
    .line 770
    .line 771
    move-result p0

    .line 772
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    .line 774
    .line 775
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 776
    .line 777
    .line 778
    goto/16 :goto_10e0

    .line 779
    .line 780
    :pswitch_30c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 781
    .line 782
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    move-result-object p1

    .line 786
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 787
    .line 788
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 789
    .line 790
    .line 791
    move-result p4

    .line 792
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 793
    .line 794
    .line 795
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setIrisCameraState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 796
    .line 797
    .line 798
    move-result p0

    .line 799
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    .line 801
    .line 802
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 803
    .line 804
    .line 805
    goto/16 :goto_10e0

    .line 806
    .line 807
    :pswitch_327
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 808
    .line 809
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object p1

    .line 813
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 814
    .line 815
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 816
    .line 817
    .line 818
    move-result p4

    .line 819
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 820
    .line 821
    .line 822
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isIrisCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 823
    .line 824
    .line 825
    move-result p0

    .line 826
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    .line 828
    .line 829
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 830
    .line 831
    .line 832
    goto/16 :goto_10e0

    .line 833
    .line 834
    :pswitch_342
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 835
    .line 836
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    move-result-object p1

    .line 840
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 841
    .line 842
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 843
    .line 844
    .line 845
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getAllowedFOTAInfo(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 846
    .line 847
    .line 848
    move-result-object p0

    .line 849
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    .line 851
    .line 852
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 853
    .line 854
    .line 855
    goto/16 :goto_10e0

    .line 856
    .line 857
    :pswitch_359
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 858
    .line 859
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    move-result-object p1

    .line 863
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 864
    .line 865
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 866
    .line 867
    .line 868
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getAllowedFOTAVersion(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object p0

    .line 872
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    .line 874
    .line 875
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 876
    .line 877
    .line 878
    goto/16 :goto_10e0

    .line 879
    .line 880
    :pswitch_370
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 881
    .line 882
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    move-result-object p1

    .line 886
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 887
    .line 888
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 889
    .line 890
    .line 891
    move-result-object p4

    .line 892
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 893
    .line 894
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 895
    .line 896
    .line 897
    move-result-object v1

    .line 898
    check-cast v1, Landroid/os/Bundle;

    .line 899
    .line 900
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 901
    .line 902
    .line 903
    move-result v2

    .line 904
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 905
    .line 906
    .line 907
    invoke-interface {p0, p1, p4, v1, v2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setAllowedFOTAVersion(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/os/Bundle;Z)Z

    .line 908
    .line 909
    .line 910
    move-result p0

    .line 911
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    .line 913
    .line 914
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 915
    .line 916
    .line 917
    goto/16 :goto_10e0

    .line 918
    .line 919
    :pswitch_397
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 920
    .line 921
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 922
    .line 923
    .line 924
    move-result-object p1

    .line 925
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 926
    .line 927
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 928
    .line 929
    .line 930
    move-result p4

    .line 931
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 932
    .line 933
    .line 934
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isWearablePolicyEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 935
    .line 936
    .line 937
    move-result p0

    .line 938
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    .line 940
    .line 941
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 942
    .line 943
    .line 944
    goto/16 :goto_10e0

    .line 945
    .line 946
    :pswitch_3b2
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 947
    .line 948
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object p1

    .line 952
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 953
    .line 954
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 955
    .line 956
    .line 957
    move-result p4

    .line 958
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 959
    .line 960
    .line 961
    move-result v1

    .line 962
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    .line 964
    .line 965
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->enableWearablePolicy(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    .line 966
    .line 967
    .line 968
    move-result p0

    .line 969
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    .line 971
    .line 972
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 973
    .line 974
    .line 975
    goto/16 :goto_10e0

    .line 976
    .line 977
    :pswitch_3d1
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 978
    .line 979
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    move-result-object p1

    .line 983
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 984
    .line 985
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 986
    .line 987
    .line 988
    move-result p4

    .line 989
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 990
    .line 991
    .line 992
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowScreenPinning(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 993
    .line 994
    .line 995
    move-result p0

    .line 996
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    .line 998
    .line 999
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1000
    .line 1001
    .line 1002
    goto/16 :goto_10e0

    .line 1003
    .line 1004
    :pswitch_3ec
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1005
    .line 1006
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1007
    .line 1008
    .line 1009
    move-result-object p1

    .line 1010
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1011
    .line 1012
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1013
    .line 1014
    .line 1015
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenPinningAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1016
    .line 1017
    .line 1018
    move-result p0

    .line 1019
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1023
    .line 1024
    .line 1025
    goto/16 :goto_10e0

    .line 1026
    .line 1027
    :pswitch_403
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1028
    .line 1029
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    move-result-object p1

    .line 1033
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1034
    .line 1035
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1036
    .line 1037
    .line 1038
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getCCModeState(Lcom/samsung/android/knox/ContextInfo;)I

    .line 1039
    .line 1040
    .line 1041
    move-result p0

    .line 1042
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1046
    .line 1047
    .line 1048
    goto/16 :goto_10e0

    .line 1049
    .line 1050
    :pswitch_41a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1051
    .line 1052
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1053
    .line 1054
    .line 1055
    move-result-object p1

    .line 1056
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1057
    .line 1058
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1059
    .line 1060
    .line 1061
    move-result p4

    .line 1062
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1063
    .line 1064
    .line 1065
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSmartClipMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1066
    .line 1067
    .line 1068
    move-result p0

    .line 1069
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1073
    .line 1074
    .line 1075
    goto/16 :goto_10e0

    .line 1076
    .line 1077
    :pswitch_435
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1078
    .line 1079
    .line 1080
    move-result p1

    .line 1081
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1082
    .line 1083
    .line 1084
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSmartClipModeAllowedInternal(Z)Z

    .line 1085
    .line 1086
    .line 1087
    move-result p0

    .line 1088
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1092
    .line 1093
    .line 1094
    goto/16 :goto_10e0

    .line 1095
    .line 1096
    :pswitch_448
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1097
    .line 1098
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1099
    .line 1100
    .line 1101
    move-result-object p1

    .line 1102
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1103
    .line 1104
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1105
    .line 1106
    .line 1107
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSmartClipModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1108
    .line 1109
    .line 1110
    move-result p0

    .line 1111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1115
    .line 1116
    .line 1117
    goto/16 :goto_10e0

    .line 1118
    .line 1119
    :pswitch_45f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1120
    .line 1121
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1122
    .line 1123
    .line 1124
    move-result-object p1

    .line 1125
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1126
    .line 1127
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1128
    .line 1129
    .line 1130
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 1131
    .line 1132
    .line 1133
    move-result-object p0

    .line 1134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1138
    .line 1139
    .line 1140
    goto/16 :goto_10e0

    .line 1141
    .line 1142
    :pswitch_476
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1143
    .line 1144
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1145
    .line 1146
    .line 1147
    move-result-object p1

    .line 1148
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1149
    .line 1150
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1151
    .line 1152
    .line 1153
    move-result-object p4

    .line 1154
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1155
    .line 1156
    .line 1157
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->addNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 1158
    .line 1159
    .line 1160
    move-result p0

    .line 1161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1165
    .line 1166
    .line 1167
    goto/16 :goto_10e0

    .line 1168
    .line 1169
    :pswitch_491
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1170
    .line 1171
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1172
    .line 1173
    .line 1174
    move-result-object p1

    .line 1175
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1176
    .line 1177
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1178
    .line 1179
    .line 1180
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->clearNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1181
    .line 1182
    .line 1183
    move-result p0

    .line 1184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1185
    .line 1186
    .line 1187
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1188
    .line 1189
    .line 1190
    goto/16 :goto_10e0

    .line 1191
    .line 1192
    :pswitch_4a8
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1193
    .line 1194
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1195
    .line 1196
    .line 1197
    move-result-object p1

    .line 1198
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1199
    .line 1200
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1201
    .line 1202
    .line 1203
    move-result p4

    .line 1204
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1205
    .line 1206
    .line 1207
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNewAdminActivationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1208
    .line 1209
    .line 1210
    move-result p0

    .line 1211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1215
    .line 1216
    .line 1217
    goto/16 :goto_10e0

    .line 1218
    .line 1219
    :pswitch_4c3
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1220
    .line 1221
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1222
    .line 1223
    .line 1224
    move-result-object p1

    .line 1225
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1226
    .line 1227
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1228
    .line 1229
    .line 1230
    move-result p4

    .line 1231
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1232
    .line 1233
    .line 1234
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->preventNewAdminActivation(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1235
    .line 1236
    .line 1237
    move-result p0

    .line 1238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    .line 1240
    .line 1241
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1242
    .line 1243
    .line 1244
    goto/16 :goto_10e0

    .line 1245
    .line 1246
    :pswitch_4de
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1247
    .line 1248
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1249
    .line 1250
    .line 1251
    move-result-object p1

    .line 1252
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1253
    .line 1254
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1255
    .line 1256
    .line 1257
    move-result p4

    .line 1258
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1259
    .line 1260
    .line 1261
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNewAdminInstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1262
    .line 1263
    .line 1264
    move-result p0

    .line 1265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1266
    .line 1267
    .line 1268
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1269
    .line 1270
    .line 1271
    goto/16 :goto_10e0

    .line 1272
    .line 1273
    :pswitch_4f9
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1274
    .line 1275
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1276
    .line 1277
    .line 1278
    move-result-object p1

    .line 1279
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1280
    .line 1281
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1282
    .line 1283
    .line 1284
    move-result p4

    .line 1285
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1286
    .line 1287
    .line 1288
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->preventNewAdminInstallation(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1289
    .line 1290
    .line 1291
    move-result p0

    .line 1292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1293
    .line 1294
    .line 1295
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1296
    .line 1297
    .line 1298
    goto/16 :goto_10e0

    .line 1299
    .line 1300
    :pswitch_514
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1301
    .line 1302
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1303
    .line 1304
    .line 1305
    move-result-object p1

    .line 1306
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1307
    .line 1308
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1309
    .line 1310
    .line 1311
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isODETrustedBootVerificationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1312
    .line 1313
    .line 1314
    move-result p0

    .line 1315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1316
    .line 1317
    .line 1318
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1319
    .line 1320
    .line 1321
    goto/16 :goto_10e0

    .line 1322
    .line 1323
    :pswitch_52b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1324
    .line 1325
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1326
    .line 1327
    .line 1328
    move-result-object p1

    .line 1329
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1330
    .line 1331
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1332
    .line 1333
    .line 1334
    move-result p4

    .line 1335
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1336
    .line 1337
    .line 1338
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->enableODETrustedBootVerification(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1339
    .line 1340
    .line 1341
    move-result p0

    .line 1342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1343
    .line 1344
    .line 1345
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1346
    .line 1347
    .line 1348
    goto/16 :goto_10e0

    .line 1349
    .line 1350
    :pswitch_546
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1351
    .line 1352
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1353
    .line 1354
    .line 1355
    move-result-object p1

    .line 1356
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1357
    .line 1358
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1359
    .line 1360
    .line 1361
    move-result p4

    .line 1362
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1363
    .line 1364
    .line 1365
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isCCModeSupported(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1366
    .line 1367
    .line 1368
    move-result p0

    .line 1369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    .line 1371
    .line 1372
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1373
    .line 1374
    .line 1375
    goto/16 :goto_10e0

    .line 1376
    .line 1377
    :pswitch_561
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1378
    .line 1379
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1380
    .line 1381
    .line 1382
    move-result-object p1

    .line 1383
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1384
    .line 1385
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1386
    .line 1387
    .line 1388
    move-result p4

    .line 1389
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1390
    .line 1391
    .line 1392
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setCCModeOnlyForCallerSystem(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1393
    .line 1394
    .line 1395
    move-result p0

    .line 1396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1397
    .line 1398
    .line 1399
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1400
    .line 1401
    .line 1402
    goto/16 :goto_10e0

    .line 1403
    .line 1404
    :pswitch_57c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1405
    .line 1406
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1407
    .line 1408
    .line 1409
    move-result-object p1

    .line 1410
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1411
    .line 1412
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1413
    .line 1414
    .line 1415
    move-result p4

    .line 1416
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1417
    .line 1418
    .line 1419
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setCCMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1420
    .line 1421
    .line 1422
    move-result p0

    .line 1423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1424
    .line 1425
    .line 1426
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1427
    .line 1428
    .line 1429
    goto/16 :goto_10e0

    .line 1430
    .line 1431
    :pswitch_597
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1432
    .line 1433
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1434
    .line 1435
    .line 1436
    move-result-object p1

    .line 1437
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1438
    .line 1439
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1440
    .line 1441
    .line 1442
    move-result p4

    .line 1443
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1444
    .line 1445
    .line 1446
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFastEncryptionAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1447
    .line 1448
    .line 1449
    move-result p0

    .line 1450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1451
    .line 1452
    .line 1453
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1454
    .line 1455
    .line 1456
    goto/16 :goto_10e0

    .line 1457
    .line 1458
    :pswitch_5b2
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1459
    .line 1460
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1461
    .line 1462
    .line 1463
    move-result-object p1

    .line 1464
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1465
    .line 1466
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1467
    .line 1468
    .line 1469
    move-result p4

    .line 1470
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1471
    .line 1472
    .line 1473
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowFastEncryption(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1474
    .line 1475
    .line 1476
    move-result p0

    .line 1477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1481
    .line 1482
    .line 1483
    goto/16 :goto_10e0

    .line 1484
    .line 1485
    :pswitch_5cd
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1486
    .line 1487
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1488
    .line 1489
    .line 1490
    move-result-object p1

    .line 1491
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1492
    .line 1493
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1494
    .line 1495
    .line 1496
    move-result p4

    .line 1497
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1498
    .line 1499
    .line 1500
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSDCardMoveAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1501
    .line 1502
    .line 1503
    move-result p0

    .line 1504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1505
    .line 1506
    .line 1507
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1508
    .line 1509
    .line 1510
    goto/16 :goto_10e0

    .line 1511
    .line 1512
    :pswitch_5e8
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1513
    .line 1514
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1515
    .line 1516
    .line 1517
    move-result-object p1

    .line 1518
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1519
    .line 1520
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1521
    .line 1522
    .line 1523
    move-result p4

    .line 1524
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1525
    .line 1526
    .line 1527
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSDCardMove(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1528
    .line 1529
    .line 1530
    move-result p0

    .line 1531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1532
    .line 1533
    .line 1534
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1535
    .line 1536
    .line 1537
    goto/16 :goto_10e0

    .line 1538
    .line 1539
    :pswitch_603
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1540
    .line 1541
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1542
    .line 1543
    .line 1544
    move-result-object p1

    .line 1545
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1546
    .line 1547
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1548
    .line 1549
    .line 1550
    move-result p4

    .line 1551
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1552
    .line 1553
    .line 1554
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1555
    .line 1556
    .line 1557
    move-result p0

    .line 1558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1559
    .line 1560
    .line 1561
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1562
    .line 1563
    .line 1564
    goto/16 :goto_10e0

    .line 1565
    .line 1566
    :pswitch_61e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1567
    .line 1568
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1569
    .line 1570
    .line 1571
    move-result-object p1

    .line 1572
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1573
    .line 1574
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1575
    .line 1576
    .line 1577
    move-result p4

    .line 1578
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1579
    .line 1580
    .line 1581
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setHeadphoneState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1582
    .line 1583
    .line 1584
    move-result p0

    .line 1585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1586
    .line 1587
    .line 1588
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1589
    .line 1590
    .line 1591
    goto/16 :goto_10e0

    .line 1592
    .line 1593
    :pswitch_639
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1594
    .line 1595
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1596
    .line 1597
    .line 1598
    move-result-object p1

    .line 1599
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1600
    .line 1601
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1602
    .line 1603
    .line 1604
    move-result p4

    .line 1605
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1606
    .line 1607
    .line 1608
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFirmwareAutoUpdateAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1609
    .line 1610
    .line 1611
    move-result p0

    .line 1612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1613
    .line 1614
    .line 1615
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1616
    .line 1617
    .line 1618
    goto/16 :goto_10e0

    .line 1619
    .line 1620
    :pswitch_654
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1621
    .line 1622
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1623
    .line 1624
    .line 1625
    move-result-object p1

    .line 1626
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1627
    .line 1628
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1629
    .line 1630
    .line 1631
    move-result p4

    .line 1632
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1633
    .line 1634
    .line 1635
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowFirmwareAutoUpdate(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1636
    .line 1637
    .line 1638
    move-result p0

    .line 1639
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1640
    .line 1641
    .line 1642
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1643
    .line 1644
    .line 1645
    goto/16 :goto_10e0

    .line 1646
    .line 1647
    :pswitch_66f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1648
    .line 1649
    .line 1650
    move-result p1

    .line 1651
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1652
    .line 1653
    .line 1654
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isGoogleAccountsAutoSyncAllowedAsUser(I)Z

    .line 1655
    .line 1656
    .line 1657
    move-result p0

    .line 1658
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1659
    .line 1660
    .line 1661
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1662
    .line 1663
    .line 1664
    goto/16 :goto_10e0

    .line 1665
    .line 1666
    :pswitch_682
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1667
    .line 1668
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1669
    .line 1670
    .line 1671
    move-result-object p1

    .line 1672
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1673
    .line 1674
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1675
    .line 1676
    .line 1677
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isGoogleAccountsAutoSyncAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1678
    .line 1679
    .line 1680
    move-result p0

    .line 1681
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1682
    .line 1683
    .line 1684
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1685
    .line 1686
    .line 1687
    goto/16 :goto_10e0

    .line 1688
    .line 1689
    :pswitch_699
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1690
    .line 1691
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1692
    .line 1693
    .line 1694
    move-result-object p1

    .line 1695
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1696
    .line 1697
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1698
    .line 1699
    .line 1700
    move-result p4

    .line 1701
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1702
    .line 1703
    .line 1704
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowGoogleAccountsAutoSync(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1705
    .line 1706
    .line 1707
    move-result p0

    .line 1708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1709
    .line 1710
    .line 1711
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1712
    .line 1713
    .line 1714
    goto/16 :goto_10e0

    .line 1715
    .line 1716
    :pswitch_6b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1717
    .line 1718
    .line 1719
    move-result p1

    .line 1720
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1721
    .line 1722
    .line 1723
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    .line 1724
    .line 1725
    .line 1726
    move-result p0

    .line 1727
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1728
    .line 1729
    .line 1730
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1731
    .line 1732
    .line 1733
    goto/16 :goto_10e0

    .line 1734
    .line 1735
    :pswitch_6c7
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1736
    .line 1737
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1738
    .line 1739
    .line 1740
    move-result-object p1

    .line 1741
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1742
    .line 1743
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1744
    .line 1745
    .line 1746
    move-result p4

    .line 1747
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1748
    .line 1749
    .line 1750
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowAirplaneMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1751
    .line 1752
    .line 1753
    move-result p0

    .line 1754
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1755
    .line 1756
    .line 1757
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1758
    .line 1759
    .line 1760
    goto/16 :goto_10e0

    .line 1761
    .line 1762
    :pswitch_6e2
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1763
    .line 1764
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1765
    .line 1766
    .line 1767
    move-result-object p1

    .line 1768
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1769
    .line 1770
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1771
    .line 1772
    .line 1773
    move-result p4

    .line 1774
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1775
    .line 1776
    .line 1777
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isDeveloperModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1778
    .line 1779
    .line 1780
    move-result p0

    .line 1781
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1782
    .line 1783
    .line 1784
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1785
    .line 1786
    .line 1787
    goto/16 :goto_10e0

    .line 1788
    .line 1789
    :pswitch_6fd
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1790
    .line 1791
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1792
    .line 1793
    .line 1794
    move-result-object p1

    .line 1795
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1796
    .line 1797
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1798
    .line 1799
    .line 1800
    move-result p4

    .line 1801
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1802
    .line 1803
    .line 1804
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowDeveloperMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1805
    .line 1806
    .line 1807
    move-result p0

    .line 1808
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1809
    .line 1810
    .line 1811
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1812
    .line 1813
    .line 1814
    goto/16 :goto_10e0

    .line 1815
    .line 1816
    :pswitch_718
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1817
    .line 1818
    .line 1819
    move-result p1

    .line 1820
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1821
    .line 1822
    .line 1823
    move-result p4

    .line 1824
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1825
    .line 1826
    .line 1827
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    .line 1828
    .line 1829
    .line 1830
    move-result p0

    .line 1831
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1832
    .line 1833
    .line 1834
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1835
    .line 1836
    .line 1837
    goto/16 :goto_10e0

    .line 1838
    .line 1839
    :pswitch_72f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1840
    .line 1841
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1842
    .line 1843
    .line 1844
    move-result-object p1

    .line 1845
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1846
    .line 1847
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1848
    .line 1849
    .line 1850
    move-result p4

    .line 1851
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1852
    .line 1853
    .line 1854
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFirmwareRecoveryAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1855
    .line 1856
    .line 1857
    move-result p0

    .line 1858
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1859
    .line 1860
    .line 1861
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1862
    .line 1863
    .line 1864
    goto/16 :goto_10e0

    .line 1865
    .line 1866
    :pswitch_74a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1867
    .line 1868
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1869
    .line 1870
    .line 1871
    move-result-object p1

    .line 1872
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1873
    .line 1874
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1875
    .line 1876
    .line 1877
    move-result p4

    .line 1878
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1879
    .line 1880
    .line 1881
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowFirmwareRecovery(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1882
    .line 1883
    .line 1884
    move-result p0

    .line 1885
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1886
    .line 1887
    .line 1888
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1889
    .line 1890
    .line 1891
    goto/16 :goto_10e0

    .line 1892
    .line 1893
    :pswitch_765
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1894
    .line 1895
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1896
    .line 1897
    .line 1898
    move-result-object p1

    .line 1899
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1900
    .line 1901
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1902
    .line 1903
    .line 1904
    move-result p4

    .line 1905
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1906
    .line 1907
    .line 1908
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isLockScreenEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1909
    .line 1910
    .line 1911
    move-result p0

    .line 1912
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1913
    .line 1914
    .line 1915
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1916
    .line 1917
    .line 1918
    goto/16 :goto_10e0

    .line 1919
    .line 1920
    :pswitch_780
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1921
    .line 1922
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1923
    .line 1924
    .line 1925
    move-result-object p1

    .line 1926
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1927
    .line 1928
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1929
    .line 1930
    .line 1931
    move-result p4

    .line 1932
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1933
    .line 1934
    .line 1935
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setLockScreenState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1936
    .line 1937
    .line 1938
    move-result p0

    .line 1939
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1940
    .line 1941
    .line 1942
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1943
    .line 1944
    .line 1945
    goto/16 :goto_10e0

    .line 1946
    .line 1947
    :pswitch_79b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1948
    .line 1949
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1950
    .line 1951
    .line 1952
    move-result-object p1

    .line 1953
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1954
    .line 1955
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1956
    .line 1957
    .line 1958
    move-result p4

    .line 1959
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1960
    .line 1961
    .line 1962
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 1963
    .line 1964
    .line 1965
    move-result p0

    .line 1966
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1967
    .line 1968
    .line 1969
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1970
    .line 1971
    .line 1972
    goto/16 :goto_10e0

    .line 1973
    .line 1974
    :pswitch_7b6
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1975
    .line 1976
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1977
    .line 1978
    .line 1979
    move-result-object p1

    .line 1980
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1981
    .line 1982
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1983
    .line 1984
    .line 1985
    move-result p4

    .line 1986
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1987
    .line 1988
    .line 1989
    move-result v1

    .line 1990
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1991
    .line 1992
    .line 1993
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowLockScreenView(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    .line 1994
    .line 1995
    .line 1996
    move-result p0

    .line 1997
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1998
    .line 1999
    .line 2000
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2001
    .line 2002
    .line 2003
    goto/16 :goto_10e0

    .line 2004
    .line 2005
    :pswitch_7d5
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2006
    .line 2007
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2008
    .line 2009
    .line 2010
    move-result-object p1

    .line 2011
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2012
    .line 2013
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2014
    .line 2015
    .line 2016
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2017
    .line 2018
    .line 2019
    move-result p0

    .line 2020
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2021
    .line 2022
    .line 2023
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2024
    .line 2025
    .line 2026
    goto/16 :goto_10e0

    .line 2027
    .line 2028
    :pswitch_7ec
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2029
    .line 2030
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2031
    .line 2032
    .line 2033
    move-result-object p1

    .line 2034
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2035
    .line 2036
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2037
    .line 2038
    .line 2039
    move-result p4

    .line 2040
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2041
    .line 2042
    .line 2043
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSafeMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2044
    .line 2045
    .line 2046
    move-result p0

    .line 2047
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2048
    .line 2049
    .line 2050
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2051
    .line 2052
    .line 2053
    goto/16 :goto_10e0

    .line 2054
    .line 2055
    :pswitch_807
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2056
    .line 2057
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2058
    .line 2059
    .line 2060
    move-result-object p1

    .line 2061
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2062
    .line 2063
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2064
    .line 2065
    .line 2066
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUseSecureKeypadEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2067
    .line 2068
    .line 2069
    move-result p0

    .line 2070
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2071
    .line 2072
    .line 2073
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2074
    .line 2075
    .line 2076
    goto/16 :goto_10e0

    .line 2077
    .line 2078
    :pswitch_81e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2079
    .line 2080
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2081
    .line 2082
    .line 2083
    move-result-object p1

    .line 2084
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2085
    .line 2086
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2087
    .line 2088
    .line 2089
    move-result p4

    .line 2090
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2091
    .line 2092
    .line 2093
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUseSecureKeypad(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2094
    .line 2095
    .line 2096
    move-result p0

    .line 2097
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2098
    .line 2099
    .line 2100
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2101
    .line 2102
    .line 2103
    goto/16 :goto_10e0

    .line 2104
    .line 2105
    :pswitch_839
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2106
    .line 2107
    .line 2108
    move-result p1

    .line 2109
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2110
    .line 2111
    .line 2112
    move-result p4

    .line 2113
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2114
    .line 2115
    .line 2116
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isShareListAllowedAsUser(IZ)Z

    .line 2117
    .line 2118
    .line 2119
    move-result p0

    .line 2120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2121
    .line 2122
    .line 2123
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2124
    .line 2125
    .line 2126
    goto/16 :goto_10e0

    .line 2127
    .line 2128
    :pswitch_850
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2129
    .line 2130
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2131
    .line 2132
    .line 2133
    move-result-object p1

    .line 2134
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2135
    .line 2136
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2137
    .line 2138
    .line 2139
    move-result p4

    .line 2140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2141
    .line 2142
    .line 2143
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2144
    .line 2145
    .line 2146
    move-result p0

    .line 2147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2148
    .line 2149
    .line 2150
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2151
    .line 2152
    .line 2153
    goto/16 :goto_10e0

    .line 2154
    .line 2155
    :pswitch_86b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2156
    .line 2157
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2158
    .line 2159
    .line 2160
    move-result-object p1

    .line 2161
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2162
    .line 2163
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2164
    .line 2165
    .line 2166
    move-result p4

    .line 2167
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2168
    .line 2169
    .line 2170
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowShareList(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2171
    .line 2172
    .line 2173
    move-result p0

    .line 2174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2175
    .line 2176
    .line 2177
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2178
    .line 2179
    .line 2180
    goto/16 :goto_10e0

    .line 2181
    .line 2182
    :pswitch_886
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2183
    .line 2184
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2185
    .line 2186
    .line 2187
    move-result-object p1

    .line 2188
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2189
    .line 2190
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2191
    .line 2192
    .line 2193
    move-result p4

    .line 2194
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2195
    .line 2196
    .line 2197
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2198
    .line 2199
    .line 2200
    move-result p0

    .line 2201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2202
    .line 2203
    .line 2204
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2205
    .line 2206
    .line 2207
    goto/16 :goto_10e0

    .line 2208
    .line 2209
    :pswitch_8a1
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2210
    .line 2211
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2212
    .line 2213
    .line 2214
    move-result-object p1

    .line 2215
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2216
    .line 2217
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2218
    .line 2219
    .line 2220
    move-result p4

    .line 2221
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2222
    .line 2223
    .line 2224
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowUsbHostStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2225
    .line 2226
    .line 2227
    move-result p0

    .line 2228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2229
    .line 2230
    .line 2231
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2232
    .line 2233
    .line 2234
    goto/16 :goto_10e0

    .line 2235
    .line 2236
    :pswitch_8bc
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2237
    .line 2238
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2239
    .line 2240
    .line 2241
    move-result-object p1

    .line 2242
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2243
    .line 2244
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2245
    .line 2246
    .line 2247
    move-result p4

    .line 2248
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2249
    .line 2250
    .line 2251
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isAndroidBeamAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2252
    .line 2253
    .line 2254
    move-result p0

    .line 2255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2256
    .line 2257
    .line 2258
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2259
    .line 2260
    .line 2261
    goto/16 :goto_10e0

    .line 2262
    .line 2263
    :pswitch_8d7
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2264
    .line 2265
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2266
    .line 2267
    .line 2268
    move-result-object p1

    .line 2269
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2270
    .line 2271
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2272
    .line 2273
    .line 2274
    move-result p4

    .line 2275
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2276
    .line 2277
    .line 2278
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowAndroidBeam(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2279
    .line 2280
    .line 2281
    move-result p0

    .line 2282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2283
    .line 2284
    .line 2285
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2286
    .line 2287
    .line 2288
    goto/16 :goto_10e0

    .line 2289
    .line 2290
    :pswitch_8f2
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2291
    .line 2292
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2293
    .line 2294
    .line 2295
    move-result-object p1

    .line 2296
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2297
    .line 2298
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2299
    .line 2300
    .line 2301
    move-result p4

    .line 2302
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2303
    .line 2304
    .line 2305
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSBeamAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2306
    .line 2307
    .line 2308
    move-result p0

    .line 2309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2310
    .line 2311
    .line 2312
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2313
    .line 2314
    .line 2315
    goto/16 :goto_10e0

    .line 2316
    .line 2317
    :pswitch_90d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2318
    .line 2319
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2320
    .line 2321
    .line 2322
    move-result-object p1

    .line 2323
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2324
    .line 2325
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2326
    .line 2327
    .line 2328
    move-result p4

    .line 2329
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2330
    .line 2331
    .line 2332
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSBeam(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2333
    .line 2334
    .line 2335
    move-result p0

    .line 2336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2337
    .line 2338
    .line 2339
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2340
    .line 2341
    .line 2342
    goto/16 :goto_10e0

    .line 2343
    .line 2344
    :pswitch_928
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2345
    .line 2346
    .line 2347
    move-result p1

    .line 2348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2349
    .line 2350
    .line 2351
    move-result p4

    .line 2352
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2353
    .line 2354
    .line 2355
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSVoiceAllowedAsUser(ZI)Z

    .line 2356
    .line 2357
    .line 2358
    move-result p0

    .line 2359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2360
    .line 2361
    .line 2362
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2363
    .line 2364
    .line 2365
    goto/16 :goto_10e0

    .line 2366
    .line 2367
    :pswitch_93f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2368
    .line 2369
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2370
    .line 2371
    .line 2372
    move-result-object p1

    .line 2373
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2374
    .line 2375
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2376
    .line 2377
    .line 2378
    move-result p4

    .line 2379
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2380
    .line 2381
    .line 2382
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSVoiceAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2383
    .line 2384
    .line 2385
    move-result p0

    .line 2386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2387
    .line 2388
    .line 2389
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2390
    .line 2391
    .line 2392
    goto/16 :goto_10e0

    .line 2393
    .line 2394
    :pswitch_95a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2395
    .line 2396
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2397
    .line 2398
    .line 2399
    move-result-object p1

    .line 2400
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2401
    .line 2402
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2403
    .line 2404
    .line 2405
    move-result p4

    .line 2406
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2407
    .line 2408
    .line 2409
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSVoice(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2410
    .line 2411
    .line 2412
    move-result p0

    .line 2413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2414
    .line 2415
    .line 2416
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2417
    .line 2418
    .line 2419
    goto/16 :goto_10e0

    .line 2420
    .line 2421
    :pswitch_975
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2422
    .line 2423
    .line 2424
    move-result p1

    .line 2425
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2426
    .line 2427
    .line 2428
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isClipboardShareAllowedAsUser(I)Z

    .line 2429
    .line 2430
    .line 2431
    move-result p0

    .line 2432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2433
    .line 2434
    .line 2435
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2436
    .line 2437
    .line 2438
    goto/16 :goto_10e0

    .line 2439
    .line 2440
    :pswitch_988
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2441
    .line 2442
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2443
    .line 2444
    .line 2445
    move-result-object p1

    .line 2446
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2447
    .line 2448
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2449
    .line 2450
    .line 2451
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isClipboardShareAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2452
    .line 2453
    .line 2454
    move-result p0

    .line 2455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2456
    .line 2457
    .line 2458
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2459
    .line 2460
    .line 2461
    goto/16 :goto_10e0

    .line 2462
    .line 2463
    :pswitch_99f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2464
    .line 2465
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2466
    .line 2467
    .line 2468
    move-result-object p1

    .line 2469
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2470
    .line 2471
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2472
    .line 2473
    .line 2474
    move-result p4

    .line 2475
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2476
    .line 2477
    .line 2478
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowClipboardShare(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2479
    .line 2480
    .line 2481
    move-result p0

    .line 2482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2483
    .line 2484
    .line 2485
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2486
    .line 2487
    .line 2488
    goto/16 :goto_10e0

    .line 2489
    .line 2490
    :pswitch_9ba
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2491
    .line 2492
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2493
    .line 2494
    .line 2495
    move-result-object p1

    .line 2496
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2497
    .line 2498
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2499
    .line 2500
    .line 2501
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUserMobileDataLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2502
    .line 2503
    .line 2504
    move-result p0

    .line 2505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2506
    .line 2507
    .line 2508
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2509
    .line 2510
    .line 2511
    goto/16 :goto_10e0

    .line 2512
    .line 2513
    :pswitch_9d1
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2514
    .line 2515
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2516
    .line 2517
    .line 2518
    move-result-object p1

    .line 2519
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2520
    .line 2521
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2522
    .line 2523
    .line 2524
    move-result p4

    .line 2525
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2526
    .line 2527
    .line 2528
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowUserMobileDataLimit(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2529
    .line 2530
    .line 2531
    move-result p0

    .line 2532
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2533
    .line 2534
    .line 2535
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2536
    .line 2537
    .line 2538
    goto/16 :goto_10e0

    .line 2539
    .line 2540
    :pswitch_9ec
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2541
    .line 2542
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2543
    .line 2544
    .line 2545
    move-result-object p1

    .line 2546
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2547
    .line 2548
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2549
    .line 2550
    .line 2551
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2552
    .line 2553
    .line 2554
    move-result p0

    .line 2555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2556
    .line 2557
    .line 2558
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2559
    .line 2560
    .line 2561
    goto/16 :goto_10e0

    .line 2562
    .line 2563
    :pswitch_a03
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2564
    .line 2565
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2566
    .line 2567
    .line 2568
    move-result-object p1

    .line 2569
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2570
    .line 2571
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2572
    .line 2573
    .line 2574
    move-result p4

    .line 2575
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2576
    .line 2577
    .line 2578
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowKillingActivitiesOnLeave(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2579
    .line 2580
    .line 2581
    move-result p0

    .line 2582
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2583
    .line 2584
    .line 2585
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2586
    .line 2587
    .line 2588
    goto/16 :goto_10e0

    .line 2589
    .line 2590
    :pswitch_a1e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2591
    .line 2592
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2593
    .line 2594
    .line 2595
    move-result-object p1

    .line 2596
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2597
    .line 2598
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2599
    .line 2600
    .line 2601
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isBackgroundProcessLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2602
    .line 2603
    .line 2604
    move-result p0

    .line 2605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2606
    .line 2607
    .line 2608
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2609
    .line 2610
    .line 2611
    goto/16 :goto_10e0

    .line 2612
    .line 2613
    :pswitch_a35
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2614
    .line 2615
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2616
    .line 2617
    .line 2618
    move-result-object p1

    .line 2619
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2620
    .line 2621
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2622
    .line 2623
    .line 2624
    move-result p4

    .line 2625
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2626
    .line 2627
    .line 2628
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowBackgroundProcessLimit(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2629
    .line 2630
    .line 2631
    move-result p0

    .line 2632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2633
    .line 2634
    .line 2635
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2636
    .line 2637
    .line 2638
    goto/16 :goto_10e0

    .line 2639
    .line 2640
    :pswitch_a50
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2641
    .line 2642
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2643
    .line 2644
    .line 2645
    move-result-object p1

    .line 2646
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2647
    .line 2648
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2649
    .line 2650
    .line 2651
    move-result p4

    .line 2652
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2653
    .line 2654
    .line 2655
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isWifiDirectAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2656
    .line 2657
    .line 2658
    move-result p0

    .line 2659
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2660
    .line 2661
    .line 2662
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2663
    .line 2664
    .line 2665
    goto/16 :goto_10e0

    .line 2666
    .line 2667
    :pswitch_a6b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2668
    .line 2669
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2670
    .line 2671
    .line 2672
    move-result-object p1

    .line 2673
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2674
    .line 2675
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2676
    .line 2677
    .line 2678
    move-result p4

    .line 2679
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2680
    .line 2681
    .line 2682
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowWifiDirect(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2683
    .line 2684
    .line 2685
    move-result p0

    .line 2686
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2687
    .line 2688
    .line 2689
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2690
    .line 2691
    .line 2692
    goto/16 :goto_10e0

    .line 2693
    .line 2694
    :pswitch_a86
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2695
    .line 2696
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2697
    .line 2698
    .line 2699
    move-result-object p1

    .line 2700
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2701
    .line 2702
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2703
    .line 2704
    .line 2705
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isStopSystemAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2706
    .line 2707
    .line 2708
    move-result p0

    .line 2709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2710
    .line 2711
    .line 2712
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2713
    .line 2714
    .line 2715
    goto/16 :goto_10e0

    .line 2716
    .line 2717
    :pswitch_a9d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2718
    .line 2719
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2720
    .line 2721
    .line 2722
    move-result-object p1

    .line 2723
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2724
    .line 2725
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2726
    .line 2727
    .line 2728
    move-result p4

    .line 2729
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2730
    .line 2731
    .line 2732
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowStopSystemApp(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2733
    .line 2734
    .line 2735
    move-result p0

    .line 2736
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2737
    .line 2738
    .line 2739
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2740
    .line 2741
    .line 2742
    goto/16 :goto_10e0

    .line 2743
    .line 2744
    :pswitch_ab8
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2745
    .line 2746
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2747
    .line 2748
    .line 2749
    move-result-object p1

    .line 2750
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2751
    .line 2752
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2753
    .line 2754
    .line 2755
    move-result p4

    .line 2756
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2757
    .line 2758
    .line 2759
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isVideoRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2760
    .line 2761
    .line 2762
    move-result p0

    .line 2763
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2764
    .line 2765
    .line 2766
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2767
    .line 2768
    .line 2769
    goto/16 :goto_10e0

    .line 2770
    .line 2771
    :pswitch_ad3
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2772
    .line 2773
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2774
    .line 2775
    .line 2776
    move-result-object p1

    .line 2777
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2778
    .line 2779
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2780
    .line 2781
    .line 2782
    move-result p4

    .line 2783
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2784
    .line 2785
    .line 2786
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowVideoRecord(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2787
    .line 2788
    .line 2789
    move-result p0

    .line 2790
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2791
    .line 2792
    .line 2793
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2794
    .line 2795
    .line 2796
    goto/16 :goto_10e0

    .line 2797
    .line 2798
    :pswitch_aee
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2799
    .line 2800
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2801
    .line 2802
    .line 2803
    move-result-object p1

    .line 2804
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2805
    .line 2806
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2807
    .line 2808
    .line 2809
    move-result p4

    .line 2810
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2811
    .line 2812
    .line 2813
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isAudioRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2814
    .line 2815
    .line 2816
    move-result p0

    .line 2817
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2818
    .line 2819
    .line 2820
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2821
    .line 2822
    .line 2823
    goto/16 :goto_10e0

    .line 2824
    .line 2825
    :pswitch_b09
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2826
    .line 2827
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2828
    .line 2829
    .line 2830
    move-result-object p1

    .line 2831
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2832
    .line 2833
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2834
    .line 2835
    .line 2836
    move-result p4

    .line 2837
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2838
    .line 2839
    .line 2840
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowAudioRecord(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2841
    .line 2842
    .line 2843
    move-result p0

    .line 2844
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2845
    .line 2846
    .line 2847
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2848
    .line 2849
    .line 2850
    goto/16 :goto_10e0

    .line 2851
    .line 2852
    :pswitch_b24
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2853
    .line 2854
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2855
    .line 2856
    .line 2857
    move-result-object p1

    .line 2858
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2859
    .line 2860
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2861
    .line 2862
    .line 2863
    move-result p4

    .line 2864
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2865
    .line 2866
    .line 2867
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2868
    .line 2869
    .line 2870
    move-result p0

    .line 2871
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2872
    .line 2873
    .line 2874
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2875
    .line 2876
    .line 2877
    goto/16 :goto_10e0

    .line 2878
    .line 2879
    :pswitch_b3f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2880
    .line 2881
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2882
    .line 2883
    .line 2884
    move-result-object p1

    .line 2885
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2886
    .line 2887
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2888
    .line 2889
    .line 2890
    move-result p4

    .line 2891
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2892
    .line 2893
    .line 2894
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowPowerOff(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2895
    .line 2896
    .line 2897
    move-result p0

    .line 2898
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2899
    .line 2900
    .line 2901
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2902
    .line 2903
    .line 2904
    goto/16 :goto_10e0

    .line 2905
    .line 2906
    :pswitch_b5a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2907
    .line 2908
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2909
    .line 2910
    .line 2911
    move-result-object p1

    .line 2912
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2913
    .line 2914
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2915
    .line 2916
    .line 2917
    move-result p4

    .line 2918
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2919
    .line 2920
    .line 2921
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isStatusBarExpansionAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2922
    .line 2923
    .line 2924
    move-result p0

    .line 2925
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2926
    .line 2927
    .line 2928
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2929
    .line 2930
    .line 2931
    goto/16 :goto_10e0

    .line 2932
    .line 2933
    :pswitch_b75
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2934
    .line 2935
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2936
    .line 2937
    .line 2938
    move-result-object p1

    .line 2939
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2940
    .line 2941
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2942
    .line 2943
    .line 2944
    move-result p4

    .line 2945
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2946
    .line 2947
    .line 2948
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowStatusBarExpansion(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2949
    .line 2950
    .line 2951
    move-result p0

    .line 2952
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2953
    .line 2954
    .line 2955
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2956
    .line 2957
    .line 2958
    goto/16 :goto_10e0

    .line 2959
    .line 2960
    :pswitch_b90
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2961
    .line 2962
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2963
    .line 2964
    .line 2965
    move-result-object p1

    .line 2966
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2967
    .line 2968
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2969
    .line 2970
    .line 2971
    move-result p4

    .line 2972
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2973
    .line 2974
    .line 2975
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2976
    .line 2977
    .line 2978
    move-result p0

    .line 2979
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2980
    .line 2981
    .line 2982
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2983
    .line 2984
    .line 2985
    goto/16 :goto_10e0

    .line 2986
    .line 2987
    :pswitch_bab
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2988
    .line 2989
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2990
    .line 2991
    .line 2992
    move-result-object p1

    .line 2993
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2994
    .line 2995
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2996
    .line 2997
    .line 2998
    move-result p4

    .line 2999
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3000
    .line 3001
    .line 3002
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowWallpaperChange(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3003
    .line 3004
    .line 3005
    move-result p0

    .line 3006
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3007
    .line 3008
    .line 3009
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3010
    .line 3011
    .line 3012
    goto/16 :goto_10e0

    .line 3013
    .line 3014
    :pswitch_bc6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3015
    .line 3016
    .line 3017
    move-result p1

    .line 3018
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3019
    .line 3020
    .line 3021
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isGoogleCrashReportAllowedAsUser(I)Z

    .line 3022
    .line 3023
    .line 3024
    move-result p0

    .line 3025
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3026
    .line 3027
    .line 3028
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3029
    .line 3030
    .line 3031
    goto/16 :goto_10e0

    .line 3032
    .line 3033
    :pswitch_bd9
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3034
    .line 3035
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3036
    .line 3037
    .line 3038
    move-result-object p1

    .line 3039
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3040
    .line 3041
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3042
    .line 3043
    .line 3044
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isGoogleCrashReportAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 3045
    .line 3046
    .line 3047
    move-result p0

    .line 3048
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3049
    .line 3050
    .line 3051
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3052
    .line 3053
    .line 3054
    goto/16 :goto_10e0

    .line 3055
    .line 3056
    :pswitch_bf0
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3057
    .line 3058
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3059
    .line 3060
    .line 3061
    move-result-object p1

    .line 3062
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3063
    .line 3064
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3065
    .line 3066
    .line 3067
    move-result p4

    .line 3068
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3069
    .line 3070
    .line 3071
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowGoogleCrashReport(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3072
    .line 3073
    .line 3074
    move-result p0

    .line 3075
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3076
    .line 3077
    .line 3078
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3079
    .line 3080
    .line 3081
    goto/16 :goto_10e0

    .line 3082
    .line 3083
    :pswitch_c0b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3084
    .line 3085
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3086
    .line 3087
    .line 3088
    move-result-object p1

    .line 3089
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3090
    .line 3091
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3092
    .line 3093
    .line 3094
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 3095
    .line 3096
    .line 3097
    move-result p0

    .line 3098
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3099
    .line 3100
    .line 3101
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3102
    .line 3103
    .line 3104
    goto/16 :goto_10e0

    .line 3105
    .line 3106
    :pswitch_c22
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3107
    .line 3108
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3109
    .line 3110
    .line 3111
    move-result-object p1

    .line 3112
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3113
    .line 3114
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3115
    .line 3116
    .line 3117
    move-result p4

    .line 3118
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3119
    .line 3120
    .line 3121
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSDCardWrite(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3122
    .line 3123
    .line 3124
    move-result p0

    .line 3125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3126
    .line 3127
    .line 3128
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3129
    .line 3130
    .line 3131
    goto/16 :goto_10e0

    .line 3132
    .line 3133
    :pswitch_c3d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3134
    .line 3135
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3136
    .line 3137
    .line 3138
    move-result-object p1

    .line 3139
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3140
    .line 3141
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3142
    .line 3143
    .line 3144
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isOTAUpgradeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 3145
    .line 3146
    .line 3147
    move-result p0

    .line 3148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3149
    .line 3150
    .line 3151
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3152
    .line 3153
    .line 3154
    goto/16 :goto_10e0

    .line 3155
    .line 3156
    :pswitch_c54
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3157
    .line 3158
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3159
    .line 3160
    .line 3161
    move-result-object p1

    .line 3162
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3163
    .line 3164
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3165
    .line 3166
    .line 3167
    move-result p4

    .line 3168
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3169
    .line 3170
    .line 3171
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowOTAUpgrade(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3172
    .line 3173
    .line 3174
    move-result p0

    .line 3175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3176
    .line 3177
    .line 3178
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3179
    .line 3180
    .line 3181
    goto/16 :goto_10e0

    .line 3182
    .line 3183
    :pswitch_c6f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3184
    .line 3185
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3186
    .line 3187
    .line 3188
    move-result-object p1

    .line 3189
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3190
    .line 3191
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3192
    .line 3193
    .line 3194
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isVpnAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 3195
    .line 3196
    .line 3197
    move-result p0

    .line 3198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3199
    .line 3200
    .line 3201
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3202
    .line 3203
    .line 3204
    goto/16 :goto_10e0

    .line 3205
    .line 3206
    :pswitch_c86
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3207
    .line 3208
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3209
    .line 3210
    .line 3211
    move-result-object p1

    .line 3212
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3213
    .line 3214
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3215
    .line 3216
    .line 3217
    move-result p4

    .line 3218
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3219
    .line 3220
    .line 3221
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowVpn(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3222
    .line 3223
    .line 3224
    move-result p0

    .line 3225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3226
    .line 3227
    .line 3228
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3229
    .line 3230
    .line 3231
    goto/16 :goto_10e0

    .line 3232
    .line 3233
    :pswitch_ca1
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3234
    .line 3235
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3236
    .line 3237
    .line 3238
    move-result-object p1

    .line 3239
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3240
    .line 3241
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3242
    .line 3243
    .line 3244
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 3245
    .line 3246
    .line 3247
    move-result p0

    .line 3248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3249
    .line 3250
    .line 3251
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3252
    .line 3253
    .line 3254
    goto/16 :goto_10e0

    .line 3255
    .line 3256
    :pswitch_cb8
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3257
    .line 3258
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3259
    .line 3260
    .line 3261
    move-result-object p1

    .line 3262
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3263
    .line 3264
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3265
    .line 3266
    .line 3267
    move-result p4

    .line 3268
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3269
    .line 3270
    .line 3271
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setAllowNonMarketApps(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3272
    .line 3273
    .line 3274
    move-result p0

    .line 3275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3276
    .line 3277
    .line 3278
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3279
    .line 3280
    .line 3281
    goto/16 :goto_10e0

    .line 3282
    .line 3283
    :pswitch_cd3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3284
    .line 3285
    .line 3286
    move-result p1

    .line 3287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3288
    .line 3289
    .line 3290
    move-result p4

    .line 3291
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3292
    .line 3293
    .line 3294
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    .line 3295
    .line 3296
    .line 3297
    move-result p0

    .line 3298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3299
    .line 3300
    .line 3301
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3302
    .line 3303
    .line 3304
    goto/16 :goto_10e0

    .line 3305
    .line 3306
    :pswitch_cea
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3307
    .line 3308
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3309
    .line 3310
    .line 3311
    move-result-object p1

    .line 3312
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3313
    .line 3314
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3315
    .line 3316
    .line 3317
    move-result p4

    .line 3318
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3319
    .line 3320
    .line 3321
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3322
    .line 3323
    .line 3324
    move-result p0

    .line 3325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3326
    .line 3327
    .line 3328
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3329
    .line 3330
    .line 3331
    goto/16 :goto_10e0

    .line 3332
    .line 3333
    :pswitch_d05
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3334
    .line 3335
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3336
    .line 3337
    .line 3338
    move-result-object p1

    .line 3339
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3340
    .line 3341
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3342
    .line 3343
    .line 3344
    move-result p4

    .line 3345
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3346
    .line 3347
    .line 3348
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSettingsChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3349
    .line 3350
    .line 3351
    move-result p0

    .line 3352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3353
    .line 3354
    .line 3355
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3356
    .line 3357
    .line 3358
    goto/16 :goto_10e0

    .line 3359
    .line 3360
    :pswitch_d20
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3361
    .line 3362
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3363
    .line 3364
    .line 3365
    move-result-object p1

    .line 3366
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3367
    .line 3368
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3369
    .line 3370
    .line 3371
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 3372
    .line 3373
    .line 3374
    move-result p0

    .line 3375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3376
    .line 3377
    .line 3378
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3379
    .line 3380
    .line 3381
    goto/16 :goto_10e0

    .line 3382
    .line 3383
    :pswitch_d37
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3384
    .line 3385
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3386
    .line 3387
    .line 3388
    move-result-object p1

    .line 3389
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3390
    .line 3391
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3392
    .line 3393
    .line 3394
    move-result p4

    .line 3395
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3396
    .line 3397
    .line 3398
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setCellularData(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3399
    .line 3400
    .line 3401
    move-result p0

    .line 3402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3403
    .line 3404
    .line 3405
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3406
    .line 3407
    .line 3408
    goto/16 :goto_10e0

    .line 3409
    .line 3410
    :pswitch_d52
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3411
    .line 3412
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3413
    .line 3414
    .line 3415
    move-result-object p1

    .line 3416
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3417
    .line 3418
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3419
    .line 3420
    .line 3421
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isBackgroundDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 3422
    .line 3423
    .line 3424
    move-result p0

    .line 3425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3426
    .line 3427
    .line 3428
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3429
    .line 3430
    .line 3431
    goto/16 :goto_10e0

    .line 3432
    .line 3433
    :pswitch_d69
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3434
    .line 3435
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3436
    .line 3437
    .line 3438
    move-result-object p1

    .line 3439
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3440
    .line 3441
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3442
    .line 3443
    .line 3444
    move-result p4

    .line 3445
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3446
    .line 3447
    .line 3448
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setBackgroundData(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3449
    .line 3450
    .line 3451
    move-result p0

    .line 3452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3453
    .line 3454
    .line 3455
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3456
    .line 3457
    .line 3458
    goto/16 :goto_10e0

    .line 3459
    .line 3460
    :pswitch_d84
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3461
    .line 3462
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3463
    .line 3464
    .line 3465
    move-result-object p1

    .line 3466
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3467
    .line 3468
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3469
    .line 3470
    .line 3471
    move-result p4

    .line 3472
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3473
    .line 3474
    .line 3475
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isHomeKeyEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3476
    .line 3477
    .line 3478
    move-result p0

    .line 3479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3480
    .line 3481
    .line 3482
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3483
    .line 3484
    .line 3485
    goto/16 :goto_10e0

    .line 3486
    .line 3487
    :pswitch_d9f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3488
    .line 3489
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3490
    .line 3491
    .line 3492
    move-result-object p1

    .line 3493
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3494
    .line 3495
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3496
    .line 3497
    .line 3498
    move-result p4

    .line 3499
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3500
    .line 3501
    .line 3502
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setHomeKeyState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3503
    .line 3504
    .line 3505
    move-result p0

    .line 3506
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3507
    .line 3508
    .line 3509
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3510
    .line 3511
    .line 3512
    goto/16 :goto_10e0

    .line 3513
    .line 3514
    :pswitch_dba
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3515
    .line 3516
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3517
    .line 3518
    .line 3519
    move-result-object p1

    .line 3520
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3521
    .line 3522
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3523
    .line 3524
    .line 3525
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 3526
    .line 3527
    .line 3528
    move-result p0

    .line 3529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3530
    .line 3531
    .line 3532
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3533
    .line 3534
    .line 3535
    goto/16 :goto_10e0

    .line 3536
    .line 3537
    :pswitch_dd1
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3538
    .line 3539
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3540
    .line 3541
    .line 3542
    move-result-object p1

    .line 3543
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3544
    .line 3545
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3546
    .line 3547
    .line 3548
    move-result p4

    .line 3549
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3550
    .line 3551
    .line 3552
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowFactoryReset(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3553
    .line 3554
    .line 3555
    move-result p0

    .line 3556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3557
    .line 3558
    .line 3559
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3560
    .line 3561
    .line 3562
    goto/16 :goto_10e0

    .line 3563
    .line 3564
    :pswitch_dec
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3565
    .line 3566
    .line 3567
    move-result p1

    .line 3568
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3569
    .line 3570
    .line 3571
    move-result p4

    .line 3572
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3573
    .line 3574
    .line 3575
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isClipboardAllowedAsUser(ZI)Z

    .line 3576
    .line 3577
    .line 3578
    move-result p0

    .line 3579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3580
    .line 3581
    .line 3582
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3583
    .line 3584
    .line 3585
    goto/16 :goto_10e0

    .line 3586
    .line 3587
    :pswitch_e03
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3588
    .line 3589
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3590
    .line 3591
    .line 3592
    move-result-object p1

    .line 3593
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3594
    .line 3595
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3596
    .line 3597
    .line 3598
    move-result p4

    .line 3599
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3600
    .line 3601
    .line 3602
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3603
    .line 3604
    .line 3605
    move-result p0

    .line 3606
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3607
    .line 3608
    .line 3609
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3610
    .line 3611
    .line 3612
    goto/16 :goto_10e0

    .line 3613
    .line 3614
    :pswitch_e1e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3615
    .line 3616
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3617
    .line 3618
    .line 3619
    move-result-object p1

    .line 3620
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3621
    .line 3622
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3623
    .line 3624
    .line 3625
    move-result p4

    .line 3626
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3627
    .line 3628
    .line 3629
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setClipboardEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3630
    .line 3631
    .line 3632
    move-result p0

    .line 3633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3634
    .line 3635
    .line 3636
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3637
    .line 3638
    .line 3639
    goto/16 :goto_10e0

    .line 3640
    .line 3641
    :pswitch_e39
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3642
    .line 3643
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3644
    .line 3645
    .line 3646
    move-result-object p1

    .line 3647
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3648
    .line 3649
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3650
    .line 3651
    .line 3652
    move-result p4

    .line 3653
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3654
    .line 3655
    .line 3656
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isBackupAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3657
    .line 3658
    .line 3659
    move-result p0

    .line 3660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3661
    .line 3662
    .line 3663
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3664
    .line 3665
    .line 3666
    goto/16 :goto_10e0

    .line 3667
    .line 3668
    :pswitch_e54
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3669
    .line 3670
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3671
    .line 3672
    .line 3673
    move-result-object p1

    .line 3674
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3675
    .line 3676
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3677
    .line 3678
    .line 3679
    move-result p4

    .line 3680
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3681
    .line 3682
    .line 3683
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setBackup(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3684
    .line 3685
    .line 3686
    move-result p0

    .line 3687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3688
    .line 3689
    .line 3690
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3691
    .line 3692
    .line 3693
    goto/16 :goto_10e0

    .line 3694
    .line 3695
    :pswitch_e6f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3696
    .line 3697
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3698
    .line 3699
    .line 3700
    move-result-object p1

    .line 3701
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3702
    .line 3703
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3704
    .line 3705
    .line 3706
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 3707
    .line 3708
    .line 3709
    move-result p0

    .line 3710
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3711
    .line 3712
    .line 3713
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3714
    .line 3715
    .line 3716
    goto/16 :goto_10e0

    .line 3717
    .line 3718
    :pswitch_e86
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3719
    .line 3720
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3721
    .line 3722
    .line 3723
    move-result-object p1

    .line 3724
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3725
    .line 3726
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3727
    .line 3728
    .line 3729
    move-result p4

    .line 3730
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3731
    .line 3732
    .line 3733
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setMockLocation(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3734
    .line 3735
    .line 3736
    move-result p0

    .line 3737
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3738
    .line 3739
    .line 3740
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3741
    .line 3742
    .line 3743
    goto/16 :goto_10e0

    .line 3744
    .line 3745
    :pswitch_ea1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3746
    .line 3747
    .line 3748
    move-result p1

    .line 3749
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3750
    .line 3751
    .line 3752
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    .line 3753
    .line 3754
    .line 3755
    move-result p0

    .line 3756
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3757
    .line 3758
    .line 3759
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3760
    .line 3761
    .line 3762
    goto/16 :goto_10e0

    .line 3763
    .line 3764
    :pswitch_eb4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3765
    .line 3766
    .line 3767
    move-result p1

    .line 3768
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3769
    .line 3770
    .line 3771
    move-result p4

    .line 3772
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3773
    .line 3774
    .line 3775
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenCaptureEnabledEx(IZ)Z

    .line 3776
    .line 3777
    .line 3778
    move-result p0

    .line 3779
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3780
    .line 3781
    .line 3782
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3783
    .line 3784
    .line 3785
    goto/16 :goto_10e0

    .line 3786
    .line 3787
    :pswitch_ecb
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3788
    .line 3789
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3790
    .line 3791
    .line 3792
    move-result-object p1

    .line 3793
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3794
    .line 3795
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3796
    .line 3797
    .line 3798
    move-result p4

    .line 3799
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3800
    .line 3801
    .line 3802
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3803
    .line 3804
    .line 3805
    move-result p0

    .line 3806
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3807
    .line 3808
    .line 3809
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3810
    .line 3811
    .line 3812
    goto/16 :goto_10e0

    .line 3813
    .line 3814
    :pswitch_ee6
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3815
    .line 3816
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3817
    .line 3818
    .line 3819
    move-result-object p1

    .line 3820
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3821
    .line 3822
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3823
    .line 3824
    .line 3825
    move-result p4

    .line 3826
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3827
    .line 3828
    .line 3829
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setScreenCapture(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3830
    .line 3831
    .line 3832
    move-result p0

    .line 3833
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3834
    .line 3835
    .line 3836
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3837
    .line 3838
    .line 3839
    goto/16 :goto_10e0

    .line 3840
    .line 3841
    :pswitch_f01
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3842
    .line 3843
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3844
    .line 3845
    .line 3846
    move-result-object p1

    .line 3847
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3848
    .line 3849
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3850
    .line 3851
    .line 3852
    move-result p4

    .line 3853
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3854
    .line 3855
    .line 3856
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbMediaPlayerAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3857
    .line 3858
    .line 3859
    move-result p0

    .line 3860
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3861
    .line 3862
    .line 3863
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3864
    .line 3865
    .line 3866
    goto/16 :goto_10e0

    .line 3867
    .line 3868
    :pswitch_f1c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3869
    .line 3870
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3871
    .line 3872
    .line 3873
    move-result-object p1

    .line 3874
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3875
    .line 3876
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3877
    .line 3878
    .line 3879
    move-result p4

    .line 3880
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3881
    .line 3882
    .line 3883
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUsbMediaPlayerAvailability(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3884
    .line 3885
    .line 3886
    move-result p0

    .line 3887
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3888
    .line 3889
    .line 3890
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3891
    .line 3892
    .line 3893
    goto/16 :goto_10e0

    .line 3894
    .line 3895
    :pswitch_f37
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3896
    .line 3897
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3898
    .line 3899
    .line 3900
    move-result-object p1

    .line 3901
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3902
    .line 3903
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3904
    .line 3905
    .line 3906
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 3907
    .line 3908
    .line 3909
    move-result p0

    .line 3910
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3911
    .line 3912
    .line 3913
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3914
    .line 3915
    .line 3916
    goto/16 :goto_10e0

    .line 3917
    .line 3918
    :pswitch_f4e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3919
    .line 3920
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3921
    .line 3922
    .line 3923
    move-result-object p1

    .line 3924
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3925
    .line 3926
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3927
    .line 3928
    .line 3929
    move-result p4

    .line 3930
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3931
    .line 3932
    .line 3933
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3934
    .line 3935
    .line 3936
    move-result p0

    .line 3937
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3938
    .line 3939
    .line 3940
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3941
    .line 3942
    .line 3943
    goto/16 :goto_10e0

    .line 3944
    .line 3945
    :pswitch_f69
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3946
    .line 3947
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3948
    .line 3949
    .line 3950
    move-result-object p1

    .line 3951
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3952
    .line 3953
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3954
    .line 3955
    .line 3956
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 3957
    .line 3958
    .line 3959
    move-result p0

    .line 3960
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3961
    .line 3962
    .line 3963
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3964
    .line 3965
    .line 3966
    goto/16 :goto_10e0

    .line 3967
    .line 3968
    :pswitch_f80
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3969
    .line 3970
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3971
    .line 3972
    .line 3973
    move-result-object p1

    .line 3974
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3975
    .line 3976
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3977
    .line 3978
    .line 3979
    move-result p4

    .line 3980
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3981
    .line 3982
    .line 3983
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3984
    .line 3985
    .line 3986
    move-result p0

    .line 3987
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3988
    .line 3989
    .line 3990
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3991
    .line 3992
    .line 3993
    goto/16 :goto_10e0

    .line 3994
    .line 3995
    :pswitch_f9b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3996
    .line 3997
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3998
    .line 3999
    .line 4000
    move-result-object p1

    .line 4001
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4002
    .line 4003
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4004
    .line 4005
    .line 4006
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 4007
    .line 4008
    .line 4009
    move-result p0

    .line 4010
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4011
    .line 4012
    .line 4013
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4014
    .line 4015
    .line 4016
    goto/16 :goto_10e0

    .line 4017
    .line 4018
    :pswitch_fb2
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4019
    .line 4020
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4021
    .line 4022
    .line 4023
    move-result-object p1

    .line 4024
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4025
    .line 4026
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4027
    .line 4028
    .line 4029
    move-result p4

    .line 4030
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4031
    .line 4032
    .line 4033
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setWifiTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 4034
    .line 4035
    .line 4036
    move-result p0

    .line 4037
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4038
    .line 4039
    .line 4040
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4041
    .line 4042
    .line 4043
    goto/16 :goto_10e0

    .line 4044
    .line 4045
    :pswitch_fcd
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4046
    .line 4047
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4048
    .line 4049
    .line 4050
    move-result-object p1

    .line 4051
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4052
    .line 4053
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4054
    .line 4055
    .line 4056
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 4057
    .line 4058
    .line 4059
    move-result p0

    .line 4060
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4061
    .line 4062
    .line 4063
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4064
    .line 4065
    .line 4066
    goto/16 :goto_10e0

    .line 4067
    .line 4068
    :pswitch_fe4
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4069
    .line 4070
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4071
    .line 4072
    .line 4073
    move-result-object p1

    .line 4074
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4075
    .line 4076
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4077
    .line 4078
    .line 4079
    move-result p4

    .line 4080
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4081
    .line 4082
    .line 4083
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUsbTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 4084
    .line 4085
    .line 4086
    move-result p0

    .line 4087
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4088
    .line 4089
    .line 4090
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4091
    .line 4092
    .line 4093
    goto/16 :goto_10e0

    .line 4094
    .line 4095
    :pswitch_fff
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4096
    .line 4097
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4098
    .line 4099
    .line 4100
    move-result-object p1

    .line 4101
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4102
    .line 4103
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4104
    .line 4105
    .line 4106
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isBluetoothTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 4107
    .line 4108
    .line 4109
    move-result p0

    .line 4110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4111
    .line 4112
    .line 4113
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4114
    .line 4115
    .line 4116
    goto/16 :goto_10e0

    .line 4117
    .line 4118
    :pswitch_1016
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4119
    .line 4120
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4121
    .line 4122
    .line 4123
    move-result-object p1

    .line 4124
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4125
    .line 4126
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4127
    .line 4128
    .line 4129
    move-result p4

    .line 4130
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4131
    .line 4132
    .line 4133
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setBluetoothTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 4134
    .line 4135
    .line 4136
    move-result p0

    .line 4137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4138
    .line 4139
    .line 4140
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4141
    .line 4142
    .line 4143
    goto/16 :goto_10e0

    .line 4144
    .line 4145
    :pswitch_1031
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4146
    .line 4147
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4148
    .line 4149
    .line 4150
    move-result-object p1

    .line 4151
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4152
    .line 4153
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4154
    .line 4155
    .line 4156
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSdCardEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 4157
    .line 4158
    .line 4159
    move-result p0

    .line 4160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4161
    .line 4162
    .line 4163
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4164
    .line 4165
    .line 4166
    goto/16 :goto_10e0

    .line 4167
    .line 4168
    :pswitch_1048
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4169
    .line 4170
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4171
    .line 4172
    .line 4173
    move-result-object p1

    .line 4174
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4175
    .line 4176
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4177
    .line 4178
    .line 4179
    move-result p4

    .line 4180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4181
    .line 4182
    .line 4183
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setSdCardState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 4184
    .line 4185
    .line 4186
    move-result p0

    .line 4187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4188
    .line 4189
    .line 4190
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4191
    .line 4192
    .line 4193
    goto/16 :goto_10e0

    .line 4194
    .line 4195
    :pswitch_1063
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4196
    .line 4197
    .line 4198
    move-result p1

    .line 4199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4200
    .line 4201
    .line 4202
    move-result p4

    .line 4203
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4204
    .line 4205
    .line 4206
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    .line 4207
    .line 4208
    .line 4209
    move-result p0

    .line 4210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4211
    .line 4212
    .line 4213
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4214
    .line 4215
    .line 4216
    goto :goto_10e0

    .line 4217
    :pswitch_1079
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4218
    .line 4219
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4220
    .line 4221
    .line 4222
    move-result-object p1

    .line 4223
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4224
    .line 4225
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4226
    .line 4227
    .line 4228
    move-result p4

    .line 4229
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4230
    .line 4231
    .line 4232
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 4233
    .line 4234
    .line 4235
    move-result p0

    .line 4236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4237
    .line 4238
    .line 4239
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4240
    .line 4241
    .line 4242
    goto :goto_10e0

    .line 4243
    :pswitch_1093
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4244
    .line 4245
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4246
    .line 4247
    .line 4248
    move-result-object p1

    .line 4249
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4250
    .line 4251
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4252
    .line 4253
    .line 4254
    move-result p4

    .line 4255
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4256
    .line 4257
    .line 4258
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setMicrophoneState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 4259
    .line 4260
    .line 4261
    move-result p0

    .line 4262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4263
    .line 4264
    .line 4265
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4266
    .line 4267
    .line 4268
    goto :goto_10e0

    .line 4269
    :pswitch_10ad
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4270
    .line 4271
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4272
    .line 4273
    .line 4274
    move-result-object p1

    .line 4275
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4276
    .line 4277
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4278
    .line 4279
    .line 4280
    move-result p4

    .line 4281
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4282
    .line 4283
    .line 4284
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 4285
    .line 4286
    .line 4287
    move-result p0

    .line 4288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4289
    .line 4290
    .line 4291
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4292
    .line 4293
    .line 4294
    goto :goto_10e0

    .line 4295
    :pswitch_10c7
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4296
    .line 4297
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4298
    .line 4299
    .line 4300
    move-result-object p1

    .line 4301
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4302
    .line 4303
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4304
    .line 4305
    .line 4306
    move-result p4

    .line 4307
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4308
    .line 4309
    .line 4310
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setCamera(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 4311
    .line 4312
    .line 4313
    move-result p0

    .line 4314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4315
    .line 4316
    .line 4317
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4318
    .line 4319
    .line 4320
    :goto_10e0
    return v0

    .line 4321
    :cond_10e1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4322
    .line 4323
    .line 4324
    return v0

    .line 4325
    nop

    .line 4326
    :pswitch_data_10e6
    .packed-switch 0x1
        :pswitch_10c7
        :pswitch_10ad
        :pswitch_1093
        :pswitch_1079
        :pswitch_1063
        :pswitch_1048
        :pswitch_1031
        :pswitch_1016
        :pswitch_fff
        :pswitch_fe4
        :pswitch_fcd
        :pswitch_fb2
        :pswitch_f9b
        :pswitch_f80
        :pswitch_f69
        :pswitch_f4e
        :pswitch_f37
        :pswitch_f1c
        :pswitch_f01
        :pswitch_ee6
        :pswitch_ecb
        :pswitch_eb4
        :pswitch_ea1
        :pswitch_e86
        :pswitch_e6f
        :pswitch_e54
        :pswitch_e39
        :pswitch_e1e
        :pswitch_e03
        :pswitch_dec
        :pswitch_dd1
        :pswitch_dba
        :pswitch_d9f
        :pswitch_d84
        :pswitch_d69
        :pswitch_d52
        :pswitch_d37
        :pswitch_d20
        :pswitch_d05
        :pswitch_cea
        :pswitch_cd3
        :pswitch_cb8
        :pswitch_ca1
        :pswitch_c86
        :pswitch_c6f
        :pswitch_c54
        :pswitch_c3d
        :pswitch_c22
        :pswitch_c0b
        :pswitch_bf0
        :pswitch_bd9
        :pswitch_bc6
        :pswitch_bab
        :pswitch_b90
        :pswitch_b75
        :pswitch_b5a
        :pswitch_b3f
        :pswitch_b24
        :pswitch_b09
        :pswitch_aee
        :pswitch_ad3
        :pswitch_ab8
        :pswitch_a9d
        :pswitch_a86
        :pswitch_a6b
        :pswitch_a50
        :pswitch_a35
        :pswitch_a1e
        :pswitch_a03
        :pswitch_9ec
        :pswitch_9d1
        :pswitch_9ba
        :pswitch_99f
        :pswitch_988
        :pswitch_975
        :pswitch_95a
        :pswitch_93f
        :pswitch_928
        :pswitch_90d
        :pswitch_8f2
        :pswitch_8d7
        :pswitch_8bc
        :pswitch_8a1
        :pswitch_886
        :pswitch_86b
        :pswitch_850
        :pswitch_839
        :pswitch_81e
        :pswitch_807
        :pswitch_7ec
        :pswitch_7d5
        :pswitch_7b6
        :pswitch_79b
        :pswitch_780
        :pswitch_765
        :pswitch_74a
        :pswitch_72f
        :pswitch_718
        :pswitch_6fd
        :pswitch_6e2
        :pswitch_6c7
        :pswitch_6b4
        :pswitch_699
        :pswitch_682
        :pswitch_66f
        :pswitch_654
        :pswitch_639
        :pswitch_61e
        :pswitch_603
        :pswitch_5e8
        :pswitch_5cd
        :pswitch_5b2
        :pswitch_597
        :pswitch_57c
        :pswitch_561
        :pswitch_546
        :pswitch_52b
        :pswitch_514
        :pswitch_4f9
        :pswitch_4de
        :pswitch_4c3
        :pswitch_4a8
        :pswitch_491
        :pswitch_476
        :pswitch_45f
        :pswitch_448
        :pswitch_435
        :pswitch_41a
        :pswitch_403
        :pswitch_3ec
        :pswitch_3d1
        :pswitch_3b2
        :pswitch_397
        :pswitch_370
        :pswitch_359
        :pswitch_342
        :pswitch_327
        :pswitch_30c
        :pswitch_2f1
        :pswitch_2e5
        :pswitch_2ca
        :pswitch_2b3
        :pswitch_298
        :pswitch_28c
        :pswitch_27d
        :pswitch_262
        :pswitch_24b
        :pswitch_230
        :pswitch_219
        :pswitch_1fe
        :pswitch_1e7
        :pswitch_1cc
        :pswitch_1c0
        :pswitch_1a5
        :pswitch_18a
        :pswitch_173
        :pswitch_160
        :pswitch_145
        :pswitch_12a
        :pswitch_10f
        :pswitch_f4
        :pswitch_d9
        :pswitch_be
        :pswitch_a7
        :pswitch_90
        :pswitch_79
        :pswitch_6a
        :pswitch_3d
        :pswitch_26
        :pswitch_1a
    .end packed-switch
    .line 4327
    .line 4328
    .line 4329
    .line 4330
    .line 4331
    .line 4332
    .line 4333
    .line 4334
    .line 4335
    .line 4336
    .line 4337
    .line 4338
    .line 4339
    .line 4340
    .line 4341
    .line 4342
    .line 4343
    .line 4344
    .line 4345
    .line 4346
    .line 4347
    .line 4348
    .line 4349
    .line 4350
    .line 4351
    .line 4352
    .line 4353
    .line 4354
    .line 4355
    .line 4356
    .line 4357
    .line 4358
    .line 4359
    .line 4360
    .line 4361
    .line 4362
    .line 4363
    .line 4364
    .line 4365
    .line 4366
    .line 4367
    .line 4368
    .line 4369
    .line 4370
    .line 4371
    .line 4372
    .line 4373
    .line 4374
    .line 4375
    .line 4376
    .line 4377
    .line 4378
    .line 4379
    .line 4380
    .line 4381
    .line 4382
    .line 4383
    .line 4384
    .line 4385
    .line 4386
    .line 4387
    .line 4388
    .line 4389
    .line 4390
    .line 4391
    .line 4392
    .line 4393
    .line 4394
    .line 4395
    .line 4396
    .line 4397
    .line 4398
    .line 4399
    .line 4400
    .line 4401
    .line 4402
    .line 4403
    .line 4404
    .line 4405
    .line 4406
    .line 4407
    .line 4408
    .line 4409
    .line 4410
    .line 4411
    .line 4412
    .line 4413
    .line 4414
    .line 4415
    .line 4416
    .line 4417
    .line 4418
    .line 4419
    .line 4420
    .line 4421
    .line 4422
    .line 4423
    .line 4424
    .line 4425
    .line 4426
    .line 4427
    .line 4428
    .line 4429
    .line 4430
    .line 4431
    .line 4432
    .line 4433
    .line 4434
    .line 4435
    .line 4436
    .line 4437
    .line 4438
    .line 4439
    .line 4440
    .line 4441
    .line 4442
    .line 4443
    .line 4444
    .line 4445
    .line 4446
    .line 4447
    .line 4448
    .line 4449
    .line 4450
    .line 4451
    .line 4452
    .line 4453
    .line 4454
    .line 4455
    .line 4456
    .line 4457
    .line 4458
    .line 4459
    .line 4460
    .line 4461
    .line 4462
    .line 4463
    .line 4464
    .line 4465
    .line 4466
    .line 4467
    .line 4468
    .line 4469
    .line 4470
    .line 4471
    .line 4472
    .line 4473
    .line 4474
    .line 4475
    .line 4476
    .line 4477
    .line 4478
    .line 4479
    .line 4480
    .line 4481
    .line 4482
    .line 4483
    .line 4484
    .line 4485
    .line 4486
    .line 4487
    .line 4488
    .line 4489
    .line 4490
    .line 4491
    .line 4492
    .line 4493
    .line 4494
    .line 4495
    .line 4496
    .line 4497
    .line 4498
    .line 4499
    .line 4500
    .line 4501
    .line 4502
    .line 4503
    .line 4504
    .line 4505
    .line 4506
    .line 4507
    .line 4508
    .line 4509
    .line 4510
    .line 4511
    .line 4512
    .line 4513
    .line 4514
    .line 4515
    .line 4516
    .line 4517
    .line 4518
    .line 4519
    .line 4520
    .line 4521
    .line 4522
    .line 4523
    .line 4524
    .line 4525
    .line 4526
    .line 4527
    .line 4528
    .line 4529
    .line 4530
    .line 4531
    .line 4532
    .line 4533
    .line 4534
    .line 4535
    .line 4536
    .line 4537
    .line 4538
    .line 4539
    .line 4540
    .line 4541
    .line 4542
    .line 4543
    .line 4544
    .line 4545
    .line 4546
    .line 4547
    .line 4548
    .line 4549
    .line 4550
    .line 4551
    .line 4552
    .line 4553
    .line 4554
    .line 4555
    .line 4556
    .line 4557
    .line 4558
    .line 4559
    .line 4560
    .line 4561
    .line 4562
    .line 4563
    .line 4564
    .line 4565
    .line 4566
    .line 4567
    .line 4568
    .line 4569
    .line 4570
    .line 4571
    .line 4572
    .line 4573
    .line 4574
    .line 4575
    .line 4576
    .line 4577
    .line 4578
    .line 4579
    .line 4580
    .line 4581
    .line 4582
    .line 4583
    .line 4584
    .line 4585
    .line 4586
    .line 4587
    .line 4588
    .line 4589
    .line 4590
    .line 4591
    .line 4592
    .line 4593
    .line 4594
    .line 4595
    .line 4596
    .line 4597
    .line 4598
    .line 4599
    .line 4600
    .line 4601
    .line 4602
    .line 4603
    .line 4604
    .line 4605
    .line 4606
    .line 4607
    .line 4608
    .line 4609
    .line 4610
    .line 4611
    .line 4612
    .line 4613
    .line 4614
    .line 4615
    .line 4616
    .line 4617
    .line 4618
    .line 4619
    .line 4620
    .line 4621
    .line 4622
    .line 4623
    .line 4624
    .line 4625
    .line 4626
    .line 4627
    .line 4628
    .line 4629
    .line 4630
    .line 4631
    .line 4632
    .line 4633
    .line 4634
    .line 4635
    .line 4636
    .line 4637
    .line 4638
    .line 4639
    .line 4640
    .line 4641
    .line 4642
    .line 4643
    .line 4644
    .line 4645
    .line 4646
    .line 4647
    .line 4648
    .line 4649
    .line 4650
    .line 4651
    .line 4652
    .line 4653
    .line 4654
    .line 4655
    .line 4656
    .line 4657
    .line 4658
    .line 4659
    .line 4660
    .line 4661
    .line 4662
    .line 4663
    .line 4664
    .line 4665
    .line 4666
    .line 4667
    .line 4668
    .line 4669
    .line 4670
    .line 4671
    .line 4672
    .line 4673
    .line 4674
    .line 4675
    .line 4676
    .line 4677
    .line 4678
    .line 4679
    .line 4680
    .line 4681
    .line 4682
    .line 4683
    .line 4684
    .line 4685
    .line 4686
    .line 4687
    .line 4688
    .line 4689
    .line 4690
    .line 4691
    .line 4692
    .line 4693
    .line 4694
    .line 4695
    .line 4696
    .line 4697
    .line 4698
    .line 4699
    .line 4700
    .line 4701
    .line 4702
    .line 4703
    .line 4704
    .line 4705
    .line 4706
    .line 4707
    .line 4708
    .line 4709
    .line 4710
    .line 4711
    .line 4712
    .line 4713
    .line 4714
    .line 4715
    .line 4716
    .line 4717
    .line 4718
    .line 4719
    .line 4720
    .line 4721
    .line 4722
    .line 4723
    .line 4724
    .line 4725
    .line 4726
    .line 4727
    .line 4728
    .line 4729
    .line 4730
    .line 4731
    .line 4732
    .line 4733
    .line 4734
    .line 4735
    .line 4736
    .line 4737
    .line 4738
    .line 4739
    .line 4740
    .line 4741
    .line 4742
    .line 4743
    .line 4744
    .line 4745
    .line 4746
    .line 4747
    .line 4748
    .line 4749
    .line 4750
    .line 4751
    .line 4752
    .line 4753
    .line 4754
    .line 4755
    .line 4756
    .line 4757
    .line 4758
    .line 4759
    .line 4760
    .line 4761
    .line 4762
    .line 4763
    .line 4764
    .line 4765
    .line 4766
    .line 4767
    .line 4768
    .line 4769
    .line 4770
    .line 4771
    .line 4772
    .line 4773
    .line 4774
    .line 4775
    .line 4776
    .line 4777
    .line 4778
    .line 4779
    .line 4780
    .line 4781
    .line 4782
    .line 4783
    .line 4784
    .line 4785
    .line 4786
    .line 4787
    .line 4788
    .line 4789
    .line 4790
    .line 4791
    .line 4792
    .line 4793
    .line 4794
    .line 4795
    .line 4796
    .line 4797
    .line 4798
    .line 4799
    .line 4800
    .line 4801
    .line 4802
    .line 4803
    .line 4804
    .line 4805
    .line 4806
    .line 4807
    .line 4808
    .line 4809
    .line 4810
    .line 4811
    .line 4812
    .line 4813
    .line 4814
    .line 4815
    .line 4816
    .line 4817
    .line 4818
    .line 4819
    .line 4820
    .line 4821
    .line 4822
    .line 4823
    .line 4824
    .line 4825
    .line 4826
    .line 4827
    .line 4828
    .line 4829
    .line 4830
    .line 4831
    .line 4832
    .line 4833
    .line 4834
    .line 4835
    .line 4836
    .line 4837
    .line 4838
    .line 4839
    .line 4840
    .line 4841
    .line 4842
    .line 4843
    .line 4844
    .line 4845
    .line 4846
    .line 4847
    .line 4848
    .line 4849
    .line 4850
    .line 4851
    .line 4852
    .line 4853
    .line 4854
    .line 4855
    .line 4856
    .line 4857
    .line 4858
    .line 4859
    .line 4860
    .line 4861
    .line 4862
    .line 4863
    .line 4864
    .line 4865
    .line 4866
    .line 4867
    .line 4868
    .line 4869
    .line 4870
    .line 4871
    .line 4872
    .line 4873
    .line 4874
    .line 4875
    .line 4876
    .line 4877
    .line 4878
    .line 4879
    .line 4880
    .line 4881
    .line 4882
    .line 4883
    .line 4884
    .line 4885
    .line 4886
    .line 4887
    .line 4888
    .line 4889
    .line 4890
    .line 4891
    .line 4892
    .line 4893
    .line 4894
    .line 4895
    .line 4896
    .line 4897
    .line 4898
    .line 4899
    .line 4900
    .line 4901
    .line 4902
    .line 4903
    .line 4904
    .line 4905
    .line 4906
    .line 4907
    .line 4908
    .line 4909
    .line 4910
    .line 4911
    .line 4912
    .line 4913
    .line 4914
    .line 4915
    .line 4916
    .line 4917
    .line 4918
    .line 4919
    .line 4920
    .line 4921
    .line 4922
    .line 4923
    .line 4924
    .line 4925
    .line 4926
    .line 4927
    .line 4928
    .line 4929
    .line 4930
    .line 4931
    .line 4932
    .line 4933
    .line 4934
    .line 4935
    .line 4936
    .line 4937
    .line 4938
    .line 4939
    .line 4940
    .line 4941
    .line 4942
    .line 4943
    .line 4944
    .line 4945
    .line 4946
    .line 4947
    .line 4948
    .line 4949
    .line 4950
    .line 4951
    .line 4952
    .line 4953
    .line 4954
    .line 4955
    .line 4956
    .line 4957
    .line 4958
    .line 4959
    .line 4960
    .line 4961
    .line 4962
    .line 4963
    .line 4964
    .line 4965
    .line 4966
    .line 4967
    .line 4968
    .line 4969
    .line 4970
    .line 4971
    .line 4972
    .line 4973
    .line 4974
    .line 4975
    .line 4976
    .line 4977
    .line 4978
    .line 4979
    .line 4980
    .line 4981
    .line 4982
    .line 4983
    .line 4984
    .line 4985
    .line 4986
    .line 4987
    .line 4988
    .line 4989
    .line 4990
    .line 4991
    .line 4992
    .line 4993
    .line 4994
    .line 4995
    .line 4996
    .line 4997
    .line 4998
    .line 4999
    .line 5000
    .line 5001
    .line 5002
    .line 5003
    .line 5004
    .line 5005
    .line 5006
    .line 5007
    .line 5008
    .line 5009
    .line 5010
    .line 5011
    .line 5012
    .line 5013
    .line 5014
    .line 5015
    .line 5016
    .line 5017
    .line 5018
    .line 5019
    .line 5020
    .line 5021
    .line 5022
    .line 5023
    .line 5024
    .line 5025
    .line 5026
    .line 5027
    .line 5028
    .line 5029
    .line 5030
    .line 5031
    .line 5032
    .line 5033
    .line 5034
    .line 5035
    .line 5036
    .line 5037
    .line 5038
    .line 5039
    .line 5040
    .line 5041
    .line 5042
    .line 5043
    .line 5044
    .line 5045
    .line 5046
    .line 5047
    .line 5048
    .line 5049
    .line 5050
    .line 5051
    .line 5052
    .line 5053
    .line 5054
    .line 5055
    .line 5056
    .line 5057
    .line 5058
    .line 5059
    .line 5060
    .line 5061
    .line 5062
    .line 5063
    .line 5064
    .line 5065
    .line 5066
    .line 5067
    .line 5068
    .line 5069
    .line 5070
    .line 5071
    .line 5072
    .line 5073
    .line 5074
    .line 5075
    .line 5076
    .line 5077
    .line 5078
    .line 5079
    .line 5080
    .line 5081
    .line 5082
    .line 5083
    .line 5084
    .line 5085
    .line 5086
    .line 5087
    .line 5088
    .line 5089
    .line 5090
    .line 5091
    .line 5092
    .line 5093
    .line 5094
    .line 5095
    .line 5096
    .line 5097
    .line 5098
    .line 5099
    .line 5100
    .line 5101
    .line 5102
    .line 5103
    .line 5104
    .line 5105
    .line 5106
    .line 5107
    .line 5108
    .line 5109
    .line 5110
    .line 5111
    .line 5112
    .line 5113
    .line 5114
    .line 5115
    .line 5116
    .line 5117
    .line 5118
    .line 5119
    .line 5120
    .line 5121
    .line 5122
    .line 5123
    .line 5124
    .line 5125
    .line 5126
    .line 5127
    .line 5128
    .line 5129
    .line 5130
    .line 5131
    .line 5132
    .line 5133
    .line 5134
    .line 5135
    .line 5136
    .line 5137
    .line 5138
    .line 5139
    .line 5140
    .line 5141
    .line 5142
    .line 5143
    .line 5144
    .line 5145
    .line 5146
    .line 5147
    .line 5148
    .line 5149
    .line 5150
    .line 5151
    .line 5152
    .line 5153
    .line 5154
    .line 5155
    .line 5156
    .line 5157
    .line 5158
    .line 5159
    .line 5160
    .line 5161
    .line 5162
    .line 5163
    .line 5164
    .line 5165
    .line 5166
    .line 5167
    .line 5168
    .line 5169
    .line 5170
    .line 5171
    .line 5172
    .line 5173
    .line 5174
    .line 5175
    .line 5176
    .line 5177
    .line 5178
    .line 5179
    .line 5180
    .line 5181
    .line 5182
    .line 5183
    .line 5184
    .line 5185
    .line 5186
    .line 5187
    .line 5188
    .line 5189
    .line 5190
    .line 5191
    .line 5192
    .line 5193
    .line 5194
    .line 5195
    .line 5196
    .line 5197
    .line 5198
    .line 5199
    .line 5200
    .line 5201
    .line 5202
    .line 5203
    .line 5204
    .line 5205
    .line 5206
    .line 5207
    .line 5208
    .line 5209
    .line 5210
    .line 5211
    .line 5212
    .line 5213
    .line 5214
    .line 5215
    .line 5216
    .line 5217
    .line 5218
    .line 5219
    .line 5220
    .line 5221
    .line 5222
    .line 5223
    .line 5224
    .line 5225
    .line 5226
    .line 5227
    .line 5228
    .line 5229
    .line 5230
    .line 5231
    .line 5232
    .line 5233
    .line 5234
    .line 5235
    .line 5236
    .line 5237
    .line 5238
    .line 5239
    .line 5240
    .line 5241
    .line 5242
    .line 5243
    .line 5244
    .line 5245
    .line 5246
    .line 5247
    .line 5248
    .line 5249
    .line 5250
    .line 5251
    .line 5252
    .line 5253
    .line 5254
    .line 5255
    .line 5256
    .line 5257
    .line 5258
    .line 5259
    .line 5260
    .line 5261
    .line 5262
    .line 5263
    .line 5264
    .line 5265
    .line 5266
    .line 5267
    .line 5268
    .line 5269
    .line 5270
    .line 5271
    .line 5272
    .line 5273
    .line 5274
    .line 5275
    .line 5276
    .line 5277
    .line 5278
    .line 5279
    .line 5280
    .line 5281
    .line 5282
    .line 5283
    .line 5284
    .line 5285
    .line 5286
    .line 5287
    .line 5288
.end method
