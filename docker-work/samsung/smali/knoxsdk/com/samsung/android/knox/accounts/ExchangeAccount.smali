.class public Lcom/samsung/android/knox/accounts/ExchangeAccount;
.super Ljava/lang/Object;
.source "ExchangeAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/accounts/ExchangeAccount;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist SET_SMIME_CERTIFICATE_ALL:I = 0x1

.field public static final greylist SET_SMIME_CERTIFICATE_BY_ECRYPTION:I = 0x2

.field public static final greylist SET_SMIME_CERTIFICATE_BY_ENCRYPTION:I = 0x2

.field public static final greylist SET_SMIME_CERTIFICATE_BY_SIGNING:I = 0x3


# instance fields
.field public greylist acceptAllCertificates:Z

.field public greylist certificateAlias:Ljava/lang/String;

.field public greylist certificateData:[B

.field public greylist certificatePassword:Ljava/lang/String;

.field public greylist certificateStorageName:Ljava/lang/String;

.field public greylist displayName:Ljava/lang/String;

.field public greylist easDomain:Ljava/lang/String;

.field public greylist easUser:Ljava/lang/String;

.field public greylist emailAddress:Ljava/lang/String;

.field public greylist emailNotificationVibrateAlways:Z

.field public greylist emailNotificationVibrateWhenSilent:Z

.field public greylist isDefault:Z

.field public greylist isNotify:Z

.field public greylist offPeak:I

.field public greylist peakDays:I

.field public greylist peakEndTime:I

.field public greylist peakStartTime:I

.field public greylist periodCalendar:I

.field public greylist protocolVersion:Ljava/lang/String;

.field public greylist retrivalSize:I

.field public greylist roamingSchedule:I

.field public greylist senderName:Ljava/lang/String;

.field public greylist serverAddress:Ljava/lang/String;

.field public greylist serverPassword:Ljava/lang/String;

.field public greylist serverPathPrefix:Ljava/lang/String;

.field public greylist signature:Ljava/lang/String;

.field public greylist smimeCertificareMode:I

.field public greylist smimeCertificateMode:I

.field public greylist smimeCertificatePassword:Ljava/lang/String;

.field public greylist smimeCertificatePath:Ljava/lang/String;

.field public greylist syncCalendar:I

.field public greylist syncContacts:I

.field public greylist syncInterval:I

.field public greylist syncLookback:I

.field public greylist useSSL:Z

.field public greylist useTLS:Z


# direct methods
.method public static constructor greylist <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/samsung/android/knox/accounts/ExchangeAccount$1;

    .line 1
    .line 2
    invoke-direct {v0}, Lcom/samsung/android/knox/accounts/ExchangeAccount$1;-><init>()V

    .line 3
    .line 4
    .line 5
    sput-object v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    .line 7
    return-void
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

.method public constructor greylist <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/accounts/ExchangeAccount;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->displayName:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailAddress:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easUser:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easDomain:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->senderName:Ljava/lang/String;

    const-string p1, "2.5"

    .line 10
    iput-object p1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->protocolVersion:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->signature:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverAddress:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverPassword:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverPathPrefix:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificatePassword:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateData:[B

    .line 17
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateAlias:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateStorageName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 19
    iput p1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncLookback:I

    const/4 p2, -0x1

    .line 20
    iput p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncInterval:I

    const/16 p2, 0x1e0

    .line 21
    iput p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakStartTime:I

    const/16 p2, 0x3fc

    .line 22
    iput p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakEndTime:I

    const/16 p2, 0x3e

    .line 23
    iput p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakDays:I

    const/4 p2, -0x2

    .line 24
    iput p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->offPeak:I

    const/4 p2, 0x0

    .line 25
    iput p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->roamingSchedule:I

    const/4 p3, 0x3

    .line 26
    iput p3, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->retrivalSize:I

    const/4 p3, 0x4

    .line 27
    iput p3, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->periodCalendar:I

    .line 28
    iput p1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncContacts:I

    .line 29
    iput p1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncCalendar:I

    .line 30
    iput-boolean p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateAlways:Z

    .line 31
    iput-boolean p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateWhenSilent:Z

    .line 32
    iput-boolean p1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->useSSL:Z

    .line 33
    iput-boolean p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->useTLS:Z

    .line 34
    iput-boolean p1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->acceptAllCertificates:Z

    .line 35
    iput-boolean p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->isDefault:Z

    .line 36
    iput-boolean p1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->isNotify:Z

    .line 37
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePath:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePassword:Ljava/lang/String;

    .line 39
    iput p1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificareMode:I

    return-void
.end method


# virtual methods
.method public final whitelist describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final greylist readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->displayName:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailAddress:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easUser:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easDomain:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->senderName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->protocolVersion:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->signature:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverAddress:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverPassword:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverPathPrefix:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificatePassword:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateData:[B

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateAlias:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateStorageName:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncLookback:I

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncInterval:I

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakStartTime:I

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakEndTime:I

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakDays:I

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->offPeak:I

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->roamingSchedule:I

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->retrivalSize:I

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->periodCalendar:I

    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncContacts:I

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncCalendar:I

    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    const/4 v1, 0x1

    .line 155
    const/4 v2, 0x0

    .line 156
    if-eqz v0, :cond_a0

    .line 157
    .line 158
    move v0, v1

    .line 159
    goto :goto_a1

    .line 160
    :cond_a0
    move v0, v2

    .line 161
    :goto_a1
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateAlways:Z

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_ab

    .line 168
    .line 169
    move v0, v1

    .line 170
    goto :goto_ac

    .line 171
    :cond_ab
    move v0, v2

    .line 172
    :goto_ac
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateWhenSilent:Z

    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_b6

    .line 179
    .line 180
    move v0, v1

    .line 181
    goto :goto_b7

    .line 182
    :cond_b6
    move v0, v2

    .line 183
    :goto_b7
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->useSSL:Z

    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_c1

    .line 190
    .line 191
    move v0, v1

    .line 192
    goto :goto_c2

    .line 193
    :cond_c1
    move v0, v2

    .line 194
    :goto_c2
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->useTLS:Z

    .line 195
    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_cc

    .line 201
    .line 202
    move v0, v1

    .line 203
    goto :goto_cd

    .line 204
    :cond_cc
    move v0, v2

    .line 205
    :goto_cd
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->acceptAllCertificates:Z

    .line 206
    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_d7

    .line 212
    .line 213
    move v0, v1

    .line 214
    goto :goto_d8

    .line 215
    :cond_d7
    move v0, v2

    .line 216
    :goto_d8
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->isDefault:Z

    .line 217
    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_e1

    .line 223
    .line 224
    goto :goto_e2

    .line 225
    :cond_e1
    move v1, v2

    .line 226
    :goto_e2
    iput-boolean v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->isNotify:Z

    .line 227
    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificareMode:I

    .line 233
    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificateMode:I

    .line 239
    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePath:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    iput-object p1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePassword:Ljava/lang/String;

    .line 251
    .line 252
    return-void
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

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 0
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->displayName:Ljava/lang/String;

    .line 1
    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailAddress:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easUser:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easDomain:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->senderName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->protocolVersion:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->signature:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverAddress:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverPassword:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverPathPrefix:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificatePassword:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateData:[B

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateAlias:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateStorageName:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncLookback:I

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    .line 74
    .line 75
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncInterval:I

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    .line 79
    .line 80
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakStartTime:I

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    .line 84
    .line 85
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakEndTime:I

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    .line 89
    .line 90
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakDays:I

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    .line 94
    .line 95
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->offPeak:I

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    .line 99
    .line 100
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->roamingSchedule:I

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    .line 104
    .line 105
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->retrivalSize:I

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    .line 109
    .line 110
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->periodCalendar:I

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    .line 114
    .line 115
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncContacts:I

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    .line 119
    .line 120
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncCalendar:I

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    .line 124
    .line 125
    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateAlways:Z

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    .line 129
    .line 130
    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateWhenSilent:Z

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    .line 134
    .line 135
    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->useSSL:Z

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    .line 139
    .line 140
    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->useTLS:Z

    .line 141
    .line 142
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    .line 144
    .line 145
    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->acceptAllCertificates:Z

    .line 146
    .line 147
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    .line 149
    .line 150
    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->isDefault:Z

    .line 151
    .line 152
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    .line 154
    .line 155
    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->isNotify:Z

    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    .line 159
    .line 160
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificareMode:I

    .line 161
    .line 162
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    .line 164
    .line 165
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificateMode:I

    .line 166
    .line 167
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    .line 169
    .line 170
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePath:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePassword:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    return-void
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
.end method
