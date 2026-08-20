.class public final Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "UcmKeyPairGenerator.java"


# instance fields
.field public greylist mAlgorithm:Ljava/lang/String;

.field public greylist mAlias:Ljava/lang/String;

.field public greylist mBlockModes:[Ljava/lang/String;

.field public greylist mDigests:[Ljava/lang/String;

.field public greylist mEcCurveName:Ljava/lang/String;

.field public greylist mKeyGenParamSpec:Landroid/security/keystore/KeyGenParameterSpec;

.field public greylist mKeyPairGenSpec:Landroid/security/KeyPairGeneratorSpec;

.field public greylist mKeySize:I

.field public greylist mPurpose:I

.field public greylist mSignaturePaddings:[Ljava/lang/String;

.field public greylist mSource:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    .line 1
    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mPurpose:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mSource:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlgorithm:Ljava/lang/String;

    .line 9
    .line 10
    return-void
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
.end method

.method public static greylist getDefaultSignatureAlgorithmForKeyType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 0
    const-string v0, "RSA"

    .line 1
    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_b

    .line 7
    .line 8
    const-string p0, "sha256WithRSA"

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_b
    const-string v0, "DSA"

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_16

    .line 18
    .line 19
    const-string p0, "sha1WithDSA"

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_16
    const-string v0, "EC"

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_21

    .line 29
    .line 30
    const-string p0, "sha256WithECDSA"

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "Unsupported key type "

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0
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
.method public final whitelist test-api generateKeyPair()Ljava/security/KeyPair;
    .registers 6

    .line 0
    iget v0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mKeySize:I

    .line 1
    .line 2
    if-eqz v0, :cond_b1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlgorithm:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_b1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlias:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eq v0, v1, :cond_b1

    .line 20
    .line 21
    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mSource:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlias:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->delete(Ljava/lang/String;)Landroid/os/Bundle;

    .line 56
    .line 57
    .line 58
    new-instance v2, Landroid/os/Bundle;

    .line 59
    .line 60
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 61
    .line 62
    .line 63
    sget-object v3, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_PURPOSE:Ljava/lang/String;

    .line 64
    .line 65
    iget v4, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mPurpose:I

    .line 66
    .line 67
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mBlockModes:[Ljava/lang/String;

    .line 71
    .line 72
    if-eqz v3, :cond_4f

    .line 73
    .line 74
    sget-object v4, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_BLOCK_MODES:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_4f
    iget-object v3, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mDigests:[Ljava/lang/String;

    .line 80
    .line 81
    if-eqz v3, :cond_58

    .line 82
    .line 83
    sget-object v4, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_DIGESTS:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_58
    iget-object v3, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mSignaturePaddings:[Ljava/lang/String;

    .line 89
    .line 90
    if-eqz v3, :cond_61

    .line 91
    .line 92
    sget-object v4, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_SIGNATURE_PADDINGS:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_61
    iget-object v3, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mEcCurveName:Ljava/lang/String;

    .line 98
    .line 99
    if-eqz v3, :cond_6a

    .line 100
    .line 101
    sget-object v4, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_EC_CURVE_NAME:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_6a
    iget-object v3, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlgorithm:Ljava/lang/String;

    .line 107
    .line 108
    iget v4, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mKeySize:I

    .line 109
    .line 110
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    if-eqz v2, :cond_7b

    .line 115
    .line 116
    const-string v3, "bytearrayresponse"

    .line 117
    .line 118
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    goto :goto_7c

    .line 123
    :cond_7b
    const/4 v2, 0x0

    .line 124
    :goto_7c
    if-eqz v2, :cond_a9

    .line 125
    .line 126
    :try_start_7e
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlgorithm:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    .line 133
    .line 134
    invoke-direct {v3, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 138
    .line 139
    .line 140
    move-result-object p0
    :try_end_8d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7e .. :try_end_8d} :catch_a0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_7e .. :try_end_8d} :catch_97

    .line 141
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    new-instance v1, Ljava/security/KeyPair;

    .line 146
    .line 147
    invoke-direct {v1, p0, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    .line 148
    .line 149
    .line 150
    return-object v1

    .line 151
    :catch_97
    move-exception p0

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 153
    .line 154
    const-string v1, "keystore returned invalid key encoding"

    .line 155
    .line 156
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    .line 158
    .line 159
    throw v0

    .line 160
    :catch_a0
    move-exception p0

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 162
    .line 163
    const-string v1, "Can\'t instantiate key generator"

    .line 164
    .line 165
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    throw v0

    .line 169
    :cond_a9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 170
    .line 171
    const-string v0, "generateKeyPair returns null byte arr"

    .line 172
    .line 173
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p0

    .line 177
    :cond_b1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 178
    .line 179
    const-string v0, "Must call initialize with an android.security.KeyPairGeneratorSpec or android.security.keystore.KeyGenParameterSpec first"

    .line 180
    .line 181
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p0
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

.method public final whitelist test-api initialize(ILjava/security/SecureRandom;)V
    .registers 3

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final whitelist test-api initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p1, :cond_72

    .line 2
    instance-of p2, p1, Landroid/security/KeyPairGeneratorSpec;

    if-eqz p2, :cond_2d

    .line 3
    check-cast p1, Landroid/security/KeyPairGeneratorSpec;

    .line 4
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlias:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getKeySize()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mKeySize:I

    .line 6
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getKeyType()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlgorithm:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 8
    instance-of p2, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz p2, :cond_2c

    .line 9
    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mEcCurveName:Ljava/lang/String;

    :cond_2c
    return-void

    .line 10
    :cond_2d
    instance-of p2, p1, Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz p2, :cond_6a

    .line 11
    check-cast p1, Landroid/security/keystore/KeyGenParameterSpec;

    .line 12
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlias:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mKeySize:I

    .line 14
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mBlockModes:[Ljava/lang/String;

    .line 15
    :try_start_45
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mDigests:[Ljava/lang/String;
    :try_end_4b
    .catch Ljava/lang/IllegalStateException; {:try_start_45 .. :try_end_4b} :catch_4b

    .line 16
    :catch_4b
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mSignaturePaddings:[Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mPurpose:I

    .line 18
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    if-eqz p1, :cond_69

    .line 19
    instance-of p2, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz p2, :cond_69

    .line 20
    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mEcCurveName:Ljava/lang/String;

    :cond_69
    return-void

    .line 21
    :cond_6a
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "params must be of type android.security.KeyPairGeneratorSpecor or android.security.keystore.KeyGenParameterSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_72
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "must supply params of type android.security.KeyPairGeneratorSpec or android.security.keystore.KeyGenParameterSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
