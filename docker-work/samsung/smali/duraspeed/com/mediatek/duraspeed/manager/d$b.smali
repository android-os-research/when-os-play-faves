.class Lcom/mediatek/duraspeed/manager/d$b;
.super Ljava/lang/Thread;
.source "DuraSpeedMemoryServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/duraspeed/manager/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "duraspeed_memory"


# instance fields
.field final synthetic a:Lcom/mediatek/duraspeed/manager/d;


# direct methods
.method private constructor <init>(Lcom/mediatek/duraspeed/manager/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/mediatek/duraspeed/manager/d$b;->a:Lcom/mediatek/duraspeed/manager/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/duraspeed/manager/d;Lcom/mediatek/duraspeed/manager/e;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/mediatek/duraspeed/manager/d$b;-><init>(Lcom/mediatek/duraspeed/manager/d;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 0
    const-string v0, "listenConnection finally shutdown!!"

    .line 1
    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_7
    invoke-static {}, Lcom/mediatek/duraspeed/manager/d;->b()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v4, "Crate local socket: duraspeed_memory"

    .line 12
    .line 13
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    new-instance v3, Landroid/net/LocalServerSocket;

    .line 17
    .line 18
    const-string v4, "duraspeed_memory"

    .line 19
    .line 20
    invoke-direct {v3, v4}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_5b
    .catchall {:try_start_7 .. :try_end_17} :catchall_59

    .line 21
    .line 22
    .line 23
    :goto_17
    :try_start_17
    invoke-static {}, Lcom/mediatek/duraspeed/manager/d;->b()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v4, "Waiting Client connected..."

    .line 28
    .line 29
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/16 v4, 0x100

    .line 37
    .line 38
    invoke-virtual {v2, v4}, Landroid/net/LocalSocket;->setReceiveBufferSize(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v4}, Landroid/net/LocalSocket;->setSendBufferSize(I)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/mediatek/duraspeed/manager/d;->b()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v6, "There is a client is accepted: "

    .line 54
    .line 55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/net/LocalSocket;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    new-instance v4, Lcom/mediatek/duraspeed/manager/d$a;

    .line 73
    .line 74
    iget-object v5, p0, Lcom/mediatek/duraspeed/manager/d$b;->a:Lcom/mediatek/duraspeed/manager/d;

    .line 75
    .line 76
    invoke-direct {v4, v5, v2}, Lcom/mediatek/duraspeed/manager/d$a;-><init>(Lcom/mediatek/duraspeed/manager/d;Landroid/net/LocalSocket;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v1, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_52} :catch_56
    .catchall {:try_start_17 .. :try_end_52} :catchall_53

    .line 80
    .line 81
    .line 82
    goto :goto_17

    .line 83
    :catchall_53
    move-exception p0

    .line 84
    move-object v2, v3

    .line 85
    goto :goto_88

    .line 86
    :catch_56
    move-exception p0

    .line 87
    move-object v2, v3

    .line 88
    goto :goto_5c

    .line 89
    :catchall_59
    move-exception p0

    .line 90
    goto :goto_88

    .line 91
    :catch_5b
    move-exception p0

    .line 92
    :goto_5c
    :try_start_5c
    invoke-static {}, Lcom/mediatek/duraspeed/manager/d;->b()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const-string v4, "listenConnection catch Exception"

    .line 97
    .line 98
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_59

    .line 102
    .line 103
    .line 104
    invoke-static {}, Lcom/mediatek/duraspeed/manager/d;->b()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    if-eqz v1, :cond_74

    .line 112
    .line 113
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 114
    .line 115
    .line 116
    :cond_74
    if-eqz v2, :cond_7e

    .line 117
    .line 118
    :try_start_76
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    .line 119
    .line 120
    .line 121
    goto :goto_7e

    .line 122
    :catch_7a
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 124
    .line 125
    .line 126
    :cond_7e
    :goto_7e
    invoke-static {}, Lcom/mediatek/duraspeed/manager/d;->b()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    const-string v0, "listenConnection() - end"

    .line 131
    .line 132
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :goto_88
    invoke-static {}, Lcom/mediatek/duraspeed/manager/d;->b()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    if-eqz v1, :cond_94

    .line 144
    .line 145
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 146
    .line 147
    .line 148
    :cond_94
    if-eqz v2, :cond_9e

    .line 149
    .line 150
    :try_start_96
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    .line 151
    .line 152
    .line 153
    goto :goto_9e

    .line 154
    :catch_9a
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 156
    .line 157
    .line 158
    :cond_9e
    :goto_9e
    throw p0
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
