.class public Lcom/mediatek/duraspeed/policy/b;
.super Ljava/lang/Object;
.source "PolicyExecutor.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/mediatek/duraspeed/suppress/a;

.field private c:Ljava/lang/reflect/Field;

.field private d:Ljava/lang/reflect/Field;

.field private e:Ljava/lang/reflect/Field;

.field private f:Ljava/lang/reflect/Method;

.field private g:Ljava/lang/reflect/Field;

.field private h:Ljava/lang/reflect/Method;

.field private i:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, Lcom/mediatek/duraspeed/policy/b;->a:Landroid/content/Context;

    .line 4
    .line 5
    new-instance v0, Lcom/mediatek/duraspeed/suppress/a;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/mediatek/duraspeed/suppress/a;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/mediatek/duraspeed/policy/b;->b:Lcom/mediatek/duraspeed/suppress/a;

    .line 11
    .line 12
    const-class p1, Lcom/android/server/SystemServiceManager;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "mServices"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/mediatek/duraspeed/utils/c;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-class v0, Lcom/android/server/am/ActivityManagerService;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "mProcessList"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/mediatek/duraspeed/utils/c;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/mediatek/duraspeed/policy/b;->c:Ljava/lang/reflect/Field;

    .line 37
    .line 38
    const-class v0, Lcom/android/server/am/ProcessList;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "mLruProcesses"

    .line 45
    .line 46
    invoke-static {v0, v1}, Lcom/mediatek/duraspeed/utils/c;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/mediatek/duraspeed/policy/b;->d:Ljava/lang/reflect/Field;

    .line 51
    .line 52
    const-class v0, Lcom/android/server/am/ProcessRecord;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "mPid"

    .line 59
    .line 60
    invoke-static {v0, v1}, Lcom/mediatek/duraspeed/utils/c;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/mediatek/duraspeed/policy/b;->e:Ljava/lang/reflect/Field;

    .line 65
    .line 66
    const-class v0, Lcom/android/server/am/ProcessRecord;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const/4 v1, 0x0

    .line 73
    new-array v2, v1, [Ljava/lang/Class;

    .line 74
    .line 75
    const-string v3, "getPackageList"

    .line 76
    .line 77
    invoke-static {v0, v3, v2}, Lcom/mediatek/duraspeed/utils/c;->B(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/mediatek/duraspeed/policy/b;->f:Ljava/lang/reflect/Method;

    .line 82
    .line 83
    const-class v0, Lcom/android/server/am/ProcessRecord;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const-string v2, "mState"

    .line 90
    .line 91
    invoke-static {v0, v2}, Lcom/mediatek/duraspeed/utils/c;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iput-object v0, p0, Lcom/mediatek/duraspeed/policy/b;->g:Ljava/lang/reflect/Field;

    .line 96
    .line 97
    const-class v0, Lcom/android/server/am/ProcessStateRecord;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    new-array v1, v1, [Ljava/lang/Class;

    .line 104
    .line 105
    const-string v2, "getSetAdj"

    .line 106
    .line 107
    invoke-static {v0, v2, v1}, Lcom/mediatek/duraspeed/utils/c;->B(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iput-object v0, p0, Lcom/mediatek/duraspeed/policy/b;->h:Ljava/lang/reflect/Method;

    .line 112
    .line 113
    const-class v0, Lcom/android/server/SystemServiceManager;

    .line 114
    .line 115
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Lcom/android/server/SystemServiceManager;

    .line 120
    .line 121
    invoke-static {p1, v0}, Lcom/mediatek/duraspeed/utils/c;->g(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Ljava/util/List;

    .line 126
    .line 127
    if-eqz p1, :cond_9d

    .line 128
    .line 129
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    :cond_85
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_9d

    .line 138
    .line 139
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Lcom/android/server/SystemService;

    .line 144
    .line 145
    instance-of v1, v0, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 146
    .line 147
    if-eqz v1, :cond_85

    .line 148
    .line 149
    check-cast v0, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iput-object p1, p0, Lcom/mediatek/duraspeed/policy/b;->i:Lcom/android/server/am/ActivityManagerService;

    .line 156
    .line 157
    :cond_9d
    return-void
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
.method public a([[Ljava/lang/String;Landroid/util/ArrayMap;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/duraspeed/manager/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/mediatek/duraspeed/policy/b;->c:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/mediatek/duraspeed/policy/b;->i:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1, v2}, Lcom/mediatek/duraspeed/utils/c;->g(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessList;

    .line 3
    iget-object v2, p0, Lcom/mediatek/duraspeed/policy/b;->d:Ljava/lang/reflect/Field;

    .line 4
    invoke-static {v2, v1}, Lcom/mediatek/duraspeed/utils/c;->g(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v3, p0, Lcom/mediatek/duraspeed/policy/b;->i:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 7
    :try_start_1f
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 8
    iget-object v6, p0, Lcom/mediatek/duraspeed/policy/b;->e:Ljava/lang/reflect/Field;

    invoke-static {v6, v4}, Lcom/mediatek/duraspeed/utils/c;->g(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 9
    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v6, p0, Lcom/mediatek/duraspeed/policy/b;->g:Ljava/lang/reflect/Field;

    .line 11
    invoke-static {v6, v4}, Lcom/mediatek/duraspeed/utils/c;->g(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessStateRecord;

    .line 12
    iget-object v7, p0, Lcom/mediatek/duraspeed/policy/b;->h:Ljava/lang/reflect/Method;

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v7, v6, v8}, Lcom/mediatek/duraspeed/utils/c;->q(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 13
    iget-object v7, p0, Lcom/mediatek/duraspeed/policy/b;->f:Ljava/lang/reflect/Method;

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v7, v4, v8}, Lcom/mediatek/duraspeed/utils/c;->q(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 14
    array-length v7, v4

    :goto_66
    if-ge v5, v7, :cond_23

    aget-object v8, v4, v5

    .line 15
    invoke-virtual {p2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/duraspeed/manager/a;

    if-eqz v8, :cond_7a

    .line 16
    iget v9, v8, Lcom/mediatek/duraspeed/manager/a;->d:I

    .line 17
    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v8, Lcom/mediatek/duraspeed/manager/a;->d:I

    :cond_7a
    add-int/lit8 v5, v5, 0x1

    goto :goto_66

    .line 18
    :cond_7d
    monitor-exit v3
    :try_end_7e
    .catchall {:try_start_1f .. :try_end_7e} :catchall_146

    .line 19
    aget-object v1, p1, v5

    array-length v3, v1

    move v4, v5

    :goto_82
    const/4 v6, 0x1

    if-ge v4, v3, :cond_c6

    aget-object v7, v1, v4

    if-eqz v7, :cond_c3

    .line 20
    invoke-virtual {p2, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/duraspeed/manager/a;

    if-eqz v8, :cond_98

    .line 21
    iget v8, v8, Lcom/mediatek/duraspeed/manager/a;->d:I

    if-lez v8, :cond_98

    .line 22
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_98
    const-string v8, "0"

    .line 23
    iget-object v9, p0, Lcom/mediatek/duraspeed/policy/b;->a:Landroid/content/Context;

    invoke-static {v9}, Lb/c;->b(Landroid/content/Context;)Lb/c;

    move-result-object v9

    invoke-virtual {v9, v7}, Lb/c;->d(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b1

    .line 24
    iget-object v8, p0, Lcom/mediatek/duraspeed/policy/b;->a:Landroid/content/Context;

    invoke-static {v8}, Lb/c;->b(Landroid/content/Context;)Lb/c;

    move-result-object v8

    invoke-virtual {v8, v7, v6}, Lb/c;->g(Ljava/lang/String;I)V

    const-string v8, "1"

    .line 25
    :cond_b1
    iget-object v6, p0, Lcom/mediatek/duraspeed/policy/b;->a:Landroid/content/Context;

    iget-object v9, p0, Lcom/mediatek/duraspeed/policy/b;->i:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6, v9, v7}, Lb/c;->f(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V

    .line 26
    iget-object v6, p0, Lcom/mediatek/duraspeed/policy/b;->a:Landroid/content/Context;

    invoke-static {v6}, Lb/b;->c(Landroid/content/Context;)Lb/b;

    move-result-object v6

    const-string v9, "restricted"

    invoke-virtual {v6, v7, v9, v8}, Lb/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c3
    add-int/lit8 v4, v4, 0x1

    goto :goto_82

    .line 27
    :cond_c6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d1

    .line 28
    iget-object v1, p0, Lcom/mediatek/duraspeed/policy/b;->b:Lcom/mediatek/duraspeed/suppress/a;

    invoke-virtual {v1, v0}, Lcom/mediatek/duraspeed/suppress/a;->b(Ljava/util/List;)V

    .line 29
    :cond_d1
    aget-object p1, p1, v6

    array-length v0, p1

    move v1, v5

    :goto_d5
    if-ge v1, v0, :cond_145

    aget-object v3, p1, v1

    if-eqz v3, :cond_142

    .line 30
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/duraspeed/manager/a;

    .line 31
    iget-object v7, v4, Lcom/mediatek/duraspeed/manager/a;->h:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 32
    :try_start_e4
    iget-object v8, v4, Lcom/mediatek/duraspeed/manager/a;->h:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_ee
    :goto_ee
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_112

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 33
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-nez v9, :cond_104

    move v9, v5

    goto :goto_108

    .line 34
    :cond_104
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 35
    :goto_108
    iget v10, v4, Lcom/mediatek/duraspeed/manager/a;->d:I

    if-lez v10, :cond_ee

    if-lez v9, :cond_ee

    .line 36
    invoke-static {v9}, Landroid/os/Process;->killProcessQuiet(I)V

    goto :goto_ee

    .line 37
    :cond_112
    monitor-exit v7
    :try_end_113
    .catchall {:try_start_e4 .. :try_end_113} :catchall_13f

    const-string v4, "0"

    .line 38
    iget-object v7, p0, Lcom/mediatek/duraspeed/policy/b;->a:Landroid/content/Context;

    invoke-static {v7}, Lb/c;->b(Landroid/content/Context;)Lb/c;

    move-result-object v7

    invoke-virtual {v7, v3}, Lb/c;->d(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12c

    .line 39
    iget-object v4, p0, Lcom/mediatek/duraspeed/policy/b;->a:Landroid/content/Context;

    invoke-static {v4}, Lb/c;->b(Landroid/content/Context;)Lb/c;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Lb/c;->g(Ljava/lang/String;I)V

    const-string v4, "1"

    .line 40
    :cond_12c
    iget-object v7, p0, Lcom/mediatek/duraspeed/policy/b;->a:Landroid/content/Context;

    iget-object v8, p0, Lcom/mediatek/duraspeed/policy/b;->i:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v7, v8, v3}, Lb/c;->f(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V

    .line 41
    iget-object v7, p0, Lcom/mediatek/duraspeed/policy/b;->a:Landroid/content/Context;

    invoke-static {v7}, Lb/b;->c(Landroid/content/Context;)Lb/b;

    move-result-object v7

    const-string v8, "restricted"

    invoke-virtual {v7, v3, v8, v4}, Lb/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_142

    :catchall_13f
    move-exception p0

    .line 42
    :try_start_140
    monitor-exit v7
    :try_end_141
    .catchall {:try_start_140 .. :try_end_141} :catchall_13f

    throw p0

    :cond_142
    :goto_142
    add-int/lit8 v1, v1, 0x1

    goto :goto_d5

    :cond_145
    return-void

    :catchall_146
    move-exception p0

    .line 43
    :try_start_147
    monitor-exit v3
    :try_end_148
    .catchall {:try_start_147 .. :try_end_148} :catchall_146

    throw p0
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/mediatek/duraspeed/policy/b;->b:Lcom/mediatek/duraspeed/suppress/a;

    .line 1
    .line 2
    invoke-virtual {v0, p1}, Lcom/mediatek/duraspeed/suppress/a;->a(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/mediatek/duraspeed/policy/b;->a:Landroid/content/Context;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/mediatek/duraspeed/policy/b;->i:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    invoke-static {v0, p0, p1}, Lb/c;->f(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V

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

.method public getAms()Lcom/android/server/am/ActivityManagerService;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 0
    iget-object p0, p0, Lcom/mediatek/duraspeed/policy/b;->i:Lcom/android/server/am/ActivityManagerService;

    .line 1
    .line 2
    return-object p0
    .line 3
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
.end method

.method public setAms(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/mediatek/duraspeed/policy/b;->i:Lcom/android/server/am/ActivityManagerService;

    .line 1
    .line 2
    return-void
    .line 3
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
.end method
