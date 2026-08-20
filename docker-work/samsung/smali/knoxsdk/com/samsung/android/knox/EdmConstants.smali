.class public final Lcom/samsung/android/knox/EdmConstants;
.super Ljava/lang/Object;
.source "EdmConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;,
        Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;
    }
.end annotation


# static fields
.field public static final greylist ACTION_CALL_STATE_CHANGED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CALL_STATE_CHANGED"

.field public static final greylist ACTION_CHECK_REENROLLMENT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CHECK_REENROLLMENT_INTERNAL"

.field public static final greylist ACTION_DO_KEYGUARD_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.DO_KEYGUARD_INTERNAL"

.field public static final greylist ACTION_EDM_BOOT_COMPLETED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

.field public static final greylist ACTION_HARD_KEY_PRESS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.HARD_KEY_PRESS"

.field public static final greylist ACTION_KEYGUARD_REFRESH_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KEYGUARD_REFRESH_INTERNAL"

.field public static final greylist ACTION_MTP_BLOCKED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.MTP_BLOCKED_INTERNAL"

.field public static final greylist ACTION_NOTIFY_STORAGE_CARD_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.NOTIFY_STORAGE_CARD_INTERNAL"

.field public static final greylist ACTION_NO_USER_ACTIVITY:Ljava/lang/String; = "com.samsung.android.knox.intent.action.NO_USER_ACTIVITY"

.field public static final greylist ACTION_OPERATOR_NAME_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.OPERATOR_NAME_INTERNAL"

.field public static final greylist ACTION_QUICKSETTING_REFRESH_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.QUICKSETTING_REFRESH_INTERNAL"

.field public static final greylist ACTION_SEND_DTMF_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.SEND_DTMF_INTERNAL"

.field public static final greylist ACTION_SET_KEYBOARD_MODE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.SET_KEYBOARD_MODE_INTERNAL"

.field public static final greylist ACTION_USER_ACTIVITY:Ljava/lang/String; = "com.samsung.android.knox.intent.action.USER_ACTIVITY"

.field public static final greylist APN_SETTINGS_POLICY_SERVICE:Ljava/lang/String; = "apn_settings_policy"

.field public static final greylist APPLICATION_POLICY_SERVICE:Ljava/lang/String; = "application_policy"

.field public static final greylist APP_MANAGEMENT_SERVICE_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist APP_RESTRICTIONS_PACKAGES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist AUDIT_LOG:Ljava/lang/String; = "auditlog"

.field public static final greylist BLUETOOTH_POLICY_SERVICE:Ljava/lang/String; = "bluetooth_policy"

.field public static final greylist BROWSER_SETTINGS_POLICY_SERVICE:Ljava/lang/String; = "browser_policy"

.field public static final greylist BT_SECURE_MODE_POLICY_SERVICE:Ljava/lang/String; = "bluetooth_secure_mode_policy"

.field public static final greylist CERTIFICATE_POLICY_SERVICE:Ljava/lang/String; = "certificate_policy"

.field public static final greylist DATE_TIME_POLICY_SERVICE:Ljava/lang/String; = "date_time_policy"

.field public static final greylist DEFAULT_USER_ACTIVITY_TIMEOUT:I = 0x0

.field public static final greylist DEVICE_ACCOUNT_POLICY_SERVICE:Ljava/lang/String; = "device_account_policy"

.field public static final greylist DEVICE_CONTAINER_ID:I = 0x0

.field public static final greylist DEVICE_INVENTORY_SERVICE:Ljava/lang/String; = "device_info"

.field public static final greylist DEX_POLICY_SERVICE:Ljava/lang/String; = "dex_policy"

.field public static final greylist EAS_ACCOUNT_POLICY_SERVICE:Ljava/lang/String; = "eas_account_policy"

.field public static final greylist EMAIL_ACCOUNT_POLICY_SERVICE:Ljava/lang/String; = "email_account_policy"

.field public static final greylist EMAIL_POLICY_SERVICE:Ljava/lang/String; = "email_policy"

.field public static final greylist ENTERPRISE_BILLING_POLICY_SERVICE:Ljava/lang/String; = "enterprise_billing_policy"

.field public static final greylist ENTERPRISE_LICENSE_POLICY_SERVICE:Ljava/lang/String; = "enterprise_license_policy"

.field public static final greylist ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "enterprise_policy"

.field public static final greylist ERROR_CRYPTO_CHECK_FAILURE:I = -0x5

