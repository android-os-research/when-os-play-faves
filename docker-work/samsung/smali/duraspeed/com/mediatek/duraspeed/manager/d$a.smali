.class public Lcom/mediatek/duraspeed/manager/d$a;
.super Ljava/lang/Object;
.source "DuraSpeedMemoryServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/duraspeed/manager/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/net/LocalSocket;

.field private b:Z

.field private c:Ljava/io/InputStreamReader;

.field private d:Ljava/io/DataOutputStream;

.field final synthetic e:Lcom/mediatek/duraspeed/manager/d;


# direct methods
.method public constructor <init>(Lcom/mediatek/duraspeed/manager/d;Landroid/net/LocalSocket;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/mediatek/duraspeed/manager/d$a;->e:Lcom/mediatek/duraspeed/manager/d;

    .line 1
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/mediatek/duraspeed/manager/d$a;->b:Z

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/mediatek/duraspeed/manager/d$a;->c:Ljava/io/InputStreamReader;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/mediatek/duraspeed/manager/d$a;->d:Ljava/io/DataOutputStream;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/mediatek/duraspeed/manager/d$a;->a:Landroid/net/LocalSocket;

    .line 14
    .line 15
    return-void
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
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 0
    invoke-static {}, Lcom/mediatek/duraspeed/manager/d;->b()Ljava/lang/String;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    const-string v1, "DuraSpeed memory trigger process terminate."

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/mediatek/duraspeed/manager/d$a;->b:Z

    .line 11
    .line 12
    return-void
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

.method public run()V
    .registers 7

    .line 0
    invoke-static {}, Lcom/mediatek/duraspeed/manager/d;->b()Ljava/lang/String;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "DuraSpeed new connection: "

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/mediatek/duraspeed/manager/d$a;->a:Landroid/net/LocalSocket;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/net/LocalSocket;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :try_start_1e
    new-instance v0, Ljava/io/InputStreamReader;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/mediatek/duraspeed/manager/d$a;->a:Landroid/net/LocalSocket;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/mediatek/duraspeed/manager/d$a;->c:Ljava/io/InputStreamReader;

    .line 42
    .line 43
    new-instance v0, Ljava/io/DataOutputStream;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/mediatek/duraspeed/manager/d$a;->a:Landroid/net/LocalSocket;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/mediatek/duraspeed/manager/d$a;->d:Ljava/io/DataOutputStream;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_38} :catch_b8

    .line 55
    .line 56
    :try_start_38
    new-instance v0, Ljava/io/BufferedReader;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/mediatek/duraspeed/manager/d$a;->c:Ljava/io/InputStreamReader;

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 61
    .line 62
    .line 63
    :cond_3f
    :goto_3f
    iget-boolean v1, p0, Lcom/mediatek/duraspeed/manager/d$a;->b:Z

    .line 64
    .line 65
    if-eqz v1, :cond_ae

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, ":"

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const/4 v2, 0x0

    .line 78
    aget-object v2, v1, v2

    .line 79
    .line 80
    if-eqz v2, :cond_94

    .line 81
    .line 82
    const/4 v3, 0x1

    .line 83
    aget-object v4, v1, v3

    .line 84
    .line 85
    if-nez v4, :cond_58

    .line 86
    .line 87
    goto :goto_94

    .line 88
    :cond_58
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    aget-object v3, v1, v3

    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    const/4 v4, 0x2

    .line 107
    aget-object v4, v1, v4

    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    const/4 v5, 0x3

    .line 114
    aget-object v1, v1, v5

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lcom/mediatek/duraspeed/manager/d$a;->e:Lcom/mediatek/duraspeed/manager/d;

    .line 127
    .line 128
    invoke-static {v1}, Lcom/mediatek/duraspeed/manager/d;->a(Lcom/mediatek/duraspeed/manager/d;)Lcom/mediatek/duraspeed/manager/DuraSpeedService;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lcom/mediatek/duraspeed/manager/DuraSpeedService;->isDuraSpeedEnabled()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_3f

    .line 137
    .line 138
    iget-object v1, p0, Lcom/mediatek/duraspeed/manager/d$a;->e:Lcom/mediatek/duraspeed/manager/d;

    .line 139
    .line 140
    invoke-static {v1}, Lcom/mediatek/duraspeed/manager/d;->a(Lcom/mediatek/duraspeed/manager/d;)Lcom/mediatek/duraspeed/manager/DuraSpeedService;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1, v2, v3}, Lcom/mediatek/duraspeed/manager/DuraSpeedService;->handleMemoryKillSupress(II)V

    .line 145
    .line 146
    .line 147
    goto :goto_3f

    .line 148
    :cond_94
    :goto_94
    invoke-static {}, Lcom/mediatek/duraspeed/manager/d;->b()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    const-string v2, "Received lmkdData error"

    .line 153
    .line 154
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_9d} :catch_9e

    .line 155
    .line 156
    .line 157
    goto :goto_3f

    .line 158
    :catch_9e
    move-exception v0

    .line 159
    :try_start_9f
    invoke-static {}, Lcom/mediatek/duraspeed/manager/d;->b()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    const-string v2, "duraSpeed: memory Exception."

    .line 164
    .line 165
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/mediatek/duraspeed/manager/d$a;->a()V

    .line 172
    .line 173
    .line 174
    :cond_ae
    invoke-static {}, Lcom/mediatek/duraspeed/manager/d;->b()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    const-string v0, "duraSpeed: New connection running ending "

    .line 179
    .line 180
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_b7} :catch_b8

    .line 181
    .line 182
    .line 183
    goto :goto_bc

    .line 184
    :catch_b8
    move-exception p0

    .line 185
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 186
    .line 187
    .line 188
    :goto_bc
    return-void
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
