.class public final Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;
.super Ljava/lang/Object;
.source "KnoxAiManagerInternal.java"


# static fields
.field public static final greylist CONN_MAX_WAIT_TIME:I = 0x9c4

.field public static final greylist TAG:Ljava/lang/String; = "KnoxAiManagerInternal"

.field public static greylist sKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;


# instance fields
.field public final greylist mConnLock:Ljava/lang/Object;

.field public greylist mContext:Landroid/content/Context;

.field public greylist mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

.field public greylist mKFAConn:Landroid/content/ServiceConnection;


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 5
    .line 6
    new-instance v0, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mConnLock:Ljava/lang/Object;

    .line 12
    .line 13
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;-><init>(Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mKFAConn:Landroid/content/ServiceConnection;

    .line 19
    .line 20
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "KnoxAiManagerInternal Constructor called: "

    .line 23
    .line 24
    invoke-static {v1}, Lcom/samsung/android/knox/ContextInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    return-void
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

.method public static declared-synchronized greylist getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;
    .registers 3

    .line 0
    const-class v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 1
    .line 2
    monitor-enter v0

    .line 3
    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->sKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 4
    .line 5
    if-nez v1, :cond_e

    .line 6
    .line 7
    new-instance v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->sKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 13
    .line 14
    :cond_e
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->sKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    .line 17
    .line 18
    .line 19
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->sKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object p0

    .line 23
    :catchall_17
    move-exception p0

    .line 24
    monitor-exit v0

    .line 25
    throw p0
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
.method public final greylist bindKFAServiceInstance()Z
    .registers 4

    .line 0
    new-instance v0, Landroid/content/Intent;

    .line 1
    .line 2
    const-class v1, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "action.decrypt"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    const-string v1, "com.samsung.android.app.kfa"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const-string v1, "binder"

    .line 22
    .line 23
    const-string v2, "decrypt"

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mKFAConn:Landroid/content/ServiceConnection;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v2, "getKFAServiceInstance trying to bind, status: "

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return p0
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

.method public final greylist close(J)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .registers 4

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKFAServiceInstance()Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    if-nez v0, :cond_9

    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->close(J)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->getCodeFromValue(I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_17

    .line 20
    .line 21
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNKNOWN_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    :try_end_17
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_17} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_18

    .line 22
    .line 23
    :cond_17
    return-object p1

    .line 24
    :catch_18
    move-exception p0

    .line 25
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string p2, "RemoteException in KFA"

    .line 28
    .line 29
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    goto :goto_2c

    .line 33
    :catch_21
    move-exception p1

    .line 34
    sget-object p2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    const-string v0, "DeadObjectException in KFA, retrying bind"

    .line 37
    .line 38
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    .line 42
    .line 43
    .line 44
    :goto_2c
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 45
    .line 46
    return-object p0
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

.method public final greylist createKnoxAiSession()J
    .registers 4

    .line 0
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 1
    .line 2
    const-string v1, "createKnoxAiSession entry"

    .line 3
    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKFAServiceInstance()Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_15

    .line 12
    .line 13
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->getValue()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    :goto_13
    int-to-long v0, p0

    .line 20
    return-wide v0

    .line 21
    :cond_15
    const-string v1, "createKnoxAiSession connection exists"

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :try_start_1a
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$2;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$2;-><init>(Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 32
    .line 33
    invoke-interface {v1, v0}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->createKnoxAiSession(Lcom/samsung/android/knox/ex/knoxAI/IDeathNotifier;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0
    :try_end_25
    .catch Landroid/os/DeadObjectException; {:try_start_1a .. :try_end_25} :catch_2f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_25} :catch_26

    .line 37
    return-wide v0

    .line 38
    :catch_26
    move-exception p0

    .line 39
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    const-string v1, "RemoteException in KFA"

    .line 42
    .line 43
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    goto :goto_3a

    .line 47
    :catch_2f
    move-exception v0

    .line 48
    sget-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    const-string v2, "DeadObjectException in KFA, retrying bind"

    .line 51
    .line 52
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    .line 56
    .line 57
    .line 58
    :goto_3a
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->getValue()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    goto :goto_13
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

.method public final greylist destroyKnoxAiSession(J)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .registers 5

    .line 0
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 1
    .line 2
    const-string v1, "destroyKnoxAiSession entry"

    .line 3
    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKFAServiceInstance()Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_10

    .line 12
    .line 13
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_10
    const-string v1, "destroyKnoxAiSession connection exists"

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :try_start_15
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 22
    .line 23
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->destroyKnoxAiSession(J)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->getCodeFromValue(I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-nez p1, :cond_23

    .line 32
    .line 33
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNKNOWN_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    :try_end_23
    .catch Landroid/os/DeadObjectException; {:try_start_15 .. :try_end_23} :catch_2d
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_23} :catch_24

    .line 34
    .line 35
    :cond_23
    return-object p1

    .line 36
    :catch_24
    move-exception p0

    .line 37
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    const-string p2, "RemoteException in KFA"

    .line 40
    .line 41
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    goto :goto_38

    .line 45
    :catch_2d
    move-exception p1

    .line 46
    sget-object p2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    const-string v0, "DeadObjectException in KFA, retrying bind"

    .line 49
    .line 50
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    .line 54
    .line 55
    .line 56
    :goto_38
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 57
    .line 58
    return-object p0
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

.method public final greylist execute(J[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .registers 6

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKFAServiceInstance()Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    if-nez v0, :cond_9

    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->execute(J[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->getCodeFromValue(I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_17

    .line 20
    .line 21
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNKNOWN_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    :try_end_17
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_17} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_18

    .line 22
    .line 23
    :cond_17
    return-object p1

    .line 24
    :catch_18
    move-exception p0

    .line 25
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string p2, "RemoteException in KFA"

    .line 28
    .line 29
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    goto :goto_2c

    .line 33
    :catch_21
    move-exception p1

    .line 34
    sget-object p2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    const-string p3, "DeadObjectException in KFA, retrying bind"

    .line 37
    .line 38
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    .line 42
    .line 43
    .line 44
    :goto_2c
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 45
    .line 46
    return-object p0
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
.end method

.method public final greylist getKFAServiceInstance()Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;
    .registers 5

    .line 0
    monitor-enter p0

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v1, :cond_10

    .line 6
    .line 7
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "getKFAServiceInstance service is null"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move v0, v2

    .line 15
    goto :goto_1b

    .line 16
    :cond_10
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1b

    .line 21
    .line 22
    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    xor-int/2addr v0, v2

    .line 27
    :cond_1b
    :goto_1b
    if-eqz v0, :cond_59

    .line 28
    .line 29
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, "getKFAServiceInstance trying to rebind from client"

    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 38
    .line 39
    const-string v0, "KFAService"

    .line 40
    .line 41
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-nez v0, :cond_53

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    .line 48
    .line 49
    .line 50
    move-result v0
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_5d

    .line 51
    if-eqz v0, :cond_59

    .line 52
    .line 53
    :try_start_35
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mConnLock:Ljava/lang/Object;

    .line 54
    .line 55
    monitor-enter v0
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_38} :catch_44
    .catchall {:try_start_35 .. :try_end_38} :catchall_5d

    .line 56
    :try_start_38
    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mConnLock:Ljava/lang/Object;

    .line 57
    .line 58
    const-wide/16 v2, 0x9c4

    .line 59
    .line 60
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 61
    .line 62
    .line 63
    monitor-exit v0

    .line 64
    goto :goto_4b

    .line 65
    :catchall_41
    move-exception v1

    .line 66
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_41

    .line 67
    :try_start_43
    throw v1
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_44} :catch_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_5d

    .line 68
    :catch_44
    :try_start_44
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 69
    .line 70
    const-string v1, "getKFAServiceInstance() interrupted"

    .line 71
    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :goto_4b
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 76
    .line 77
    const-string v1, "getKFAServiceInstance binding timed out or success"

    .line 78
    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    goto :goto_59

    .line 83
    :cond_53
    invoke-static {v0}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 88
    .line 89
    :cond_59
    :goto_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_44 .. :try_end_5a} :catchall_5d

    .line 90
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 91
    .line 92
    return-object p0

    .line 93
    :catchall_5d
    move-exception v0

    .line 94
    :try_start_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    .line 95
    throw v0
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

.method public final greylist getKeyProvisioning(Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;)V
    .registers 4

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKFAServiceInstance()Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    if-nez v0, :cond_7

    .line 5
    .line 6
    return-void

    .line 7
    :cond_7
    :try_start_7
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$3;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$3;-><init>(Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->getKeyProvisioning(Lcom/samsung/android/knox/ex/knoxAI/IKeyProvisioningCallback;)V
    :try_end_11
    .catch Landroid/os/DeadObjectException; {:try_start_7 .. :try_end_11} :catch_1b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12

    .line 15
    .line 16
    .line 17
    goto :goto_26

    .line 18
    :catch_12
    move-exception p0

    .line 19
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "RemoteException in KFA"

    .line 22
    .line 23
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    goto :goto_26

    .line 27
    :catch_1b
    move-exception p1

    .line 28
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string v1, "DeadObjectException in KFA, retrying bind"

    .line 31
    .line 32
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    .line 36
    .line 37
    .line 38
    :goto_26
    return-void
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

.method public final greylist getModelInputShape(JI[I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .registers 6

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKFAServiceInstance()Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    if-nez v0, :cond_9

    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->getModelInputShape(JI[I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->getCodeFromValue(I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_17

    .line 20
    .line 21
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNKNOWN_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    :try_end_17
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_17} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_18

    .line 22
    .line 23
    :cond_17
    return-object p1

    .line 24
    :catch_18
    move-exception p0

    .line 25
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string p2, "RemoteException in KFA"

    .line 28
    .line 29
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    goto :goto_2c

    .line 33
    :catch_21
    move-exception p1

    .line 34
    sget-object p2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    const-string p3, "DeadObjectException in KFA, retrying bind"

    .line 37
    .line 38
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    .line 42
    .line 43
    .line 44
    :goto_2c
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 45
    .line 46
    return-object p0
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
.end method

.method public final greylist open(JLcom/samsung/android/knox/ex/knoxAI/KfaOptions;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .registers 5

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKFAServiceInstance()Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    if-nez v0, :cond_9

    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->open(JLcom/samsung/android/knox/ex/knoxAI/KfaOptions;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->getCodeFromValue(I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_17

    .line 20
    .line 21
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNKNOWN_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    :try_end_17
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_17} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_18

    .line 22
    .line 23
    :cond_17
    return-object p1

    .line 24
    :catch_18
    move-exception p0

    .line 25
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string p2, "RemoteException in KFA"

    .line 28
    .line 29
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    goto :goto_2c

    .line 33
    :catch_21
    move-exception p1

    .line 34
    sget-object p2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    const-string p3, "DeadObjectException in KFA, retrying bind"

    .line 37
    .line 38
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    .line 42
    .line 43
    .line 44
    :goto_2c
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 45
    .line 46
    return-object p0
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
