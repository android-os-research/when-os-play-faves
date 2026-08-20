.class Lcom/mediatek/duraspeed/collector/f$a;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "PlayingMusicAppCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/duraspeed/collector/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mediatek/duraspeed/collector/f;


# direct methods
.method private constructor <init>(Lcom/mediatek/duraspeed/collector/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/mediatek/duraspeed/collector/f$a;->a:Lcom/mediatek/duraspeed/collector/f;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/duraspeed/collector/f;Lcom/mediatek/duraspeed/collector/g;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/mediatek/duraspeed/collector/f$a;-><init>(Lcom/mediatek/duraspeed/collector/f;)V

    return-void
.end method


# virtual methods
.method public onPlaybackConfigChanged(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 0
    invoke-super {p0, p1}, Landroid/media/AudioManager$AudioPlaybackCallback;->onPlaybackConfigChanged(Ljava/util/List;)V

    .line 1
    .line 2
    .line 3
    iget-object v0, p0, Lcom/mediatek/duraspeed/collector/f$a;->a:Lcom/mediatek/duraspeed/collector/f;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/mediatek/duraspeed/collector/f;->j(Lcom/mediatek/duraspeed/collector/f;)Landroid/app/ActivityManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/mediatek/duraspeed/collector/f$a;->a:Lcom/mediatek/duraspeed/collector/f;

    .line 19
    .line 20
    invoke-static {v2}, Lcom/mediatek/duraspeed/collector/f;->k(Lcom/mediatek/duraspeed/collector/f;)Landroid/util/ArrayMap;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    monitor-enter v2

    .line 25
    :try_start_19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :cond_1d
    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x1

    .line 35
    if-eqz v3, :cond_8e

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Landroid/media/AudioPlaybackConfiguration;

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    const/4 v7, 0x2

    .line 48
    if-eq v7, v6, :cond_33

    .line 49
    .line 50
    goto :goto_1d

    .line 51
    :cond_33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    :cond_37
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_1d

    .line 60
    .line 61
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 66
    .line 67
    iget v8, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 68
    .line 69
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    if-ne v8, v9, :cond_37

    .line 74
    .line 75
    iget-object v6, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v7, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 78
    .line 79
    if-eqz v7, :cond_8a

    .line 80
    .line 81
    array-length v8, v7

    .line 82
    if-ne v8, v5, :cond_57

    .line 83
    .line 84
    aget-object v6, v7, v4

    .line 85
    .line 86
    goto :goto_8a

    .line 87
    :cond_57
    :goto_57
    array-length v8, v7
    :try_end_58
    .catchall {:try_start_19 .. :try_end_58} :catchall_124

    .line 88
    if-ge v4, v8, :cond_8a

    .line 89
    .line 90
    :try_start_5a
    iget-object v8, p0, Lcom/mediatek/duraspeed/collector/f$a;->a:Lcom/mediatek/duraspeed/collector/f;

    .line 91
    .line 92
    iget-object v8, v8, Lcom/mediatek/duraspeed/collector/b;->a:Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    aget-object v9, v7, v4

    .line 99
    .line 100
    invoke-virtual {v8, v9, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 105
    .line 106
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    if-ne v8, v9, :cond_87

    .line 111
    .line 112
    aget-object v6, v7, v4
    :try_end_72
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5a .. :try_end_72} :catch_73
    .catchall {:try_start_5a .. :try_end_72} :catchall_124

    .line 113
    .line 114
    goto :goto_8a

    .line 115
    :catch_73
    :try_start_73
    new-instance v8, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v9, "Can not find package:"

    .line 121
    .line 122
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    invoke-static {p0, v8}, Lcom/mediatek/duraspeed/utils/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_87
    add-int/lit8 v4, v4, 0x1

    .line 136
    .line 137
    goto :goto_57

    .line 138
    :cond_8a
    :goto_8a
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    goto :goto_1d

    .line 142
    :cond_8e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    :cond_92
    :goto_92
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_e6

    .line 151
    .line 152
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Ljava/lang/String;

    .line 157
    .line 158
    iget-object v3, p0, Lcom/mediatek/duraspeed/collector/f$a;->a:Lcom/mediatek/duraspeed/collector/f;

    .line 159
    .line 160
    invoke-static {v3}, Lcom/mediatek/duraspeed/collector/f;->k(Lcom/mediatek/duraspeed/collector/f;)Landroid/util/ArrayMap;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_ca

    .line 173
    .line 174
    iget-object v3, p0, Lcom/mediatek/duraspeed/collector/f$a;->a:Lcom/mediatek/duraspeed/collector/f;

    .line 175
    .line 176
    invoke-static {v3}, Lcom/mediatek/duraspeed/collector/f;->k(Lcom/mediatek/duraspeed/collector/f;)Landroid/util/ArrayMap;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Lcom/mediatek/duraspeed/collector/f$b;

    .line 185
    .line 186
    if-eqz v0, :cond_92

    .line 187
    .line 188
    iget-object v3, v0, Lcom/mediatek/duraspeed/collector/f$b;->b:Landroid/os/CountDownTimer;

    .line 189
    .line 190
    if-eqz v3, :cond_92

    .line 191
    .line 192
    iget-boolean v6, v0, Lcom/mediatek/duraspeed/collector/f$b;->a:Z

    .line 193
    .line 194
    if-eqz v6, :cond_92

    .line 195
    .line 196
    iput-boolean v4, v0, Lcom/mediatek/duraspeed/collector/f$b;->a:Z

    .line 197
    .line 198
    invoke-virtual {v3}, Landroid/os/CountDownTimer;->cancel()V

    .line 199
    .line 200
    .line 201
    goto :goto_92

    .line 202
    :cond_ca
    new-instance v3, Lcom/mediatek/duraspeed/collector/f$a$a;

    .line 203
    .line 204
    sget-wide v10, Lcom/mediatek/duraspeed/utils/c;->v:J

    .line 205
    .line 206
    move-object v6, v3

    .line 207
    move-object v7, p0

    .line 208
    move-wide v8, v10

    .line 209
    move-object v12, v0

    .line 210
    invoke-direct/range {v6 .. v12}, Lcom/mediatek/duraspeed/collector/f$a$a;-><init>(Lcom/mediatek/duraspeed/collector/f$a;JJLjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-object v6, p0, Lcom/mediatek/duraspeed/collector/f$a;->a:Lcom/mediatek/duraspeed/collector/f;

    .line 214
    .line 215
    invoke-static {v6}, Lcom/mediatek/duraspeed/collector/f;->k(Lcom/mediatek/duraspeed/collector/f;)Landroid/util/ArrayMap;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    new-instance v7, Lcom/mediatek/duraspeed/collector/f$b;

    .line 220
    .line 221
    iget-object v8, p0, Lcom/mediatek/duraspeed/collector/f$a;->a:Lcom/mediatek/duraspeed/collector/f;

    .line 222
    .line 223
    invoke-direct {v7, v8, v3}, Lcom/mediatek/duraspeed/collector/f$b;-><init>(Lcom/mediatek/duraspeed/collector/f;Landroid/os/CountDownTimer;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v6, v0, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    goto :goto_92

    .line 230
    :cond_e6
    iget-object p1, p0, Lcom/mediatek/duraspeed/collector/f$a;->a:Lcom/mediatek/duraspeed/collector/f;

    .line 231
    .line 232
    invoke-static {p1}, Lcom/mediatek/duraspeed/collector/f;->k(Lcom/mediatek/duraspeed/collector/f;)Landroid/util/ArrayMap;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    :cond_f4
    :goto_f4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_122

    .line 249
    .line 250
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    check-cast v0, Ljava/lang/String;

    .line 255
    .line 256
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    if-nez v3, :cond_f4

    .line 261
    .line 262
    iget-object v3, p0, Lcom/mediatek/duraspeed/collector/f$a;->a:Lcom/mediatek/duraspeed/collector/f;

    .line 263
    .line 264
    invoke-static {v3}, Lcom/mediatek/duraspeed/collector/f;->k(Lcom/mediatek/duraspeed/collector/f;)Landroid/util/ArrayMap;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    check-cast v0, Lcom/mediatek/duraspeed/collector/f$b;

    .line 273
    .line 274
    if-eqz v0, :cond_f4

    .line 275
    .line 276
    iget-object v3, v0, Lcom/mediatek/duraspeed/collector/f$b;->b:Landroid/os/CountDownTimer;

    .line 277
    .line 278
    if-eqz v3, :cond_f4

    .line 279
    .line 280
    iget-boolean v4, v0, Lcom/mediatek/duraspeed/collector/f$b;->a:Z

    .line 281
    .line 282
    if-nez v4, :cond_f4

    .line 283
    .line 284
    iput-boolean v5, v0, Lcom/mediatek/duraspeed/collector/f$b;->a:Z

    .line 285
    .line 286
    invoke-virtual {v3}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 287
    .line 288
    .line 289
    goto :goto_f4

    .line 290
    :cond_122
    monitor-exit v2

    .line 291
    return-void

    .line 292
    :catchall_124
    move-exception p0

    .line 293
    monitor-exit v2
    :try_end_126
    .catchall {:try_start_73 .. :try_end_126} :catchall_124

    .line 294
    throw p0
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
.end method
