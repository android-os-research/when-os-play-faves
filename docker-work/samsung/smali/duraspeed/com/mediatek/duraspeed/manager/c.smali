.class public Lcom/mediatek/duraspeed/manager/c;
.super Landroid/os/Handler;
.source "DuraSpeedHandler.java"


# static fields
.field private static final A:I = 0x3ea

.field private static final B:I = 0x3eb

.field private static final C:I = 0x3ec

.field private static final D:I = 0x3ed

.field private static final E:I = 0x3ee

.field private static final F:I = 0x3ef

.field private static final G:I = 0x3f0

.field private static final H:I = 0x3f1

.field private static final I:I = 0x3f2

.field public static final J:I = 0x3f3

.field private static final K:I = 0x3f4

.field private static final L:I = 0x3f5

.field private static final M:I = 0x3f6

.field private static final N:I = 0x3f7

.field private static final O:I = 0x3f8

.field private static final P:I = 0x80

.field private static final Q:I = 0x6

.field private static final R:J = 0x3e8L

.field private static final S:Z

.field private static final T:Z

.field private static final q:Ljava/lang/String; = "package_name"

.field private static final r:Ljava/lang/String; = "health_type"

.field private static final s:Ljava/lang/String; = "release_target"

.field private static final t:Ljava/lang/String; = "duraspeed_enabled"

.field private static final u:Ljava/lang/String; = "app_died_reason"

.field private static final v:I = 0x0

.field private static final w:I = 0xea60

.field private static final x:I = 0x2bf20

.field private static final y:I = 0xdbba0

.field private static final z:I = 0x3e9


# instance fields
.field private a:J

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Lcom/mediatek/duraspeed/collector/c;

.field private e:Lcom/mediatek/duraspeed/policy/a;

.field private f:Lcom/mediatek/duraspeed/monitor/c;

.field private g:Lcom/mediatek/duraspeed/manager/g;

.field private h:Lcom/mediatek/duraspeed/suppress/SuppressAction;

.field private i:Ljava/lang/reflect/Field;

.field private j:Ljava/lang/reflect/Method;

.field private k:Ljava/lang/reflect/Method;

.field private l:Ljava/lang/reflect/Field;

.field private m:Ljava/lang/reflect/Method;

.field private n:Lcom/mediatek/duraspeed/manager/h;

.field private o:Lcom/mediatek/duraspeed/manager/b;

