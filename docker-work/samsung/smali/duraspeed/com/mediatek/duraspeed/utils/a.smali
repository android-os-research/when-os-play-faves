.class public Lcom/mediatek/duraspeed/utils/a;
.super Landroid/os/ShellCommand;
.source "DSShellCommand.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private j:Lcom/mediatek/duraspeed/suppress/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 1
    .line 2
    .line 3
    const-string v0, "suppress"

    .line 4
    .line 5
    iput-object v0, p0, Lcom/mediatek/duraspeed/utils/a;->a:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "addwhitelist"

    .line 8
    .line 9
    iput-object v0, p0, Lcom/mediatek/duraspeed/utils/a;->b:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "screenoffclean"

    .line 12
    .line 13
    iput-object v0, p0, Lcom/mediatek/duraspeed/utils/a;->c:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "cleandelaytime"

    .line 16
    .line 17
    iput-object v0, p0, Lcom/mediatek/duraspeed/utils/a;->d:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "musicdelaytime"

    .line 20
    .line 21
    iput-object v0, p0, Lcom/mediatek/duraspeed/utils/a;->e:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "cputhreshold"

    .line 24
    .line 25
    iput-object v0, p0, Lcom/mediatek/duraspeed/utils/a;->f:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "cputarget"

    .line 28
    .line 29
    iput-object v0, p0, Lcom/mediatek/duraspeed/utils/a;->g:Ljava/lang/String;

    .line 30
    .line 31
    const-string v0, "freethreshold"

    .line 32
    .line 33
    iput-object v0, p0, Lcom/mediatek/duraspeed/utils/a;->h:Ljava/lang/String;

    .line 34
    .line 35
    const-string v0, "policylevel"

    .line 36
    .line 37
    iput-object v0, p0, Lcom/mediatek/duraspeed/utils/a;->i:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v0, Lcom/mediatek/duraspeed/suppress/a;

    .line 40
    .line 41
    invoke-direct {v0, p1}, Lcom/mediatek/duraspeed/suppress/a;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/mediatek/duraspeed/utils/a;->j:Lcom/mediatek/duraspeed/suppress/a;

    .line 45
    .line 46
    return-void
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
.end method

