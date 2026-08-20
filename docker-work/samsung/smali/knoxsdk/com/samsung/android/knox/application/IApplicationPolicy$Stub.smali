.class public abstract Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;
.super Landroid/os/Binder;
.source "IApplicationPolicy.java"

# interfaces
.implements Lcom/samsung/android/knox/application/IApplicationPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/application/IApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/application/IApplicationPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist TRANSACTION_addAppNotificationBlackList:I = 0x3c

.field public static final greylist TRANSACTION_addAppNotificationWhiteList:I = 0x3f

.field public static final greylist TRANSACTION_addAppPackageNameToBlackList:I = 0x2d

.field public static final greylist TRANSACTION_addAppPackageNameToWhiteList:I = 0x30

.field public static final greylist TRANSACTION_addAppPermissionToBlackList:I = 0x22

.field public static final greylist TRANSACTION_addAppSignatureToBlackList:I = 0x25

.field public static final greylist TRANSACTION_addAppSignatureToWhiteList:I = 0x58

.field public static final greylist TRANSACTION_addApplicationToCameraAllowList:I = 0xb5

.field public static final greylist TRANSACTION_addHomeShortcut:I = 0x46

.field public static final greylist TRANSACTION_addPackageToBatteryOptimizationWhiteList:I = 0x9d

.field public static final greylist TRANSACTION_addPackageToBlackList:I = 0xa8

.field public static final greylist TRANSACTION_addPackageToWhiteList:I = 0xa5

.field public static final greylist TRANSACTION_addPackagesToClearCacheBlackList:I = 0x64

.field public static final greylist TRANSACTION_addPackagesToClearCacheWhiteList:I = 0x67

.field public static final greylist TRANSACTION_addPackagesToClearDataBlackList:I = 0x5d

.field public static final greylist TRANSACTION_addPackagesToClearDataWhiteList:I = 0x60

.field public static final greylist TRANSACTION_addPackagesToDisableClipboardBlackList:I = 0x7e

.field public static final greylist TRANSACTION_addPackagesToDisableClipboardWhiteList:I = 0x82

.field public static final greylist TRANSACTION_addPackagesToDisableUpdateBlackList:I = 0x70

.field public static final greylist TRANSACTION_addPackagesToDisableUpdateWhiteList:I = 0x73

.field public static final greylist TRANSACTION_addPackagesToFocusMonitoringList:I = 0x89

.field public static final greylist TRANSACTION_addPackagesToForceStopBlackList:I = 0x38

.field public static final greylist TRANSACTION_addPackagesToForceStopWhiteList:I = 0x4b

.field public static final greylist TRANSACTION_addPackagesToPreventStartBlackList:I = 0x79

.field public static final greylist TRANSACTION_addPackagesToWidgetBlackList:I = 0x50

.field public static final greylist TRANSACTION_addPackagesToWidgetWhiteList:I = 0x4e

.field public static final greylist TRANSACTION_addUsbDevicesForDefaultAccess:I = 0x92

.field public static final greylist TRANSACTION_applicationUsageAppLaunchCount:I = 0xbf

.field public static final greylist TRANSACTION_applicationUsageAppPauseTime:I = 0xc0

.field public static final greylist TRANSACTION_applyRuntimePermissions:I = 0x98

.field public static final greylist TRANSACTION_changeApplicationIcon:I = 0x1f

.field public static final greylist TRANSACTION_changeApplicationName:I = 0x6b

.field public static final greylist TRANSACTION_clearDisableClipboardBlackList:I = 0x86

.field public static final greylist TRANSACTION_clearDisableClipboardWhiteList:I = 0x87

.field public static final greylist TRANSACTION_clearDisableUpdateBlackList:I = 0x77

.field public static final greylist TRANSACTION_clearDisableUpdateWhiteList:I = 0x78

.field public static final greylist TRANSACTION_clearFocusMonitoringList:I = 0x8c

.field public static final greylist TRANSACTION_clearPackagesFromExternalStorageWhiteList:I = 0xa4

.field public static final greylist TRANSACTION_clearPreventStartBlackList:I = 0x7c

.field public static final greylist TRANSACTION_clearUsbDevicesForDefaultAccess:I = 0x93

.field public static final greylist TRANSACTION_createIntentFilter:I = 0xc7

.field public static final greylist TRANSACTION_deleteHomeShortcut:I = 0x47

.field public static final greylist TRANSACTION_deleteManagedAppInfo:I = 0xaf

.field public static final greylist TRANSACTION_enableOcspCheck:I = 0x56

.field public static final greylist TRANSACTION_enableRevocationCheck:I = 0x54

.field public static final greylist TRANSACTION_getAddHomeShorcutRequested:I = 0x97

.field public static final greylist TRANSACTION_getAllAppLastUsage:I = 0x1c

.field public static final greylist TRANSACTION_getAllDefaultApplications:I = 0xc4

.field public static final greylist TRANSACTION_getAllDefaultApplicationsInternal:I = 0xba

.field public static final greylist TRANSACTION_getAllPackagesFromBatteryOptimizationWhiteList:I = 0xa0

.field public static final greylist TRANSACTION_getAllWidgets:I = 0x48

.field public static final greylist TRANSACTION_getAppInstallToSdCard:I = 0xb1

.field public static final greylist TRANSACTION_getAppInstallationMode:I = 0x36

.field public static final greylist TRANSACTION_getAppNotificationBlackList:I = 0x3e

.field public static final greylist TRANSACTION_getAppNotificationWhiteList:I = 0x41

.field public static final greylist TRANSACTION_getAppPackageNamesAllBlackLists:I = 0x2f

.field public static final greylist TRANSACTION_getAppPackageNamesAllWhiteLists:I = 0x32

.field public static final greylist TRANSACTION_getAppPermissionsAllBlackLists:I = 0x33

.field public static final greylist TRANSACTION_getAppPermissionsBlackList:I = 0x24

.field public static final greylist TRANSACTION_getAppSignatureBlackList:I = 0x27

.field public static final greylist TRANSACTION_getAppSignaturesAllBlackLists:I = 0x34

.field public static final greylist TRANSACTION_getAppSignaturesAllWhiteLists:I = 0x5b

.field public static final greylist TRANSACTION_getAppSignaturesWhiteList:I = 0x5a

.field public static final greylist TRANSACTION_getApplicationCacheSize:I = 0x15

.field public static final greylist TRANSACTION_getApplicationCodeSize:I = 0x13

.field public static final greylist TRANSACTION_getApplicationComponentState:I = 0x6f

.field public static final greylist TRANSACTION_getApplicationCpuUsage:I = 0x17

.field public static final greylist TRANSACTION_getApplicationDataSize:I = 0x14

.field public static final greylist TRANSACTION_getApplicationGrantedPermissions:I = 0xa1

.field public static final greylist TRANSACTION_getApplicationIconFromDb:I = 0x20

.field public static final greylist TRANSACTION_getApplicationInstallationEnabled:I = 0xb

.field public static final greylist TRANSACTION_getApplicationMemoryUsage:I = 0x16

.field public static final greylist TRANSACTION_getApplicationName:I = 0xe

.field public static final greylist TRANSACTION_getApplicationNameFromDb:I = 0x6c

.field public static final greylist TRANSACTION_getApplicationNotificationMode:I = 0x43

.field public static final greylist TRANSACTION_getApplicationNotificationModeAsUser:I = 0x44

.field public static final greylist TRANSACTION_getApplicationPackagesFromCameraAllowList:I = 0xb6

.field public static final greylist TRANSACTION_getApplicationStateEnabled:I = 0xa

.field public static final greylist TRANSACTION_getApplicationStateEnabledAsUser:I = 0xbb

.field public static final greylist TRANSACTION_getApplicationStateList:I = 0x2a

.field public static final greylist TRANSACTION_getApplicationTotalSize:I = 0x12

.field public static final greylist TRANSACTION_getApplicationUid:I = 0xf

.field public static final greylist TRANSACTION_getApplicationUninstallationEnabled:I = 0xc

.field public static final greylist TRANSACTION_getApplicationUninstallationEnabledAsUser:I = 0xbe

.field public static final greylist TRANSACTION_getApplicationUninstallationMode:I = 0x49

.field public static final greylist TRANSACTION_getApplicationVersion:I = 0x10

.field public static final greylist TRANSACTION_getApplicationVersionCode:I = 0x11

.field public static final greylist TRANSACTION_getApplicationsList:I = 0xb3

.field public static final greylist TRANSACTION_getAvgNoAppUsagePerMonth:I = 0x1b

.field public static final greylist TRANSACTION_getConcentrationMode:I = 0xc9

.field public static final greylist TRANSACTION_getDefaultApplication:I = 0xc2

.field public static final greylist TRANSACTION_getDefaultApplicationInternal:I = 0xc3

.field public static final greylist TRANSACTION_getDisabledPackages:I = 0x96

.field public static final greylist TRANSACTION_getHomeShortcuts:I = 0x8e

.field public static final greylist TRANSACTION_getInstalledApplicationsIDList:I = 0xd

.field public static final greylist TRANSACTION_getInstalledManagedApplicationsList:I = 0xb2

.field public static final greylist TRANSACTION_getNetworkStats:I = 0x1d

.field public static final greylist TRANSACTION_getPackageSignaturesFromExternalStorageWhiteList:I = 0xa3

.field public static final greylist TRANSACTION_getPackagesFromBatteryOptimizationWhiteList:I = 0x9f

.field public static final greylist TRANSACTION_getPackagesFromBlackList:I = 0xa9

.field public static final greylist TRANSACTION_getPackagesFromClearCacheBlackList:I = 0x66

.field public static final greylist TRANSACTION_getPackagesFromClearCacheWhiteList:I = 0x68

.field public static final greylist TRANSACTION_getPackagesFromClearDataBlackList:I = 0x5f

.field public static final greylist TRANSACTION_getPackagesFromClearDataWhiteList:I = 0x61

.field public static final greylist TRANSACTION_getPackagesFromDisableClipboardBlackList:I = 0x80

.field public static final greylist TRANSACTION_getPackagesFromDisableClipboardBlackListAsUserInternal:I = 0x81

.field public static final greylist TRANSACTION_getPackagesFromDisableClipboardWhiteList:I = 0x84

.field public static final greylist TRANSACTION_getPackagesFromDisableClipboardWhiteListAsUserInternal:I = 0x85

.field public static final greylist TRANSACTION_getPackagesFromDisableUpdateBlackList:I = 0x72

.field public static final greylist TRANSACTION_getPackagesFromDisableUpdateWhiteList:I = 0x74

.field public static final greylist TRANSACTION_getPackagesFromFocusMonitoringList:I = 0x8a

.field public static final greylist TRANSACTION_getPackagesFromForceStopBlackList:I = 0x4a

.field public static final greylist TRANSACTION_getPackagesFromForceStopWhiteList:I = 0x4c

.field public static final greylist TRANSACTION_getPackagesFromPreventStartBlackList:I = 0x7a

.field public static final greylist TRANSACTION_getPackagesFromWhiteList:I = 0xa6

.field public static final greylist TRANSACTION_getPackagesFromWidgetBlackList:I = 0x4d

.field public static final greylist TRANSACTION_getPackagesFromWidgetWhiteList:I = 0x3a

.field public static final greylist TRANSACTION_getRuntimePermissions:I = 0x9c

.field public static final greylist TRANSACTION_getRuntimePermissionsEnforced:I = 0x99

.field public static final greylist TRANSACTION_getTopNCPUUsageApp:I = 0x1a

.field public static final greylist TRANSACTION_getTopNDataUsageApp:I = 0x19

.field public static final greylist TRANSACTION_getTopNMemoryUsageApp:I = 0x18

.field public static final greylist TRANSACTION_getUsbDevicesForDefaultAccess:I = 0x90

.field public static final greylist TRANSACTION_handleStatusBarNotificationNotAllowedAsUser:I = 0xb9

.field public static final greylist TRANSACTION_installApplication:I = 0x5

.field public static final greylist TRANSACTION_installExistingApplication:I = 0x94

.field public static final greylist TRANSACTION_isAnyApplicationIconChangedAsUser:I = 0x21

.field public static final greylist TRANSACTION_isAnyApplicationNameChangedAsUser:I = 0x6d

.field public static final greylist TRANSACTION_isApplicationClearCacheDisabled:I = 0x6a

.field public static final greylist TRANSACTION_isApplicationClearDataDisabled:I = 0x63

.field public static final greylist TRANSACTION_isApplicationExternalStorageBlacklisted:I = 0xae

.field public static final greylist TRANSACTION_isApplicationExternalStorageWhitelisted:I = 0xad

.field public static final greylist TRANSACTION_isApplicationFocusMonitoredAsUser:I = 0x8d

.field public static final greylist TRANSACTION_isApplicationForceStopDisabled:I = 0x39

.field public static final greylist TRANSACTION_isApplicationInstallationEnabled:I = 0xbc

.field public static final greylist TRANSACTION_isApplicationInstalled:I = 0x3

.field public static final greylist TRANSACTION_isApplicationRunning:I = 0x4

.field public static final greylist TRANSACTION_isApplicationSetToDefault:I = 0xc6

.field public static final greylist TRANSACTION_isApplicationStartDisabledAsUser:I = 0x7d

.field public static final greylist TRANSACTION_isCameraAllowlistedApp:I = 0xb8

.field public static final greylist TRANSACTION_isFromApprovedInstaller:I = 0xbd

.field public static final greylist TRANSACTION_isIntentDisabled:I = 0x2c

.field public static final greylist TRANSACTION_isOcspCheckEnabled:I = 0x57

.field public static final greylist TRANSACTION_isPackageClipboardAllowed:I = 0x88

.field public static final greylist TRANSACTION_isPackageInApprovedInstallerWhiteList:I = 0x5c

.field public static final greylist TRANSACTION_isPackageInBlacklistInternal:I = 0xac

.field public static final greylist TRANSACTION_isPackageInWhitelistInternal:I = 0xab

.field public static final greylist TRANSACTION_isPackageUpdateAllowed:I = 0x76

.field public static final greylist TRANSACTION_isRevocationCheckEnabled:I = 0x55

.field public static final greylist TRANSACTION_isStatusBarNotificationAllowedAsUser:I = 0x45

.field public static final greylist TRANSACTION_isUsbDevicePermittedForPackage:I = 0x91

.field public static final greylist TRANSACTION_isWidgetAllowed:I = 0x3b

.field public static final greylist TRANSACTION_reapplyRuntimePermissions:I = 0x9b

.field public static final greylist TRANSACTION_removeAppNotificationBlackList:I = 0x3d

.field public static final greylist TRANSACTION_removeAppNotificationWhiteList:I = 0x40

.field public static final greylist TRANSACTION_removeAppPackageNameFromBlackList:I = 0x2e

.field public static final greylist TRANSACTION_removeAppPackageNameFromWhiteList:I = 0x31

.field public static final greylist TRANSACTION_removeAppPermissionFromBlackList:I = 0x23

.field public static final greylist TRANSACTION_removeAppSignatureFromBlackList:I = 0x26

.field public static final greylist TRANSACTION_removeAppSignatureFromWhiteList:I = 0x59

.field public static final greylist TRANSACTION_removeApplicationFromCameraAllowList:I = 0xb7

.field public static final greylist TRANSACTION_removeDefaultApplication:I = 0xc5

.field public static final greylist TRANSACTION_removeManagedApplications:I = 0x1

.field public static final greylist TRANSACTION_removePackageFromBatteryOptimizationWhiteList:I = 0x9e

.field public static final greylist TRANSACTION_removePackageFromBlackList:I = 0xaa

.field public static final greylist TRANSACTION_removePackageFromWhiteList:I = 0xa7

.field public static final greylist TRANSACTION_removePackagesFromClearCacheBlackList:I = 0x65

.field public static final greylist TRANSACTION_removePackagesFromClearCacheWhiteList:I = 0x69

.field public static final greylist TRANSACTION_removePackagesFromClearDataBlackList:I = 0x5e