.field private p:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    const-string v0, "ro.vendor.mtk_config_max_dram_size"

    .line 1
    .line 2
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string v1, "0x20000000"

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    sput-boolean v0, Lcom/mediatek/duraspeed/manager/c;->S:Z

    .line 13
    .line 14
    const-string v0, "ro.vendor.product.cpu.abilist64"

    .line 15
    .line 16
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, ""

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    xor-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    sput-boolean v0, Lcom/mediatek/duraspeed/manager/c;->T:Z

    .line 29
    .line 30
    return-void
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

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/HandlerThread;Lcom/mediatek/duraspeed/monitor/c;)V
    .registers 8

    .line 1
    const-class p3, Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/mediatek/duraspeed/manager/c;->a:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/mediatek/duraspeed/manager/c;->b:I

    .line 4
    iput-object p1, p0, Lcom/mediatek/duraspeed/manager/c;->c:Landroid/content/Context;

    .line 5
    new-instance v1, Lcom/mediatek/duraspeed/collector/c;

    invoke-direct {v1, p1, p2}, Lcom/mediatek/duraspeed/collector/c;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/duraspeed/manager/c;->d:Lcom/mediatek/duraspeed/collector/c;

    .line 6
    new-instance p2, Lcom/mediatek/duraspeed/policy/PolicyImpl;

    invoke-direct {p2, p1}, Lcom/mediatek/duraspeed/policy/PolicyImpl;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mediatek/duraspeed/manager/c;->e:Lcom/mediatek/duraspeed/policy/a;

    .line 7
    iput-object p4, p0, Lcom/mediatek/duraspeed/manager/c;->f:Lcom/mediatek/duraspeed/monitor/c;

    .line 8
    invoke-static {}, Lcom/mediatek/duraspeed/manager/g;->b()Lcom/mediatek/duraspeed/manager/g;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/duraspeed/manager/c;->g:Lcom/mediatek/duraspeed/manager/g;

    .line 9
    invoke-static {}, Lcom/mediatek/duraspeed/suppress/SuppressAction;->getInstance()Lcom/mediatek/duraspeed/suppress/SuppressAction;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/duraspeed/manager/c;->h:Lcom/mediatek/duraspeed/suppress/SuppressAction;

    .line 10
    const-class p1, Lcom/android/internal/os/ProcessCpuTracker;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mWorkingProcs"

    invoke-static {p1, p2}, Lcom/mediatek/duraspeed/utils/c;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/duraspeed/manager/c;->i:Ljava/lang/reflect/Field;

    .line 12
    const-class p1, Lcom/android/internal/os/ProcessCpuTracker;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Class;

    const-string p4, "buildWorkingProcs"

    invoke-static {p1, p4, p2}, Lcom/mediatek/duraspeed/utils/c;->B(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/duraspeed/manager/c;->j:Ljava/lang/reflect/Method;

    .line 14
    const-class p1, Lcom/android/server/am/ActivityManagerService;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Class;

    aput-object p3, p2, v0

    sget-object p4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    aput-object p4, p2, v1

    const/4 v2, 0x2

    aput-object p3, p2, v2

    const-string p3, "findProcessLOSP"

    invoke-static {p1, p3, p2}, Lcom/mediatek/duraspeed/utils/c;->B(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/duraspeed/manager/c;->k:Ljava/lang/reflect/Method;

    .line 16
    const-class p1, Lcom/android/server/am/ProcessRecord;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mState"

    invoke-static {p1, p2}, Lcom/mediatek/duraspeed/utils/c;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/duraspeed/manager/c;->l:Ljava/lang/reflect/Field;

    .line 18
    const-class p1, Lcom/android/server/am/ProcessStateRecord;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Class;

    aput-object p4, p2, v0

    const-string p3, "setCurProcState"

    invoke-static {p1, p3, p2}, Lcom/mediatek/duraspeed/utils/c;->B(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/duraspeed/manager/c;->m:Ljava/lang/reflect/Method;

    .line 20
    new-instance p1, Lcom/mediatek/duraspeed/manager/b;

    invoke-direct {p1}, Lcom/mediatek/duraspeed/manager/b;-><init>()V

    iput-object p1, p0, Lcom/mediatek/duraspeed/manager/c;->o:Lcom/mediatek/duraspeed/manager/b;

    .line 21
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "DSGetMem"

    const/16 p3, 0xa

    invoke-direct {p1, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 22
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 23
    new-instance p2, Lcom/mediatek/duraspeed/manager/h;

    iget-object p3, p0, Lcom/mediatek/duraspeed/manager/c;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object p4, p0, Lcom/mediatek/duraspeed/manager/c;->d:Lcom/mediatek/duraspeed/collector/c;

    invoke-direct {p2, p3, p1, p0, p4}, Lcom/mediatek/duraspeed/manager/h;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Lcom/mediatek/duraspeed/collector/c;)V

    iput-object p2, p0, Lcom/mediatek/duraspeed/manager/c;->n:Lcom/mediatek/duraspeed/manager/h;

    .line 24
    const-class p1, Lcom/android/server/SystemServiceManager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mServices"

    invoke-static {p1, p2}, Lcom/mediatek/duraspeed/utils/c;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 25
    const-class p2, Lcom/android/server/SystemServiceManager;

    .line 26
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/SystemServiceManager;

    .line 27
    invoke-static {p1, p2}, Lcom/mediatek/duraspeed/utils/c;->g(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_dd

    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_dd

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/SystemService;

    .line 29
    instance-of p3, p2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    if-eqz p3, :cond_c5

    .line 30
    check-cast p2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/duraspeed/manager/c;->p:Lcom/android/server/am/ActivityManagerService;

    :cond_dd
    return-void
.end method

.method private D(I)V
    .registers 5

    .line 0
    packed-switch p1, :pswitch_data_3e

    .line 1
    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    goto :goto_26

    .line 6
    :pswitch_6
    const-string p0, "MSG_UPDATE_APP_MEMORY"

    .line 7
    .line 8
    goto :goto_26

    .line 9
    :pswitch_9
    const-string p0, "MSG_DURASPEED_SWITCHED"

    .line 10
    .line 11
    goto :goto_26

    .line 12
    :pswitch_c
    const-string p0, "MSG_POOR_HEALTH"

    .line 13
    .line 14
    goto :goto_26

    .line 15
    :pswitch_f
    const-string p0, "MSG_SHUTDOWN"

    .line 16
    .line 17
    goto :goto_26

    .line 18
    :pswitch_12
    const-string p0, "MSG_END_OF_DAY"

    .line 19
    .line 20
    goto :goto_26

    .line 21
    :pswitch_15
    const-string p0, "MSG_TIME_CHANGED"

    .line 22
    .line 23
    goto :goto_26

    .line 24
    :pswitch_18
    const-string p0, "MSG_SCREEN_OFF"

    .line 25
    .line 26
    goto :goto_26

    .line 27
    :pswitch_1b
    const-string p0, "MSG_SCREEN_ON"

    .line 28
    .line 29
    goto :goto_26

    .line 30
    :pswitch_1e
    const-string p0, "MSG_BOOT_COMPLETED"

    .line 31
    .line 32
    goto :goto_26

    .line 33
    :pswitch_21
    const-string p0, "MSG_SYSTEM_READY"

    .line 34
    .line 35
    goto :goto_26

    .line 36
    :pswitch_24
    const-string p0, "MSG_APP_SWITCHED"

    .line 37
    .line 38
    :goto_26
    const-wide/16 v0, 0x3e8

    .line 39
    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "handleMessage: "

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    nop

    .line 62
    :pswitch_data_3e
    .packed-switch 0x3e9
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
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

.method private G()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/mediatek/duraspeed/manager/c;->e:Lcom/mediatek/duraspeed/policy/a;

    .line 1
    .line 2
    invoke-interface {p0}, Lcom/mediatek/duraspeed/policy/a;->c()V

    .line 3
    .line 4
    .line 5
    return-void
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
.end method

.method private H(Landroid/util/ArrayMap;Lcom/mediatek/duraspeed/monitor/HealthType;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/duraspeed/manager/a;",
            ">;",
            "Lcom/mediatek/duraspeed/monitor/HealthType;",
            ")V"
        }
    .end annotation

    .line 0
    new-instance v0, Landroid/util/ArrayMap;

    .line 1
    .line 2
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 3
    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    iput-wide v1, p0, Lcom/mediatek/duraspeed/manager/c;->a:J

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/mediatek/duraspeed/manager/c;->b:I

    .line 11
    .line 12
    sget-object v2, Lcom/mediatek/duraspeed/monitor/HealthType;->a:Lcom/mediatek/duraspeed/monitor/HealthType;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne p2, v2, :cond_2d

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/mediatek/duraspeed/manager/c;->c()Landroid/util/ArrayMap;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-boolean v2, Lcom/mediatek/duraspeed/utils/c;->K:Z

    .line 22
    .line 23
    if-eqz v2, :cond_2d

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v4, "CPU loading info: "

    .line 31
    .line 32
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {p0, v3, v2}, Lcom/mediatek/duraspeed/utils/b;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_2d
    iget-object v2, p0, Lcom/mediatek/duraspeed/manager/c;->c:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {v2}, Lcom/mediatek/duraspeed/utils/c;->c(Landroid/content/Context;)Landroid/app/ActivityManager;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    :cond_3b
    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_ca

    .line 64
    .line 65
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 70
    .line 71
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 72
    .line 73
    if-eqz v5, :cond_3b

    .line 74
    .line 75
    array-length v6, v5

    .line 76
    if-lez v6, :cond_3b

    .line 77
    .line 78
    aget-object v5, v5, v1

    .line 79
    .line 80
    sget v6, Lcom/mediatek/duraspeed/utils/c;->D:I

    .line 81
    .line 82
    const/4 v7, 0x6

    .line 83
    if-ne v6, v7, :cond_5e

    .line 84
    .line 85
    sget-object v6, Lcom/mediatek/duraspeed/utils/c;->q:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_5e

    .line 92
    .line 93
    goto :goto_3b

    .line 94
    :cond_5e
    iget-object v6, p0, Lcom/mediatek/duraspeed/manager/c;->o:Lcom/mediatek/duraspeed/manager/b;

    .line 95
    .line 96
    invoke-virtual {v6}, Lcom/mediatek/duraspeed/manager/b;->b()Landroid/util/ArrayMap;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    check-cast v6, Lcom/mediatek/duraspeed/manager/a;

    .line 105
    .line 106
    if-nez v6, :cond_7a

    .line 107
    .line 108
    new-instance v6, Lcom/mediatek/duraspeed/manager/a;

    .line 109
    .line 110
    invoke-direct {v6, v5}, Lcom/mediatek/duraspeed/manager/a;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v7, p0, Lcom/mediatek/duraspeed/manager/c;->o:Lcom/mediatek/duraspeed/manager/b;

    .line 114
    .line 115
    invoke-virtual {v7}, Lcom/mediatek/duraspeed/manager/b;->b()Landroid/util/ArrayMap;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-virtual {v7, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    :cond_7a
    invoke-virtual {p1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    iget-object v5, v6, Lcom/mediatek/duraspeed/manager/a;->h:Landroid/util/ArrayMap;

    .line 126
    .line 127
    monitor-enter v5

    .line 128
    :try_start_80
    iget-object v7, v6, Lcom/mediatek/duraspeed/manager/a;->h:Landroid/util/ArrayMap;

    .line 129
    .line 130
    iget-object v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 131
    .line 132
    iget v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 133
    .line 134
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    invoke-virtual {v7, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    monitor-exit v5
    :try_end_8e
    .catchall {:try_start_80 .. :try_end_8e} :catchall_c7

    .line 142
    sget-object v5, Lcom/mediatek/duraspeed/monitor/HealthType;->a:Lcom/mediatek/duraspeed/monitor/HealthType;

    .line 143
    .line 144
    if-ne p2, v5, :cond_ab

    .line 145
    .line 146
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_ab

    .line 153
    .line 154
    iget v5, v6, Lcom/mediatek/duraspeed/manager/a;->f:F

    .line 155
    .line 156
    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    check-cast v7, Ljava/lang/Float;

    .line 163
    .line 164
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    add-float/2addr v5, v7

    .line 169
    iput v5, v6, Lcom/mediatek/duraspeed/manager/a;->f:F

    .line 170
    .line 171
    :cond_ab
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    invoke-static {v5}, Landroid/os/Process;->getParentPid(I)I

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 180
    .line 181
    invoke-static {v4}, Landroid/os/Process;->getParentPid(I)I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    sget-boolean v7, Lcom/mediatek/duraspeed/manager/c;->T:Z

    .line 186
    .line 187
    if-eqz v7, :cond_c3

    .line 188
    .line 189
    if-ne v5, v4, :cond_c3

    .line 190
    .line 191
    iput-boolean v1, v6, Lcom/mediatek/duraspeed/manager/a;->e:Z

    .line 192
    .line 193
    goto/16 :goto_3b

    .line 194
    .line 195
    :cond_c3
    iput-boolean v3, v6, Lcom/mediatek/duraspeed/manager/a;->e:Z

    .line 196
    .line 197
    goto/16 :goto_3b

    .line 198
    .line 199
    :catchall_c7
    move-exception p0

    .line 200
    :try_start_c8
    monitor-exit v5
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    .line 201
    throw p0

    .line 202
    :cond_ca
    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    :cond_d2
    :goto_d2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    .line 212
    .line 213
    move-result p2

    .line 214
    if-eqz p2, :cond_f5

    .line 215
    .line 216
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    check-cast p2, Ljava/util/Map$Entry;

    .line 221
    .line 222
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    check-cast p2, Lcom/mediatek/duraspeed/manager/a;

    .line 227
    .line 228
    if-eqz p2, :cond_d2

    .line 229
    .line 230
    iget-wide v0, p0, Lcom/mediatek/duraspeed/manager/c;->a:J

    .line 231
    .line 232
    iget-wide v2, p2, Lcom/mediatek/duraspeed/manager/a;->g:J

    .line 233
    .line 234
    add-long/2addr v0, v2

    .line 235
    iput-wide v0, p0, Lcom/mediatek/duraspeed/manager/c;->a:J

    .line 236
    .line 237
    iget v0, p0, Lcom/mediatek/duraspeed/manager/c;->b:I

    .line 238
    .line 239
    iget p2, p2, Lcom/mediatek/duraspeed/manager/a;->b:I

    .line 240
    .line 241
    add-int/2addr v0, p2

    .line 242
    iput v0, p0, Lcom/mediatek/duraspeed/manager/c;->b:I

    .line 243
    .line 244
    goto :goto_d2

    .line 245
    :cond_f5
    return-void
.end method

.method private a()V
    .registers 6

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1
    .line 2
    .line 3
    move-result-wide v0

    .line 4
    invoke-static {v0, v1}, Lcom/mediatek/duraspeed/utils/c;->j(J)J

    .line 5
    .line 6
    .line 7
    move-result-wide v2

    .line 8
    sub-long/2addr v2, v0

    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    cmp-long v4, v2, v0

    .line 12
    .line 13
    if-gez v4, :cond_15

    .line 14
    .line 15
    const-string v2, "checkEndOfDay, midnight is invalid"

    .line 16
    .line 17
    invoke-static {p0, v2}, Lcom/mediatek/duraspeed/utils/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    move-wide v2, v0

    .line 21
    :cond_15
    const/16 v0, 0x3ef

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 31
    .line 32
    .line 33
    return-void
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

.method private c()Landroid/util/ArrayMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance v0, Landroid/util/ArrayMap;

    .line 1
    .line 2
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/mediatek/duraspeed/utils/c;->l()Lcom/android/internal/os/ProcessCpuTracker;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/mediatek/duraspeed/manager/c;->j:Ljava/lang/reflect/Method;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    new-array v3, v3, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {v2, v1, v3}, Lcom/mediatek/duraspeed/utils/c;->q(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/mediatek/duraspeed/manager/c;->i:Ljava/lang/reflect/Field;

    .line 18
    .line 19
    invoke-static {p0, v1}, Lcom/mediatek/duraspeed/utils/c;->g(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    move-wide v5, v3

    .line 32
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-eqz v7, :cond_34

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    check-cast v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 43
    .line 44
    iget v8, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 45
    .line 46
    iget v7, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 47
    .line 48
    add-int/2addr v8, v7

    .line 49
    int-to-long v7, v8

    .line 50
    add-long/2addr v5, v7

    .line 51
    goto :goto_20

    .line 52
    :cond_34
    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->getTotalCpuPercent()F

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    cmp-long v2, v5, v3

    .line 57
    .line 58
    if-eqz v2, :cond_68

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    :cond_40
    :goto_40
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_68

    .line 69
    .line 70
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 75
    .line 76
    iget v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 77
    .line 78
    iget v4, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 79
    .line 80
    add-int/2addr v3, v4

    .line 81
    int-to-float v3, v3

    .line 82
    mul-float/2addr v3, v1

    .line 83
    long-to-float v4, v5

    .line 84
    div-float/2addr v3, v4

    .line 85
    const/4 v4, 0x0

    .line 86
    cmpl-float v4, v3, v4

    .line 87
    .line 88
    if-lez v4, :cond_40

    .line 89
    .line 90
    iget-object v2, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v3}, Lcom/mediatek/duraspeed/utils/c;->k(F)F

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    goto :goto_40

    .line 104
    :cond_68
    return-object v0
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

.method private d()F
    .registers 6

    .line 0
    invoke-static {}, Lcom/mediatek/duraspeed/utils/c;->l()Lcom/android/internal/os/ProcessCpuTracker;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    const/high16 v1, -0x40800000    # -1.0f

    .line 5
    .line 6
    :try_start_6
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 7
    .line 8
    .line 9
    const-wide/16 v2, 0x3e8

    .line 10
    .line 11
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_68

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->getTotalCpuPercent()F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Lcom/mediatek/duraspeed/utils/c;->k(F)F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sget v2, Lcom/mediatek/duraspeed/utils/c;->y:I

    .line 26
    .line 27
    int-to-float v2, v2

    .line 28
    cmpl-float v2, v0, v2

    .line 29
    .line 30
    if-lez v2, :cond_67

    .line 31
    .line 32
    const/high16 v2, 0x42c80000    # 100.0f

    .line 33
    .line 34
    cmpg-float v2, v0, v2

    .line 35
    .line 36
    if-gtz v2, :cond_67

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v3, "The total CPU loading is "

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v4, "%"

    .line 53
    .line 54
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {p0, v1, v2}, Lcom/mediatek/duraspeed/utils/b;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/mediatek/duraspeed/manager/c;->g:Lcom/mediatek/duraspeed/manager/g;

    .line 65
    .line 66
    new-instance v1, Ljava/util/Date;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 69
    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v3, "%\n"

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/duraspeed/manager/g;->p(Ljava/util/Date;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sget p0, Lcom/mediatek/duraspeed/utils/c;->z:I

    .line 95
    .line 96
    int-to-float p0, p0

    .line 97
    sub-float/2addr v0, p0

    .line 98
    invoke-static {v0}, Lcom/mediatek/duraspeed/utils/c;->k(F)F

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    return p0

    .line 103
    :cond_67
    return v1

    .line 104
    :catch_68
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {p0, v0}, Lcom/mediatek/duraspeed/utils/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return v1
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

.method private e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 0
    sget-boolean v0, Lcom/mediatek/duraspeed/utils/c;->J:Z

    .line 1
    .line 2
    if-eqz v0, :cond_68

    .line 3
    .line 4
    if-eqz p2, :cond_68

    .line 5
    .line 6
    const-string v0, "cch"

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, "\n"

    .line 13
    .line 14
    const-string v2, " is died, "

    .line 15
    .line 16
    const-string v3, "app:"

    .line 17
    .line 18
    if-eqz v0, :cond_3d

    .line 19
    .line 20
    sget v0, Lcom/mediatek/duraspeed/utils/c;->I:I

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    sput v0, Lcom/mediatek/duraspeed/utils/c;->I:I

    .line 25
    .line 26
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->g:Lcom/mediatek/duraspeed/manager/g;

    .line 27
    .line 28
    new-instance v4, Ljava/util/Date;

    .line 29
    .line 30
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {v0, v4, p2}, Lcom/mediatek/duraspeed/manager/g;->p(Ljava/util/Date;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_68

    .line 61
    :cond_3d
    const-string v0, "stop "

    .line 62
    .line 63
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_46

    .line 68
    .line 69
    goto :goto_68

    .line 70
    :cond_46
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->g:Lcom/mediatek/duraspeed/manager/g;

    .line 71
    .line 72
    new-instance v4, Ljava/util/Date;

    .line 73
    .line 74
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 75
    .line 76
    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {v0, v4, p2}, Lcom/mediatek/duraspeed/manager/g;->p(Ljava/util/Date;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_68
    :goto_68
    sget-object p2, Lcom/mediatek/duraspeed/utils/c;->M:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-eqz p2, :cond_71

    .line 111
    .line 112
    return-void

    .line 113
    :cond_71
    invoke-static {}, Lcom/mediatek/duraspeed/suppress/b;->c()Lcom/mediatek/duraspeed/suppress/b;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p2}, Lcom/mediatek/duraspeed/suppress/b;->e()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    if-eqz p2, :cond_80

    .line 126
    .line 127
    return-void

    .line 128
    :cond_80
    iget-object p2, p0, Lcom/mediatek/duraspeed/manager/c;->c:Landroid/content/Context;

    .line 129
    .line 130
    invoke-static {p2}, Lcom/mediatek/duraspeed/utils/c;->c(Landroid/content/Context;)Landroid/app/ActivityManager;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    :cond_8e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_b5

    .line 147
    .line 148
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 153
    .line 154
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 155
    .line 156
    if-eqz v0, :cond_8e

    .line 157
    .line 158
    array-length v1, v0

    .line 159
    if-lez v1, :cond_8e

    .line 160
    .line 161
    const/4 v1, 0x0

    .line 162
    aget-object v0, v0, v1

    .line 163
    .line 164
    const-string v1, "com.mediatek.MemEater"

    .line 165
    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_8e

    .line 171
    .line 172
    iget-object p2, p0, Lcom/mediatek/duraspeed/manager/c;->c:Landroid/content/Context;

    .line 173
    .line 174
    invoke-static {p2}, Lcom/mediatek/duraspeed/utils/c;->c(Landroid/content/Context;)Landroid/app/ActivityManager;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-virtual {p2, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :cond_b5
    iget-object p2, p0, Lcom/mediatek/duraspeed/manager/c;->o:Lcom/mediatek/duraspeed/manager/b;

    .line 182
    .line 183
    invoke-virtual {p2}, Lcom/mediatek/duraspeed/manager/b;->a()V

    .line 184
    .line 185
    .line 186
    new-instance p2, Landroid/util/ArrayMap;

    .line 187
    .line 188
    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->o:Lcom/mediatek/duraspeed/manager/b;

    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/mediatek/duraspeed/manager/b;->b()Landroid/util/ArrayMap;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    check-cast v0, Lcom/mediatek/duraspeed/manager/a;

    .line 202
    .line 203
    if-nez v0, :cond_db

    .line 204
    .line 205
    new-instance v0, Lcom/mediatek/duraspeed/manager/a;

    .line 206
    .line 207
    invoke-direct {v0, p1}, Lcom/mediatek/duraspeed/manager/a;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object v1, p0, Lcom/mediatek/duraspeed/manager/c;->o:Lcom/mediatek/duraspeed/manager/b;

    .line 211
    .line 212
    invoke-virtual {v1}, Lcom/mediatek/duraspeed/manager/b;->b()Landroid/util/ArrayMap;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    :cond_db
    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    iget-object p1, p0, Lcom/mediatek/duraspeed/manager/c;->d:Lcom/mediatek/duraspeed/collector/c;

    .line 223
    .line 224
    invoke-virtual {p1, p2}, Lcom/mediatek/duraspeed/collector/c;->h(Landroid/util/ArrayMap;)V

    .line 225
    .line 226
    .line 227
    iget-object p1, p0, Lcom/mediatek/duraspeed/manager/c;->e:Lcom/mediatek/duraspeed/policy/a;

    .line 228
    .line 229
    invoke-interface {p1, v0}, Lcom/mediatek/duraspeed/policy/a;->a(Lcom/mediatek/duraspeed/manager/a;)V

    .line 230
    .line 231
    .line 232
    iget-object p0, p0, Lcom/mediatek/duraspeed/manager/c;->o:Lcom/mediatek/duraspeed/manager/b;

    .line 233
    .line 234
    invoke-virtual {p0}, Lcom/mediatek/duraspeed/manager/b;->d()V

    .line 235
    .line 236
    .line 237
    return-void
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
.end method

.method private f(Ljava/lang/String;Z)V
    .registers 6

    .line 0
    iget-object p2, p0, Lcom/mediatek/duraspeed/manager/c;->o:Lcom/mediatek/duraspeed/manager/b;

    .line 1
    .line 2
    invoke-virtual {p2}, Lcom/mediatek/duraspeed/manager/b;->a()V

    .line 3
    .line 4
    .line 5
    iget-object p2, p0, Lcom/mediatek/duraspeed/manager/c;->o:Lcom/mediatek/duraspeed/manager/b;

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/mediatek/duraspeed/manager/b;->b()Landroid/util/ArrayMap;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lcom/mediatek/duraspeed/manager/a;

    .line 16
    .line 17
    if-nez p2, :cond_1d

    .line 18
    .line 19
    new-instance p2, Lcom/mediatek/duraspeed/manager/a;

    .line 20
    .line 21
    invoke-direct {p2, p1}, Lcom/mediatek/duraspeed/manager/a;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->o:Lcom/mediatek/duraspeed/manager/b;

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/duraspeed/manager/b;->c(Ljava/lang/String;Lcom/mediatek/duraspeed/manager/a;)V

    .line 27
    .line 28
    .line 29
    :cond_1d
    iget v0, p2, Lcom/mediatek/duraspeed/manager/a;->b:I

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    add-int/2addr v0, v1

    .line 33
    iput v0, p2, Lcom/mediatek/duraspeed/manager/a;->b:I

    .line 34
    .line 35
    iget-object p2, p0, Lcom/mediatek/duraspeed/manager/c;->o:Lcom/mediatek/duraspeed/manager/b;

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/mediatek/duraspeed/manager/b;->d()V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lcom/mediatek/duraspeed/manager/c;->g:Lcom/mediatek/duraspeed/manager/g;

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Lcom/mediatek/duraspeed/manager/g;->n(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Lcom/mediatek/duraspeed/manager/c;->h:Lcom/mediatek/duraspeed/suppress/SuppressAction;

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Lcom/mediatek/duraspeed/suppress/SuppressAction;->removeFromSuppressRestartList(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcom/mediatek/duraspeed/manager/c;->c:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {p2}, Lb/b;->c(Landroid/content/Context;)Lb/b;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p2}, Lb/b;->f()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    :cond_40
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/4 v2, 0x0

    .line 69
    if-eqz v0, :cond_8c

    .line 70
    .line 71
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lb/a;

    .line 76
    .line 77
    invoke-virtual {v0}, Lb/a;->b()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_40

    .line 86
    .line 87
    iget-object p2, p0, Lcom/mediatek/duraspeed/manager/c;->c:Landroid/content/Context;

    .line 88
    .line 89
    invoke-static {p2}, Lb/b;->c(Landroid/content/Context;)Lb/b;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p2, p1}, Lb/b;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    if-eqz p2, :cond_6c

    .line 98
    .line 99
    const-string v0, "1"

    .line 100
    .line 101
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-eqz p2, :cond_6c

    .line 106
    .line 107
    goto :goto_6d

    .line 108
    :cond_6c
    move v1, v2

    .line 109
    :goto_6d
    if-eqz v1, :cond_78

    .line 110
    .line 111
    iget-object p2, p0, Lcom/mediatek/duraspeed/manager/c;->c:Landroid/content/Context;

    .line 112
    .line 113
    invoke-static {p2}, Lb/c;->b(Landroid/content/Context;)Lb/c;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p2, p1, v2}, Lb/c;->g(Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    :cond_78
    iget-object p2, p0, Lcom/mediatek/duraspeed/manager/c;->c:Landroid/content/Context;

    .line 121
    .line 122
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->p:Lcom/android/server/am/ActivityManagerService;

    .line 123
    .line 124
    invoke-static {p2, v0, p1}, Lb/c;->f(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object p2, p0, Lcom/mediatek/duraspeed/manager/c;->c:Landroid/content/Context;

    .line 128
    .line 129
    invoke-static {p2}, Lb/b;->c(Landroid/content/Context;)Lb/b;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    const-string v0, "unrestricted"

    .line 134
    .line 135
    const-string v1, "0"

    .line 136
    .line 137
    invoke-virtual {p2, p1, v0, v1}, Lb/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :cond_8c
    sget-object p2, Lcom/mediatek/duraspeed/utils/c;->L:Landroid/util/ArrayMap;

    .line 141
    .line 142
    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    if-eqz p2, :cond_9e

    .line 151
    .line 152
    iget-object p2, p0, Lcom/mediatek/duraspeed/manager/c;->f:Lcom/mediatek/duraspeed/monitor/c;

    .line 153
    .line 154
    const/4 v0, -0x1

    .line 155
    invoke-virtual {p2, v2, v0, v0}, Lcom/mediatek/duraspeed/monitor/c;->h(ZII)V

    .line 156
    .line 157
    .line 158
    :cond_9e
    iget-object p2, p0, Lcom/mediatek/duraspeed/manager/c;->c:Landroid/content/Context;

    .line 159
    .line 160
    invoke-static {p2}, Lcom/mediatek/duraspeed/utils/c;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    if-eqz p1, :cond_d1

    .line 165
    .line 166
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    if-nez p2, :cond_d1

    .line 171
    .line 172
    iget-object p2, p0, Lcom/mediatek/duraspeed/manager/c;->d:Lcom/mediatek/duraspeed/collector/c;

    .line 173
    .line 174
    invoke-virtual {p2, p1}, Lcom/mediatek/duraspeed/collector/c;->a(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-object p0, p0, Lcom/mediatek/duraspeed/manager/c;->g:Lcom/mediatek/duraspeed/manager/g;

    .line 178
    .line 179
    new-instance p2, Ljava/util/Date;

    .line 180
    .line 181
    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 182
    .line 183
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v1, "onAppSwitched, packageName:"

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string p1, "\n"

    .line 198
    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p0, p2, p1}, Lcom/mediatek/duraspeed/manager/g;->p(Ljava/util/Date;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    :cond_d1
    return-void
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

.method private g()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/mediatek/duraspeed/manager/c;->d:Lcom/mediatek/duraspeed/collector/c;

    .line 1
    .line 2
    invoke-virtual {p0}, Lcom/mediatek/duraspeed/collector/c;->b()V

    .line 3
    .line 4
    .line 5
    return-void
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
.end method

.method private h(Z)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->d:Lcom/mediatek/duraspeed/collector/c;

    .line 1
    .line 2
    invoke-virtual {v0, p1}, Lcom/mediatek/duraspeed/collector/c;->c(Z)V

    .line 3
    .line 4
    .line 5
    if-eqz p1, :cond_1c

    .line 6
    .line 7
    :try_start_7
    invoke-static {}, Lcom/mediatek/duraspeed/utils/c;->n()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/32 v2, 0x200000

    .line 12
    .line 13
    .line 14
    cmp-long p1, v0, v2

    .line 15
    .line 16
    if-lez p1, :cond_3e

    .line 17
    .line 18
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/16 v0, 0x80

    .line 23
    .line 24
    invoke-interface {p1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_3e

    .line 28
    :cond_1c
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v0, -0x1

    .line 33
    invoke-interface {p1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_24} :catch_25

    .line 34
    .line 35
    .line 36
    goto :goto_3e

    .line 37
    :catch_25
    move-exception p1

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "set process limit failed "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p0, p1}, Lcom/mediatek/duraspeed/utils/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_3e
    :goto_3e
    return-void
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

.method private i()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->g:Lcom/mediatek/duraspeed/manager/g;

    .line 1
    .line 2
    invoke-virtual {v0}, Lcom/mediatek/duraspeed/manager/g;->m()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->g:Lcom/mediatek/duraspeed/manager/g;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mediatek/duraspeed/manager/g;->l()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->g:Lcom/mediatek/duraspeed/manager/g;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mediatek/duraspeed/manager/g;->d()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->o:Lcom/mediatek/duraspeed/manager/b;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/mediatek/duraspeed/manager/c;->g:Lcom/mediatek/duraspeed/manager/g;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/mediatek/duraspeed/manager/g;->e()Landroid/util/ArrayMap;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/mediatek/duraspeed/manager/b;->e(Landroid/util/ArrayMap;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/mediatek/duraspeed/manager/c;->a()V

    .line 27
    .line 28
    .line 29
    return-void
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

.method private j(F)V
    .registers 3

    .line 0
    sget-object v0, Lcom/mediatek/duraspeed/monitor/HealthType;->b:Lcom/mediatek/duraspeed/monitor/HealthType;

    .line 1
    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/duraspeed/manager/c;->k(Lcom/mediatek/duraspeed/monitor/HealthType;F)V

    .line 3
    .line 4
    .line 5
    return-void
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
.end method

.method private l()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/mediatek/duraspeed/manager/c;->d:Lcom/mediatek/duraspeed/collector/c;

    .line 1
    .line 2
    invoke-virtual {p0}, Lcom/mediatek/duraspeed/collector/c;->d()V

    .line 3
    .line 4
    .line 5
    return-void
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
.end method

.method private m()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/mediatek/duraspeed/manager/c;->d:Lcom/mediatek/duraspeed/collector/c;

    .line 1
    .line 2
    invoke-virtual {p0}, Lcom/mediatek/duraspeed/collector/c;->e()V

    .line 3
    .line 4
    .line 5
    return-void
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
.end method

.method private n()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->g:Lcom/mediatek/duraspeed/manager/g;

    .line 1
    .line 2
    invoke-virtual {v0}, Lcom/mediatek/duraspeed/manager/g;->m()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->g:Lcom/mediatek/duraspeed/manager/g;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mediatek/duraspeed/manager/g;->l()V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/mediatek/duraspeed/manager/c;->d:Lcom/mediatek/duraspeed/collector/c;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mediatek/duraspeed/collector/c;->f()V

    .line 13
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

.method private o(Z)V
    .registers 4

    .line 0
    invoke-static {}, Lcom/mediatek/duraspeed/utils/c;->y()V

    .line 1
    .line 2
    .line 3
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->g:Lcom/mediatek/duraspeed/manager/g;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mediatek/duraspeed/manager/g;->c()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->o:Lcom/mediatek/duraspeed/manager/b;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mediatek/duraspeed/manager/c;->g:Lcom/mediatek/duraspeed/manager/g;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mediatek/duraspeed/manager/g;->e()Landroid/util/ArrayMap;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/mediatek/duraspeed/manager/b;->e(Landroid/util/ArrayMap;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->d:Lcom/mediatek/duraspeed/collector/c;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mediatek/duraspeed/collector/c;->g()V

    .line 22
    .line 23
    .line 24
    sget-boolean v0, Lcom/mediatek/duraspeed/utils/c;->B:Z

    .line 25
    .line 26
    if-eqz v0, :cond_5f

    .line 27
    .line 28
    invoke-static {}, Lcom/mediatek/duraspeed/utils/c;->t()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_5f

    .line 33
    .line 34
    sget-boolean v0, Lcom/mediatek/duraspeed/utils/c;->G:Z

    .line 35
    .line 36
    if-eqz v0, :cond_5f

    .line 37
    .line 38
    if-eqz p1, :cond_5f

    .line 39
    .line 40
    invoke-static {}, Lcom/mediatek/duraspeed/suppress/b;->c()Lcom/mediatek/duraspeed/suppress/b;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sget-object v0, Lcom/mediatek/duraspeed/suppress/b;->t:Ljava/util/List;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/mediatek/duraspeed/suppress/b;->a(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    :try_start_31
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/16 v0, 0x80

    .line 54
    .line 55
    invoke-interface {p1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3a} :catch_3b

    .line 56
    .line 57
    .line 58
    goto :goto_54

    .line 59
    :catch_3b
    move-exception p1

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v1, "set process limit failed "

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p0, p1}, Lcom/mediatek/duraspeed/utils/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_54
    const/4 p1, 0x0

    .line 85
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-wide/32 v0, 0xea60

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 93
    .line 94
    .line 95
    :cond_5f
    invoke-direct {p0}, Lcom/mediatek/duraspeed/manager/c;->a()V

    .line 96
    .line 97
    .line 98
    return-void
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

.method private p()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->g:Lcom/mediatek/duraspeed/manager/g;

    .line 1
    .line 2
    invoke-virtual {v0}, Lcom/mediatek/duraspeed/manager/g;->h()V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/mediatek/duraspeed/manager/c;->a()V

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
.end method

.method private q(Ljava/lang/String;IZ)V
    .registers 10

    .line 0
    if-eqz p3, :cond_34

    .line 1
    .line 2
    :try_start_2
    iget-object p3, p0, Lcom/mediatek/duraspeed/manager/c;->k:Ljava/lang/reflect/Method;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->p:Lcom/android/server/am/ActivityManagerService;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object p1, v1, v2

    .line 11
    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x1

    .line 17
    aput-object v3, v1, v4

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    const-string v5, "setProcessMemoryTrimLevel"

    .line 21
    .line 22
    aput-object v5, v1, v3

    .line 23
    .line 24
    invoke-static {p3, v0, v1}, Lcom/mediatek/duraspeed/utils/c;->q(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    check-cast p3, Lcom/android/server/am/ProcessRecord;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->l:Ljava/lang/reflect/Field;

    .line 31
    .line 32
    invoke-static {v0, p3}, Lcom/mediatek/duraspeed/utils/c;->g(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    check-cast p3, Lcom/android/server/am/ProcessStateRecord;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->m:Ljava/lang/reflect/Method;

    .line 39
    .line 40
    new-array v1, v4, [Ljava/lang/Object;

    .line 41
    .line 42
    const/4 v3, 0x7

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    aput-object v3, v1, v2

    .line 48
    .line 49
    invoke-static {v0, p3, v1}, Lcom/mediatek/duraspeed/utils/c;->q(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_34
    iget-object p3, p0, Lcom/mediatek/duraspeed/manager/c;->c:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {p3}, Lcom/mediatek/duraspeed/utils/c;->c(Landroid/content/Context;)Landroid/app/ActivityManager;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    const/16 v0, 0x50

    .line 59
    .line 60
    invoke-virtual {p3, p1, p2, v0}, Landroid/app/ActivityManager;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3f} :catch_40

    .line 61
    .line 62
    .line 63
    goto :goto_48

    .line 64
    :catch_40
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p0, p1}, Lcom/mediatek/duraspeed/utils/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_48
    return-void
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
.end method


# virtual methods
.method public A()V
    .registers 2

    .line 0
    const/16 v0, 0x3f0

    .line 1
    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7
    .line 8
    .line 9
    return-void
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

.method public B(Z)V
    .registers 3

    .line 0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1
    .line 2
    .line 3
    move-result-object p1

    .line 4
    const/16 v0, 0x3ea

    .line 5
    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    .line 12
    .line 13
    return-void
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
.end method

.method public C()V
    .registers 2

    .line 0
    const/16 v0, 0x3ee

    .line 1
    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 10
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

.method public E()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    .line 10
    .line 11
    return-void
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

.method public F(Ljava/lang/String;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->c:Landroid/content/Context;

    .line 1
    .line 2
    iget-object p0, p0, Lcom/mediatek/duraspeed/manager/c;->p:Lcom/android/server/am/ActivityManagerService;

    .line 3
    .line 4
    invoke-static {v0, p0, p1}, Lb/c;->f(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V

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

.method public I()V
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/Object;

    .line 1
    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    new-instance v1, Lcom/mediatek/duraspeed/manager/c$a;

    .line 6
    .line 7
    invoke-direct {v1, p0, v0}, Lcom/mediatek/duraspeed/manager/c$a;-><init>(Lcom/mediatek/duraspeed/manager/c;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_b
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_19

    .line 12
    .line 13
    .line 14
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_12
    .catchall {:try_start_e .. :try_end_11} :catchall_19

    .line 15
    .line 16
    .line 17
    goto :goto_17

    .line 18
    :catch_12
    :try_start_12
    const-string v1, "waitDone interrupted"

    .line 19
    .line 20
    invoke-static {p0, v1}, Lcom/mediatek/duraspeed/utils/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_17
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_19
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    .line 27
    throw p0
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

.method public b(Ljava/io/PrintWriter;)V
    .registers 6

    .line 0
    const-string v0, "Total launch count: "

    .line 1
    .line 2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->o:Lcom/mediatek/duraspeed/manager/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mediatek/duraspeed/manager/b;->a()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->o:Lcom/mediatek/duraspeed/manager/b;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mediatek/duraspeed/manager/b;->b()Landroid/util/ArrayMap;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_5a

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/mediatek/duraspeed/manager/a;

    .line 35
    .line 36
    iget v2, v1, Lcom/mediatek/duraspeed/manager/a;->b:I

    .line 37
    .line 38
    if-lez v2, :cond_18

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, " Package name: "

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v3, v1, Lcom/mediatek/duraspeed/manager/a;->a:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v3, ","

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v3, " launch count: "

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget v1, v1, Lcom/mediatek/duraspeed/manager/a;->b:I

    .line 78
    .line 79
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_18

    .line 90
    :cond_5a
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->o:Lcom/mediatek/duraspeed/manager/b;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/mediatek/duraspeed/manager/b;->d()V

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Lcom/mediatek/duraspeed/manager/c;->g:Lcom/mediatek/duraspeed/manager/g;

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Lcom/mediatek/duraspeed/manager/g;->a(Ljava/io/PrintWriter;)V

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

.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 0
    if-eqz p1, :cond_117

    .line 1
    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/mediatek/duraspeed/manager/c;->D(I)V

    .line 5
    .line 6
    .line 7
    iget v0, p1, Landroid/os/Message;->what:I

    .line 8
    .line 9
    const-string v1, "set process limit failed "

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v0, :cond_e8

    .line 14
    .line 15
    const-string v4, "release_target"

    .line 16
    .line 17
    const-string v5, "package_name"

    .line 18
    .line 19
    packed-switch v0, :pswitch_data_118

    .line 20
    .line 21
    .line 22
    goto/16 :goto_112

    .line 23
    .line 24
    :pswitch_18
    invoke-direct {p0}, Lcom/mediatek/duraspeed/manager/c;->G()V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_112

    .line 28
    .line 29
    :pswitch_1d
    :try_start_1d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v0, 0x6

    .line 34
    invoke-interface {p1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1, v2}, Landroid/app/IActivityManager;->setProcessLimit(I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2c} :catch_2e

    .line 42
    .line 43
    .line 44
    goto/16 :goto_112

    .line 45
    .line 46
    :catch_2e
    move-exception p1

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p0, p1}, Lcom/mediatek/duraspeed/utils/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_112

    .line 70
    .line 71
    :pswitch_47
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string v1, "app_died_reason"

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {p0, v0, p1}, Lcom/mediatek/duraspeed/manager/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_112

    .line 93
    .line 94
    :pswitch_5e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v0, Ljava/lang/String;

    .line 97
    .line 98
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 99
    .line 100
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 101
    .line 102
    const/4 v2, 0x1

    .line 103
    if-ne p1, v2, :cond_6a

    .line 104
    .line 105
    move v3, v2

    .line 106
    :cond_6a
    invoke-direct {p0, v0, v1, v3}, Lcom/mediatek/duraspeed/manager/c;->q(Ljava/lang/String;IZ)V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_112

    .line 110
    .line 111
    :pswitch_6f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    invoke-direct {p0, p1}, Lcom/mediatek/duraspeed/manager/c;->j(F)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_112

    .line 123
    .line 124
    :pswitch_7c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 125
    .line 126
    if-eqz p1, :cond_112

    .line 127
    .line 128
    iget-object p0, p0, Lcom/mediatek/duraspeed/manager/c;->o:Lcom/mediatek/duraspeed/manager/b;

    .line 129
    .line 130
    check-cast p1, Landroid/util/ArrayMap;

    .line 131
    .line 132
    invoke-virtual {p0, p1}, Lcom/mediatek/duraspeed/manager/b;->f(Landroid/util/ArrayMap;)V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_112

    .line 136
    .line 137
    :pswitch_89
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast p1, Ljava/lang/Boolean;

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    invoke-direct {p0, p1}, Lcom/mediatek/duraspeed/manager/c;->h(Z)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_112

    .line 149
    .line 150
    :pswitch_96
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {}, Lcom/mediatek/duraspeed/monitor/HealthType;->values()[Lcom/mediatek/duraspeed/monitor/HealthType;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const-string v1, "health_type"

    .line 159
    .line 160
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    aget-object v0, v0, v1

    .line 165
    .line 166
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/duraspeed/manager/c;->k(Lcom/mediatek/duraspeed/monitor/HealthType;F)V

    .line 171
    .line 172
    .line 173
    goto :goto_112

    .line 174
    :pswitch_ae
    invoke-direct {p0}, Lcom/mediatek/duraspeed/manager/c;->n()V

    .line 175
    .line 176
    .line 177
    goto :goto_112

    .line 178
    :pswitch_b2
    invoke-direct {p0}, Lcom/mediatek/duraspeed/manager/c;->i()V

    .line 179
    .line 180
    .line 181
    goto :goto_112

    .line 182
    :pswitch_b6
    invoke-direct {p0}, Lcom/mediatek/duraspeed/manager/c;->p()V

    .line 183
    .line 184
    .line 185
    goto :goto_112

    .line 186
    :pswitch_ba
    invoke-direct {p0}, Lcom/mediatek/duraspeed/manager/c;->l()V

    .line 187
    .line 188
    .line 189
    goto :goto_112

    .line 190
    :pswitch_be
    invoke-direct {p0}, Lcom/mediatek/duraspeed/manager/c;->m()V

    .line 191
    .line 192
    .line 193
    goto :goto_112

    .line 194
    :pswitch_c2
    invoke-direct {p0}, Lcom/mediatek/duraspeed/manager/c;->g()V

    .line 195
    .line 196
    .line 197
    goto :goto_112

    .line 198
    :pswitch_c6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast p1, Ljava/lang/Boolean;

    .line 201
    .line 202
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    invoke-direct {p0, p1}, Lcom/mediatek/duraspeed/manager/c;->o(Z)V

    .line 207
    .line 208
    .line 209
    goto :goto_112

    .line 210
    :pswitch_d2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    const-string v1, "duraspeed_enabled"

    .line 223
    .line 224
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    invoke-direct {p0, v0, p1}, Lcom/mediatek/duraspeed/manager/c;->f(Ljava/lang/String;Z)V

    .line 229
    .line 230
    .line 231
    goto :goto_112

    .line 232
    :cond_e8
    invoke-static {}, Lcom/mediatek/duraspeed/suppress/b;->c()Lcom/mediatek/duraspeed/suppress/b;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    sget-object v0, Lcom/mediatek/duraspeed/suppress/b;->t:Ljava/util/List;

    .line 237
    .line 238
    invoke-virtual {p1, v0}, Lcom/mediatek/duraspeed/suppress/b;->i(Ljava/util/List;)V

    .line 239
    .line 240
    .line 241
    sput-boolean v3, Lcom/mediatek/duraspeed/utils/c;->G:Z

    .line 242
    .line 243
    :try_start_f3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-interface {p1, v2}, Landroid/app/IActivityManager;->setProcessLimit(I)V
    :try_end_fa
    .catch Landroid/os/RemoteException; {:try_start_f3 .. :try_end_fa} :catch_fb

    .line 248
    .line 249
    .line 250
    goto :goto_112

    .line 251
    :catch_fb
    move-exception p1

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-static {p0, p1}, Lcom/mediatek/duraspeed/utils/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    :cond_112
    :goto_112
    const-wide/16 p0, 0x3e8

    .line 275
    .line 276
    invoke-static {p0, p1}, Landroid/os/Trace;->traceEnd(J)V

    .line 277
    .line 278
    .line 279
    :cond_117
    return-void

    .line 280
    :pswitch_data_118
    .packed-switch 0x3e9
        :pswitch_d2
        :pswitch_c6
        :pswitch_c2
        :pswitch_be
        :pswitch_ba
        :pswitch_b6
        :pswitch_b2
        :pswitch_ae
        :pswitch_96
        :pswitch_89
        :pswitch_7c
        :pswitch_6f
        :pswitch_5e
        :pswitch_47
        :pswitch_1d
        :pswitch_18
    .end packed-switch
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

.method public k(Lcom/mediatek/duraspeed/monitor/HealthType;F)V
    .registers 10

    .line 0
    new-instance v1, Landroid/util/ArrayMap;

    .line 1
    .line 2
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->o:Lcom/mediatek/duraspeed/manager/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mediatek/duraspeed/manager/b;->a()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->o:Lcom/mediatek/duraspeed/manager/b;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mediatek/duraspeed/manager/b;->b()Landroid/util/ArrayMap;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_37

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/mediatek/duraspeed/manager/a;

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    iput v3, v2, Lcom/mediatek/duraspeed/manager/a;->c:I

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    iput v3, v2, Lcom/mediatek/duraspeed/manager/a;->f:F

    .line 41
    .line 42
    iget-object v3, v2, Lcom/mediatek/duraspeed/manager/a;->h:Landroid/util/ArrayMap;

    .line 43
    .line 44
    monitor-enter v3

    .line 45
    :try_start_2d
    iget-object v2, v2, Lcom/mediatek/duraspeed/manager/a;->h:Landroid/util/ArrayMap;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 48
    .line 49
    .line 50
    monitor-exit v3

    .line 51
    goto :goto_18

    .line 52
    :catchall_34
    move-exception p0

    .line 53
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_34

    .line 54
    throw p0

    .line 55
    :cond_37
    sget-object v0, Lcom/mediatek/duraspeed/monitor/HealthType;->a:Lcom/mediatek/duraspeed/monitor/HealthType;

    .line 56
    .line 57
    const/high16 v2, -0x40800000    # -1.0f

    .line 58
    .line 59
    if-ne p1, v0, :cond_53

    .line 60
    .line 61
    cmpl-float v3, p2, v2

    .line 62
    .line 63
    if-nez v3, :cond_46

    .line 64
    .line 65
    invoke-direct {p0}, Lcom/mediatek/duraspeed/manager/c;->d()F

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    goto :goto_47

    .line 70
    :cond_46
    move v3, p2

    .line 71
    :goto_47
    cmpl-float v4, v3, v2

    .line 72
    .line 73
    if-nez v4, :cond_51

    .line 74
    .line 75
    iget-object p0, p0, Lcom/mediatek/duraspeed/manager/c;->o:Lcom/mediatek/duraspeed/manager/b;

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/mediatek/duraspeed/manager/b;->d()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_51
    move v6, v3

    .line 82
    goto :goto_54

    .line 83
    :cond_53
    move v6, p2

    .line 84
    :goto_54
    invoke-direct {p0, v1, p1}, Lcom/mediatek/duraspeed/manager/c;->H(Landroid/util/ArrayMap;Lcom/mediatek/duraspeed/monitor/HealthType;)V

    .line 85
    .line 86
    .line 87
    if-ne p1, v0, :cond_7f

    .line 88
    .line 89
    cmpl-float p2, p2, v2

    .line 90
    .line 91
    if-eqz p2, :cond_7f

    .line 92
    .line 93
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    :cond_65
    :goto_65
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_7f

    .line 106
    .line 107
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Ljava/util/Map$Entry;

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Lcom/mediatek/duraspeed/manager/a;

    .line 118
    .line 119
    iget-boolean v0, v0, Lcom/mediatek/duraspeed/manager/a;->e:Z

    .line 120
    .line 121
    if-nez v0, :cond_65

    .line 122
    .line 123
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 124
    .line 125
    .line 126
    goto :goto_65

    .line 127
    :cond_7f
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    if-lez p2, :cond_94

    .line 132
    .line 133
    iget-object p2, p0, Lcom/mediatek/duraspeed/manager/c;->d:Lcom/mediatek/duraspeed/collector/c;

    .line 134
    .line 135
    invoke-virtual {p2, v1}, Lcom/mediatek/duraspeed/collector/c;->h(Landroid/util/ArrayMap;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/c;->e:Lcom/mediatek/duraspeed/policy/a;

    .line 139
    .line 140
    iget-wide v2, p0, Lcom/mediatek/duraspeed/manager/c;->a:J

    .line 141
    .line 142
    iget v4, p0, Lcom/mediatek/duraspeed/manager/c;->b:I

    .line 143
    .line 144
    move-object v5, p1

    .line 145
    invoke-interface/range {v0 .. v6}, Lcom/mediatek/duraspeed/policy/a;->b(Landroid/util/ArrayMap;JILcom/mediatek/duraspeed/monitor/HealthType;F)V

    .line 146
    .line 147
    .line 148
    :cond_94
    iget-object p0, p0, Lcom/mediatek/duraspeed/manager/c;->o:Lcom/mediatek/duraspeed/manager/b;

    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/mediatek/duraspeed/manager/b;->d()V

    .line 151
    .line 152
    .line 153
    return-void
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

.method public r(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/mediatek/duraspeed/manager/c;->n:Lcom/mediatek/duraspeed/manager/h;

    .line 1
    .line 2
    invoke-virtual {p0}, Lcom/mediatek/duraspeed/manager/h;->d()V

    .line 3
    .line 4
    .line 5
    return-void
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
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 0
    if-eqz p2, :cond_2c

    .line 1
    .line 2
    if-nez p1, :cond_5

    .line 3
    .line 4
    goto :goto_2c

    .line 5
    :cond_5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_c

    .line 10
    .line 11
    return-void

    .line 12
    :cond_c
    const-string p1, "android"

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_15

    .line 19
    .line 20
    return-void

    .line 21
    :cond_15
    const/16 p1, 0x3f6

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "package_name"

    .line 32
    .line 33
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string p2, "app_died_reason"

    .line 37
    .line 38
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 42
    .line 43
    .line 44
    :cond_2c
    :goto_2c
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
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 11

    const/4 p4, 0x1

    if-eqz p6, :cond_17

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppSwitched, packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p4, v0}, Lcom/mediatek/duraspeed/utils/b;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    :cond_17
    const/16 v0, 0x3e9

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "package_name"

    .line 4
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "duraspeed_enabled"

    .line 5
    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7
    sget-boolean p6, Lcom/mediatek/duraspeed/utils/c;->B:Z

    if-eqz p6, :cond_60

    .line 8
    iget-object p6, p0, Lcom/mediatek/duraspeed/manager/c;->c:Landroid/content/Context;

    invoke-static {p6}, Lcom/mediatek/duraspeed/utils/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p6

    .line 9
    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x3e8

    const/16 v3, 0x3f5

    if-eqz v0, :cond_4d

    if-eqz p2, :cond_4d

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, v3, p5, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_60

    .line 12
    :cond_4d
    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    .line 13
    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_60

    .line 14
    invoke-virtual {p0, v3, p5, p4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_60
    :goto_60
    return-void
.end method

.method public u()V
    .registers 4

    .line 0
    const/16 v0, 0x3eb

    .line 1
    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7
    .line 8
    .line 9
    sget-boolean v0, Lcom/mediatek/duraspeed/utils/c;->B:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1f

    .line 12
    .line 13
    invoke-static {}, Lcom/mediatek/duraspeed/utils/c;->t()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1f

    .line 18
    .line 19
    const/16 v0, 0x3f7

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-wide/32 v1, 0x2bf20

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 29
    .line 30
    .line 31
    :cond_1f
    invoke-static {}, Lcom/mediatek/duraspeed/utils/c;->w()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_31

    .line 36
    .line 37
    invoke-static {}, Lcom/mediatek/duraspeed/utils/c;->r()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3d

    .line 42
    .line 43
    invoke-static {}, Lcom/mediatek/duraspeed/utils/c;->t()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3d

    .line 48
    .line 49
    :cond_31
    const/16 v0, 0x3f8

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-wide/32 v1, 0xdbba0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 59
    .line 60
    .line 61
    :cond_3d
    return-void
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

.method public v(Z)V
    .registers 3

    .line 0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1
    .line 2
    .line 3
    move-result-object p1

    .line 4
    const/16 v0, 0x3f2

    .line 5
    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    .line 12
    .line 13
    return-void
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
.end method

.method public w(F)V
    .registers 5

    .line 0
    const/16 v0, 0x3f4

    .line 1
    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "release_target"

    .line 11
    .line 12
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/mediatek/duraspeed/manager/c;->I()V

    .line 19
    .line 20
    .line 21
    return-void
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
.end method

.method public x(Lcom/mediatek/duraspeed/monitor/HealthType;F)V
    .registers 6

    .line 0
    const/16 v0, 0x3f1

    .line 1
    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const-string v2, "health_type"

    .line 15
    .line 16
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string p1, "release_target"

    .line 20
    .line 21
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 25
    .line 26
    .line 27
    return-void
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

.method public y()V
    .registers 5

    .line 0
    const/16 v0, 0x3ed

    .line 1
    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 10
    .line 11
    .line 12
    sget-boolean v0, Lcom/mediatek/duraspeed/utils/c;->t:Z

    .line 13
    .line 14
    if-eqz v0, :cond_30

    .line 15
    .line 16
    const/16 v0, 0x3f1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget-object v2, Lcom/mediatek/duraspeed/monitor/HealthType;->c:Lcom/mediatek/duraspeed/monitor/HealthType;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const-string v3, "health_type"

    .line 33
    .line 34
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    const-string v3, "release_target"

    .line 39
    .line 40
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 41
    .line 42
    .line 43
    sget-wide v1, Lcom/mediatek/duraspeed/utils/c;->u:J

    .line 44
    .line 45
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 46
    .line 47
    .line 48
    :cond_30
    return-void
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

.method public z()V
    .registers 2

    .line 0
    const/16 v0, 0x3ec

    .line 1
    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 10
    .line 11
    .line 12
    const/16 v0, 0x3f1

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    .line 16
    .line 17
    return-void
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
