.class public Lcom/mediatek/duraspeed/collector/h;
.super Lcom/mediatek/duraspeed/collector/b;
.source "ProtectedAdjAppCollector.java"


# static fields
.field private static final t:I = 0xc8

.field private static final u:Ljava/lang/String; = "com.mediatek.MemEater"

.field private static final v:Ljava/lang/String; = "cpu.cpueater"


# instance fields
.field private b:Ljava/lang/reflect/Field;

.field private c:Ljava/lang/reflect/Field;

.field private d:Ljava/lang/reflect/Field;

.field private e:Ljava/lang/reflect/Method;

.field private f:Ljava/lang/reflect/Field;

.field private g:Ljava/lang/reflect/Field;

.field private h:Ljava/lang/reflect/Field;

.field private i:Ljava/lang/reflect/Field;

.field private j:Ljava/lang/reflect/Field;

.field private k:Ljava/lang/reflect/Field;

.field private l:Ljava/lang/reflect/Field;

.field private m:Ljava/lang/reflect/Field;

.field private n:Ljava/lang/reflect/Field;

.field private o:Ljava/lang/reflect/Method;

.field private p:Lcom/android/server/am/ActivityManagerService;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Lcom/mediatek/duraspeed/collector/b;-><init>()V

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/mediatek/duraspeed/utils/c;->w()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput-boolean v0, p0, Lcom/mediatek/duraspeed/collector/h;->s:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/mediatek/duraspeed/collector/b;->a:Landroid/content/Context;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/mediatek/duraspeed/collector/h;->q:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/mediatek/duraspeed/collector/h;->r:Ljava/util/ArrayList;

    .line 24
    .line 25
    return-void
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