.field public static final greylist ERROR_INVALID_FILE:I = -0x3

.field public static final greylist ERROR_NONE:I = 0x0

.field public static final greylist ERROR_NOT_ACTIVE_ADMIN:I = -0x2

.field public static final greylist ERROR_PACKAGE_NAME_MISMATCH:I = -0x4

.field public static final greylist ERROR_UNKNOWN:I = -0x1

.field public static final greylist EXTRA_ADMIN_UID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ADMIN_UID"

.field public static final greylist EXTRA_CALL_STATE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CALL_STATE"

.field public static final greylist EXTRA_CURRENT_VERSION:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CURRENT_VERSION"

.field public static final greylist EXTRA_DTMF_DURATION_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.DTMF_DURATION_INTERNAL"

.field public static final greylist EXTRA_DTMF_TONE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.DTMF_TONE_INTERNAL"

.field public static final greylist EXTRA_KEYBOARD_MODE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KEYBOARD_MODE_INTERNAL"

.field public static final greylist EXTRA_KEY_CODE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KEY_CODE"

.field public static final greylist EXTRA_MIGRATION_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.MIGRATION_RESULT"

.field public static final greylist EXTRA_PHONE_STATE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PHONE_STATE"

.field public static final greylist FIREWALL_SERVICE:Ljava/lang/String; = "firewall"

.field public static final greylist GEOFENCING:Ljava/lang/String; = "geofencing"

.field public static final greylist HDM_SERVICE:Ljava/lang/String; = "hdm_service"

.field public static final greylist INVALID_CONTAINER_ID:I = -0x1

.field public static final greylist KIOSKMODE:Ljava/lang/String; = "kioskmode"

.field public static final greylist KLMS_PKG_NAME:Ljava/lang/String; = "com.samsung.klmsagent"

.field public static final greylist KNOX_2_7_1:I = 0x15

.field public static final greylist KNOX_2_8:I = 0x16

.field public static final greylist KNOX_CCM_POLICY_SERVICE:Ljava/lang/String; = "knox_ccm_policy"

.field public static final greylist KNOX_CUSTOM_MANAGER_SERVICE:Ljava/lang/String; = "knoxcustom"

.field public static final greylist KNOX_KPCC_MANAGER_SERVICE:Ljava/lang/String; = "kpcc"

.field public static final greylist KNOX_NETWORK_ANALYTICS_SERVICE:Ljava/lang/String; = "knoxnap"

.field public static final greylist KNOX_SCEP_POLICY_SERVICE:Ljava/lang/String; = "knox_scep_policy"

.field public static final greylist KNOX_TIMAKEYSTORE_POLICY_SERVICE:Ljava/lang/String; = "knox_timakeystore_policy"

.field public static final greylist KNOX_TRUSTED_PINPAD_POLICY_SERVICE:Ljava/lang/String; = "knox_pinpad_service"

.field public static final greylist KNOX_UCSM_POLICY_SERVICE:Ljava/lang/String; = "knox_ucsm_policy"

.field public static final greylist KPE_CORE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.kpecore"

.field public static final greylist KPU_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.kpu"

.field public static final greylist LDAP_ACCOUNT_POLICY_SERVICE:Ljava/lang/String; = "ldap_account_policy"

.field public static final greylist LICENSE_LOG_SERVICE:Ljava/lang/String; = "license_log_service"

.field public static final greylist LOCATION_POLICY_SERVICE:Ljava/lang/String; = "location_policy"

.field public static final greylist LOCKSCREEN_OVERLAY_SERVICE:Ljava/lang/String; = "lockscreen_overlay"

.field public static final greylist MISC_POLICY_SERVICE:Ljava/lang/String; = "misc_policy"

.field public static final greylist MULTI_USER_MANAGER_SERVICE:Ljava/lang/String; = "multi_user_manager_service"

.field public static final greylist MUM_CONTAINER_POLICY_SERVICE:Ljava/lang/String; = "mum_container_policy"

.field public static final greylist MUM_CONTAINER_RCP_POLICY_SERVICE:Ljava/lang/String; = "mum_container_rcp_policy"

.field public static final greylist NEW_EMAIL_PKG_NAME:Ljava/lang/String; = "com.samsung.android.email.provider"

.field public static final greylist PASSWORD_POLICY_SERVICE:Ljava/lang/String; = "password_policy"

.field public static final greylist PHONE_RESTRICTION_POLICY_SERVICE:Ljava/lang/String; = "phone_restriction_policy"