.field public static final greylist TRANSACTION_removePackagesFromClearDataWhiteList:I = 0x62

.field public static final greylist TRANSACTION_removePackagesFromDisableClipboardBlackList:I = 0x7f

.field public static final greylist TRANSACTION_removePackagesFromDisableClipboardWhiteList:I = 0x83

.field public static final greylist TRANSACTION_removePackagesFromDisableUpdateBlackList:I = 0x71

.field public static final greylist TRANSACTION_removePackagesFromDisableUpdateWhiteList:I = 0x75

.field public static final greylist TRANSACTION_removePackagesFromFocusMonitoringList:I = 0x8b

.field public static final greylist TRANSACTION_removePackagesFromForceStopBlackList:I = 0x53

.field public static final greylist TRANSACTION_removePackagesFromForceStopWhiteList:I = 0x52

.field public static final greylist TRANSACTION_removePackagesFromPreventStartBlackList:I = 0x7b

.field public static final greylist TRANSACTION_removePackagesFromWidgetBlackList:I = 0x51

.field public static final greylist TRANSACTION_removePackagesFromWidgetWhiteList:I = 0x4f

.field public static final greylist TRANSACTION_setAndroidMarketState:I = 0xa2

.field public static final greylist TRANSACTION_setAppInstallToSdCard:I = 0xb0

.field public static final greylist TRANSACTION_setAppInstallationMode:I = 0x35

.field public static final greylist TRANSACTION_setApplicationComponentState:I = 0x6e

.field public static final greylist TRANSACTION_setApplicationInstallationDisabled:I = 0x8

.field public static final greylist TRANSACTION_setApplicationNotificationMode:I = 0x42

.field public static final greylist TRANSACTION_setApplicationState:I = 0x7

.field public static final greylist TRANSACTION_setApplicationStateList:I = 0x2b

.field public static final greylist TRANSACTION_setApplicationUninstallationDisabled:I = 0x9

.field public static final greylist TRANSACTION_setApplicationUninstallationMode:I = 0x37

.field public static final greylist TRANSACTION_setAsManagedApp:I = 0xb4

.field public static final greylist TRANSACTION_setConcentrationMode:I = 0xc8

.field public static final greylist TRANSACTION_setDefaultApplication:I = 0xc1

.field public static final greylist TRANSACTION_startApp:I = 0x29

.field public static final greylist TRANSACTION_stopApp:I = 0x28

.field public static final greylist TRANSACTION_uninstallApplication:I = 0x6

.field public static final greylist TRANSACTION_updateApplicationTable:I = 0x95

.field public static final greylist TRANSACTION_updateDataUsageDb:I = 0x1e

.field public static final greylist TRANSACTION_updateWidgetStatus:I = 0x8f

.field public static final greylist TRANSACTION_verifyRuntimePermissionPackageSignature:I = 0x9a