.method private j(Ljava/lang/String;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/mediatek/duraspeed/collector/h;->r:Ljava/util/ArrayList;

    .line 1
    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_d

    .line 7
    .line 8
    iget-object p0, p0, Lcom/mediatek/duraspeed/collector/h;->r:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    :cond_d
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

.method private k(Lcom/mediatek/duraspeed/manager/a;Ljava/util/ArrayList;Landroid/util/ArraySet;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/duraspeed/manager/a;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ContentProviderConnection;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_37

    const/4 v1, 0x1

    .line 1
    :try_start_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_8

    .line 2
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v2
    :try_end_1a
    .catch Ljava/util/ConcurrentModificationException; {:try_start_4 .. :try_end_1a} :catch_1e

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_37

    :catch_1e
    move-exception p2

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProcessConnections ConcurrentModificationException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p2}, Ljava/util/ConcurrentModificationException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p0, v1, p2}, Lcom/mediatek/duraspeed/utils/b;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 6
    :cond_37
    :goto_37
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget v2, p1, Lcom/mediatek/duraspeed/manager/a;->d:I

    if-eqz v2, :cond_4d

    if-lez v2, :cond_d6

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_d6

    if-eqz v0, :cond_d6

    .line 9
    :cond_4d
    iget-object v0, p1, Lcom/mediatek/duraspeed/manager/a;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/duraspeed/collector/h;->j(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz p3, :cond_9b

    .line 12
    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5e
    :goto_5e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 13
    iget-object v2, p0, Lcom/mediatek/duraspeed/collector/h;->j:Ljava/lang/reflect/Field;

    invoke-static {v2, v0}, Lcom/mediatek/duraspeed/utils/c;->g(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBindRecord;

    if-eqz v0, :cond_5e

    .line 14
    iget-object v2, p0, Lcom/mediatek/duraspeed/collector/h;->k:Ljava/lang/reflect/Field;

    invoke-static {v2, v0}, Lcom/mediatek/duraspeed/utils/c;->g(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_5e

    .line 15
    iget-object v2, p0, Lcom/mediatek/duraspeed/collector/h;->l:Ljava/lang/reflect/Field;

    invoke-static {v2, v0}, Lcom/mediatek/duraspeed/utils/c;->g(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 16
    iget-object v2, p1, Lcom/mediatek/duraspeed/manager/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 17
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 18
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-direct {p0, v0}, Lcom/mediatek/duraspeed/collector/h;->j(Ljava/lang/String;)V

    goto :goto_5e

    :cond_9b
    if-eqz p4, :cond_d6

    .line 20
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a1
    :goto_a1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/ContentProviderConnection;

    .line 21
    iget-object p4, p3, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz p4, :cond_a1

    invoke-virtual {p4}, Lcom/android/server/am/ContentProviderRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object p4

    if-eqz p4, :cond_a1

    .line 22
    iget-object p3, p3, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    invoke-virtual {p3}, Lcom/android/server/am/ContentProviderRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 23
    iget-object p4, p1, Lcom/mediatek/duraspeed/manager/a;->a:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_a1

    .line 24
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_a1

    .line 25
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-direct {p0, p3}, Lcom/mediatek/duraspeed/collector/h;->j(Ljava/lang/String;)V

    goto :goto_a1

    :cond_d6
    return-void
.end method


# virtual methods
.method public h()V
    .registers 7

    .line 0
    const-class v0, Lcom/android/server/SystemServiceManager;

    .line 1
    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string v1, "mServices"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/mediatek/duraspeed/utils/c;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-class v2, Lcom/android/server/am/ActivityManagerService;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "mProcessList"

    .line 19
    .line 20
    invoke-static {v2, v3}, Lcom/mediatek/duraspeed/utils/c;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, p0, Lcom/mediatek/duraspeed/collector/h;->b:Ljava/lang/reflect/Field;

    .line 25
    .line 26
    const-class v2, Lcom/android/server/am/ProcessList;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "mLruProcesses"

    .line 33
    .line 34
    invoke-static {v2, v3}, Lcom/mediatek/duraspeed/utils/c;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iput-object v2, p0, Lcom/mediatek/duraspeed/collector/h;->c:Ljava/lang/reflect/Field;

    .line 39
    .line 40
    const-class v2, Lcom/android/server/am/ProcessRecord;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "mState"

    .line 47
    .line 48
    invoke-static {v2, v3}, Lcom/mediatek/duraspeed/utils/c;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iput-object v2, p0, Lcom/mediatek/duraspeed/collector/h;->d:Ljava/lang/reflect/Field;

    .line 53
    .line 54
    const-class v2, Lcom/android/server/am/ProcessStateRecord;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const/4 v3, 0x0

    .line 61
    new-array v4, v3, [Ljava/lang/Class;

    .line 62
    .line 63
    const-string v5, "getSetAdj"

    .line 64
    .line 65
    invoke-static {v2, v5, v4}, Lcom/mediatek/duraspeed/utils/c;->B(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iput-object v2, p0, Lcom/mediatek/duraspeed/collector/h;->e:Ljava/lang/reflect/Method;

    .line 70
    .line 71
    const-class v2, Lcom/android/server/am/ProcessRecord;

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const-string v4, "mWindowProcessController"

    .line 78
    .line 79
    invoke-static {v2, v4}, Lcom/mediatek/duraspeed/utils/c;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iput-object v2, p0, Lcom/mediatek/duraspeed/collector/h;->f:Ljava/lang/reflect/Field;

    .line 84
    .line 85
    const-class v2, Lcom/android/server/wm/WindowProcessController;

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const-string v4, "mActivities"

    .line 92
    .line 93
    invoke-static {v2, v4}, Lcom/mediatek/duraspeed/utils/c;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iput-object v2, p0, Lcom/mediatek/duraspeed/collector/h;->g:Ljava/lang/reflect/Field;

    .line 98
    .line 99
    const-class v2, Lcom/android/server/am/ProcessRecord;

    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v2, v1}, Lcom/mediatek/duraspeed/utils/c;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iput-object v1, p0, Lcom/mediatek/duraspeed/collector/h;->h:Ljava/lang/reflect/Field;

    .line 110
    .line 111
    const-class v1, Lcom/android/server/am/ProcessServiceRecord;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const-string v2, "mConnections"

    .line 118
    .line 119
    invoke-static {v1, v2}, Lcom/mediatek/duraspeed/utils/c;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iput-object v1, p0, Lcom/mediatek/duraspeed/collector/h;->i:Ljava/lang/reflect/Field;

    .line 124
    .line 125
    const-class v1, Lcom/android/server/am/ConnectionRecord;

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v2, "binding"

    .line 132
    .line 133
    invoke-static {v1, v2}, Lcom/mediatek/duraspeed/utils/c;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    iput-object v1, p0, Lcom/mediatek/duraspeed/collector/h;->j:Ljava/lang/reflect/Field;

    .line 138
    .line 139
    const-class v1, Lcom/android/server/am/AppBindRecord;

    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const-string v2, "service"

    .line 146
    .line 147
    invoke-static {v1, v2}, Lcom/mediatek/duraspeed/utils/c;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iput-object v1, p0, Lcom/mediatek/duraspeed/collector/h;->k:Ljava/lang/reflect/Field;

    .line 152
    .line 153
    const-class v1, Lcom/android/server/am/ServiceRecord;

    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    const-string v2, "packageName"

    .line 160
    .line 161
    invoke-static {v1, v2}, Lcom/mediatek/duraspeed/utils/c;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    iput-object v1, p0, Lcom/mediatek/duraspeed/collector/h;->l:Ljava/lang/reflect/Field;

    .line 166
    .line 167
    const-class v1, Lcom/android/server/am/ProcessRecord;

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    const-string v2, "mProviders"

    .line 174
    .line 175
    invoke-static {v1, v2}, Lcom/mediatek/duraspeed/utils/c;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    iput-object v1, p0, Lcom/mediatek/duraspeed/collector/h;->m:Ljava/lang/reflect/Field;

    .line 180
    .line 181
    const-class v1, Lcom/android/server/am/ProcessProviderRecord;

    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    const-string v2, "mConProviders"

    .line 188
    .line 189
    invoke-static {v1, v2}, Lcom/mediatek/duraspeed/utils/c;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    iput-object v1, p0, Lcom/mediatek/duraspeed/collector/h;->n:Ljava/lang/reflect/Field;

    .line 194
    .line 195
    const-class v1, Lcom/android/server/am/ProcessRecord;

    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    new-array v2, v3, [Ljava/lang/Class;

    .line 202
    .line 203
    const-string v3, "getPackageList"

    .line 204
    .line 205
    invoke-static {v1, v3, v2}, Lcom/mediatek/duraspeed/utils/c;->B(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    iput-object v1, p0, Lcom/mediatek/duraspeed/collector/h;->o:Ljava/lang/reflect/Method;

    .line 210
    .line 211
    const-class v1, Lcom/android/server/SystemServiceManager;

    .line 212
    .line 213
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    check-cast v1, Lcom/android/server/SystemServiceManager;

    .line 218
    .line 219
    invoke-static {v0, v1}, Lcom/mediatek/duraspeed/utils/c;->g(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    check-cast v0, Ljava/util/List;

    .line 224
    .line 225
    if-eqz v0, :cond_ff

    .line 226
    .line 227
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    :cond_e7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_ff

    .line 236
    .line 237
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    check-cast v1, Lcom/android/server/SystemService;

    .line 242
    .line 243
    instance-of v2, v1, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 244
    .line 245
    if-eqz v2, :cond_e7

    .line 246
    .line 247
    check-cast v1, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 248
    .line 249
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    iput-object v0, p0, Lcom/mediatek/duraspeed/collector/h;->p:Lcom/android/server/am/ActivityManagerService;

    .line 254
    .line 255
    :cond_ff
    return-void
    .line 256
.end method

.method public i(Landroid/util/ArrayMap;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/duraspeed/manager/a;",
            ">;)V"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/mediatek/duraspeed/collector/h;->b:Ljava/lang/reflect/Field;

    .line 1
    .line 2
    iget-object v1, p0, Lcom/mediatek/duraspeed/collector/h;->p:Lcom/android/server/am/ActivityManagerService;

    .line 3
    .line 4
    invoke-static {v0, v1}, Lcom/mediatek/duraspeed/utils/c;->g(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/server/am/ProcessList;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mediatek/duraspeed/collector/h;->c:Ljava/lang/reflect/Field;

    .line 11
    .line 12
    invoke-static {v1, v0}, Lcom/mediatek/duraspeed/utils/c;->g(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2b

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/mediatek/duraspeed/manager/a;

    .line 37
    .line 38
    const/16 v3, 0x2710

    .line 39
    .line 40
    iput v3, v2, Lcom/mediatek/duraspeed/manager/a;->d:I

    .line 41
    .line 42
    goto :goto_1a

    .line 43
    :cond_2b
    iget-object v1, p0, Lcom/mediatek/duraspeed/collector/h;->p:Lcom/android/server/am/ActivityManagerService;

    .line 44
    .line 45
    monitor-enter v1

    .line 46
    :try_start_2e
    iget-object v2, p0, Lcom/mediatek/duraspeed/collector/h;->r:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :cond_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_c0

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 66
    .line 67
    iget-object v3, p0, Lcom/mediatek/duraspeed/collector/h;->d:Ljava/lang/reflect/Field;

    .line 68
    .line 69
    invoke-static {v3, v2}, Lcom/mediatek/duraspeed/utils/c;->g(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Lcom/android/server/am/ProcessStateRecord;

    .line 74
    .line 75
    iget-object v4, p0, Lcom/mediatek/duraspeed/collector/h;->e:Ljava/lang/reflect/Method;

    .line 76
    .line 77
    const/4 v5, 0x0

    .line 78
    new-array v6, v5, [Ljava/lang/Object;

    .line 79
    .line 80
    invoke-static {v4, v3, v6}, Lcom/mediatek/duraspeed/utils/c;->q(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Ljava/lang/Integer;

    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    iget-object v4, p0, Lcom/mediatek/duraspeed/collector/h;->f:Ljava/lang/reflect/Field;

    .line 91
    .line 92
    invoke-static {v4, v2}, Lcom/mediatek/duraspeed/utils/c;->g(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Lcom/android/server/wm/WindowProcessController;

    .line 97
    .line 98
    iget-object v6, p0, Lcom/mediatek/duraspeed/collector/h;->g:Ljava/lang/reflect/Field;

    .line 99
    .line 100
    invoke-static {v6, v4}, Lcom/mediatek/duraspeed/utils/c;->g(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Ljava/util/ArrayList;

    .line 105
    .line 106
    iget-object v6, p0, Lcom/mediatek/duraspeed/collector/h;->h:Ljava/lang/reflect/Field;

    .line 107
    .line 108
    invoke-static {v6, v2}, Lcom/mediatek/duraspeed/utils/c;->g(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    check-cast v6, Lcom/android/server/am/ProcessServiceRecord;

    .line 113
    .line 114
    iget-object v7, p0, Lcom/mediatek/duraspeed/collector/h;->i:Ljava/lang/reflect/Field;

    .line 115
    .line 116
    invoke-static {v7, v6}, Lcom/mediatek/duraspeed/utils/c;->g(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    check-cast v6, Landroid/util/ArraySet;

    .line 121
    .line 122
    iget-object v7, p0, Lcom/mediatek/duraspeed/collector/h;->m:Ljava/lang/reflect/Field;

    .line 123
    .line 124
    invoke-static {v7, v2}, Lcom/mediatek/duraspeed/utils/c;->g(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    check-cast v7, Lcom/android/server/am/ProcessProviderRecord;

    .line 129
    .line 130
    iget-object v8, p0, Lcom/mediatek/duraspeed/collector/h;->n:Ljava/lang/reflect/Field;

    .line 131
    .line 132
    invoke-static {v8, v7}, Lcom/mediatek/duraspeed/utils/c;->g(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    check-cast v7, Ljava/util/ArrayList;

    .line 137
    .line 138
    iget-object v8, p0, Lcom/mediatek/duraspeed/collector/h;->o:Ljava/lang/reflect/Method;

    .line 139
    .line 140
    new-array v9, v5, [Ljava/lang/Object;

    .line 141
    .line 142
    invoke-static {v8, v2, v9}, Lcom/mediatek/duraspeed/utils/c;->q(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    check-cast v8, [Ljava/lang/String;

    .line 147
    .line 148
    array-length v9, v8

    .line 149
    :goto_95
    if-ge v5, v9, :cond_37

    .line 150
    .line 151
    aget-object v10, v8, v5

    .line 152
    .line 153
    invoke-virtual {p1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v11

    .line 157
    check-cast v11, Lcom/mediatek/duraspeed/manager/a;

    .line 158
    .line 159
    if-eqz v11, :cond_bd

    .line 160
    .line 161
    if-eqz v10, :cond_ae

    .line 162
    .line 163
    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    if-eqz v10, :cond_ae

    .line 170
    .line 171
    iput v3, v11, Lcom/mediatek/duraspeed/manager/a;->d:I

    .line 172
    .line 173
    goto :goto_ba

    .line 174
    :cond_ae
    sget-boolean v10, Lcom/mediatek/duraspeed/utils/c;->B:Z

    .line 175
    .line 176
    if-nez v10, :cond_ba

    .line 177
    .line 178
    if-gtz v3, :cond_ba

    .line 179
    .line 180
    iget v10, v11, Lcom/mediatek/duraspeed/manager/a;->d:I

    .line 181
    .line 182
    if-ge v3, v10, :cond_ba

    .line 183
    .line 184
    iput v3, v11, Lcom/mediatek/duraspeed/manager/a;->d:I

    .line 185
    .line 186
    :cond_ba
    :goto_ba
    invoke-direct {p0, v11, v4, v6, v7}, Lcom/mediatek/duraspeed/collector/h;->k(Lcom/mediatek/duraspeed/manager/a;Ljava/util/ArrayList;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    .line 187
    .line 188
    .line 189
    :cond_bd
    add-int/lit8 v5, v5, 0x1

    .line 190
    .line 191
    goto :goto_95

    .line 192
    :cond_c0
    monitor-exit v1
    :try_end_c1
    .catchall {:try_start_2e .. :try_end_c1} :catchall_134

    .line 193
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    :cond_c9
    :goto_c9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_133

    .line 206
    .line 207
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    check-cast v1, Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    check-cast v2, Lcom/mediatek/duraspeed/manager/a;

    .line 218
    .line 219
    if-eqz v1, :cond_ee

    .line 220
    .line 221
    const-string v3, "com.mediatek.MemEater"

    .line 222
    .line 223
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    if-nez v3, :cond_c9

    .line 228
    .line 229
    const-string v3, "cpu.cpueater"

    .line 230
    .line 231
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-eqz v3, :cond_ee

    .line 236
    .line 237
    goto :goto_c9

    .line 238
    :cond_ee
    if-eqz v2, :cond_c9

    .line 239
    .line 240
    iget-boolean v3, p0, Lcom/mediatek/duraspeed/collector/h;->s:Z

    .line 241
    .line 242
    const/16 v4, 0xc8

    .line 243
    .line 244
    if-eqz v3, :cond_11e

    .line 245
    .line 246
    iget v3, v2, Lcom/mediatek/duraspeed/manager/a;->d:I

    .line 247
    .line 248
    if-gt v3, v4, :cond_109

    .line 249
    .line 250
    sget-object v3, Lcom/mediatek/duraspeed/utils/c;->p:Ljava/util/List;

    .line 251
    .line 252
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_109

    .line 257
    .line 258
    iget v1, v2, Lcom/mediatek/duraspeed/manager/a;->c:I

    .line 259
    .line 260
    or-int/lit16 v1, v1, 0x2000

    .line 261
    .line 262
    iput v1, v2, Lcom/mediatek/duraspeed/manager/a;->c:I

    .line 263
    .line 264
    goto :goto_c9

    .line 265
    :cond_109
    iget v1, v2, Lcom/mediatek/duraspeed/manager/a;->d:I

    .line 266
    .line 267
    if-lez v1, :cond_117

    .line 268
    .line 269
    iget-object v1, p0, Lcom/mediatek/duraspeed/collector/h;->r:Ljava/util/ArrayList;

    .line 270
    .line 271
    iget-object v3, v2, Lcom/mediatek/duraspeed/manager/a;->a:Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    if-eqz v1, :cond_c9

    .line 278
    .line 279
    :cond_117
    iget v1, v2, Lcom/mediatek/duraspeed/manager/a;->c:I

    .line 280
    .line 281
    or-int/lit16 v1, v1, 0x2000

    .line 282
    .line 283
    iput v1, v2, Lcom/mediatek/duraspeed/manager/a;->c:I

    .line 284
    .line 285
    goto :goto_c9

    .line 286
    :cond_11e
    iget v1, v2, Lcom/mediatek/duraspeed/manager/a;->d:I

    .line 287
    .line 288
    if-le v1, v4, :cond_12c

    .line 289
    .line 290
    iget-object v1, p0, Lcom/mediatek/duraspeed/collector/h;->r:Ljava/util/ArrayList;

    .line 291
    .line 292
    iget-object v3, v2, Lcom/mediatek/duraspeed/manager/a;->a:Ljava/lang/String;

    .line 293
    .line 294
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    if-eqz v1, :cond_c9

    .line 299
    .line 300
    :cond_12c
    iget v1, v2, Lcom/mediatek/duraspeed/manager/a;->c:I

    .line 301
    .line 302
    or-int/lit16 v1, v1, 0x2000

    .line 303
    .line 304
    iput v1, v2, Lcom/mediatek/duraspeed/manager/a;->c:I

    .line 305
    .line 306
    goto :goto_c9

    .line 307
    :cond_133
    return-void

    .line 308
    :catchall_134
    move-exception p0

    .line 309
    :try_start_135
    monitor-exit v1
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_134

    .line 310
    throw p0
.end method
