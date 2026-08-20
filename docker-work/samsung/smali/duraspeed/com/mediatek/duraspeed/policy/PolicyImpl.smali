.class public Lcom/mediatek/duraspeed/policy/PolicyImpl;
.super Ljava/lang/Object;
.source "PolicyImpl.java"

# interfaces
.implements Lcom/mediatek/duraspeed/policy/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/duraspeed/policy/PolicyImpl$ProtectType;,
        Lcom/mediatek/duraspeed/policy/PolicyImpl$b;
    }
.end annotation


# static fields
.field private static final A:F = 60.0f

.field private static final B:F = 80.0f

.field private static final C:I = 0x1

.field private static final D:I = 0x2

.field private static final E:I = 0x3

.field private static final F:I = 0x4

.field private static final G:I = 0x5

.field private static final H:I = 0x6

.field public static final I:I = 0x0

.field public static final J:I = 0x1

.field public static final K:I = 0x2

.field private static L:Z = false

.field private static M:Z = false

.field private static final p:F = 0.2f

.field private static final q:Ljava/lang/String; = "1"

.field private static final r:Ljava/lang/String; = "0"

.field private static final s:I = 0x64

.field private static final t:I = 0x2

.field private static final u:I = 0x64

.field private static final v:I = 0xc8

.field private static final w:I = 0x12c

.field private static final x:I = 0x190

.field private static final y:F = 20.0f

.field private static final z:F = 40.0f


# instance fields
.field public a:Lcom/mediatek/duraspeed/policy/b;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/duraspeed/manager/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:F

.field private g:J

.field private h:D

.field private i:D

.field private j:F

.field private k:F

.field private l:I

.field private m:I