.field public static final greylist PROFILE_POLICY_SERVICE:Ljava/lang/String; = "profilepolicy"

.field public static final greylist REMOTE_INJECTION_SERVICE:Ljava/lang/String; = "remoteinjection"

.field public static final greylist RESTRICTION_POLICY_SERVICE:Ljava/lang/String; = "restriction_policy"

.field public static final greylist ROAMING_POLICY_SERVICE:Ljava/lang/String; = "roaming_policy"

.field public static final greylist SECURITY_POLICY_SERVICE:Ljava/lang/String; = "security_policy"

.field public static final greylist SMARTCARD_BROWSER_POLICY_SERVICE:Ljava/lang/String; = "smartcard_browser_policy"

.field public static final greylist SMARTCARD_EMAIL_POLICY_SERVICE:Ljava/lang/String; = "smartcard_email_policy"

.field public static final greylist THREAT_DEFENSE_SERVICE:Ljava/lang/String; = "threat_defense_service"

.field public static final greylist UMC_PACKAGENAME:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms"

.field public static final greylist UNKNOWN_ADMIN_ID:I = -0x1

.field public static final greylist VPN_POLICY_SERVICE:Ljava/lang/String; = "vpn_policy"

.field public static final greylist WIFI_POLICY_SERVICE:Ljava/lang/String; = "wifi_policy"


# direct methods
.method public static constructor greylist <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/samsung/android/knox/EdmConstants$1;

    .line 1
    .line 2
    invoke-direct {v0}, Lcom/samsung/android/knox/EdmConstants$1;-><init>()V

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/samsung/android/knox/EdmConstants;->APP_RESTRICTIONS_PACKAGES:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/knox/EdmConstants$2;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/samsung/android/knox/EdmConstants$2;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/samsung/android/knox/EdmConstants;->APP_MANAGEMENT_SERVICE_PACKAGES:Ljava/util/List;

    .line 21
    .line 22
    return-void
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

.method public constructor greylist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
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

.method public static greylist getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;
    .registers 1

    .line 0
    const-string v0, "36"

    .line 1
    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    packed-switch v0, :pswitch_data_54

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_c
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 13
    .line 14
    return-object v0

    .line 15
    :pswitch_f
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_8:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_12
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_7_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_15
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_18
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 25
    .line 26
    return-object v0

    .line 27
    :pswitch_1b
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_5:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 28
    .line 29
    return-object v0

    .line 30
    :pswitch_1e
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_4_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 31
    .line 32
    return-object v0

    .line 33
    :pswitch_21
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_4:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 34
    .line 35
    return-object v0

    .line 36
    :pswitch_24
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 37
    .line 38
    return-object v0

    .line 39
    :pswitch_27
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_2_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 40
    .line 41
    return-object v0

    .line 42
    :pswitch_2a
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 43
    .line 44
    return-object v0

    .line 45
    :pswitch_2d
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 46
    .line 47
    return-object v0

    .line 48
    :pswitch_30
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_0:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 49
    .line 50
    return-object v0

    .line 51
    :pswitch_33
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 52
    .line 53
    return-object v0

    .line 54
    :pswitch_36
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_8:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 55
    .line 56
    return-object v0

    .line 57
    :pswitch_39
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 58
    .line 59
    return-object v0

    .line 60
    :pswitch_3c
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 61
    .line 62
    return-object v0

    .line 63
    :pswitch_3f
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 64
    .line 65
    return-object v0

    .line 66
    :pswitch_42
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_5_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 67
    .line 68
    return-object v0

    .line 69
    :pswitch_45
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_5:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 70
    .line 71
    return-object v0

    .line 72
    :pswitch_48
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_4_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 73
    .line 74
    return-object v0

    .line 75
    :pswitch_4b
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_4:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 76
    .line 77
    return-object v0

    .line 78
    :pswitch_4e
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 79
    .line 80
    return-object v0

    .line 81
    :pswitch_51
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 82
    .line 83
    return-object v0

    .line 84
    :pswitch_data_54
    .packed-switch 0xd
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
    .end packed-switch
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