.method public static a(Ljava/io/PrintWriter;)V
    .registers 2

    .line 0
    const-string v0, "DuraSpeed (duraspeed) commands:"

    .line 1
    .line 2
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    const-string v0, "  help|-h: print this help text."

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "  status: dump the current duraspeed status."

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "  config: dump configuration.xml"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "  launchcount: dump the launch count."

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "  trigger: trigger duraspeed work."

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v0, "  suppress [package]: suppress package."

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "  suppress_list: dump current suppress packages."

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "  addwhitelist [package1] [package2]...: add to whitelist."

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "  screenoffclean [true|false]: screen off clean."

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v0, "  cleandelaytime [n]: set screen off clean delay time."

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v0, "  musicdelaytime [n]: set the music delay time."

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v0, "  notificationdelaytime [n]: set the notification delay time."

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v0, "  cputhreshold [20...100]: set CPU threshold."

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v0, "  cputarget [0...100]: set CPU target."

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v0, "  freethreshold [n]: set free threshold."

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v0, "  policylevel [0...6]: set policy level."

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v0, "  enable_blacklist: enable blacklist for 512m device during booting."

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v0, "  enable_app_switch_debug: enable app switch debug log"

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string v0, "  dump_app_switch_debug_log: dump app switch debug log"

    .line 96
    .line 97
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-void
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
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 11

    .line 0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1
    .line 2
    .line 3
    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    :try_start_c
    const-string v4, "suppress"

    .line 13
    .line 14
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v4
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_10b
    .catchall {:try_start_c .. :try_end_12} :catchall_109

    .line 18
    const-string v5, "Argument required!"

    .line 19
    .line 20
    if-eqz v4, :cond_30

    .line 21
    .line 22
    if-eqz v3, :cond_2b

    .line 23
    .line 24
    :try_start_18
    new-instance p1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/mediatek/duraspeed/utils/a;->j:Lcom/mediatek/duraspeed/suppress/a;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/mediatek/duraspeed/suppress/a;->b(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_105

    .line 42
    .line 43
    :cond_2b
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_105

    .line 47
    .line 48
    :cond_30
    const-string v4, "addwhitelist"

    .line 49
    .line 50
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_4c

    .line 55
    .line 56
    :goto_38
    if-eqz v3, :cond_105

    .line 57
    .line 58
    sget-object p1, Lcom/mediatek/duraspeed/utils/c;->n:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_47

    .line 65
    .line 66
    sget-object p1, Lcom/mediatek/duraspeed/utils/c;->n:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    :cond_47
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    goto :goto_38

    .line 76
    :cond_4c
    const-string v4, "screenoffclean"

    .line 77
    .line 78
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_63

    .line 83
    .line 84
    if-eqz v3, :cond_5e

    .line 85
    .line 86
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    sput-boolean p0, Lcom/mediatek/duraspeed/utils/c;->t:Z

    .line 91
    .line 92
    goto/16 :goto_105

    .line 93
    .line 94
    :cond_5e
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_105

    .line 98
    .line 99
    :cond_63
    const-string v4, "cleandelaytime"

    .line 100
    .line 101
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v4
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_69} :catch_10b
    .catchall {:try_start_18 .. :try_end_69} :catchall_109

    .line 105
    const-string v6, "Argument must be equal or greater than 0!"

    .line 106
    .line 107
    const-wide/16 v7, 0x0

    .line 108
    .line 109
    if-eqz v4, :cond_87

    .line 110
    .line 111
    if-eqz v3, :cond_82

    .line 112
    .line 113
    :try_start_71
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 114
    .line 115
    .line 116
    move-result-wide p0

    .line 117
    cmp-long v3, p0, v7

    .line 118
    .line 119
    if-ltz v3, :cond_7d

    .line 120
    .line 121
    sput-wide p0, Lcom/mediatek/duraspeed/utils/c;->u:J

    .line 122
    .line 123
    goto/16 :goto_105

    .line 124
    .line 125
    :cond_7d
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_105

    .line 129
    .line 130
    :cond_82
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_105

    .line 134
    .line 135
    :cond_87
    const-string v4, "musicdelaytime"

    .line 136
    .line 137
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_a6

    .line 142
    .line 143
    if-eqz v3, :cond_a2

    .line 144
    .line 145
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 146
    .line 147
    .line 148
    move-result-wide p0

    .line 149
    cmp-long v3, p0, v7

    .line 150
    .line 151
    if-ltz v3, :cond_9d

    .line 152
    .line 153
    sput-wide p0, Lcom/mediatek/duraspeed/utils/c;->v:J

    .line 154
    .line 155
    goto/16 :goto_105

    .line 156
    .line 157
    :cond_9d
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_105

    .line 161
    .line 162
    :cond_a2
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_105

    .line 166
    :cond_a6
    const-string v4, "cputarget"

    .line 167
    .line 168
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-eqz v4, :cond_c7

    .line 173
    .line 174
    if-eqz v3, :cond_c3

    .line 175
    .line 176
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    if-ltz p0, :cond_bd

    .line 181
    .line 182
    const/16 p1, 0x64

    .line 183
    .line 184
    if-gt p0, p1, :cond_bd

    .line 185
    .line 186
    sput p0, Lcom/mediatek/duraspeed/utils/c;->z:I

    .line 187
    .line 188
    goto :goto_105

    .line 189
    :cond_bd
    const-string p0, "Argument must between 0 and 100!"

    .line 190
    .line 191
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    goto :goto_105

    .line 195
    :cond_c3
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto :goto_105

    .line 199
    :cond_c7
    const-string v4, "freethreshold"

    .line 200
    .line 201
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-eqz v4, :cond_e1

    .line 206
    .line 207
    if-eqz v3, :cond_dd

    .line 208
    .line 209
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    sput p0, Lcom/mediatek/duraspeed/utils/c;->C:I

    .line 214
    .line 215
    const-string p0, "/proc/mtk-perf/mt_customized_target"

    .line 216
    .line 217
    invoke-static {p0, v3}, Lcom/mediatek/duraspeed/utils/c;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    goto :goto_105

    .line 221
    :cond_dd
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    goto :goto_105

    .line 225
    :cond_e1
    const-string v4, "policylevel"

    .line 226
    .line 227
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-eqz v4, :cond_102

    .line 232
    .line 233
    if-eqz v3, :cond_fe

    .line 234
    .line 235
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    move-result p0

    .line 239
    const/4 p1, 0x1

    .line 240
    if-lt p0, p1, :cond_f8

    .line 241
    .line 242
    const/4 p1, 0x6

    .line 243
    if-gt p0, p1, :cond_f8

    .line 244
    .line 245
    sput p0, Lcom/mediatek/duraspeed/utils/c;->D:I

    .line 246
    .line 247
    goto :goto_105

    .line 248
    :cond_f8
    const-string p0, "Argument must between 1 and 6!"

    .line 249
    .line 250
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    goto :goto_105

    .line 254
    :cond_fe
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    goto :goto_105

    .line 258
    :cond_102
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_105} :catch_10b
    .catchall {:try_start_71 .. :try_end_105} :catchall_109

    .line 259
    .line 260
    .line 261
    :cond_105
    :goto_105
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 262
    .line 263
    .line 264
    goto :goto_121

    .line 265
    :catchall_109
    move-exception p0

    .line 266
    goto :goto_123

    .line 267
    :catch_10b
    move-exception p0

    .line 268
    :try_start_10c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .line 272
    .line 273
    const-string v3, "Invalid argument! "

    .line 274
    .line 275
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_120
    .catchall {:try_start_10c .. :try_end_120} :catchall_109

    .line 286
    .line 287
    .line 288
    goto :goto_105

    .line 289
    :goto_121
    const/4 p0, 0x0

    .line 290
    return p0

    .line 291
    :goto_123
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 292
    .line 293
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

.method public onHelp()V
    .registers 1

    .line 0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 1
    .line 2
    .line 3
    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/mediatek/duraspeed/utils/a;->a(Ljava/io/PrintWriter;)V

    .line 5
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
.end method