.field public static final greylist TRANSACTION_wipeApplicationData:I = 0x2


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1
    .line 2
    .line 3
    const-string v0, "com.samsung.android.knox.application.IApplicationPolicy"

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

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;
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
    const-string v0, "com.samsung.android.knox.application.IApplicationPolicy"

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
    instance-of v1, v0, Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 13
    .line 14
    if-eqz v1, :cond_13

    .line 15
    .line 16
    check-cast v0, Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_13
    new-instance v0, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub$Proxy;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "com.samsung.android.knox.application.IApplicationPolicy"

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
    if-eq p1, v2, :cond_14a3

    .line 17
    .line 18
    packed-switch p1, :pswitch_data_14a8

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
    invoke-interface {p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getConcentrationMode()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_14a2

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
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object p4

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 55
    .line 56
    .line 57
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setConcentrationMode(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_14a2

    .line 68
    .line 69
    :pswitch_45
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroid/content/Intent;

    .line 76
    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 78
    .line 79
    .line 80
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->createIntentFilter(Landroid/content/Intent;)Landroid/content/IntentFilter;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, p0, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_14a2

    .line 91
    .line 92
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 97
    .line 98
    .line 99
    move-result p4

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 101
    .line 102
    .line 103
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationSetToDefault(Ljava/lang/String;I)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_14a2

    .line 114
    .line 115
    :pswitch_73
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 116
    .line 117
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 122
    .line 123
    sget-object p4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 124
    .line 125
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p4

    .line 129
    check-cast p4, Landroid/content/Intent;

    .line 130
    .line 131
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 132
    .line 133
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Landroid/content/ComponentName;

    .line 138
    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    .line 141
    .line 142
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeDefaultApplication(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Intent;Landroid/content/ComponentName;)Z

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_14a2

    .line 153
    .line 154
    :pswitch_9a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 155
    .line 156
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 161
    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    .line 164
    .line 165
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAllDefaultApplications(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_14a2

    .line 176
    .line 177
    :pswitch_b1
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 178
    .line 179
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    check-cast p1, Landroid/content/Intent;

    .line 184
    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 186
    .line 187
    .line 188
    move-result p4

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    .line 191
    .line 192
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getDefaultApplicationInternal(Landroid/content/Intent;I)Landroid/content/ComponentName;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p3, p0, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_14a2

    .line 203
    .line 204
    :pswitch_cc
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 205
    .line 206
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 211
    .line 212
    sget-object p4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 213
    .line 214
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object p4

    .line 218
    check-cast p4, Landroid/content/Intent;

    .line 219
    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    .line 222
    .line 223
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getDefaultApplication(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p3, p0, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_14a2

    .line 234
    .line 235
    :pswitch_eb
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 236
    .line 237
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 242
    .line 243
    sget-object p4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 244
    .line 245
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object p4

    .line 249
    check-cast p4, Landroid/content/Intent;

    .line 250
    .line 251
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 252
    .line 253
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    check-cast v1, Landroid/content/ComponentName;

    .line 258
    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    .line 261
    .line 262
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setDefaultApplication(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Intent;Landroid/content/ComponentName;)Z

    .line 263
    .line 264
    .line 265
    move-result p0

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 270
    .line 271
    .line 272
    goto/16 :goto_14a2

    .line 273
    .line 274
    :pswitch_112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 279
    .line 280
    .line 281
    move-result p4

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    .line 284
    .line 285
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->applicationUsageAppPauseTime(Ljava/lang/String;I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_14a2

    .line 292
    .line 293
    :pswitch_125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 298
    .line 299
    .line 300
    move-result p4

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    .line 303
    .line 304
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->applicationUsageAppLaunchCount(Ljava/lang/String;I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    .line 309
    .line 310
    goto/16 :goto_14a2

    .line 311
    .line 312
    :pswitch_138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 317
    .line 318
    .line 319
    move-result p4

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    .line 322
    .line 323
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationUninstallationEnabledAsUser(Ljava/lang/String;I)Z

    .line 324
    .line 325
    .line 326
    move-result p0

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_14a2

    .line 334
    .line 335
    :pswitch_14f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 336
    .line 337
    .line 338
    move-result p1

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 340
    .line 341
    .line 342
    move-result p4

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    .line 345
    .line 346
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isFromApprovedInstaller(II)Z

    .line 347
    .line 348
    .line 349
    move-result p0

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 354
    .line 355
    .line 356
    goto/16 :goto_14a2

    .line 357
    .line 358
    :pswitch_166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    sget-object p4, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 363
    .line 364
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object p4

    .line 368
    check-cast p4, [Landroid/content/pm/Signature;

    .line 369
    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    .line 380
    .line 381
    invoke-interface {p0, p1, p4, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationInstallationEnabled(Ljava/lang/String;[Landroid/content/pm/Signature;Ljava/util/List;I)Z

    .line 382
    .line 383
    .line 384
    move-result p0

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_14a2

    .line 392
    .line 393
    :pswitch_189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 398
    .line 399
    .line 400
    move-result p4

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    .line 407
    .line 408
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    .line 409
    .line 410
    .line 411
    move-result p0

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    .line 414
    .line 415
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 416
    .line 417
    .line 418
    goto/16 :goto_14a2

    .line 419
    .line 420
    :pswitch_1a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 421
    .line 422
    .line 423
    move-result p1

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    .line 426
    .line 427
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAllDefaultApplicationsInternal(I)Ljava/util/List;

    .line 428
    .line 429
    .line 430
    move-result-object p0

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    .line 433
    .line 434
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_14a2

    .line 438
    .line 439
    :pswitch_1b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 444
    .line 445
    .line 446
    move-result p4

    .line 447
    sget-object v1, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 448
    .line 449
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    check-cast v1, Landroid/app/Notification;

    .line 454
    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 456
    .line 457
    .line 458
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->handleStatusBarNotificationNotAllowedAsUser(Ljava/lang/String;ILandroid/app/Notification;)Z

    .line 459
    .line 460
    .line 461
    move-result p0

    .line 462
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    .line 464
    .line 465
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 466
    .line 467
    .line 468
    goto/16 :goto_14a2

    .line 469
    .line 470
    :pswitch_1d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 471
    .line 472
    .line 473
    move-result p1

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 475
    .line 476
    .line 477
    move-result p4

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    .line 480
    .line 481
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isCameraAllowlistedApp(II)Z

    .line 482
    .line 483
    .line 484
    move-result p0

    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    .line 487
    .line 488
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 489
    .line 490
    .line 491
    goto/16 :goto_14a2

    .line 492
    .line 493
    :pswitch_1ed
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 494
    .line 495
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object p1

    .line 499
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 500
    .line 501
    sget-object p4, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 502
    .line 503
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object p4

    .line 507
    check-cast p4, Lcom/samsung/android/knox/AppIdentity;

    .line 508
    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    .line 511
    .line 512
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeApplicationFromCameraAllowList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    .line 513
    .line 514
    .line 515
    move-result p0

    .line 516
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    .line 518
    .line 519
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    .line 521
    .line 522
    goto/16 :goto_14a2

    .line 523
    .line 524
    :pswitch_20c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 525
    .line 526
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object p1

    .line 530
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 531
    .line 532
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    .line 534
    .line 535
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationPackagesFromCameraAllowList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 536
    .line 537
    .line 538
    move-result-object p0

    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    .line 541
    .line 542
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 543
    .line 544
    .line 545
    goto/16 :goto_14a2

    .line 546
    .line 547
    :pswitch_223
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 548
    .line 549
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object p1

    .line 553
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 554
    .line 555
    sget-object p4, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 556
    .line 557
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object p4

    .line 561
    check-cast p4, Lcom/samsung/android/knox/AppIdentity;

    .line 562
    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    .line 565
    .line 566
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addApplicationToCameraAllowList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    .line 567
    .line 568
    .line 569
    move-result p0

    .line 570
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    .line 572
    .line 573
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    .line 575
    .line 576
    goto/16 :goto_14a2

    .line 577
    .line 578
    :pswitch_242
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 579
    .line 580
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object p1

    .line 584
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 585
    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object p4

    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 591
    .line 592
    .line 593
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setAsManagedApp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 594
    .line 595
    .line 596
    move-result p0

    .line 597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    .line 599
    .line 600
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 601
    .line 602
    .line 603
    goto/16 :goto_14a2

    .line 604
    .line 605
    :pswitch_25d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 606
    .line 607
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object p1

    .line 611
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 612
    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object p4

    .line 617
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    .line 619
    .line 620
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationsList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Lcom/samsung/android/knox/application/ManagedAppInfo;

    .line 621
    .line 622
    .line 623
    move-result-object p0

    .line 624
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    .line 626
    .line 627
    invoke-virtual {p3, p0, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 628
    .line 629
    .line 630
    goto/16 :goto_14a2

    .line 631
    .line 632
    :pswitch_278
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 633
    .line 634
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object p1

    .line 638
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 639
    .line 640
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 641
    .line 642
    .line 643
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getInstalledManagedApplicationsList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object p0

    .line 647
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    .line 649
    .line 650
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    goto/16 :goto_14a2

    .line 654
    .line 655
    :pswitch_28f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 656
    .line 657
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object p1

    .line 661
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 662
    .line 663
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 664
    .line 665
    .line 666
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppInstallToSdCard(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 667
    .line 668
    .line 669
    move-result p0

    .line 670
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    .line 672
    .line 673
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 674
    .line 675
    .line 676
    goto/16 :goto_14a2

    .line 677
    .line 678
    :pswitch_2a6
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 679
    .line 680
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object p1

    .line 684
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 685
    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 687
    .line 688
    .line 689
    move-result p4

    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 691
    .line 692
    .line 693
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setAppInstallToSdCard(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 694
    .line 695
    .line 696
    move-result p0

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    .line 699
    .line 700
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 701
    .line 702
    .line 703
    goto/16 :goto_14a2

    .line 704
    .line 705
    :pswitch_2c1
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 706
    .line 707
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object p1

    .line 711
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 712
    .line 713
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object p4

    .line 717
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 718
    .line 719
    .line 720
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->deleteManagedAppInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 721
    .line 722
    .line 723
    move-result p0

    .line 724
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    .line 726
    .line 727
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 728
    .line 729
    .line 730
    goto/16 :goto_14a2

    .line 731
    .line 732
    :pswitch_2dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 733
    .line 734
    .line 735
    move-result p1

    .line 736
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object p4

    .line 740
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 741
    .line 742
    .line 743
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationExternalStorageBlacklisted(ILjava/lang/String;)Z

    .line 744
    .line 745
    .line 746
    move-result p0

    .line 747
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    .line 749
    .line 750
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 751
    .line 752
    .line 753
    goto/16 :goto_14a2

    .line 754
    .line 755
    :pswitch_2f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 756
    .line 757
    .line 758
    move-result p1

    .line 759
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object p4

    .line 763
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    .line 765
    .line 766
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationExternalStorageWhitelisted(ILjava/lang/String;)Z

    .line 767
    .line 768
    .line 769
    move-result p0

    .line 770
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    .line 772
    .line 773
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 774
    .line 775
    .line 776
    goto/16 :goto_14a2

    .line 777
    .line 778
    :pswitch_30a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 779
    .line 780
    .line 781
    move-result p1

    .line 782
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 783
    .line 784
    .line 785
    move-result p4

    .line 786
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 787
    .line 788
    .line 789
    move-result v1

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 791
    .line 792
    .line 793
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageInBlacklistInternal(III)Z

    .line 794
    .line 795
    .line 796
    move-result p0

    .line 797
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    .line 799
    .line 800
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 801
    .line 802
    .line 803
    goto/16 :goto_14a2

    .line 804
    .line 805
    :pswitch_325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 806
    .line 807
    .line 808
    move-result p1

    .line 809
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 810
    .line 811
    .line 812
    move-result p4

    .line 813
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 814
    .line 815
    .line 816
    move-result v1

    .line 817
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 818
    .line 819
    .line 820
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageInWhitelistInternal(III)Z

    .line 821
    .line 822
    .line 823
    move-result p0

    .line 824
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    .line 826
    .line 827
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 828
    .line 829
    .line 830
    goto/16 :goto_14a2

    .line 831
    .line 832
    :pswitch_340
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 833
    .line 834
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    move-result-object p1

    .line 838
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 839
    .line 840
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 841
    .line 842
    .line 843
    move-result p4

    .line 844
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 845
    .line 846
    .line 847
    move-result-object v1

    .line 848
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 849
    .line 850
    .line 851
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackageFromBlackList(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)I

    .line 852
    .line 853
    .line 854
    move-result p0

    .line 855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    .line 857
    .line 858
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    .line 860
    .line 861
    goto/16 :goto_14a2

    .line 862
    .line 863
    :pswitch_35f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 864
    .line 865
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    move-result-object p1

    .line 869
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 870
    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 872
    .line 873
    .line 874
    move-result p4

    .line 875
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 876
    .line 877
    .line 878
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromBlackList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    .line 879
    .line 880
    .line 881
    move-result-object p0

    .line 882
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    .line 884
    .line 885
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 886
    .line 887
    .line 888
    goto/16 :goto_14a2

    .line 889
    .line 890
    :pswitch_37a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 891
    .line 892
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 893
    .line 894
    .line 895
    move-result-object p1

    .line 896
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 897
    .line 898
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 899
    .line 900
    .line 901
    move-result p4

    .line 902
    sget-object v1, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 903
    .line 904
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 905
    .line 906
    .line 907
    move-result-object v1

    .line 908
    check-cast v1, Lcom/samsung/android/knox/AppIdentity;

    .line 909
    .line 910
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 911
    .line 912
    .line 913
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToBlackList(Lcom/samsung/android/knox/ContextInfo;ILcom/samsung/android/knox/AppIdentity;)I

    .line 914
    .line 915
    .line 916
    move-result p0

    .line 917
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    .line 919
    .line 920
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    .line 922
    .line 923
    goto/16 :goto_14a2

    .line 924
    .line 925
    :pswitch_39d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 926
    .line 927
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    move-result-object p1

    .line 931
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 932
    .line 933
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 934
    .line 935
    .line 936
    move-result p4

    .line 937
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 938
    .line 939
    .line 940
    move-result-object v1

    .line 941
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 942
    .line 943
    .line 944
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackageFromWhiteList(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)I

    .line 945
    .line 946
    .line 947
    move-result p0

    .line 948
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    .line 950
    .line 951
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 952
    .line 953
    .line 954
    goto/16 :goto_14a2

    .line 955
    .line 956
    :pswitch_3bc
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 957
    .line 958
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 959
    .line 960
    .line 961
    move-result-object p1

    .line 962
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 963
    .line 964
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 965
    .line 966
    .line 967
    move-result p4

    .line 968
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 969
    .line 970
    .line 971
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    .line 972
    .line 973
    .line 974
    move-result-object p0

    .line 975
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    .line 977
    .line 978
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 979
    .line 980
    .line 981
    goto/16 :goto_14a2

    .line 982
    .line 983
    :pswitch_3d7
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 984
    .line 985
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 986
    .line 987
    .line 988
    move-result-object p1

    .line 989
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 990
    .line 991
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 992
    .line 993
    .line 994
    move-result p4

    .line 995
    sget-object v1, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 996
    .line 997
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 998
    .line 999
    .line 1000
    move-result-object v1

    .line 1001
    check-cast v1, Lcom/samsung/android/knox/AppIdentity;

    .line 1002
    .line 1003
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1004
    .line 1005
    .line 1006
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToWhiteList(Lcom/samsung/android/knox/ContextInfo;ILcom/samsung/android/knox/AppIdentity;)I

    .line 1007
    .line 1008
    .line 1009
    move-result p0

    .line 1010
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1014
    .line 1015
    .line 1016
    goto/16 :goto_14a2

    .line 1017
    .line 1018
    :pswitch_3fa
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1019
    .line 1020
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1021
    .line 1022
    .line 1023
    move-result-object p1

    .line 1024
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1025
    .line 1026
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1027
    .line 1028
    .line 1029
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearPackagesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;)I

    .line 1030
    .line 1031
    .line 1032
    move-result p0

    .line 1033
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1037
    .line 1038
    .line 1039
    goto/16 :goto_14a2

    .line 1040
    .line 1041
    :pswitch_411
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1042
    .line 1043
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    move-result-object p1

    .line 1047
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1048
    .line 1049
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1050
    .line 1051
    .line 1052
    move-result-object p4

    .line 1053
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1054
    .line 1055
    .line 1056
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackageSignaturesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Landroid/content/pm/Signature;

    .line 1057
    .line 1058
    .line 1059
    move-result-object p0

    .line 1060
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    .line 1062
    .line 1063
    invoke-virtual {p3, p0, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1064
    .line 1065
    .line 1066
    goto/16 :goto_14a2

    .line 1067
    .line 1068
    :pswitch_42c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1069
    .line 1070
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1071
    .line 1072
    .line 1073
    move-result-object p1

    .line 1074
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1075
    .line 1076
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1077
    .line 1078
    .line 1079
    move-result p4

    .line 1080
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1081
    .line 1082
    .line 1083
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setAndroidMarketState(Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1087
    .line 1088
    .line 1089
    goto/16 :goto_14a2

    .line 1090
    .line 1091
    :pswitch_443
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1092
    .line 1093
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1094
    .line 1095
    .line 1096
    move-result-object p1

    .line 1097
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1098
    .line 1099
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1100
    .line 1101
    .line 1102
    move-result-object p4

    .line 1103
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1104
    .line 1105
    .line 1106
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationGrantedPermissions(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    .line 1107
    .line 1108
    .line 1109
    move-result-object p0

    .line 1110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1111
    .line 1112
    .line 1113
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1114
    .line 1115
    .line 1116
    goto/16 :goto_14a2

    .line 1117
    .line 1118
    :pswitch_45e
    invoke-interface {p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAllPackagesFromBatteryOptimizationWhiteList()Ljava/util/List;

    .line 1119
    .line 1120
    .line 1121
    move-result-object p0

    .line 1122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1126
    .line 1127
    .line 1128
    goto/16 :goto_14a2

    .line 1129
    .line 1130
    :pswitch_46a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1131
    .line 1132
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1133
    .line 1134
    .line 1135
    move-result-object p1

    .line 1136
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1137
    .line 1138
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1139
    .line 1140
    .line 1141
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromBatteryOptimizationWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 1142
    .line 1143
    .line 1144
    move-result-object p0

    .line 1145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    .line 1147
    .line 1148
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1149
    .line 1150
    .line 1151
    goto/16 :goto_14a2

    .line 1152
    .line 1153
    :pswitch_481
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1154
    .line 1155
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1156
    .line 1157
    .line 1158
    move-result-object p1

    .line 1159
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1160
    .line 1161
    sget-object p4, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1162
    .line 1163
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1164
    .line 1165
    .line 1166
    move-result-object p4

    .line 1167
    check-cast p4, Lcom/samsung/android/knox/AppIdentity;

    .line 1168
    .line 1169
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1170
    .line 1171
    .line 1172
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackageFromBatteryOptimizationWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    .line 1173
    .line 1174
    .line 1175
    move-result p0

    .line 1176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1180
    .line 1181
    .line 1182
    goto/16 :goto_14a2

    .line 1183
    .line 1184
    :pswitch_4a0
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1185
    .line 1186
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1187
    .line 1188
    .line 1189
    move-result-object p1

    .line 1190
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1191
    .line 1192
    sget-object p4, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1193
    .line 1194
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1195
    .line 1196
    .line 1197
    move-result-object p4

    .line 1198
    check-cast p4, Lcom/samsung/android/knox/AppIdentity;

    .line 1199
    .line 1200
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1201
    .line 1202
    .line 1203
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToBatteryOptimizationWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    .line 1204
    .line 1205
    .line 1206
    move-result p0

    .line 1207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1208
    .line 1209
    .line 1210
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1211
    .line 1212
    .line 1213
    goto/16 :goto_14a2

    .line 1214
    .line 1215
    :pswitch_4bf
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1216
    .line 1217
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1218
    .line 1219
    .line 1220
    move-result-object p1

    .line 1221
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1222
    .line 1223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1224
    .line 1225
    .line 1226
    move-result-object p4

    .line 1227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1228
    .line 1229
    .line 1230
    move-result v1

    .line 1231
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1232
    .line 1233
    .line 1234
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getRuntimePermissions(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/util/List;

    .line 1235
    .line 1236
    .line 1237
    move-result-object p0

    .line 1238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    .line 1240
    .line 1241
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1242
    .line 1243
    .line 1244
    goto/16 :goto_14a2

    .line 1245
    .line 1246
    :pswitch_4de
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1247
    .line 1248
    .line 1249
    move-result p1

    .line 1250
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1251
    .line 1252
    .line 1253
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->reapplyRuntimePermissions(I)V

    .line 1254
    .line 1255
    .line 1256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1257
    .line 1258
    .line 1259
    goto/16 :goto_14a2

    .line 1260
    .line 1261
    :pswitch_4ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1262
    .line 1263
    .line 1264
    move-result-object p1

    .line 1265
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1266
    .line 1267
    .line 1268
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->verifyRuntimePermissionPackageSignature(Ljava/lang/String;)Z

    .line 1269
    .line 1270
    .line 1271
    move-result p0

    .line 1272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1273
    .line 1274
    .line 1275
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1276
    .line 1277
    .line 1278
    goto/16 :goto_14a2

    .line 1279
    .line 1280
    :pswitch_500
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1281
    .line 1282
    .line 1283
    move-result p1

    .line 1284
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1285
    .line 1286
    .line 1287
    move-result-object p4

    .line 1288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1289
    .line 1290
    .line 1291
    move-result v1

    .line 1292
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1293
    .line 1294
    .line 1295
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getRuntimePermissionsEnforced(ILjava/lang/String;I)Ljava/util/List;

    .line 1296
    .line 1297
    .line 1298
    move-result-object p0

    .line 1299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1300
    .line 1301
    .line 1302
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1303
    .line 1304
    .line 1305
    goto/16 :goto_14a2

    .line 1306
    .line 1307
    :pswitch_51b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1308
    .line 1309
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1310
    .line 1311
    .line 1312
    move-result-object p1

    .line 1313
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1314
    .line 1315
    sget-object p4, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1316
    .line 1317
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1318
    .line 1319
    .line 1320
    move-result-object p4

    .line 1321
    check-cast p4, Lcom/samsung/android/knox/AppIdentity;

    .line 1322
    .line 1323
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v1

    .line 1327
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1328
    .line 1329
    .line 1330
    move-result v2

    .line 1331
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1332
    .line 1333
    .line 1334
    invoke-interface {p0, p1, p4, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->applyRuntimePermissions(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;I)I

    .line 1335
    .line 1336
    .line 1337
    move-result p0

    .line 1338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1342
    .line 1343
    .line 1344
    goto/16 :goto_14a2

    .line 1345
    .line 1346
    :pswitch_542
    invoke-interface {p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAddHomeShorcutRequested()Z

    .line 1347
    .line 1348
    .line 1349
    move-result p0

    .line 1350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1351
    .line 1352
    .line 1353
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1354
    .line 1355
    .line 1356
    goto/16 :goto_14a2

    .line 1357
    .line 1358
    :pswitch_54e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1359
    .line 1360
    .line 1361
    move-result p1

    .line 1362
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1363
    .line 1364
    .line 1365
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getDisabledPackages(I)Ljava/util/List;

    .line 1366
    .line 1367
    .line 1368
    move-result-object p0

    .line 1369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    .line 1371
    .line 1372
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1373
    .line 1374
    .line 1375
    goto/16 :goto_14a2

    .line 1376
    .line 1377
    :pswitch_561
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1378
    .line 1379
    .line 1380
    move-result p1

    .line 1381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1382
    .line 1383
    .line 1384
    move-result p4

    .line 1385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1386
    .line 1387
    .line 1388
    move-result v1

    .line 1389
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1390
    .line 1391
    .line 1392
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->updateApplicationTable(III)Z

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
    goto/16 :goto_14a2

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1413
    .line 1414
    .line 1415
    move-result-object p4

    .line 1416
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1417
    .line 1418
    .line 1419
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->installExistingApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

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
    goto/16 :goto_14a2

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1440
    .line 1441
    .line 1442
    move-result-object p4

    .line 1443
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1444
    .line 1445
    .line 1446
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearUsbDevicesForDefaultAccess(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

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
    goto/16 :goto_14a2

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1467
    .line 1468
    .line 1469
    move-result-object p4

    .line 1470
    sget-object v1, Lcom/samsung/android/knox/application/UsbDeviceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1471
    .line 1472
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v1

    .line 1476
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1477
    .line 1478
    .line 1479
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addUsbDevicesForDefaultAccess(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    .line 1480
    .line 1481
    .line 1482
    move-result p0

    .line 1483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1484
    .line 1485
    .line 1486
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1487
    .line 1488
    .line 1489
    goto/16 :goto_14a2

    .line 1490
    .line 1491
    :pswitch_5d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1492
    .line 1493
    .line 1494
    move-result p1

    .line 1495
    sget-object p4, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1496
    .line 1497
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1498
    .line 1499
    .line 1500
    move-result-object p4

    .line 1501
    check-cast p4, Landroid/hardware/usb/UsbDevice;

    .line 1502
    .line 1503
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1504
    .line 1505
    .line 1506
    move-result-object v1

    .line 1507
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1508
    .line 1509
    .line 1510
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isUsbDevicePermittedForPackage(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    .line 1511
    .line 1512
    .line 1513
    move-result p0

    .line 1514
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1515
    .line 1516
    .line 1517
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1518
    .line 1519
    .line 1520
    goto/16 :goto_14a2

    .line 1521
    .line 1522
    :pswitch_5f2
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1523
    .line 1524
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1525
    .line 1526
    .line 1527
    move-result-object p1

    .line 1528
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1529
    .line 1530
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1531
    .line 1532
    .line 1533
    move-result-object p4

    .line 1534
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1535
    .line 1536
    .line 1537
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getUsbDevicesForDefaultAccess(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    .line 1538
    .line 1539
    .line 1540
    move-result-object p0

    .line 1541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1542
    .line 1543
    .line 1544
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1545
    .line 1546
    .line 1547
    goto/16 :goto_14a2

    .line 1548
    .line 1549
    :pswitch_60d
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1550
    .line 1551
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1552
    .line 1553
    .line 1554
    move-result-object p1

    .line 1555
    check-cast p1, Landroid/content/ComponentName;

    .line 1556
    .line 1557
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1558
    .line 1559
    .line 1560
    move-result p4

    .line 1561
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1562
    .line 1563
    .line 1564
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->updateWidgetStatus(Landroid/content/ComponentName;I)V

    .line 1565
    .line 1566
    .line 1567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1568
    .line 1569
    .line 1570
    goto/16 :goto_14a2

    .line 1571
    .line 1572
    :pswitch_624
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1573
    .line 1574
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1575
    .line 1576
    .line 1577
    move-result-object p1

    .line 1578
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1579
    .line 1580
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1581
    .line 1582
    .line 1583
    move-result-object p4

    .line 1584
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1585
    .line 1586
    .line 1587
    move-result v1

    .line 1588
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1589
    .line 1590
    .line 1591
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getHomeShortcuts(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Ljava/util/List;

    .line 1592
    .line 1593
    .line 1594
    move-result-object p0

    .line 1595
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1596
    .line 1597
    .line 1598
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1599
    .line 1600
    .line 1601
    goto/16 :goto_14a2

    .line 1602
    .line 1603
    :pswitch_643
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1604
    .line 1605
    .line 1606
    move-result-object p1

    .line 1607
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1608
    .line 1609
    .line 1610
    move-result p4

    .line 1611
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1612
    .line 1613
    .line 1614
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationFocusMonitoredAsUser(Ljava/lang/String;I)Z

    .line 1615
    .line 1616
    .line 1617
    move-result p0

    .line 1618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1619
    .line 1620
    .line 1621
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1622
    .line 1623
    .line 1624
    goto/16 :goto_14a2

    .line 1625
    .line 1626
    :pswitch_65a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1627
    .line 1628
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1629
    .line 1630
    .line 1631
    move-result-object p1

    .line 1632
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1633
    .line 1634
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1635
    .line 1636
    .line 1637
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearFocusMonitoringList(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1638
    .line 1639
    .line 1640
    move-result p0

    .line 1641
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1642
    .line 1643
    .line 1644
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1645
    .line 1646
    .line 1647
    goto/16 :goto_14a2

    .line 1648
    .line 1649
    :pswitch_671
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1650
    .line 1651
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1652
    .line 1653
    .line 1654
    move-result-object p1

    .line 1655
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1656
    .line 1657
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1658
    .line 1659
    .line 1660
    move-result-object p4

    .line 1661
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1662
    .line 1663
    .line 1664
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromFocusMonitoringList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 1665
    .line 1666
    .line 1667
    move-result p0

    .line 1668
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1669
    .line 1670
    .line 1671
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1672
    .line 1673
    .line 1674
    goto/16 :goto_14a2

    .line 1675
    .line 1676
    :pswitch_68c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1677
    .line 1678
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1679
    .line 1680
    .line 1681
    move-result-object p1

    .line 1682
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1683
    .line 1684
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1685
    .line 1686
    .line 1687
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromFocusMonitoringList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 1688
    .line 1689
    .line 1690
    move-result-object p0

    .line 1691
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1692
    .line 1693
    .line 1694
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1695
    .line 1696
    .line 1697
    goto/16 :goto_14a2

    .line 1698
    .line 1699
    :pswitch_6a3
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1700
    .line 1701
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1702
    .line 1703
    .line 1704
    move-result-object p1

    .line 1705
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1706
    .line 1707
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1708
    .line 1709
    .line 1710
    move-result-object p4

    .line 1711
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1712
    .line 1713
    .line 1714
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToFocusMonitoringList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 1715
    .line 1716
    .line 1717
    move-result p0

    .line 1718
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1719
    .line 1720
    .line 1721
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1722
    .line 1723
    .line 1724
    goto/16 :goto_14a2

    .line 1725
    .line 1726
    :pswitch_6be
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1727
    .line 1728
    .line 1729
    move-result-object p1

    .line 1730
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1731
    .line 1732
    .line 1733
    move-result p4

    .line 1734
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1735
    .line 1736
    .line 1737
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageClipboardAllowed(Ljava/lang/String;I)Z

    .line 1738
    .line 1739
    .line 1740
    move-result p0

    .line 1741
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1742
    .line 1743
    .line 1744
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1745
    .line 1746
    .line 1747
    goto/16 :goto_14a2

    .line 1748
    .line 1749
    :pswitch_6d5
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1750
    .line 1751
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1752
    .line 1753
    .line 1754
    move-result-object p1

    .line 1755
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1756
    .line 1757
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1758
    .line 1759
    .line 1760
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1761
    .line 1762
    .line 1763
    move-result p0

    .line 1764
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1765
    .line 1766
    .line 1767
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1768
    .line 1769
    .line 1770
    goto/16 :goto_14a2

    .line 1771
    .line 1772
    :pswitch_6ec
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1773
    .line 1774
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1775
    .line 1776
    .line 1777
    move-result-object p1

    .line 1778
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1779
    .line 1780
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1781
    .line 1782
    .line 1783
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1784
    .line 1785
    .line 1786
    move-result p0

    .line 1787
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1788
    .line 1789
    .line 1790
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1791
    .line 1792
    .line 1793
    goto/16 :goto_14a2

    .line 1794
    .line 1795
    :pswitch_703
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1796
    .line 1797
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1798
    .line 1799
    .line 1800
    move-result-object p1

    .line 1801
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1802
    .line 1803
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1804
    .line 1805
    .line 1806
    move-result p4

    .line 1807
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1808
    .line 1809
    .line 1810
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromDisableClipboardWhiteListAsUserInternal(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    .line 1811
    .line 1812
    .line 1813
    move-result-object p0

    .line 1814
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1815
    .line 1816
    .line 1817
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1818
    .line 1819
    .line 1820
    goto/16 :goto_14a2

    .line 1821
    .line 1822
    :pswitch_71e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1823
    .line 1824
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1825
    .line 1826
    .line 1827
    move-result-object p1

    .line 1828
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1829
    .line 1830
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1831
    .line 1832
    .line 1833
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 1834
    .line 1835
    .line 1836
    move-result-object p0

    .line 1837
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1838
    .line 1839
    .line 1840
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1841
    .line 1842
    .line 1843
    goto/16 :goto_14a2

    .line 1844
    .line 1845
    :pswitch_735
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1846
    .line 1847
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1848
    .line 1849
    .line 1850
    move-result-object p1

    .line 1851
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1852
    .line 1853
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1854
    .line 1855
    .line 1856
    move-result-object p4

    .line 1857
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1858
    .line 1859
    .line 1860
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 1861
    .line 1862
    .line 1863
    move-result p0

    .line 1864
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1865
    .line 1866
    .line 1867
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1868
    .line 1869
    .line 1870
    goto/16 :goto_14a2

    .line 1871
    .line 1872
    :pswitch_750
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1873
    .line 1874
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1875
    .line 1876
    .line 1877
    move-result-object p1

    .line 1878
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1879
    .line 1880
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1881
    .line 1882
    .line 1883
    move-result-object p4

    .line 1884
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1885
    .line 1886
    .line 1887
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 1888
    .line 1889
    .line 1890
    move-result p0

    .line 1891
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1892
    .line 1893
    .line 1894
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1895
    .line 1896
    .line 1897
    goto/16 :goto_14a2

    .line 1898
    .line 1899
    :pswitch_76b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1900
    .line 1901
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1902
    .line 1903
    .line 1904
    move-result-object p1

    .line 1905
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1906
    .line 1907
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1908
    .line 1909
    .line 1910
    move-result p4

    .line 1911
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1912
    .line 1913
    .line 1914
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromDisableClipboardBlackListAsUserInternal(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    .line 1915
    .line 1916
    .line 1917
    move-result-object p0

    .line 1918
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1919
    .line 1920
    .line 1921
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1922
    .line 1923
    .line 1924
    goto/16 :goto_14a2

    .line 1925
    .line 1926
    :pswitch_786
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1927
    .line 1928
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1929
    .line 1930
    .line 1931
    move-result-object p1

    .line 1932
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1933
    .line 1934
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1935
    .line 1936
    .line 1937
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 1938
    .line 1939
    .line 1940
    move-result-object p0

    .line 1941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1942
    .line 1943
    .line 1944
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1945
    .line 1946
    .line 1947
    goto/16 :goto_14a2

    .line 1948
    .line 1949
    :pswitch_79d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1950
    .line 1951
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1952
    .line 1953
    .line 1954
    move-result-object p1

    .line 1955
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1956
    .line 1957
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1958
    .line 1959
    .line 1960
    move-result-object p4

    .line 1961
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1962
    .line 1963
    .line 1964
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 1965
    .line 1966
    .line 1967
    move-result p0

    .line 1968
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1969
    .line 1970
    .line 1971
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1972
    .line 1973
    .line 1974
    goto/16 :goto_14a2

    .line 1975
    .line 1976
    :pswitch_7b8
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1977
    .line 1978
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1979
    .line 1980
    .line 1981
    move-result-object p1

    .line 1982
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1983
    .line 1984
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1985
    .line 1986
    .line 1987
    move-result-object p4

    .line 1988
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1989
    .line 1990
    .line 1991
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 1992
    .line 1993
    .line 1994
    move-result p0

    .line 1995
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1996
    .line 1997
    .line 1998
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1999
    .line 2000
    .line 2001
    goto/16 :goto_14a2

    .line 2002
    .line 2003
    :pswitch_7d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2004
    .line 2005
    .line 2006
    move-result-object p1

    .line 2007
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2008
    .line 2009
    .line 2010
    move-result p4

    .line 2011
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2012
    .line 2013
    .line 2014
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z

    .line 2015
    .line 2016
    .line 2017
    move-result p0

    .line 2018
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2019
    .line 2020
    .line 2021
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2022
    .line 2023
    .line 2024
    goto/16 :goto_14a2

    .line 2025
    .line 2026
    :pswitch_7ea
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2027
    .line 2028
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2029
    .line 2030
    .line 2031
    move-result-object p1

    .line 2032
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2033
    .line 2034
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2035
    .line 2036
    .line 2037
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearPreventStartBlackList(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2038
    .line 2039
    .line 2040
    move-result p0

    .line 2041
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2042
    .line 2043
    .line 2044
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2045
    .line 2046
    .line 2047
    goto/16 :goto_14a2

    .line 2048
    .line 2049
    :pswitch_801
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2050
    .line 2051
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2052
    .line 2053
    .line 2054
    move-result-object p1

    .line 2055
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2056
    .line 2057
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2058
    .line 2059
    .line 2060
    move-result-object p4

    .line 2061
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2062
    .line 2063
    .line 2064
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromPreventStartBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2065
    .line 2066
    .line 2067
    move-result p0

    .line 2068
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2069
    .line 2070
    .line 2071
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2072
    .line 2073
    .line 2074
    goto/16 :goto_14a2

    .line 2075
    .line 2076
    :pswitch_81c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2077
    .line 2078
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2079
    .line 2080
    .line 2081
    move-result-object p1

    .line 2082
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2083
    .line 2084
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2085
    .line 2086
    .line 2087
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromPreventStartBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 2088
    .line 2089
    .line 2090
    move-result-object p0

    .line 2091
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2092
    .line 2093
    .line 2094
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2095
    .line 2096
    .line 2097
    goto/16 :goto_14a2

    .line 2098
    .line 2099
    :pswitch_833
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2100
    .line 2101
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2102
    .line 2103
    .line 2104
    move-result-object p1

    .line 2105
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2106
    .line 2107
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2108
    .line 2109
    .line 2110
    move-result-object p4

    .line 2111
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2112
    .line 2113
    .line 2114
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToPreventStartBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    .line 2115
    .line 2116
    .line 2117
    move-result-object p0

    .line 2118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2119
    .line 2120
    .line 2121
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2122
    .line 2123
    .line 2124
    goto/16 :goto_14a2

    .line 2125
    .line 2126
    :pswitch_84e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2127
    .line 2128
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2129
    .line 2130
    .line 2131
    move-result-object p1

    .line 2132
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2133
    .line 2134
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2135
    .line 2136
    .line 2137
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearDisableUpdateWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2138
    .line 2139
    .line 2140
    move-result p0

    .line 2141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2142
    .line 2143
    .line 2144
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2145
    .line 2146
    .line 2147
    goto/16 :goto_14a2

    .line 2148
    .line 2149
    :pswitch_865
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2150
    .line 2151
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2152
    .line 2153
    .line 2154
    move-result-object p1

    .line 2155
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2156
    .line 2157
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2158
    .line 2159
    .line 2160
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearDisableUpdateBlackList(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2161
    .line 2162
    .line 2163
    move-result p0

    .line 2164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2165
    .line 2166
    .line 2167
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2168
    .line 2169
    .line 2170
    goto/16 :goto_14a2

    .line 2171
    .line 2172
    :pswitch_87c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2173
    .line 2174
    .line 2175
    move-result-object p1

    .line 2176
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2177
    .line 2178
    .line 2179
    move-result p4

    .line 2180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2181
    .line 2182
    .line 2183
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageUpdateAllowed(Ljava/lang/String;Z)Z

    .line 2184
    .line 2185
    .line 2186
    move-result p0

    .line 2187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2188
    .line 2189
    .line 2190
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2191
    .line 2192
    .line 2193
    goto/16 :goto_14a2

    .line 2194
    .line 2195
    :pswitch_893
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2196
    .line 2197
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2198
    .line 2199
    .line 2200
    move-result-object p1

    .line 2201
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2202
    .line 2203
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2204
    .line 2205
    .line 2206
    move-result-object p4

    .line 2207
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2208
    .line 2209
    .line 2210
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromDisableUpdateWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2211
    .line 2212
    .line 2213
    move-result p0

    .line 2214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2215
    .line 2216
    .line 2217
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2218
    .line 2219
    .line 2220
    goto/16 :goto_14a2

    .line 2221
    .line 2222
    :pswitch_8ae
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2223
    .line 2224
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2225
    .line 2226
    .line 2227
    move-result-object p1

    .line 2228
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2229
    .line 2230
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2231
    .line 2232
    .line 2233
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromDisableUpdateWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 2234
    .line 2235
    .line 2236
    move-result-object p0

    .line 2237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2238
    .line 2239
    .line 2240
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2241
    .line 2242
    .line 2243
    goto/16 :goto_14a2

    .line 2244
    .line 2245
    :pswitch_8c5
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2246
    .line 2247
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2248
    .line 2249
    .line 2250
    move-result-object p1

    .line 2251
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2252
    .line 2253
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2254
    .line 2255
    .line 2256
    move-result-object p4

    .line 2257
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2258
    .line 2259
    .line 2260
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToDisableUpdateWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2261
    .line 2262
    .line 2263
    move-result p0

    .line 2264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2265
    .line 2266
    .line 2267
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2268
    .line 2269
    .line 2270
    goto/16 :goto_14a2

    .line 2271
    .line 2272
    :pswitch_8e0
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2273
    .line 2274
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2275
    .line 2276
    .line 2277
    move-result-object p1

    .line 2278
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2279
    .line 2280
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2281
    .line 2282
    .line 2283
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromDisableUpdateBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 2284
    .line 2285
    .line 2286
    move-result-object p0

    .line 2287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2288
    .line 2289
    .line 2290
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2291
    .line 2292
    .line 2293
    goto/16 :goto_14a2

    .line 2294
    .line 2295
    :pswitch_8f7
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2296
    .line 2297
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2298
    .line 2299
    .line 2300
    move-result-object p1

    .line 2301
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2302
    .line 2303
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2304
    .line 2305
    .line 2306
    move-result-object p4

    .line 2307
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2308
    .line 2309
    .line 2310
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromDisableUpdateBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2311
    .line 2312
    .line 2313
    move-result p0

    .line 2314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2315
    .line 2316
    .line 2317
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2318
    .line 2319
    .line 2320
    goto/16 :goto_14a2

    .line 2321
    .line 2322
    :pswitch_912
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2323
    .line 2324
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2325
    .line 2326
    .line 2327
    move-result-object p1

    .line 2328
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2329
    .line 2330
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2331
    .line 2332
    .line 2333
    move-result-object p4

    .line 2334
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2335
    .line 2336
    .line 2337
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToDisableUpdateBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2338
    .line 2339
    .line 2340
    move-result p0

    .line 2341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2342
    .line 2343
    .line 2344
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2345
    .line 2346
    .line 2347
    goto/16 :goto_14a2

    .line 2348
    .line 2349
    :pswitch_92d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2350
    .line 2351
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2352
    .line 2353
    .line 2354
    move-result-object p1

    .line 2355
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2356
    .line 2357
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2358
    .line 2359
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2360
    .line 2361
    .line 2362
    move-result-object p4

    .line 2363
    check-cast p4, Landroid/content/ComponentName;

    .line 2364
    .line 2365
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2366
    .line 2367
    .line 2368
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationComponentState(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    .line 2369
    .line 2370
    .line 2371
    move-result p0

    .line 2372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2373
    .line 2374
    .line 2375
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2376
    .line 2377
    .line 2378
    goto/16 :goto_14a2

    .line 2379
    .line 2380
    :pswitch_94c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2381
    .line 2382
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2383
    .line 2384
    .line 2385
    move-result-object p1

    .line 2386
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2387
    .line 2388
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2389
    .line 2390
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2391
    .line 2392
    .line 2393
    move-result-object p4

    .line 2394
    check-cast p4, Landroid/content/ComponentName;

    .line 2395
    .line 2396
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2397
    .line 2398
    .line 2399
    move-result v1

    .line 2400
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2401
    .line 2402
    .line 2403
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationComponentState(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Z)Z

    .line 2404
    .line 2405
    .line 2406
    move-result p0

    .line 2407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2408
    .line 2409
    .line 2410
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2411
    .line 2412
    .line 2413
    goto/16 :goto_14a2

    .line 2414
    .line 2415
    :pswitch_96f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2416
    .line 2417
    .line 2418
    move-result p1

    .line 2419
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2420
    .line 2421
    .line 2422
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isAnyApplicationNameChangedAsUser(I)Z

    .line 2423
    .line 2424
    .line 2425
    move-result p0

    .line 2426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2427
    .line 2428
    .line 2429
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2430
    .line 2431
    .line 2432
    goto/16 :goto_14a2

    .line 2433
    .line 2434
    :pswitch_982
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2435
    .line 2436
    .line 2437
    move-result-object p1

    .line 2438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2439
    .line 2440
    .line 2441
    move-result p4

    .line 2442
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2443
    .line 2444
    .line 2445
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    .line 2446
    .line 2447
    .line 2448
    move-result-object p0

    .line 2449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2450
    .line 2451
    .line 2452
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2453
    .line 2454
    .line 2455
    goto/16 :goto_14a2

    .line 2456
    .line 2457
    :pswitch_999
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2458
    .line 2459
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2460
    .line 2461
    .line 2462
    move-result-object p1

    .line 2463
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2464
    .line 2465
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2466
    .line 2467
    .line 2468
    move-result-object p4

    .line 2469
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2470
    .line 2471
    .line 2472
    move-result-object v1

    .line 2473
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2474
    .line 2475
    .line 2476
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->changeApplicationName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2477
    .line 2478
    .line 2479
    move-result p0

    .line 2480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2481
    .line 2482
    .line 2483
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2484
    .line 2485
    .line 2486
    goto/16 :goto_14a2

    .line 2487
    .line 2488
    :pswitch_9b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2489
    .line 2490
    .line 2491
    move-result-object p1

    .line 2492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2493
    .line 2494
    .line 2495
    move-result p4

    .line 2496
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2497
    .line 2498
    .line 2499
    move-result v1

    .line 2500
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2501
    .line 2502
    .line 2503
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z

    .line 2504
    .line 2505
    .line 2506
    move-result p0

    .line 2507
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2508
    .line 2509
    .line 2510
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2511
    .line 2512
    .line 2513
    goto/16 :goto_14a2

    .line 2514
    .line 2515
    :pswitch_9d3
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2516
    .line 2517
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2518
    .line 2519
    .line 2520
    move-result-object p1

    .line 2521
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2522
    .line 2523
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2524
    .line 2525
    .line 2526
    move-result-object p4

    .line 2527
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2528
    .line 2529
    .line 2530
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2531
    .line 2532
    .line 2533
    move-result p0

    .line 2534
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2535
    .line 2536
    .line 2537
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2538
    .line 2539
    .line 2540
    goto/16 :goto_14a2

    .line 2541
    .line 2542
    :pswitch_9ee
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2543
    .line 2544
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2545
    .line 2546
    .line 2547
    move-result-object p1

    .line 2548
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2549
    .line 2550
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2551
    .line 2552
    .line 2553
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 2554
    .line 2555
    .line 2556
    move-result-object p0

    .line 2557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2558
    .line 2559
    .line 2560
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2561
    .line 2562
    .line 2563
    goto/16 :goto_14a2

    .line 2564
    .line 2565
    :pswitch_a05
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2566
    .line 2567
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2568
    .line 2569
    .line 2570
    move-result-object p1

    .line 2571
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2572
    .line 2573
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2574
    .line 2575
    .line 2576
    move-result-object p4

    .line 2577
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2578
    .line 2579
    .line 2580
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2581
    .line 2582
    .line 2583
    move-result p0

    .line 2584
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2585
    .line 2586
    .line 2587
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2588
    .line 2589
    .line 2590
    goto/16 :goto_14a2

    .line 2591
    .line 2592
    :pswitch_a20
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2593
    .line 2594
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2595
    .line 2596
    .line 2597
    move-result-object p1

    .line 2598
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2599
    .line 2600
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2601
    .line 2602
    .line 2603
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 2604
    .line 2605
    .line 2606
    move-result-object p0

    .line 2607
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2608
    .line 2609
    .line 2610
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2611
    .line 2612
    .line 2613
    goto/16 :goto_14a2

    .line 2614
    .line 2615
    :pswitch_a37
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2616
    .line 2617
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2618
    .line 2619
    .line 2620
    move-result-object p1

    .line 2621
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2622
    .line 2623
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2624
    .line 2625
    .line 2626
    move-result-object p4

    .line 2627
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2628
    .line 2629
    .line 2630
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2631
    .line 2632
    .line 2633
    move-result p0

    .line 2634
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2635
    .line 2636
    .line 2637
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2638
    .line 2639
    .line 2640
    goto/16 :goto_14a2

    .line 2641
    .line 2642
    :pswitch_a52
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2643
    .line 2644
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2645
    .line 2646
    .line 2647
    move-result-object p1

    .line 2648
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2649
    .line 2650
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2651
    .line 2652
    .line 2653
    move-result-object p4

    .line 2654
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2655
    .line 2656
    .line 2657
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2658
    .line 2659
    .line 2660
    move-result p0

    .line 2661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2662
    .line 2663
    .line 2664
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2665
    .line 2666
    .line 2667
    goto/16 :goto_14a2

    .line 2668
    .line 2669
    :pswitch_a6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2670
    .line 2671
    .line 2672
    move-result-object p1

    .line 2673
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2674
    .line 2675
    .line 2676
    move-result p4

    .line 2677
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2678
    .line 2679
    .line 2680
    move-result v1

    .line 2681
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2682
    .line 2683
    .line 2684
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z

    .line 2685
    .line 2686
    .line 2687
    move-result p0

    .line 2688
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2689
    .line 2690
    .line 2691
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2692
    .line 2693
    .line 2694
    goto/16 :goto_14a2

    .line 2695
    .line 2696
    :pswitch_a88
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2697
    .line 2698
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2699
    .line 2700
    .line 2701
    move-result-object p1

    .line 2702
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2703
    .line 2704
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2705
    .line 2706
    .line 2707
    move-result-object p4

    .line 2708
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2709
    .line 2710
    .line 2711
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2712
    .line 2713
    .line 2714
    move-result p0

    .line 2715
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2716
    .line 2717
    .line 2718
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2719
    .line 2720
    .line 2721
    goto/16 :goto_14a2

    .line 2722
    .line 2723
    :pswitch_aa3
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2724
    .line 2725
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2726
    .line 2727
    .line 2728
    move-result-object p1

    .line 2729
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2730
    .line 2731
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2732
    .line 2733
    .line 2734
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 2735
    .line 2736
    .line 2737
    move-result-object p0

    .line 2738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2739
    .line 2740
    .line 2741
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2742
    .line 2743
    .line 2744
    goto/16 :goto_14a2

    .line 2745
    .line 2746
    :pswitch_aba
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2747
    .line 2748
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2749
    .line 2750
    .line 2751
    move-result-object p1

    .line 2752
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2753
    .line 2754
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2755
    .line 2756
    .line 2757
    move-result-object p4

    .line 2758
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2759
    .line 2760
    .line 2761
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2762
    .line 2763
    .line 2764
    move-result p0

    .line 2765
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2766
    .line 2767
    .line 2768
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2769
    .line 2770
    .line 2771
    goto/16 :goto_14a2

    .line 2772
    .line 2773
    :pswitch_ad5
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2774
    .line 2775
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2776
    .line 2777
    .line 2778
    move-result-object p1

    .line 2779
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2780
    .line 2781
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2782
    .line 2783
    .line 2784
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 2785
    .line 2786
    .line 2787
    move-result-object p0

    .line 2788
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2789
    .line 2790
    .line 2791
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2792
    .line 2793
    .line 2794
    goto/16 :goto_14a2

    .line 2795
    .line 2796
    :pswitch_aec
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2797
    .line 2798
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2799
    .line 2800
    .line 2801
    move-result-object p1

    .line 2802
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2803
    .line 2804
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2805
    .line 2806
    .line 2807
    move-result-object p4

    .line 2808
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2809
    .line 2810
    .line 2811
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2812
    .line 2813
    .line 2814
    move-result p0

    .line 2815
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2816
    .line 2817
    .line 2818
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2819
    .line 2820
    .line 2821
    goto/16 :goto_14a2

    .line 2822
    .line 2823
    :pswitch_b07
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2824
    .line 2825
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2826
    .line 2827
    .line 2828
    move-result-object p1

    .line 2829
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2830
    .line 2831
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2832
    .line 2833
    .line 2834
    move-result-object p4

    .line 2835
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2836
    .line 2837
    .line 2838
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2839
    .line 2840
    .line 2841
    move-result p0

    .line 2842
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2843
    .line 2844
    .line 2845
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2846
    .line 2847
    .line 2848
    goto/16 :goto_14a2

    .line 2849
    .line 2850
    :pswitch_b22
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2851
    .line 2852
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2853
    .line 2854
    .line 2855
    move-result-object p1

    .line 2856
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2857
    .line 2858
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2859
    .line 2860
    .line 2861
    move-result-object p4

    .line 2862
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2863
    .line 2864
    .line 2865
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageInApprovedInstallerWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 2866
    .line 2867
    .line 2868
    move-result p0

    .line 2869
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2870
    .line 2871
    .line 2872
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2873
    .line 2874
    .line 2875
    goto/16 :goto_14a2

    .line 2876
    .line 2877
    :pswitch_b3d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2878
    .line 2879
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2880
    .line 2881
    .line 2882
    move-result-object p1

    .line 2883
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2884
    .line 2885
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2886
    .line 2887
    .line 2888
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppSignaturesAllWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 2889
    .line 2890
    .line 2891
    move-result-object p0

    .line 2892
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2893
    .line 2894
    .line 2895
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2896
    .line 2897
    .line 2898
    goto/16 :goto_14a2

    .line 2899
    .line 2900
    :pswitch_b54
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2901
    .line 2902
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2903
    .line 2904
    .line 2905
    move-result-object p1

    .line 2906
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2907
    .line 2908
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2909
    .line 2910
    .line 2911
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppSignaturesWhiteList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    .line 2912
    .line 2913
    .line 2914
    move-result-object p0

    .line 2915
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2916
    .line 2917
    .line 2918
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2919
    .line 2920
    .line 2921
    goto/16 :goto_14a2

    .line 2922
    .line 2923
    :pswitch_b6b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2924
    .line 2925
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2926
    .line 2927
    .line 2928
    move-result-object p1

    .line 2929
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2930
    .line 2931
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2932
    .line 2933
    .line 2934
    move-result-object p4

    .line 2935
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2936
    .line 2937
    .line 2938
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppSignatureFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 2939
    .line 2940
    .line 2941
    move-result p0

    .line 2942
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2943
    .line 2944
    .line 2945
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2946
    .line 2947
    .line 2948
    goto/16 :goto_14a2

    .line 2949
    .line 2950
    :pswitch_b86
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2951
    .line 2952
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2953
    .line 2954
    .line 2955
    move-result-object p1

    .line 2956
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2957
    .line 2958
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2959
    .line 2960
    .line 2961
    move-result-object p4

    .line 2962
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2963
    .line 2964
    .line 2965
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppSignatureToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 2966
    .line 2967
    .line 2968
    move-result p0

    .line 2969
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2970
    .line 2971
    .line 2972
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2973
    .line 2974
    .line 2975
    goto/16 :goto_14a2

    .line 2976
    .line 2977
    :pswitch_ba1
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2978
    .line 2979
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2980
    .line 2981
    .line 2982
    move-result-object p1

    .line 2983
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2984
    .line 2985
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2986
    .line 2987
    .line 2988
    move-result-object p4

    .line 2989
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2990
    .line 2991
    .line 2992
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 2993
    .line 2994
    .line 2995
    move-result p0

    .line 2996
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2997
    .line 2998
    .line 2999
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3000
    .line 3001
    .line 3002
    goto/16 :goto_14a2

    .line 3003
    .line 3004
    :pswitch_bbc
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3005
    .line 3006
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3007
    .line 3008
    .line 3009
    move-result-object p1

    .line 3010
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3011
    .line 3012
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3013
    .line 3014
    .line 3015
    move-result-object p4

    .line 3016
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3017
    .line 3018
    .line 3019
    move-result v1

    .line 3020
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3021
    .line 3022
    .line 3023
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->enableOcspCheck(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 3024
    .line 3025
    .line 3026
    move-result p0

    .line 3027
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3028
    .line 3029
    .line 3030
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3031
    .line 3032
    .line 3033
    goto/16 :goto_14a2

    .line 3034
    .line 3035
    :pswitch_bdb
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3036
    .line 3037
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3038
    .line 3039
    .line 3040
    move-result-object p1

    .line 3041
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3042
    .line 3043
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3044
    .line 3045
    .line 3046
    move-result-object p4

    .line 3047
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3048
    .line 3049
    .line 3050
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 3051
    .line 3052
    .line 3053
    move-result p0

    .line 3054
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3055
    .line 3056
    .line 3057
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3058
    .line 3059
    .line 3060
    goto/16 :goto_14a2

    .line 3061
    .line 3062
    :pswitch_bf6
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3063
    .line 3064
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3065
    .line 3066
    .line 3067
    move-result-object p1

    .line 3068
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3069
    .line 3070
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3071
    .line 3072
    .line 3073
    move-result-object p4

    .line 3074
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3075
    .line 3076
    .line 3077
    move-result v1

    .line 3078
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3079
    .line 3080
    .line 3081
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->enableRevocationCheck(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 3082
    .line 3083
    .line 3084
    move-result p0

    .line 3085
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3086
    .line 3087
    .line 3088
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3089
    .line 3090
    .line 3091
    goto/16 :goto_14a2

    .line 3092
    .line 3093
    :pswitch_c15
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3094
    .line 3095
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3096
    .line 3097
    .line 3098
    move-result-object p1

    .line 3099
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3100
    .line 3101
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3102
    .line 3103
    .line 3104
    move-result-object p4

    .line 3105
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3106
    .line 3107
    .line 3108
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromForceStopBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 3109
    .line 3110
    .line 3111
    move-result p0

    .line 3112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3113
    .line 3114
    .line 3115
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3116
    .line 3117
    .line 3118
    goto/16 :goto_14a2

    .line 3119
    .line 3120
    :pswitch_c30
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3121
    .line 3122
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3123
    .line 3124
    .line 3125
    move-result-object p1

    .line 3126
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3127
    .line 3128
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3129
    .line 3130
    .line 3131
    move-result-object p4

    .line 3132
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3133
    .line 3134
    .line 3135
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromForceStopWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 3136
    .line 3137
    .line 3138
    move-result p0

    .line 3139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3140
    .line 3141
    .line 3142
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3143
    .line 3144
    .line 3145
    goto/16 :goto_14a2

    .line 3146
    .line 3147
    :pswitch_c4b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3148
    .line 3149
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3150
    .line 3151
    .line 3152
    move-result-object p1

    .line 3153
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3154
    .line 3155
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3156
    .line 3157
    .line 3158
    move-result-object p4

    .line 3159
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3160
    .line 3161
    .line 3162
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromWidgetBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 3163
    .line 3164
    .line 3165
    move-result p0

    .line 3166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3167
    .line 3168
    .line 3169
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3170
    .line 3171
    .line 3172
    goto/16 :goto_14a2

    .line 3173
    .line 3174
    :pswitch_c66
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3175
    .line 3176
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3177
    .line 3178
    .line 3179
    move-result-object p1

    .line 3180
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3181
    .line 3182
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3183
    .line 3184
    .line 3185
    move-result-object p4

    .line 3186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3187
    .line 3188
    .line 3189
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToWidgetBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 3190
    .line 3191
    .line 3192
    move-result p0

    .line 3193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3194
    .line 3195
    .line 3196
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3197
    .line 3198
    .line 3199
    goto/16 :goto_14a2

    .line 3200
    .line 3201
    :pswitch_c81
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3202
    .line 3203
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3204
    .line 3205
    .line 3206
    move-result-object p1

    .line 3207
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3208
    .line 3209
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3210
    .line 3211
    .line 3212
    move-result-object p4

    .line 3213
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3214
    .line 3215
    .line 3216
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromWidgetWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 3217
    .line 3218
    .line 3219
    move-result p0

    .line 3220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3221
    .line 3222
    .line 3223
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3224
    .line 3225
    .line 3226
    goto/16 :goto_14a2

    .line 3227
    .line 3228
    :pswitch_c9c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3229
    .line 3230
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3231
    .line 3232
    .line 3233
    move-result-object p1

    .line 3234
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3235
    .line 3236
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3237
    .line 3238
    .line 3239
    move-result-object p4

    .line 3240
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3241
    .line 3242
    .line 3243
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToWidgetWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 3244
    .line 3245
    .line 3246
    move-result p0

    .line 3247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3248
    .line 3249
    .line 3250
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3251
    .line 3252
    .line 3253
    goto/16 :goto_14a2

    .line 3254
    .line 3255
    :pswitch_cb7
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3256
    .line 3257
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3258
    .line 3259
    .line 3260
    move-result-object p1

    .line 3261
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3262
    .line 3263
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3264
    .line 3265
    .line 3266
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromWidgetBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 3267
    .line 3268
    .line 3269
    move-result-object p0

    .line 3270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3271
    .line 3272
    .line 3273
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3274
    .line 3275
    .line 3276
    goto/16 :goto_14a2

    .line 3277
    .line 3278
    :pswitch_cce
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3279
    .line 3280
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3281
    .line 3282
    .line 3283
    move-result-object p1

    .line 3284
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3285
    .line 3286
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3287
    .line 3288
    .line 3289
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromForceStopWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 3290
    .line 3291
    .line 3292
    move-result-object p0

    .line 3293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3294
    .line 3295
    .line 3296
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3297
    .line 3298
    .line 3299
    goto/16 :goto_14a2

    .line 3300
    .line 3301
    :pswitch_ce5
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3302
    .line 3303
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3304
    .line 3305
    .line 3306
    move-result-object p1

    .line 3307
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3308
    .line 3309
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3310
    .line 3311
    .line 3312
    move-result-object p4

    .line 3313
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3314
    .line 3315
    .line 3316
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToForceStopWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 3317
    .line 3318
    .line 3319
    move-result p0

    .line 3320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3321
    .line 3322
    .line 3323
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3324
    .line 3325
    .line 3326
    goto/16 :goto_14a2

    .line 3327
    .line 3328
    :pswitch_d00
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3329
    .line 3330
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3331
    .line 3332
    .line 3333
    move-result-object p1

    .line 3334
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3335
    .line 3336
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3337
    .line 3338
    .line 3339
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromForceStopBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 3340
    .line 3341
    .line 3342
    move-result-object p0

    .line 3343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3344
    .line 3345
    .line 3346
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3347
    .line 3348
    .line 3349
    goto/16 :goto_14a2

    .line 3350
    .line 3351
    :pswitch_d17
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3352
    .line 3353
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3354
    .line 3355
    .line 3356
    move-result-object p1

    .line 3357
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3358
    .line 3359
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3360
    .line 3361
    .line 3362
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationUninstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    .line 3363
    .line 3364
    .line 3365
    move-result p0

    .line 3366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3367
    .line 3368
    .line 3369
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3370
    .line 3371
    .line 3372
    goto/16 :goto_14a2

    .line 3373
    .line 3374
    :pswitch_d2e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3375
    .line 3376
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3377
    .line 3378
    .line 3379
    move-result-object p1

    .line 3380
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3381
    .line 3382
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3383
    .line 3384
    .line 3385
    move-result-object p4

    .line 3386
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3387
    .line 3388
    .line 3389
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAllWidgets(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/Map;

    .line 3390
    .line 3391
    .line 3392
    move-result-object p0

    .line 3393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3394
    .line 3395
    .line 3396
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 3397
    .line 3398
    .line 3399
    goto/16 :goto_14a2

    .line 3400
    .line 3401
    :pswitch_d49
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3402
    .line 3403
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3404
    .line 3405
    .line 3406
    move-result-object p1

    .line 3407
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3408
    .line 3409
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3410
    .line 3411
    .line 3412
    move-result-object p4

    .line 3413
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3414
    .line 3415
    .line 3416
    move-result-object v1

    .line 3417
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3418
    .line 3419
    .line 3420
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->deleteHomeShortcut(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3421
    .line 3422
    .line 3423
    move-result p0

    .line 3424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3425
    .line 3426
    .line 3427
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3428
    .line 3429
    .line 3430
    goto/16 :goto_14a2

    .line 3431
    .line 3432
    :pswitch_d68
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3433
    .line 3434
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3435
    .line 3436
    .line 3437
    move-result-object p1

    .line 3438
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3439
    .line 3440
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3441
    .line 3442
    .line 3443
    move-result-object p4

    .line 3444
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3445
    .line 3446
    .line 3447
    move-result-object v1

    .line 3448
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3449
    .line 3450
    .line 3451
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addHomeShortcut(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3452
    .line 3453
    .line 3454
    move-result p0

    .line 3455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3456
    .line 3457
    .line 3458
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3459
    .line 3460
    .line 3461
    goto/16 :goto_14a2

    .line 3462
    .line 3463
    :pswitch_d87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3464
    .line 3465
    .line 3466
    move-result-object p1

    .line 3467
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3468
    .line 3469
    .line 3470
    move-result p4

    .line 3471
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3472
    .line 3473
    .line 3474
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isStatusBarNotificationAllowedAsUser(Ljava/lang/String;I)Z

    .line 3475
    .line 3476
    .line 3477
    move-result p0

    .line 3478
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3479
    .line 3480
    .line 3481
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3482
    .line 3483
    .line 3484
    goto/16 :goto_14a2

    .line 3485
    .line 3486
    :pswitch_d9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3487
    .line 3488
    .line 3489
    move-result p1

    .line 3490
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3491
    .line 3492
    .line 3493
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationNotificationModeAsUser(I)I

    .line 3494
    .line 3495
    .line 3496
    move-result p0

    .line 3497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3498
    .line 3499
    .line 3500
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3501
    .line 3502
    .line 3503
    goto/16 :goto_14a2

    .line 3504
    .line 3505
    :pswitch_db1
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3506
    .line 3507
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3508
    .line 3509
    .line 3510
    move-result-object p1

    .line 3511
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3512
    .line 3513
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3514
    .line 3515
    .line 3516
    move-result p4

    .line 3517
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3518
    .line 3519
    .line 3520
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationNotificationMode(Lcom/samsung/android/knox/ContextInfo;Z)I

    .line 3521
    .line 3522
    .line 3523
    move-result p0

    .line 3524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3525
    .line 3526
    .line 3527
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3528
    .line 3529
    .line 3530
    goto/16 :goto_14a2

    .line 3531
    .line 3532
    :pswitch_dcc
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3533
    .line 3534
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3535
    .line 3536
    .line 3537
    move-result-object p1

    .line 3538
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3539
    .line 3540
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3541
    .line 3542
    .line 3543
    move-result p4

    .line 3544
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3545
    .line 3546
    .line 3547
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationNotificationMode(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 3548
    .line 3549
    .line 3550
    move-result p0

    .line 3551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3552
    .line 3553
    .line 3554
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3555
    .line 3556
    .line 3557
    goto/16 :goto_14a2

    .line 3558
    .line 3559
    :pswitch_de7
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3560
    .line 3561
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3562
    .line 3563
    .line 3564
    move-result-object p1

    .line 3565
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3566
    .line 3567
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3568
    .line 3569
    .line 3570
    move-result p4

    .line 3571
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3572
    .line 3573
    .line 3574
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppNotificationWhiteList(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    .line 3575
    .line 3576
    .line 3577
    move-result-object p0

    .line 3578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3579
    .line 3580
    .line 3581
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3582
    .line 3583
    .line 3584
    goto/16 :goto_14a2

    .line 3585
    .line 3586
    :pswitch_e02
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3587
    .line 3588
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3589
    .line 3590
    .line 3591
    move-result-object p1

    .line 3592
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3593
    .line 3594
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3595
    .line 3596
    .line 3597
    move-result-object p4

    .line 3598
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3599
    .line 3600
    .line 3601
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppNotificationWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 3602
    .line 3603
    .line 3604
    move-result p0

    .line 3605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3606
    .line 3607
    .line 3608
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3609
    .line 3610
    .line 3611
    goto/16 :goto_14a2

    .line 3612
    .line 3613
    :pswitch_e1d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3614
    .line 3615
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3616
    .line 3617
    .line 3618
    move-result-object p1

    .line 3619
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3620
    .line 3621
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3622
    .line 3623
    .line 3624
    move-result-object p4

    .line 3625
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3626
    .line 3627
    .line 3628
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppNotificationWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 3629
    .line 3630
    .line 3631
    move-result p0

    .line 3632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3633
    .line 3634
    .line 3635
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3636
    .line 3637
    .line 3638
    goto/16 :goto_14a2

    .line 3639
    .line 3640
    :pswitch_e38
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3641
    .line 3642
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3643
    .line 3644
    .line 3645
    move-result-object p1

    .line 3646
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3647
    .line 3648
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3649
    .line 3650
    .line 3651
    move-result p4

    .line 3652
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3653
    .line 3654
    .line 3655
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppNotificationBlackList(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    .line 3656
    .line 3657
    .line 3658
    move-result-object p0

    .line 3659
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3660
    .line 3661
    .line 3662
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3663
    .line 3664
    .line 3665
    goto/16 :goto_14a2

    .line 3666
    .line 3667
    :pswitch_e53
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3668
    .line 3669
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3670
    .line 3671
    .line 3672
    move-result-object p1

    .line 3673
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3674
    .line 3675
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3676
    .line 3677
    .line 3678
    move-result-object p4

    .line 3679
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3680
    .line 3681
    .line 3682
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppNotificationBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 3683
    .line 3684
    .line 3685
    move-result p0

    .line 3686
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3687
    .line 3688
    .line 3689
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3690
    .line 3691
    .line 3692
    goto/16 :goto_14a2

    .line 3693
    .line 3694
    :pswitch_e6e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3695
    .line 3696
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3697
    .line 3698
    .line 3699
    move-result-object p1

    .line 3700
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3701
    .line 3702
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3703
    .line 3704
    .line 3705
    move-result-object p4

    .line 3706
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3707
    .line 3708
    .line 3709
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppNotificationBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 3710
    .line 3711
    .line 3712
    move-result p0

    .line 3713
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3714
    .line 3715
    .line 3716
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3717
    .line 3718
    .line 3719
    goto/16 :goto_14a2

    .line 3720
    .line 3721
    :pswitch_e89
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3722
    .line 3723
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3724
    .line 3725
    .line 3726
    move-result-object p1

    .line 3727
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3728
    .line 3729
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3730
    .line 3731
    .line 3732
    move-result-object p4

    .line 3733
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3734
    .line 3735
    .line 3736
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isWidgetAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 3737
    .line 3738
    .line 3739
    move-result p0

    .line 3740
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3741
    .line 3742
    .line 3743
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3744
    .line 3745
    .line 3746
    goto/16 :goto_14a2

    .line 3747
    .line 3748
    :pswitch_ea4
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3749
    .line 3750
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3751
    .line 3752
    .line 3753
    move-result-object p1

    .line 3754
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3755
    .line 3756
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3757
    .line 3758
    .line 3759
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromWidgetWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 3760
    .line 3761
    .line 3762
    move-result-object p0

    .line 3763
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3764
    .line 3765
    .line 3766
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3767
    .line 3768
    .line 3769
    goto/16 :goto_14a2

    .line 3770
    .line 3771
    :pswitch_ebb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3772
    .line 3773
    .line 3774
    move-result-object v2

    .line 3775
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3776
    .line 3777
    .line 3778
    move-result v3

    .line 3779
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3780
    .line 3781
    .line 3782
    move-result-object v4

    .line 3783
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3784
    .line 3785
    .line 3786
    move-result-object v5

    .line 3787
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3788
    .line 3789
    .line 3790
    move-result-object v6

    .line 3791
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3792
    .line 3793
    .line 3794
    move-result v7

    .line 3795
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3796
    .line 3797
    .line 3798
    move-object v1, p0

    .line 3799
    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 3800
    .line 3801
    .line 3802
    move-result p0

    .line 3803
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3804
    .line 3805
    .line 3806
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3807
    .line 3808
    .line 3809
    goto/16 :goto_14a2

    .line 3810
    .line 3811
    :pswitch_ee3
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3812
    .line 3813
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3814
    .line 3815
    .line 3816
    move-result-object p1

    .line 3817
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3818
    .line 3819
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3820
    .line 3821
    .line 3822
    move-result-object p4

    .line 3823
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3824
    .line 3825
    .line 3826
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToForceStopBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 3827
    .line 3828
    .line 3829
    move-result p0

    .line 3830
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3831
    .line 3832
    .line 3833
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3834
    .line 3835
    .line 3836
    goto/16 :goto_14a2

    .line 3837
    .line 3838
    :pswitch_efe
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3839
    .line 3840
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3841
    .line 3842
    .line 3843
    move-result-object p1

    .line 3844
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3845
    .line 3846
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3847
    .line 3848
    .line 3849
    move-result p4

    .line 3850
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3851
    .line 3852
    .line 3853
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationUninstallationMode(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 3854
    .line 3855
    .line 3856
    move-result p0

    .line 3857
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3858
    .line 3859
    .line 3860
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3861
    .line 3862
    .line 3863
    goto/16 :goto_14a2

    .line 3864
    .line 3865
    :pswitch_f19
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3866
    .line 3867
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3868
    .line 3869
    .line 3870
    move-result-object p1

    .line 3871
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3872
    .line 3873
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3874
    .line 3875
    .line 3876
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppInstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    .line 3877
    .line 3878
    .line 3879
    move-result p0

    .line 3880
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3881
    .line 3882
    .line 3883
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3884
    .line 3885
    .line 3886
    goto/16 :goto_14a2

    .line 3887
    .line 3888
    :pswitch_f30
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3889
    .line 3890
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3891
    .line 3892
    .line 3893
    move-result-object p1

    .line 3894
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3895
    .line 3896
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3897
    .line 3898
    .line 3899
    move-result p4

    .line 3900
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3901
    .line 3902
    .line 3903
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setAppInstallationMode(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 3904
    .line 3905
    .line 3906
    move-result p0

    .line 3907
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3908
    .line 3909
    .line 3910
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3911
    .line 3912
    .line 3913
    goto/16 :goto_14a2

    .line 3914
    .line 3915
    :pswitch_f4b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3916
    .line 3917
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3918
    .line 3919
    .line 3920
    move-result-object p1

    .line 3921
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3922
    .line 3923
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3924
    .line 3925
    .line 3926
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppSignaturesAllBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 3927
    .line 3928
    .line 3929
    move-result-object p0

    .line 3930
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3931
    .line 3932
    .line 3933
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3934
    .line 3935
    .line 3936
    goto/16 :goto_14a2

    .line 3937
    .line 3938
    :pswitch_f62
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3939
    .line 3940
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3941
    .line 3942
    .line 3943
    move-result-object p1

    .line 3944
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3945
    .line 3946
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3947
    .line 3948
    .line 3949
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppPermissionsAllBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 3950
    .line 3951
    .line 3952
    move-result-object p0

    .line 3953
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3954
    .line 3955
    .line 3956
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3957
    .line 3958
    .line 3959
    goto/16 :goto_14a2

    .line 3960
    .line 3961
    :pswitch_f79
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3962
    .line 3963
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3964
    .line 3965
    .line 3966
    move-result-object p1

    .line 3967
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3968
    .line 3969
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3970
    .line 3971
    .line 3972
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppPackageNamesAllWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 3973
    .line 3974
    .line 3975
    move-result-object p0

    .line 3976
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3977
    .line 3978
    .line 3979
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3980
    .line 3981
    .line 3982
    goto/16 :goto_14a2

    .line 3983
    .line 3984
    :pswitch_f90
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3985
    .line 3986
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3987
    .line 3988
    .line 3989
    move-result-object p1

    .line 3990
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3991
    .line 3992
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3993
    .line 3994
    .line 3995
    move-result-object p4

    .line 3996
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3997
    .line 3998
    .line 3999
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppPackageNameFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 4000
    .line 4001
    .line 4002
    move-result p0

    .line 4003
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4004
    .line 4005
    .line 4006
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4007
    .line 4008
    .line 4009
    goto/16 :goto_14a2

    .line 4010
    .line 4011
    :pswitch_fab
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4012
    .line 4013
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4014
    .line 4015
    .line 4016
    move-result-object p1

    .line 4017
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4018
    .line 4019
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4020
    .line 4021
    .line 4022
    move-result-object p4

    .line 4023
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4024
    .line 4025
    .line 4026
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppPackageNameToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 4027
    .line 4028
    .line 4029
    move-result p0

    .line 4030
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4031
    .line 4032
    .line 4033
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4034
    .line 4035
    .line 4036
    goto/16 :goto_14a2

    .line 4037
    .line 4038
    :pswitch_fc6
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4039
    .line 4040
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4041
    .line 4042
    .line 4043
    move-result-object p1

    .line 4044
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4045
    .line 4046
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4047
    .line 4048
    .line 4049
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppPackageNamesAllBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 4050
    .line 4051
    .line 4052
    move-result-object p0

    .line 4053
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4054
    .line 4055
    .line 4056
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4057
    .line 4058
    .line 4059
    goto/16 :goto_14a2

    .line 4060
    .line 4061
    :pswitch_fdd
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4062
    .line 4063
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4064
    .line 4065
    .line 4066
    move-result-object p1

    .line 4067
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4068
    .line 4069
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4070
    .line 4071
    .line 4072
    move-result-object p4

    .line 4073
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4074
    .line 4075
    .line 4076
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppPackageNameFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 4077
    .line 4078
    .line 4079
    move-result p0

    .line 4080
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4081
    .line 4082
    .line 4083
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4084
    .line 4085
    .line 4086
    goto/16 :goto_14a2

    .line 4087
    .line 4088
    :pswitch_ff8
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4089
    .line 4090
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4091
    .line 4092
    .line 4093
    move-result-object p1

    .line 4094
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4095
    .line 4096
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4097
    .line 4098
    .line 4099
    move-result-object p4

    .line 4100
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4101
    .line 4102
    .line 4103
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppPackageNameToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 4104
    .line 4105
    .line 4106
    move-result p0

    .line 4107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4108
    .line 4109
    .line 4110
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4111
    .line 4112
    .line 4113
    goto/16 :goto_14a2

    .line 4114
    .line 4115
    :pswitch_1013
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4116
    .line 4117
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4118
    .line 4119
    .line 4120
    move-result-object p1

    .line 4121
    check-cast p1, Landroid/content/Intent;

    .line 4122
    .line 4123
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4124
    .line 4125
    .line 4126
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isIntentDisabled(Landroid/content/Intent;)Z

    .line 4127
    .line 4128
    .line 4129
    move-result p0

    .line 4130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4131
    .line 4132
    .line 4133
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4134
    .line 4135
    .line 4136
    goto/16 :goto_14a2

    .line 4137
    .line 4138
    :pswitch_102a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4139
    .line 4140
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4141
    .line 4142
    .line 4143
    move-result-object p1

    .line 4144
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4145
    .line 4146
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 4147
    .line 4148
    .line 4149
    move-result-object p4

    .line 4150
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4151
    .line 4152
    .line 4153
    move-result v1

    .line 4154
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4155
    .line 4156
    .line 4157
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationStateList(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;Z)[Ljava/lang/String;

    .line 4158
    .line 4159
    .line 4160
    move-result-object p0

    .line 4161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4162
    .line 4163
    .line 4164
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4165
    .line 4166
    .line 4167
    goto/16 :goto_14a2

    .line 4168
    .line 4169
    :pswitch_1049
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4170
    .line 4171
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4172
    .line 4173
    .line 4174
    move-result-object p1

    .line 4175
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4176
    .line 4177
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4178
    .line 4179
    .line 4180
    move-result p4

    .line 4181
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4182
    .line 4183
    .line 4184
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationStateList(Lcom/samsung/android/knox/ContextInfo;Z)[Ljava/lang/String;

    .line 4185
    .line 4186
    .line 4187
    move-result-object p0

    .line 4188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4189
    .line 4190
    .line 4191
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4192
    .line 4193
    .line 4194
    goto/16 :goto_14a2

    .line 4195
    .line 4196
    :pswitch_1064
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4197
    .line 4198
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4199
    .line 4200
    .line 4201
    move-result-object p1

    .line 4202
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4203
    .line 4204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4205
    .line 4206
    .line 4207
    move-result-object p4

    .line 4208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4209
    .line 4210
    .line 4211
    move-result-object v1

    .line 4212
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4213
    .line 4214
    .line 4215
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->startApp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4216
    .line 4217
    .line 4218
    move-result p0

    .line 4219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4220
    .line 4221
    .line 4222
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4223
    .line 4224
    .line 4225
    goto/16 :goto_14a2

    .line 4226
    .line 4227
    :pswitch_1083
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4228
    .line 4229
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4230
    .line 4231
    .line 4232
    move-result-object p1

    .line 4233
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4234
    .line 4235
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4236
    .line 4237
    .line 4238
    move-result-object p4

    .line 4239
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4240
    .line 4241
    .line 4242
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->stopApp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 4243
    .line 4244
    .line 4245
    move-result p0

    .line 4246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4247
    .line 4248
    .line 4249
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4250
    .line 4251
    .line 4252
    goto/16 :goto_14a2

    .line 4253
    .line 4254
    :pswitch_109e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4255
    .line 4256
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4257
    .line 4258
    .line 4259
    move-result-object p1

    .line 4260
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4261
    .line 4262
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4263
    .line 4264
    .line 4265
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppSignatureBlackList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    .line 4266
    .line 4267
    .line 4268
    move-result-object p0

    .line 4269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4270
    .line 4271
    .line 4272
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4273
    .line 4274
    .line 4275
    goto/16 :goto_14a2

    .line 4276
    .line 4277
    :pswitch_10b5
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4278
    .line 4279
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4280
    .line 4281
    .line 4282
    move-result-object p1

    .line 4283
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4284
    .line 4285
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4286
    .line 4287
    .line 4288
    move-result-object p4

    .line 4289
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4290
    .line 4291
    .line 4292
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppSignatureFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 4293
    .line 4294
    .line 4295
    move-result p0

    .line 4296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4297
    .line 4298
    .line 4299
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4300
    .line 4301
    .line 4302
    goto/16 :goto_14a2

    .line 4303
    .line 4304
    :pswitch_10d0
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4305
    .line 4306
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4307
    .line 4308
    .line 4309
    move-result-object p1

    .line 4310
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4311
    .line 4312
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4313
    .line 4314
    .line 4315
    move-result-object p4

    .line 4316
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4317
    .line 4318
    .line 4319
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppSignatureToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 4320
    .line 4321
    .line 4322
    move-result p0

    .line 4323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4324
    .line 4325
    .line 4326
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4327
    .line 4328
    .line 4329
    goto/16 :goto_14a2

    .line 4330
    .line 4331
    :pswitch_10eb
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4332
    .line 4333
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4334
    .line 4335
    .line 4336
    move-result-object p1

    .line 4337
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4338
    .line 4339
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4340
    .line 4341
    .line 4342
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppPermissionsBlackList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    .line 4343
    .line 4344
    .line 4345
    move-result-object p0

    .line 4346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4347
    .line 4348
    .line 4349
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4350
    .line 4351
    .line 4352
    goto/16 :goto_14a2

    .line 4353
    .line 4354
    :pswitch_1102
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4355
    .line 4356
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4357
    .line 4358
    .line 4359
    move-result-object p1

    .line 4360
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4361
    .line 4362
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4363
    .line 4364
    .line 4365
    move-result-object p4

    .line 4366
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4367
    .line 4368
    .line 4369
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppPermissionFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 4370
    .line 4371
    .line 4372
    move-result p0

    .line 4373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4374
    .line 4375
    .line 4376
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4377
    .line 4378
    .line 4379
    goto/16 :goto_14a2

    .line 4380
    .line 4381
    :pswitch_111d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4382
    .line 4383
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4384
    .line 4385
    .line 4386
    move-result-object p1

    .line 4387
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4388
    .line 4389
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4390
    .line 4391
    .line 4392
    move-result-object p4

    .line 4393
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4394
    .line 4395
    .line 4396
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppPermissionToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 4397
    .line 4398
    .line 4399
    move-result p0

    .line 4400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4401
    .line 4402
    .line 4403
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4404
    .line 4405
    .line 4406
    goto/16 :goto_14a2

    .line 4407
    .line 4408
    :pswitch_1138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4409
    .line 4410
    .line 4411
    move-result p1

    .line 4412
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4413
    .line 4414
    .line 4415
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isAnyApplicationIconChangedAsUser(I)Z

    .line 4416
    .line 4417
    .line 4418
    move-result p0

    .line 4419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4420
    .line 4421
    .line 4422
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4423
    .line 4424
    .line 4425
    goto/16 :goto_14a2

    .line 4426
    .line 4427
    :pswitch_114b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4428
    .line 4429
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4430
    .line 4431
    .line 4432
    move-result-object p1

    .line 4433
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4434
    .line 4435
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4436
    .line 4437
    .line 4438
    move-result-object p4

    .line 4439
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4440
    .line 4441
    .line 4442
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationIconFromDb(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[B

    .line 4443
    .line 4444
    .line 4445
    move-result-object p0

    .line 4446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4447
    .line 4448
    .line 4449
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4450
    .line 4451
    .line 4452
    goto/16 :goto_14a2

    .line 4453
    .line 4454
    :pswitch_1166
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4455
    .line 4456
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4457
    .line 4458
    .line 4459
    move-result-object p1

    .line 4460
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4461
    .line 4462
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4463
    .line 4464
    .line 4465
    move-result-object p4

    .line 4466
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 4467
    .line 4468
    .line 4469
    move-result-object v1

    .line 4470
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4471
    .line 4472
    .line 4473
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->changeApplicationIcon(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[B)Z

    .line 4474
    .line 4475
    .line 4476
    move-result p0

    .line 4477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4478
    .line 4479
    .line 4480
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4481
    .line 4482
    .line 4483
    goto/16 :goto_14a2

    .line 4484
    .line 4485
    :pswitch_1185
    invoke-interface {p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->updateDataUsageDb()V

    .line 4486
    .line 4487
    .line 4488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4489
    .line 4490
    .line 4491
    goto/16 :goto_14a2

    .line 4492
    .line 4493
    :pswitch_118d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4494
    .line 4495
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4496
    .line 4497
    .line 4498
    move-result-object p1

    .line 4499
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4500
    .line 4501
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4502
    .line 4503
    .line 4504
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getNetworkStats(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 4505
    .line 4506
    .line 4507
    move-result-object p0

    .line 4508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4509
    .line 4510
    .line 4511
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4512
    .line 4513
    .line 4514
    goto/16 :goto_14a2

    .line 4515
    .line 4516
    :pswitch_11a4
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4517
    .line 4518
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4519
    .line 4520
    .line 4521
    move-result-object p1

    .line 4522
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4523
    .line 4524
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4525
    .line 4526
    .line 4527
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAllAppLastUsage(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/application/AppInfoLastUsage;

    .line 4528
    .line 4529
    .line 4530
    move-result-object p0

    .line 4531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4532
    .line 4533
    .line 4534
    invoke-virtual {p3, p0, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 4535
    .line 4536
    .line 4537
    goto/16 :goto_14a2

    .line 4538
    .line 4539
    :pswitch_11bb
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4540
    .line 4541
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4542
    .line 4543
    .line 4544
    move-result-object p1

    .line 4545
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4546
    .line 4547
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4548
    .line 4549
    .line 4550
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAvgNoAppUsagePerMonth(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/application/AppInfoLastUsage;

    .line 4551
    .line 4552
    .line 4553
    move-result-object p0

    .line 4554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4555
    .line 4556
    .line 4557
    invoke-virtual {p3, p0, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 4558
    .line 4559
    .line 4560
    goto/16 :goto_14a2

    .line 4561
    .line 4562
    :pswitch_11d2
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4563
    .line 4564
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4565
    .line 4566
    .line 4567
    move-result-object p1

    .line 4568
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4569
    .line 4570
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4571
    .line 4572
    .line 4573
    move-result p4

    .line 4574
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4575
    .line 4576
    .line 4577
    move-result v1

    .line 4578
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4579
    .line 4580
    .line 4581
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getTopNCPUUsageApp(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/List;

    .line 4582
    .line 4583
    .line 4584
    move-result-object p0

    .line 4585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4586
    .line 4587
    .line 4588
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4589
    .line 4590
    .line 4591
    goto/16 :goto_14a2

    .line 4592
    .line 4593
    :pswitch_11f1
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4594
    .line 4595
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4596
    .line 4597
    .line 4598
    move-result-object p1

    .line 4599
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4600
    .line 4601
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4602
    .line 4603
    .line 4604
    move-result p4

    .line 4605
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4606
    .line 4607
    .line 4608
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getTopNDataUsageApp(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    .line 4609
    .line 4610
    .line 4611
    move-result-object p0

    .line 4612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4613
    .line 4614
    .line 4615
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4616
    .line 4617
    .line 4618
    goto/16 :goto_14a2

    .line 4619
    .line 4620
    :pswitch_120c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4621
    .line 4622
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4623
    .line 4624
    .line 4625
    move-result-object p1

    .line 4626
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4627
    .line 4628
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4629
    .line 4630
    .line 4631
    move-result p4

    .line 4632
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4633
    .line 4634
    .line 4635
    move-result v1

    .line 4636
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4637
    .line 4638
    .line 4639
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getTopNMemoryUsageApp(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/List;

    .line 4640
    .line 4641
    .line 4642
    move-result-object p0

    .line 4643
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4644
    .line 4645
    .line 4646
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4647
    .line 4648
    .line 4649
    goto/16 :goto_14a2

    .line 4650
    .line 4651
    :pswitch_122b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4652
    .line 4653
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4654
    .line 4655
    .line 4656
    move-result-object p1

    .line 4657
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4658
    .line 4659
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4660
    .line 4661
    .line 4662
    move-result-object p4

    .line 4663
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4664
    .line 4665
    .line 4666
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationCpuUsage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    .line 4667
    .line 4668
    .line 4669
    move-result-wide p0

    .line 4670
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4671
    .line 4672
    .line 4673
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4674
    .line 4675
    .line 4676
    goto/16 :goto_14a2

    .line 4677
    .line 4678
    :pswitch_1246
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4679
    .line 4680
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4681
    .line 4682
    .line 4683
    move-result-object p1

    .line 4684
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4685
    .line 4686
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4687
    .line 4688
    .line 4689
    move-result-object p4

    .line 4690
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4691
    .line 4692
    .line 4693
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationMemoryUsage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    .line 4694
    .line 4695
    .line 4696
    move-result-wide p0

    .line 4697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4698
    .line 4699
    .line 4700
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4701
    .line 4702
    .line 4703
    goto/16 :goto_14a2

    .line 4704
    .line 4705
    :pswitch_1261
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4706
    .line 4707
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4708
    .line 4709
    .line 4710
    move-result-object p1

    .line 4711
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4712
    .line 4713
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4714
    .line 4715
    .line 4716
    move-result-object p4

    .line 4717
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4718
    .line 4719
    .line 4720
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationCacheSize(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    .line 4721
    .line 4722
    .line 4723
    move-result-wide p0

    .line 4724
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4725
    .line 4726
    .line 4727
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4728
    .line 4729
    .line 4730
    goto/16 :goto_14a2

    .line 4731
    .line 4732
    :pswitch_127c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4733
    .line 4734
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4735
    .line 4736
    .line 4737
    move-result-object p1

    .line 4738
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4739
    .line 4740
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4741
    .line 4742
    .line 4743
    move-result-object p4

    .line 4744
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4745
    .line 4746
    .line 4747
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationDataSize(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    .line 4748
    .line 4749
    .line 4750
    move-result-wide p0

    .line 4751
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4752
    .line 4753
    .line 4754
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4755
    .line 4756
    .line 4757
    goto/16 :goto_14a2

    .line 4758
    .line 4759
    :pswitch_1297
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4760
    .line 4761
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4762
    .line 4763
    .line 4764
    move-result-object p1

    .line 4765
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4766
    .line 4767
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4768
    .line 4769
    .line 4770
    move-result-object p4

    .line 4771
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4772
    .line 4773
    .line 4774
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationCodeSize(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    .line 4775
    .line 4776
    .line 4777
    move-result-wide p0

    .line 4778
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4779
    .line 4780
    .line 4781
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4782
    .line 4783
    .line 4784
    goto/16 :goto_14a2

    .line 4785
    .line 4786
    :pswitch_12b2
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4787
    .line 4788
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4789
    .line 4790
    .line 4791
    move-result-object p1

    .line 4792
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4793
    .line 4794
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4795
    .line 4796
    .line 4797
    move-result-object p4

    .line 4798
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4799
    .line 4800
    .line 4801
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationTotalSize(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    .line 4802
    .line 4803
    .line 4804
    move-result-wide p0

    .line 4805
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4806
    .line 4807
    .line 4808
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4809
    .line 4810
    .line 4811
    goto/16 :goto_14a2

    .line 4812
    .line 4813
    :pswitch_12cd
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4814
    .line 4815
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4816
    .line 4817
    .line 4818
    move-result-object p1

    .line 4819
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4820
    .line 4821
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4822
    .line 4823
    .line 4824
    move-result-object p4

    .line 4825
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4826
    .line 4827
    .line 4828
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationVersionCode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    .line 4829
    .line 4830
    .line 4831
    move-result p0

    .line 4832
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4833
    .line 4834
    .line 4835
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4836
    .line 4837
    .line 4838
    goto/16 :goto_14a2

    .line 4839
    .line 4840
    :pswitch_12e8
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4841
    .line 4842
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4843
    .line 4844
    .line 4845
    move-result-object p1

    .line 4846
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4847
    .line 4848
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4849
    .line 4850
    .line 4851
    move-result-object p4

    .line 4852
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4853
    .line 4854
    .line 4855
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationVersion(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 4856
    .line 4857
    .line 4858
    move-result-object p0

    .line 4859
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4860
    .line 4861
    .line 4862
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4863
    .line 4864
    .line 4865
    goto/16 :goto_14a2

    .line 4866
    .line 4867
    :pswitch_1303
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4868
    .line 4869
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4870
    .line 4871
    .line 4872
    move-result-object p1

    .line 4873
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4874
    .line 4875
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4876
    .line 4877
    .line 4878
    move-result-object p4

    .line 4879
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4880
    .line 4881
    .line 4882
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationUid(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    .line 4883
    .line 4884
    .line 4885
    move-result p0

    .line 4886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4887
    .line 4888
    .line 4889
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4890
    .line 4891
    .line 4892
    goto/16 :goto_14a2

    .line 4893
    .line 4894
    :pswitch_131e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4895
    .line 4896
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4897
    .line 4898
    .line 4899
    move-result-object p1

    .line 4900
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4901
    .line 4902
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4903
    .line 4904
    .line 4905
    move-result-object p4

    .line 4906
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4907
    .line 4908
    .line 4909
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 4910
    .line 4911
    .line 4912
    move-result-object p0

    .line 4913
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4914
    .line 4915
    .line 4916
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4917
    .line 4918
    .line 4919
    goto/16 :goto_14a2

    .line 4920
    .line 4921
    :pswitch_1339
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4922
    .line 4923
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4924
    .line 4925
    .line 4926
    move-result-object p1

    .line 4927
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4928
    .line 4929
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4930
    .line 4931
    .line 4932
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getInstalledApplicationsIDList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    .line 4933
    .line 4934
    .line 4935
    move-result-object p0

    .line 4936
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4937
    .line 4938
    .line 4939
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4940
    .line 4941
    .line 4942
    goto/16 :goto_14a2

    .line 4943
    .line 4944
    :pswitch_1350
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4945
    .line 4946
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4947
    .line 4948
    .line 4949
    move-result-object p1

    .line 4950
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4951
    .line 4952
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4953
    .line 4954
    .line 4955
    move-result-object p4

    .line 4956
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4957
    .line 4958
    .line 4959
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationUninstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 4960
    .line 4961
    .line 4962
    move-result p0

    .line 4963
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4964
    .line 4965
    .line 4966
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4967
    .line 4968
    .line 4969
    goto/16 :goto_14a2

    .line 4970
    .line 4971
    :pswitch_136b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4972
    .line 4973
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4974
    .line 4975
    .line 4976
    move-result-object p1

    .line 4977
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4978
    .line 4979
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4980
    .line 4981
    .line 4982
    move-result-object p4

    .line 4983
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4984
    .line 4985
    .line 4986
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationInstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 4987
    .line 4988
    .line 4989
    move-result p0

    .line 4990
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4991
    .line 4992
    .line 4993
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4994
    .line 4995
    .line 4996
    goto/16 :goto_14a2

    .line 4997
    .line 4998
    :pswitch_1386
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4999
    .line 5000
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 5001
    .line 5002
    .line 5003
    move-result-object p1

    .line 5004
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 5005
    .line 5006
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5007
    .line 5008
    .line 5009
    move-result-object p4

    .line 5010
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5011
    .line 5012
    .line 5013
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationStateEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 5014
    .line 5015
    .line 5016
    move-result p0

    .line 5017
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5018
    .line 5019
    .line 5020
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5021
    .line 5022
    .line 5023
    goto/16 :goto_14a2

    .line 5024
    .line 5025
    :pswitch_13a1
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5026
    .line 5027
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 5028
    .line 5029
    .line 5030
    move-result-object p1

    .line 5031
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 5032
    .line 5033
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5034
    .line 5035
    .line 5036
    move-result-object p4

    .line 5037
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 5038
    .line 5039
    .line 5040
    move-result v1

    .line 5041
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5042
    .line 5043
    .line 5044
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationUninstallationDisabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    .line 5045
    .line 5046
    .line 5047
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5048
    .line 5049
    .line 5050
    goto/16 :goto_14a2

    .line 5051
    .line 5052
    :pswitch_13bc
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5053
    .line 5054
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 5055
    .line 5056
    .line 5057
    move-result-object p1

    .line 5058
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 5059
    .line 5060
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5061
    .line 5062
    .line 5063
    move-result-object p4

    .line 5064
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 5065
    .line 5066
    .line 5067
    move-result v1

    .line 5068
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5069
    .line 5070
    .line 5071
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationInstallationDisabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    .line 5072
    .line 5073
    .line 5074
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5075
    .line 5076
    .line 5077
    goto/16 :goto_14a2

    .line 5078
    .line 5079
    :pswitch_13d7
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5080
    .line 5081
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 5082
    .line 5083
    .line 5084
    move-result-object p1

    .line 5085
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 5086
    .line 5087
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5088
    .line 5089
    .line 5090
    move-result-object p4

    .line 5091
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 5092
    .line 5093
    .line 5094
    move-result v1

    .line 5095
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5096
    .line 5097
    .line 5098
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 5099
    .line 5100
    .line 5101
    move-result p0

    .line 5102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5103
    .line 5104
    .line 5105
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5106
    .line 5107
    .line 5108
    goto/16 :goto_14a2

    .line 5109
    .line 5110
    :pswitch_13f6
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5111
    .line 5112
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 5113
    .line 5114
    .line 5115
    move-result-object p1

    .line 5116
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 5117
    .line 5118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5119
    .line 5120
    .line 5121
    move-result-object p4

    .line 5122
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 5123
    .line 5124
    .line 5125
    move-result v1

    .line 5126
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5127
    .line 5128
    .line 5129
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->uninstallApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 5130
    .line 5131
    .line 5132
    move-result p0

    .line 5133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5134
    .line 5135
    .line 5136
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5137
    .line 5138
    .line 5139
    goto/16 :goto_14a2

    .line 5140
    .line 5141
    :pswitch_1415
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5142
    .line 5143
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 5144
    .line 5145
    .line 5146
    move-result-object p1

    .line 5147
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 5148
    .line 5149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5150
    .line 5151
    .line 5152
    move-result-object p4

    .line 5153
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 5154
    .line 5155
    .line 5156
    move-result v1

    .line 5157
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5158
    .line 5159
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 5160
    .line 5161
    .line 5162
    move-result-object v2

    .line 5163
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 5164
    .line 5165
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5166
    .line 5167
    .line 5168
    invoke-interface {p0, p1, p4, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->installApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZLandroid/os/ParcelFileDescriptor;)Z

    .line 5169
    .line 5170
    .line 5171
    move-result p0

    .line 5172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5173
    .line 5174
    .line 5175
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5176
    .line 5177
    .line 5178
    goto :goto_14a2

    .line 5179
    :pswitch_143b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5180
    .line 5181
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 5182
    .line 5183
    .line 5184
    move-result-object p1

    .line 5185
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 5186
    .line 5187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5188
    .line 5189
    .line 5190
    move-result-object p4

    .line 5191
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5192
    .line 5193
    .line 5194
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationRunning(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 5195
    .line 5196
    .line 5197
    move-result p0

    .line 5198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5199
    .line 5200
    .line 5201
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5202
    .line 5203
    .line 5204
    goto :goto_14a2

    .line 5205
    :pswitch_1455
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5206
    .line 5207
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 5208
    .line 5209
    .line 5210
    move-result-object p1

    .line 5211
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 5212
    .line 5213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5214
    .line 5215
    .line 5216
    move-result-object p4

    .line 5217
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5218
    .line 5219
    .line 5220
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationInstalled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 5221
    .line 5222
    .line 5223
    move-result p0

    .line 5224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5225
    .line 5226
    .line 5227
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5228
    .line 5229
    .line 5230
    goto :goto_14a2

    .line 5231
    :pswitch_146f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5232
    .line 5233
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 5234
    .line 5235
    .line 5236
    move-result-object p1

    .line 5237
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 5238
    .line 5239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5240
    .line 5241
    .line 5242
    move-result-object p4

    .line 5243
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5244
    .line 5245
    .line 5246
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->wipeApplicationData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 5247
    .line 5248
    .line 5249
    move-result p0

    .line 5250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5251
    .line 5252
    .line 5253
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5254
    .line 5255
    .line 5256
    goto :goto_14a2

    .line 5257
    :pswitch_1489
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5258
    .line 5259
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 5260
    .line 5261
    .line 5262
    move-result-object p1

    .line 5263
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 5264
    .line 5265
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 5266
    .line 5267
    .line 5268
    move-result-object p4

    .line 5269
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5270
    .line 5271
    .line 5272
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeManagedApplications(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    .line 5273
    .line 5274
    .line 5275
    move-result-object p0

    .line 5276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5277
    .line 5278
    .line 5279
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5280
    .line 5281
    .line 5282
    :goto_14a2
    return v0

    .line 5283
    :cond_14a3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5284
    .line 5285
    .line 5286
    return v0

    .line 5287
    nop

    .line 5288
    :pswitch_data_14a8
    .packed-switch 0x1
        :pswitch_1489
        :pswitch_146f
        :pswitch_1455
        :pswitch_143b
        :pswitch_1415
        :pswitch_13f6
        :pswitch_13d7
        :pswitch_13bc
        :pswitch_13a1
        :pswitch_1386
        :pswitch_136b
        :pswitch_1350
        :pswitch_1339
        :pswitch_131e
        :pswitch_1303
        :pswitch_12e8
        :pswitch_12cd
        :pswitch_12b2
        :pswitch_1297
        :pswitch_127c
        :pswitch_1261
        :pswitch_1246
        :pswitch_122b
        :pswitch_120c
        :pswitch_11f1
        :pswitch_11d2
        :pswitch_11bb
        :pswitch_11a4
        :pswitch_118d
        :pswitch_1185
        :pswitch_1166
        :pswitch_114b
        :pswitch_1138
        :pswitch_111d
        :pswitch_1102
        :pswitch_10eb
        :pswitch_10d0
        :pswitch_10b5
        :pswitch_109e
        :pswitch_1083
        :pswitch_1064
        :pswitch_1049
        :pswitch_102a
        :pswitch_1013
        :pswitch_ff8
        :pswitch_fdd
        :pswitch_fc6
        :pswitch_fab
        :pswitch_f90
        :pswitch_f79
        :pswitch_f62
        :pswitch_f4b
        :pswitch_f30
        :pswitch_f19
        :pswitch_efe
        :pswitch_ee3
        :pswitch_ebb
        :pswitch_ea4
        :pswitch_e89
        :pswitch_e6e
        :pswitch_e53
        :pswitch_e38
        :pswitch_e1d
        :pswitch_e02
        :pswitch_de7
        :pswitch_dcc
        :pswitch_db1
        :pswitch_d9e
        :pswitch_d87
        :pswitch_d68
        :pswitch_d49
        :pswitch_d2e
        :pswitch_d17
        :pswitch_d00
        :pswitch_ce5
        :pswitch_cce
        :pswitch_cb7
        :pswitch_c9c
        :pswitch_c81
        :pswitch_c66
        :pswitch_c4b
        :pswitch_c30
        :pswitch_c15
        :pswitch_bf6
        :pswitch_bdb
        :pswitch_bbc
        :pswitch_ba1
        :pswitch_b86
        :pswitch_b6b
        :pswitch_b54
        :pswitch_b3d
        :pswitch_b22
        :pswitch_b07
        :pswitch_aec
        :pswitch_ad5
        :pswitch_aba
        :pswitch_aa3
        :pswitch_a88
        :pswitch_a6d
        :pswitch_a52
        :pswitch_a37
        :pswitch_a20
        :pswitch_a05
        :pswitch_9ee
        :pswitch_9d3
        :pswitch_9b8
        :pswitch_999
        :pswitch_982
        :pswitch_96f
        :pswitch_94c
        :pswitch_92d
        :pswitch_912
        :pswitch_8f7
        :pswitch_8e0
        :pswitch_8c5
        :pswitch_8ae
        :pswitch_893
        :pswitch_87c
        :pswitch_865
        :pswitch_84e
        :pswitch_833
        :pswitch_81c
        :pswitch_801
        :pswitch_7ea
        :pswitch_7d3
        :pswitch_7b8
        :pswitch_79d
        :pswitch_786
        :pswitch_76b
        :pswitch_750
        :pswitch_735
        :pswitch_71e
        :pswitch_703
        :pswitch_6ec
        :pswitch_6d5
        :pswitch_6be
        :pswitch_6a3
        :pswitch_68c
        :pswitch_671
        :pswitch_65a
        :pswitch_643
        :pswitch_624
        :pswitch_60d
        :pswitch_5f2
        :pswitch_5d3
        :pswitch_5b2
        :pswitch_597
        :pswitch_57c
        :pswitch_561
        :pswitch_54e
        :pswitch_542
        :pswitch_51b
        :pswitch_500
        :pswitch_4ed
        :pswitch_4de
        :pswitch_4bf
        :pswitch_4a0
        :pswitch_481
        :pswitch_46a
        :pswitch_45e
        :pswitch_443
        :pswitch_42c
        :pswitch_411
        :pswitch_3fa
        :pswitch_3d7
        :pswitch_3bc
        :pswitch_39d
        :pswitch_37a
        :pswitch_35f
        :pswitch_340
        :pswitch_325
        :pswitch_30a
        :pswitch_2f3
        :pswitch_2dc
        :pswitch_2c1
        :pswitch_2a6
        :pswitch_28f
        :pswitch_278
        :pswitch_25d
        :pswitch_242
        :pswitch_223
        :pswitch_20c
        :pswitch_1ed
        :pswitch_1d6
        :pswitch_1b7
        :pswitch_1a4
        :pswitch_189
        :pswitch_166
        :pswitch_14f
        :pswitch_138
        :pswitch_125
        :pswitch_112
        :pswitch_eb
        :pswitch_cc
        :pswitch_b1
        :pswitch_9a
        :pswitch_73
        :pswitch_5c
        :pswitch_45
        :pswitch_26
        :pswitch_1a
    .end packed-switch
.end method