.method public static greylist getEnterpriseSdkVerInternal()Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;
    .registers 2

    .line 0
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 1
    .line 2
    const/16 v1, 0x21

    .line 3
    .line 4
    if-ne v0, v1, :cond_9

    .line 5
    .line 6
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_9
    const/16 v1, 0x20

    .line 10
    .line 11
    if-ne v0, v1, :cond_10

    .line 12
    .line 13
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_8:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_10
    const/16 v1, 0x1f

    .line 17
    .line 18
    if-ne v0, v1, :cond_17

    .line 19
    .line 20
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_7_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_17
    const/16 v1, 0x1e

    .line 24
    .line 25
    if-ne v0, v1, :cond_1e

    .line 26
    .line 27
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1e
    const/16 v1, 0x1d

    .line 31
    .line 32
    if-ne v0, v1, :cond_25

    .line 33
    .line 34
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_25
    const/16 v1, 0x1c

    .line 38
    .line 39
    if-ne v0, v1, :cond_2c

    .line 40
    .line 41
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_5:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2c
    const/16 v1, 0x1b

    .line 45
    .line 46
    if-ne v0, v1, :cond_33

    .line 47
    .line 48
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_4_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_33
    const/16 v1, 0x1a

    .line 52
    .line 53
    if-ne v0, v1, :cond_3a

    .line 54
    .line 55
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_4:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_3a
    const/16 v1, 0x19

    .line 59
    .line 60
    if-ne v0, v1, :cond_41

    .line 61
    .line 62
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_41
    const/16 v1, 0x18

    .line 66
    .line 67
    if-ne v0, v1, :cond_48

    .line 68
    .line 69
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_2_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_48
    const/16 v1, 0x17

    .line 73
    .line 74
    if-ne v0, v1, :cond_4f

    .line 75
    .line 76
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_4f
    const/16 v1, 0x16

    .line 80
    .line 81
    if-ne v0, v1, :cond_56

    .line 82
    .line 83
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 84
    .line 85
    return-object v0

    .line 86
    :cond_56
    const/16 v1, 0x15

    .line 87
    .line 88
    if-ne v0, v1, :cond_5d

    .line 89
    .line 90
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_0:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 91
    .line 92
    return-object v0

    .line 93
    :cond_5d
    const/16 v1, 0x14

    .line 94
    .line 95
    if-ne v0, v1, :cond_64

    .line 96
    .line 97
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 98
    .line 99
    return-object v0

    .line 100
    :cond_64
    const/16 v1, 0x13

    .line 101
    .line 102
    if-ne v0, v1, :cond_6b

    .line 103
    .line 104
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_8:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 105
    .line 106
    return-object v0

    .line 107
    :cond_6b
    const/16 v1, 0x12

    .line 108
    .line 109
    if-ne v0, v1, :cond_72

    .line 110
    .line 111
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_7_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 112
    .line 113
    return-object v0

    .line 114
    :cond_72
    const/16 v1, 0x11

    .line 115
    .line 116
    if-ne v0, v1, :cond_79

    .line 117
    .line 118
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 119
    .line 120
    return-object v0

    .line 121
    :cond_79
    const/16 v1, 0x10

    .line 122
    .line 123
    if-ne v0, v1, :cond_80

    .line 124
    .line 125
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 126
    .line 127
    return-object v0

    .line 128
    :cond_80
    const/16 v1, 0xf

    .line 129
    .line 130
    if-ne v0, v1, :cond_87

    .line 131
    .line 132
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_5_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 133
    .line 134
    return-object v0

    .line 135
    :cond_87
    const/16 v1, 0xe

    .line 136
    .line 137
    if-ne v0, v1, :cond_8e

    .line 138
    .line 139
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_5:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 140
    .line 141
    return-object v0

    .line 142
    :cond_8e
    const/16 v1, 0xd

    .line 143
    .line 144
    if-ne v0, v1, :cond_95

    .line 145
    .line 146
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_4_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 147
    .line 148
    return-object v0

    .line 149
    :cond_95
    const/16 v1, 0xc

    .line 150
    .line 151
    if-ne v0, v1, :cond_9c

    .line 152
    .line 153
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_4:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 154
    .line 155
    return-object v0

    .line 156
    :cond_9c
    const/16 v1, 0xb

    .line 157
    .line 158
    if-ne v0, v1, :cond_a3

    .line 159
    .line 160
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 161
    .line 162
    return-object v0

    .line 163
    :cond_a3
    const/16 v1, 0xa

    .line 164
    .line 165
    if-ne v0, v1, :cond_aa

    .line 166
    .line 167
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 168
    .line 169
    return-object v0

    .line 170
    :cond_aa
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 171
    .line 172
    return-object v0
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