.field private mActionPackages:[[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private n:Lcom/mediatek/duraspeed/manager/g;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    invoke-static {}, Lcom/mediatek/duraspeed/utils/c;->s()Z

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    sput-boolean v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->L:Z

    .line 5
    .line 6
    invoke-static {}, Lcom/mediatek/duraspeed/utils/c;->w()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sput-boolean v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->M:Z

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

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    new-instance v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->c:Ljava/util/Map;

    .line 9
    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->d:Ljava/util/HashMap;

    .line 16
    .line 17
    new-instance v0, Ljava/util/Vector;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->e:Ljava/util/Vector;

    .line 23
    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    iput-wide v0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->h:D

    .line 27
    .line 28
    iput-wide v0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->i:D

    .line 29
    .line 30
    const/high16 v0, -0x40800000    # -1.0f

    .line 31
    .line 32
    iput v0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->j:F

    .line 33
    .line 34
    iput v0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->k:F

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->m:I

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->o:Z

    .line 40
    .line 41
    iput-object p1, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->b:Landroid/content/Context;

    .line 42
    .line 43
    new-instance v0, Lcom/mediatek/duraspeed/policy/b;

    .line 44
    .line 45
    invoke-direct {v0, p1}, Lcom/mediatek/duraspeed/policy/b;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->a:Lcom/mediatek/duraspeed/policy/b;

    .line 49
    .line 50
    invoke-static {}, Lcom/mediatek/duraspeed/manager/g;->b()Lcom/mediatek/duraspeed/manager/g;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->n:Lcom/mediatek/duraspeed/manager/g;

    .line 55
    .line 56
    invoke-direct {p0}, Lcom/mediatek/duraspeed/policy/PolicyImpl;->p()V

    .line 57
    .line 58
    .line 59
    return-void
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

.method private d(Landroid/util/ArrayMap;JI)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/duraspeed/manager/a;",
            ">;JI)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/duraspeed/manager/a;

    if-eqz v2, :cond_8

    .line 3
    iget v3, v2, Lcom/mediatek/duraspeed/manager/a;->d:I

    const/16 v4, 0x2710

    if-ne v3, v4, :cond_23

    goto :goto_8

    .line 4
    :cond_23
    iget-wide v3, v2, Lcom/mediatek/duraspeed/manager/a;->g:J

    long-to-float v3, v3

    long-to-float v4, p2

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    const/4 v5, 0x0

    if-eqz p4, :cond_35

    .line 5
    iget v6, v2, Lcom/mediatek/duraspeed/manager/a;->b:I

    int-to-float v6, v6

    int-to-float v7, p4

    div-float/2addr v6, v7

    mul-float/2addr v6, v4

    goto :goto_36

    :cond_35
    move v6, v5

    .line 6
    :goto_36
    iget-wide v7, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->i:D

    double-to-float v7, v7

    sub-float v3, v4, v3

    mul-float/2addr v7, v3

    .line 7
    iget-wide v8, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->h:D

    double-to-float v3, v8

    iget v8, v2, Lcom/mediatek/duraspeed/manager/a;->f:F

    sub-float v8, v4, v8

    mul-float/2addr v3, v8

    .line 8
    iget v8, v2, Lcom/mediatek/duraspeed/manager/a;->c:I

    invoke-direct {p0, v8}, Lcom/mediatek/duraspeed/policy/PolicyImpl;->j(I)Z

    move-result v8

    const/high16 v9, 0x43960000    # 300.0f

    if-eqz v8, :cond_51

    const/high16 v8, 0x43c80000    # 400.0f

    goto :goto_71

    .line 9
    :cond_51
    iget v8, v2, Lcom/mediatek/duraspeed/manager/a;->c:I

    invoke-direct {p0, v8}, Lcom/mediatek/duraspeed/policy/PolicyImpl;->l(I)Z

    move-result v8

    if-eqz v8, :cond_5b

    move v8, v9

    goto :goto_71

    .line 10
    :cond_5b
    iget v8, v2, Lcom/mediatek/duraspeed/manager/a;->c:I

    invoke-direct {p0, v8}, Lcom/mediatek/duraspeed/policy/PolicyImpl;->k(I)Z

    move-result v8

    if-eqz v8, :cond_66

    const/high16 v8, 0x43480000    # 200.0f

    goto :goto_71

    .line 11
    :cond_66
    iget v8, v2, Lcom/mediatek/duraspeed/manager/a;->c:I

    invoke-direct {p0, v8}, Lcom/mediatek/duraspeed/policy/PolicyImpl;->m(I)Z

    move-result v8

    if-eqz v8, :cond_70

    move v8, v4

    goto :goto_71

    :cond_70
    move v8, v5

    :goto_71
    cmpl-float v9, v8, v9

    if-ltz v9, :cond_76

    goto :goto_7a

    :cond_76
    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    :goto_7a
    add-float/2addr v7, v3

    add-float/2addr v7, v5

    add-float/2addr v7, v8

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v7, v3

    .line 12
    iget-wide v5, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->h:D

    const-wide/16 v8, 0x0

    cmpl-double v3, v5, v8

    if-lez v3, :cond_91

    iget v3, v2, Lcom/mediatek/duraspeed/manager/a;->f:F

    sget v5, Lcom/mediatek/duraspeed/utils/c;->A:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_91

    goto :goto_92

    :cond_91
    move v4, v7

    .line 13
    :goto_92
    iget-object v3, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->c:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v3, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_a2
    return-void
.end method

.method private e(Landroid/util/ArrayMap;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/duraspeed/manager/a;",
            ">;)Z"
        }
    .end annotation

    .line 0
    if-eqz p1, :cond_11

    .line 1
    .line 2
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    if-nez p0, :cond_11

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-nez p0, :cond_f

    .line 13
    .line 14
    goto :goto_11

    .line 15
    :cond_f
    const/4 p0, 0x1

    .line 16
    goto :goto_12

    .line 17
    :cond_11
    :goto_11
    const/4 p0, 0x0

    .line 18
    :goto_12
    return p0
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

.method private f([[Ljava/lang/String;Landroid/util/ArrayMap;)V
    .registers 12
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

    .line 0
    const/4 v0, 0x0

    .line 1
    move v1, v0

    .line 2
    :goto_2
    array-length v2, p1

    .line 3
    if-ge v1, v2, :cond_3d

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    if-eqz v2, :cond_3a

    .line 8
    .line 9
    move v3, v0

    .line 10
    :goto_a
    array-length v4, v2

    .line 11
    if-ge v3, v4, :cond_3a

    .line 12
    .line 13
    aget-object v4, p1, v1

    .line 14
    .line 15
    aget-object v4, v4, v3

    .line 16
    .line 17
    if-eqz v4, :cond_37

    .line 18
    .line 19
    if-eqz v1, :cond_19

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    if-eq v1, v5, :cond_19

    .line 23
    .line 24
    goto :goto_37

    .line 25
    :cond_19
    iget v5, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->f:F

    .line 26
    .line 27
    iget-object v6, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->d:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Lcom/mediatek/duraspeed/manager/a;

    .line 34
    .line 35
    iget v6, v6, Lcom/mediatek/duraspeed/manager/a;->f:F

    .line 36
    .line 37
    add-float/2addr v5, v6

    .line 38
    iput v5, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->f:F

    .line 39
    .line 40
    iget-wide v5, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->g:J

    .line 41
    .line 42
    iget-object v7, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->d:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/mediatek/duraspeed/manager/a;

    .line 49
    .line 50
    iget-wide v7, v4, Lcom/mediatek/duraspeed/manager/a;->g:J

    .line 51
    .line 52
    add-long/2addr v5, v7

    .line 53
    iput-wide v5, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->g:J

    .line 54
    .line 55
    :cond_37
    :goto_37
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_a

    .line 58
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3d
    iget-object p0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->a:Lcom/mediatek/duraspeed/policy/b;

    .line 62
    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/duraspeed/policy/b;->a([[Ljava/lang/String;Landroid/util/ArrayMap;)V

    .line 64
    .line 65
    .line 66
    return-void
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

.method private g(Landroid/util/ArrayMap;Lcom/mediatek/duraspeed/monitor/HealthType;F)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/duraspeed/manager/a;",
            ">;",
            "Lcom/mediatek/duraspeed/monitor/HealthType;",
            "F)V"
        }
    .end annotation

    if-eqz p1, :cond_155

    .line 1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_155

    .line 2
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_155

    .line 3
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System unhealthy type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    sget-object v2, Lcom/mediatek/duraspeed/monitor/HealthType;->c:Lcom/mediatek/duraspeed/monitor/HealthType;

    if-eq v2, p2, :cond_3b

    sget-boolean v2, Lcom/mediatek/duraspeed/policy/PolicyImpl;->L:Z

    if-nez v2, :cond_3b

    const-string v2, "Need release resource: "

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_3b
    sget-boolean v2, Lcom/mediatek/duraspeed/policy/PolicyImpl;->L:Z

    if-nez v2, :cond_7b

    .line 8
    sget-object v2, Lcom/mediatek/duraspeed/monitor/HealthType;->b:Lcom/mediatek/duraspeed/monitor/HealthType;

    if-ne v2, p2, :cond_5f

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr p3, v3

    invoke-static {p3}, Lcom/mediatek/duraspeed/utils/c;->k(F)F

    move-result p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, "MB\n"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7b

    .line 10
    :cond_5f
    sget-object v2, Lcom/mediatek/duraspeed/monitor/HealthType;->a:Lcom/mediatek/duraspeed/monitor/HealthType;

    if-ne v2, p2, :cond_7b

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lcom/mediatek/duraspeed/utils/c;->k(F)F

    move-result p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, "%\n"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_7b
    :goto_7b
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_83
    :goto_83
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_140

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/duraspeed/manager/a;

    if-eqz v4, :cond_83

    .line 14
    iget v5, v4, Lcom/mediatek/duraspeed/manager/a;->d:I

    const/16 v6, 0x2710

    if-ne v5, v6, :cond_9f

    goto :goto_83

    .line 15
    :cond_9f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", appType: 0x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v4, Lcom/mediatek/duraspeed/manager/a;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v5, "%04x"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", adj: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Lcom/mediatek/duraspeed/manager/a;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    sget-object v2, Lcom/mediatek/duraspeed/monitor/HealthType;->b:Lcom/mediatek/duraspeed/monitor/HealthType;

    if-ne v2, p2, :cond_118

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", memory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v4, Lcom/mediatek/duraspeed/manager/a;->g:J

    const-wide/16 v5, 0xa

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    long-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13b

    .line 20
    :cond_118
    sget-object v2, Lcom/mediatek/duraspeed/monitor/HealthType;->a:Lcom/mediatek/duraspeed/monitor/HealthType;

    if-ne v2, p2, :cond_13b

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", cpuLoading: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Lcom/mediatek/duraspeed/manager/a;->f:F

    invoke-static {v3}, Lcom/mediatek/duraspeed/utils/c;->k(F)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :cond_13b
    :goto_13b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_83

    .line 23
    :cond_140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v3, p1}, Lcom/mediatek/duraspeed/utils/b;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 24
    iget-object p0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->n:Lcom/mediatek/duraspeed/manager/g;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mediatek/duraspeed/manager/g;->p(Ljava/util/Date;Ljava/lang/String;)V

    :cond_155
    :goto_155
    return-void
.end method

.method private h([[Ljava/lang/String;Lcom/mediatek/duraspeed/monitor/HealthType;F)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_9

    return-void

    .line 1
    :cond_9
    array-length v3, v1

    if-eqz v3, :cond_133

    .line 2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    sget-object v5, Lcom/mediatek/duraspeed/monitor/HealthType;->b:Lcom/mediatek/duraspeed/monitor/HealthType;

    const-string v6, "%\n"

    const-string v7, "MB\n"

    const/high16 v8, 0x41200000    # 10.0f

    const-wide/16 v9, 0x400

    const-wide/16 v11, 0xa

    const/4 v13, 0x1

    if-eq v5, v2, :cond_4c

    sget-object v5, Lcom/mediatek/duraspeed/monitor/HealthType;->c:Lcom/mediatek/duraspeed/monitor/HealthType;

    if-ne v5, v2, :cond_25

    goto :goto_4c

    .line 4
    :cond_25
    sget-object v5, Lcom/mediatek/duraspeed/monitor/HealthType;->a:Lcom/mediatek/duraspeed/monitor/HealthType;

    if-ne v5, v2, :cond_69

    .line 5
    sget v5, Lcom/mediatek/duraspeed/utils/c;->H:I

    add-int/2addr v5, v13

    sput v5, Lcom/mediatek/duraspeed/utils/c;->H:I

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CPU total released about: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->f:F

    .line 7
    invoke-static {v14}, Lcom/mediatek/duraspeed/utils/c;->k(F)F

    move-result v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_69

    .line 9
    :cond_4c
    :goto_4c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Memory total released about: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->g:J

    mul-long/2addr v14, v11

    div-long/2addr v14, v9

    long-to-float v14, v14

    div-float/2addr v14, v8

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_69
    :goto_69
    const/4 v14, 0x0

    :goto_6a
    if-ge v14, v3, :cond_11e

    if-eqz v14, :cond_75

    if-eq v14, v13, :cond_75

    :cond_70
    move-wide/from16 v16, v9

    move v9, v8

    goto/16 :goto_117

    .line 10
    :cond_75
    aget-object v15, v1, v14

    if-eqz v15, :cond_70

    const/4 v15, 0x0

    .line 11
    :goto_7a
    aget-object v5, v1, v14

    array-length v8, v5

    if-ge v15, v8, :cond_113

    .line 12
    aget-object v5, v5, v15

    if-eqz v5, :cond_108

    .line 13
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  Release "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v14, v13, :cond_a1

    const-string v8, "kill, "

    goto :goto_a3

    :cond_a1
    const-string v8, "suppress, "

    .line 14
    :goto_a3
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    sget-object v8, Lcom/mediatek/duraspeed/monitor/HealthType;->b:Lcom/mediatek/duraspeed/monitor/HealthType;

    if-eq v8, v2, :cond_dd

    sget-object v8, Lcom/mediatek/duraspeed/monitor/HealthType;->c:Lcom/mediatek/duraspeed/monitor/HealthType;

    if-ne v8, v2, :cond_af

    goto :goto_dd

    .line 16
    :cond_af
    sget-object v8, Lcom/mediatek/duraspeed/monitor/HealthType;->a:Lcom/mediatek/duraspeed/monitor/HealthType;

    if-ne v8, v2, :cond_d8

    .line 17
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CPU: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->d:Ljava/util/HashMap;

    .line 18
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/duraspeed/manager/a;

    iget v5, v5, Lcom/mediatek/duraspeed/manager/a;->f:F

    .line 19
    invoke-static {v5}, Lcom/mediatek/duraspeed/utils/c;->k(F)F

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d8
    const/high16 v9, 0x41200000    # 10.0f

    const-wide/16 v16, 0x400

    goto :goto_10c

    .line 20
    :cond_dd
    :goto_dd
    iget-object v8, v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->d:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/duraspeed/manager/a;

    iget-wide v8, v5, Lcom/mediatek/duraspeed/manager/a;->g:J

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PSS: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-long/2addr v8, v11

    const-wide/16 v16, 0x400

    div-long v8, v8, v16

    long-to-float v8, v8

    const/high16 v9, 0x41200000    # 10.0f

    div-float/2addr v8, v9

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10c

    :cond_108
    move-wide/from16 v16, v9

    const/high16 v9, 0x41200000    # 10.0f

    :goto_10c
    add-int/lit8 v15, v15, 0x1

    move v8, v9

    move-wide/from16 v9, v16

    goto/16 :goto_7a

    :cond_113
    move-wide/from16 v16, v9

    const/high16 v9, 0x41200000    # 10.0f

    :goto_117
    add-int/lit8 v14, v14, 0x1

    move v8, v9

    move-wide/from16 v9, v16

    goto/16 :goto_6a

    .line 22
    :cond_11e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v13, v1}, Lcom/mediatek/duraspeed/utils/b;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 23
    iget-object v0, v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->n:Lcom/mediatek/duraspeed/manager/g;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/duraspeed/manager/g;->p(Ljava/util/Date;Ljava/lang/String;)V

    :cond_133
    return-void
.end method

.method private i(FLcom/mediatek/duraspeed/monitor/HealthType;Ljava/util/List;Landroid/util/ArrayMap;)[[Ljava/lang/String;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/mediatek/duraspeed/monitor/HealthType;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/duraspeed/manager/a;",
            ">;)[[",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    .line 1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    .line 2
    invoke-static {}, Lcom/mediatek/duraspeed/policy/ActionType;->values()[Lcom/mediatek/duraspeed/policy/ActionType;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v7, 0x1

    aput v3, v6, v7

    const/4 v8, 0x0

    aput v4, v6, v8

    const-class v4, Ljava/lang/String;

    invoke-static {v4, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/String;

    .line 3
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v9, v8

    :cond_29
    :goto_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/16 v11, 0x2001

    const/16 v12, 0xc8

    if-eqz v10, :cond_4c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/duraspeed/manager/a;

    if-eqz v10, :cond_29

    .line 5
    iget v13, v10, Lcom/mediatek/duraspeed/manager/a;->d:I

    if-ne v13, v12, :cond_29

    iget v10, v10, Lcom/mediatek/duraspeed/manager/a;->c:I

    if-ne v10, v11, :cond_29

    add-int/lit8 v9, v9, 0x1

    goto :goto_29

    .line 6
    :cond_4c
    iget v6, v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->l:I

    if-le v9, v6, :cond_52

    sub-int/2addr v9, v6

    goto :goto_53

    :cond_52
    move v9, v8

    :goto_53
    move/from16 v10, p1

    move v6, v8

    :goto_56
    if-ge v6, v3, :cond_16a

    move-object/from16 v13, p3

    .line 7
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-nez v14, :cond_6a

    goto/16 :goto_165

    .line 8
    :cond_6a
    iget-object v15, v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->c:Ljava/util/Map;

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    .line 9
    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Lcom/mediatek/duraspeed/manager/a;

    .line 10
    sget-object v12, Lcom/mediatek/duraspeed/monitor/HealthType;->c:Lcom/mediatek/duraspeed/monitor/HealthType;

    if-eq v12, v1, :cond_122

    sget-boolean v12, Lcom/mediatek/duraspeed/policy/PolicyImpl;->L:Z

    if-eqz v12, :cond_88

    goto/16 :goto_122

    :cond_88
    const/4 v12, 0x0

    cmpl-float v12, v10, v12

    if-lez v12, :cond_113

    .line 11
    iget v12, v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->j:F

    cmpg-float v12, v15, v12

    if-gez v12, :cond_98

    .line 12
    aget-object v11, v4, v8

    aput-object v14, v11, v6

    goto :goto_e2

    .line 13
    :cond_98
    iget v12, v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->k:F

    cmpg-float v12, v15, v12

    if-gez v12, :cond_a3

    .line 14
    aget-object v11, v4, v7

    aput-object v14, v11, v6

    goto :goto_e2

    :cond_a3
    if-gtz v9, :cond_aa

    .line 15
    aget-object v11, v4, v5

    aput-object v14, v11, v6

    goto :goto_e2

    :cond_aa
    if-eqz v11, :cond_de

    .line 16
    iget v12, v11, Lcom/mediatek/duraspeed/manager/a;->d:I

    const/16 v7, 0xc8

    if-ne v12, v7, :cond_de

    iget v7, v11, Lcom/mediatek/duraspeed/manager/a;->c:I

    const/16 v11, 0x2001

    if-ne v7, v11, :cond_de

    add-int/lit8 v9, v9, -0x1

    .line 17
    aget-object v7, v4, v8

    aput-object v14, v7, v6

    .line 18
    sget-object v7, Lcom/mediatek/duraspeed/monitor/HealthType;->b:Lcom/mediatek/duraspeed/monitor/HealthType;

    if-ne v7, v1, :cond_cf

    .line 19
    iget-object v7, v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->d:Ljava/util/HashMap;

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/duraspeed/manager/a;

    iget-wide v11, v7, Lcom/mediatek/duraspeed/manager/a;->g:J

    long-to-float v7, v11

    :goto_cd
    sub-float/2addr v10, v7

    goto :goto_e2

    .line 20
    :cond_cf
    sget-object v7, Lcom/mediatek/duraspeed/monitor/HealthType;->a:Lcom/mediatek/duraspeed/monitor/HealthType;

    if-ne v7, v1, :cond_e2

    .line 21
    iget-object v7, v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->d:Ljava/util/HashMap;

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/duraspeed/manager/a;

    iget v7, v7, Lcom/mediatek/duraspeed/manager/a;->f:F

    goto :goto_cd

    .line 22
    :cond_de
    aget-object v7, v4, v5

    aput-object v14, v7, v6

    .line 23
    :cond_e2
    :goto_e2
    iget v7, v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->j:F

    iget v11, v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->k:F

    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    cmpg-float v7, v15, v7

    if-gez v7, :cond_10e

    .line 24
    sget-object v7, Lcom/mediatek/duraspeed/monitor/HealthType;->b:Lcom/mediatek/duraspeed/monitor/HealthType;

    if-ne v7, v1, :cond_ff

    .line 25
    iget-object v7, v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->d:Ljava/util/HashMap;

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/duraspeed/manager/a;

    iget-wide v11, v7, Lcom/mediatek/duraspeed/manager/a;->g:J

    long-to-float v7, v11

    :goto_fd
    sub-float/2addr v10, v7

    goto :goto_10e

    .line 26
    :cond_ff
    sget-object v7, Lcom/mediatek/duraspeed/monitor/HealthType;->a:Lcom/mediatek/duraspeed/monitor/HealthType;

    if-ne v7, v1, :cond_10e

    .line 27
    iget-object v7, v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->d:Ljava/util/HashMap;

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/duraspeed/manager/a;

    iget v7, v7, Lcom/mediatek/duraspeed/manager/a;->f:F

    goto :goto_fd

    :cond_10e
    :goto_10e
    const/16 v11, 0x2001

    const/16 v12, 0xc8

    goto :goto_165

    .line 28
    :cond_113
    iget-object v7, v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->d:Ljava/util/HashMap;

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/duraspeed/manager/a;

    iget v7, v7, Lcom/mediatek/duraspeed/manager/a;->c:I

    .line 29
    aget-object v7, v4, v5

    aput-object v14, v7, v6

    goto :goto_10e

    .line 30
    :cond_122
    :goto_122
    iget v7, v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->j:F

    cmpg-float v7, v15, v7

    if-gez v7, :cond_132

    iget v7, v11, Lcom/mediatek/duraspeed/manager/a;->c:I

    and-int/2addr v7, v5

    if-nez v7, :cond_132

    .line 31
    aget-object v7, v4, v8

    aput-object v14, v7, v6

    goto :goto_10e

    .line 32
    :cond_132
    iget v7, v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->k:F

    cmpg-float v7, v15, v7

    if-gez v7, :cond_13e

    const/4 v7, 0x1

    .line 33
    aget-object v11, v4, v7

    aput-object v14, v11, v6

    goto :goto_10e

    :cond_13e
    if-gtz v9, :cond_145

    .line 34
    aget-object v7, v4, v5

    aput-object v14, v7, v6

    goto :goto_10e

    :cond_145
    if-eqz v11, :cond_15d

    .line 35
    iget v7, v11, Lcom/mediatek/duraspeed/manager/a;->d:I

    const/16 v12, 0xc8

    if-ne v7, v12, :cond_15a

    iget v7, v11, Lcom/mediatek/duraspeed/manager/a;->c:I

    const/16 v11, 0x2001

    if-ne v7, v11, :cond_161

    add-int/lit8 v9, v9, -0x1

    .line 36
    aget-object v7, v4, v8

    aput-object v14, v7, v6

    goto :goto_165

    :cond_15a
    const/16 v11, 0x2001

    goto :goto_161

    :cond_15d
    const/16 v11, 0x2001

    const/16 v12, 0xc8

    .line 37
    :cond_161
    :goto_161
    aget-object v7, v4, v5

    aput-object v14, v7, v6

    :goto_165
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    goto/16 :goto_56

    .line 38
    :cond_16a
    iget-boolean v3, v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->o:Z

    if-eqz v3, :cond_1d3

    .line 39
    sget-object v3, Lcom/mediatek/duraspeed/monitor/HealthType;->a:Lcom/mediatek/duraspeed/monitor/HealthType;

    if-ne v3, v1, :cond_187

    cmpl-float v1, v10, p1

    if-nez v1, :cond_187

    sget v1, Lcom/mediatek/duraspeed/utils/c;->x:I

    sget v3, Lcom/mediatek/duraspeed/utils/c;->z:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_187

    .line 40
    iget v1, v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->m:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->m:I

    goto :goto_189

    .line 41
    :cond_187
    iput v8, v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->m:I

    .line 42
    :goto_189
    iget v1, v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->m:I

    if-ne v1, v5, :cond_1d3

    .line 43
    iput v8, v0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->m:I

    .line 44
    aget-object v0, v4, v5

    move v1, v8

    .line 45
    :goto_192
    array-length v3, v0

    if-ge v1, v3, :cond_1d3

    .line 46
    aget-object v3, v0, v1

    .line 47
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/duraspeed/manager/a;

    if-eqz v6, :cond_1cf

    .line 48
    iget v6, v6, Lcom/mediatek/duraspeed/manager/a;->c:I

    and-int/lit16 v7, v6, 0x2000

    if-nez v7, :cond_1cf

    and-int/lit16 v7, v6, 0x100

    if-nez v7, :cond_1cf

    and-int/lit16 v7, v6, 0x1000

    if-nez v7, :cond_1cf

    and-int/lit16 v7, v6, 0x4000

    if-nez v7, :cond_1c4

    and-int/lit8 v7, v6, 0x2

    if-nez v7, :cond_1c4

    and-int/lit8 v7, v6, 0x4

    if-nez v7, :cond_1c4

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_1be

    goto :goto_1c4

    .line 49
    :cond_1be
    aget-object v6, v4, v8

    aput-object v3, v6, v1

    const/4 v6, 0x1

    goto :goto_1c9

    :cond_1c4
    :goto_1c4
    const/4 v6, 0x1

    .line 50
    aget-object v7, v4, v6

    aput-object v3, v7, v1

    .line 51
    :goto_1c9
    aget-object v3, v4, v5

    const/4 v7, 0x0

    aput-object v7, v3, v1

    goto :goto_1d0

    :cond_1cf
    const/4 v6, 0x1

    :goto_1d0
    add-int/lit8 v1, v1, 0x1

    goto :goto_192

    :cond_1d3
    return-object v4
.end method

.method private j(I)Z
    .registers 2

    and-int/lit16 p0, p1, 0x3110

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private k(I)Z
    .registers 2

    and-int/lit8 p0, p1, 0xc

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private l(I)Z
    .registers 2

    and-int/lit16 p0, p1, 0x4ee0

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private m(I)Z
    .registers 2

    and-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private n()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 0
    new-instance v0, Ljava/util/ArrayList;

    .line 1
    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->c:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    .line 13
    .line 14
    new-instance p0, Lcom/mediatek/duraspeed/policy/PolicyImpl$b;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0, v1}, Lcom/mediatek/duraspeed/policy/PolicyImpl$b;-><init>(Lcom/mediatek/duraspeed/policy/c;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 21
    .line 22
    .line 23
    return-object v0
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

.method private o()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->c:Ljava/util/Map;

    .line 1
    .line 2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->d:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->f:F

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->g:J

    .line 16
    .line 17
    iget-object p0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->e:Ljava/util/Vector;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    .line 20
    .line 21
    .line 22
    return-void
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

.method private p()V
    .registers 5

    .line 0
    invoke-static {}, Lcom/mediatek/duraspeed/utils/c;->n()J

    .line 1
    .line 2
    .line 3
    move-result-wide v0

    .line 4
    const-wide/32 v2, 0x100000

    .line 5
    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-gez v0, :cond_f

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->l:I

    .line 13
    .line 14
    goto :goto_30

    .line 15
    :cond_f
    invoke-static {}, Lcom/mediatek/duraspeed/utils/c;->n()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    const-wide/32 v2, 0x300000

    .line 20
    .line 21
    .line 22
    cmp-long v0, v0, v2

    .line 23
    .line 24
    if-gez v0, :cond_1e

    .line 25
    .line 26
    const/4 v0, 0x3

    .line 27
    iput v0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->l:I

    .line 28
    .line 29
    goto :goto_30

    .line 30
    :cond_1e
    invoke-static {}, Lcom/mediatek/duraspeed/utils/c;->n()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    const-wide/32 v2, 0x500000

    .line 35
    .line 36
    .line 37
    cmp-long v0, v0, v2

    .line 38
    .line 39
    if-gez v0, :cond_2d

    .line 40
    .line 41
    const/4 v0, 0x4

    .line 42
    iput v0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->l:I

    .line 43
    .line 44
    goto :goto_30

    .line 45
    :cond_2d
    const/4 v0, 0x6

    .line 46
    iput v0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->l:I

    .line 47
    .line 48
    :goto_30
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

.method private q()V
    .registers 6

    .line 0
    sget v0, Lcom/mediatek/duraspeed/utils/c;->D:I

    .line 1
    .line 2
    const/high16 v1, 0x42700000    # 60.0f

    .line 3
    .line 4
    const/high16 v2, 0x42a00000    # 80.0f

    .line 5
    .line 6
    const/high16 v3, 0x41a00000    # 20.0f

    .line 7
    .line 8
    const/high16 v4, 0x42200000    # 40.0f

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_2e

    .line 11
    .line 12
    .line 13
    goto :goto_2d

    .line 14
    :pswitch_e
    iput v3, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->j:F

    .line 15
    .line 16
    const/high16 v0, -0x40800000    # -1.0f

    .line 17
    .line 18
    iput v0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->k:F

    .line 19
    .line 20
    goto :goto_2d

    .line 21
    :pswitch_15
    iput v3, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->j:F

    .line 22
    .line 23
    iput v4, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->k:F

    .line 24
    .line 25
    goto :goto_2d

    .line 26
    :pswitch_1a
    iput v3, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->j:F

    .line 27
    .line 28
    iput v1, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->k:F

    .line 29
    .line 30
    goto :goto_2d

    .line 31
    :pswitch_1f
    iput v4, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->j:F

    .line 32
    .line 33
    iput v1, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->k:F

    .line 34
    .line 35
    goto :goto_2d

    .line 36
    :pswitch_24
    iput v4, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->j:F

    .line 37
    .line 38
    iput v2, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->k:F

    .line 39
    .line 40
    goto :goto_2d

    .line 41
    :pswitch_29
    iput v2, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->j:F

    .line 42
    .line 43
    iput v4, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->k:F

    .line 44
    .line 45
    :goto_2d
    return-void

    .line 46
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_29
        :pswitch_24
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
        :pswitch_e
    .end packed-switch
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

.method private r(Lcom/mediatek/duraspeed/monitor/HealthType;)V
    .registers 7

    .line 0
    sget-object v0, Lcom/mediatek/duraspeed/policy/PolicyImpl$a;->a:[I

    .line 1
    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    aget p1, v0, p1

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    const-wide v3, 0x3fe99999a0000000L    # 0.800000011920929

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    if-eq p1, v0, :cond_1e

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    if-eq p1, v0, :cond_19

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    if-eq p1, v0, :cond_19

    .line 23
    .line 24
    goto :goto_22

    .line 25
    :cond_19
    iput-wide v1, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->h:D

    .line 26
    .line 27
    iput-wide v3, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->i:D

    .line 28
    .line 29
    goto :goto_22

    .line 30
    :cond_1e
    iput-wide v3, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->h:D

    .line 31
    .line 32
    iput-wide v1, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->i:D

    .line 33
    .line 34
    :goto_22
    return-void
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


# virtual methods
.method public a(Lcom/mediatek/duraspeed/manager/a;)V
    .registers 6

    .line 0
    iget v0, p1, Lcom/mediatek/duraspeed/manager/a;->c:I

    .line 1
    .line 2
    and-int/lit16 v0, v0, 0x1016

    .line 3
    .line 4
    if-nez v0, :cond_44

    .line 5
    .line 6
    iget-object v0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->a:Lcom/mediatek/duraspeed/policy/b;

    .line 7
    .line 8
    iget-object v1, p1, Lcom/mediatek/duraspeed/manager/a;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/mediatek/duraspeed/policy/b;->b(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "suppress "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v3, p1, Lcom/mediatek/duraspeed/manager/a;->a:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {p0, v0, v1}, Lcom/mediatek/duraspeed/utils/b;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->n:Lcom/mediatek/duraspeed/manager/g;

    .line 37
    .line 38
    new-instance v0, Ljava/util/Date;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object p1, p1, Lcom/mediatek/duraspeed/manager/a;->a:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, "\n"

    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/duraspeed/manager/g;->p(Ljava/util/Date;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_44
    return-void
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

.method public b(Landroid/util/ArrayMap;JILcom/mediatek/duraspeed/monitor/HealthType;F)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/duraspeed/manager/a;",
            ">;JI",
            "Lcom/mediatek/duraspeed/monitor/HealthType;",
            "F)V"
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Lcom/mediatek/duraspeed/policy/PolicyImpl;->o()V

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/mediatek/duraspeed/policy/PolicyImpl;->e(Landroid/util/ArrayMap;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_a

    .line 8
    .line 9
    return-void

    .line 10
    :cond_a
    invoke-direct {p0, p1, p5, p6}, Lcom/mediatek/duraspeed/policy/PolicyImpl;->g(Landroid/util/ArrayMap;Lcom/mediatek/duraspeed/monitor/HealthType;F)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p5}, Lcom/mediatek/duraspeed/policy/PolicyImpl;->r(Lcom/mediatek/duraspeed/monitor/HealthType;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/duraspeed/policy/PolicyImpl;->d(Landroid/util/ArrayMap;JI)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/mediatek/duraspeed/policy/PolicyImpl;->n()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-direct {p0}, Lcom/mediatek/duraspeed/policy/PolicyImpl;->q()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p6, p5, p2, p1}, Lcom/mediatek/duraspeed/policy/PolicyImpl;->i(FLcom/mediatek/duraspeed/monitor/HealthType;Ljava/util/List;Landroid/util/ArrayMap;)[[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iput-object p2, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->mActionPackages:[[Ljava/lang/String;

    .line 31
    .line 32
    invoke-direct {p0, p2, p1}, Lcom/mediatek/duraspeed/policy/PolicyImpl;->f([[Ljava/lang/String;Landroid/util/ArrayMap;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->mActionPackages:[[Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {p0, p1, p5, p6}, Lcom/mediatek/duraspeed/policy/PolicyImpl;->h([[Ljava/lang/String;Lcom/mediatek/duraspeed/monitor/HealthType;F)V

    .line 38
    .line 39
    .line 40
    return-void
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
.end method

.method public c()V
    .registers 2

    .line 0
    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->o:Z

    .line 2
    .line 3
    return-void
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

.method public getActionsApps()[[Ljava/lang/String;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 0
    iget-object p0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->mActionPackages:[[Ljava/lang/String;

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

.method public getAppScores()Ljava/util/Map;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->c:Ljava/util/Map;

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

.method public getCpuReleased()F
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 0
    iget p0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->f:F

    .line 1
    .line 2
    return p0
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

.method public getMemoryReleased()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 0
    iget-wide v0, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->g:J

    .line 1
    .line 2
    return-wide v0
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

.method public getProtectTypes()Ljava/util/Map;
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mediatek/duraspeed/policy/PolicyImpl$ProtectType;",
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
    iget-object v1, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->c:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_36

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->c:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ljava/lang/Float;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/high16 v4, 0x41a00000    # 20.0f

    .line 40
    .line 41
    cmpg-float v3, v3, v4

    .line 42
    .line 43
    if-gez v3, :cond_30

    .line 44
    .line 45
    sget-object v3, Lcom/mediatek/duraspeed/policy/PolicyImpl$ProtectType;->b:Lcom/mediatek/duraspeed/policy/PolicyImpl$ProtectType;

    .line 46
    .line 47
    goto :goto_32

    .line 48
    :cond_30
    sget-object v3, Lcom/mediatek/duraspeed/policy/PolicyImpl$ProtectType;->a:Lcom/mediatek/duraspeed/policy/PolicyImpl$ProtectType;

    .line 49
    .line 50
    :goto_32
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    goto :goto_f

    .line 54
    :cond_36
    return-object v0
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

.method public setPolicyExcutor(Lcom/mediatek/duraspeed/policy/b;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/mediatek/duraspeed/policy/PolicyImpl;->a:Lcom/mediatek/duraspeed/policy/b;

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
