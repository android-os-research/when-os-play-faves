.class public Lcom/mediatek/duraspeed/manager/g;
.super Ljava/lang/Object;
.source "DuraSpeedStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/duraspeed/manager/g$b;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "/data/duraspeed/launchcount/"

.field private static final g:Ljava/lang/String; = "utf-8"

.field private static final h:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#indent-output"

.field private static final i:Ljava/lang/String; = "launchcount"

.field private static final j:Ljava/lang/String; = "package"

.field private static final k:Ljava/lang/String; = "version"

.field private static final l:Ljava/lang/String; = "package"

.field private static final m:Ljava/lang/String; = "launchcount"

.field private static final n:I = 0x1

.field private static final o:Ljava/lang/String; = ".bak"

.field private static final p:J = 0x7d0L

.field public static final q:J = 0x5265c00L

.field private static final r:I = 0x2

.field private static s:J

.field private static t:J

.field private static u:Lcom/mediatek/duraspeed/manager/g;


# instance fields
.field private a:Lcom/mediatek/duraspeed/manager/g$b;

.field private b:Ljava/io/File;

.field private c:Landroid/app/usage/TimeSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/usage/TimeSparseArray<",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/io/File;

.field private e:Ljava/text/SimpleDateFormat;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 4
    .line 5
    const-string v1, "yyyy-MM-dd HH:mm:ss:SSS"

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/mediatek/duraspeed/manager/g;->e:Ljava/text/SimpleDateFormat;

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    sput-wide v0, Lcom/mediatek/duraspeed/manager/g;->s:J

    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    sput-wide v0, Lcom/mediatek/duraspeed/manager/g;->t:J

    .line 23
    .line 24
    new-instance v0, Landroid/app/usage/TimeSparseArray;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/app/usage/TimeSparseArray;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/mediatek/duraspeed/manager/g;->c:Landroid/app/usage/TimeSparseArray;

    .line 30
    .line 31
    new-instance v0, Ljava/io/File;

    .line 32
    .line 33
    const-string v1, "/data/duraspeed/launchcount/"

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/mediatek/duraspeed/manager/g;->b:Ljava/io/File;

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

.method public static b()Lcom/mediatek/duraspeed/manager/g;
    .registers 1

    .line 0
    sget-object v0, Lcom/mediatek/duraspeed/manager/g;->u:Lcom/mediatek/duraspeed/manager/g;

    .line 1
    .line 2
    if-nez v0, :cond_b

    .line 3
    .line 4
    new-instance v0, Lcom/mediatek/duraspeed/manager/g;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/mediatek/duraspeed/manager/g;-><init>()V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/mediatek/duraspeed/manager/g;->u:Lcom/mediatek/duraspeed/manager/g;

    .line 10
    .line 11
    :cond_b
    sget-object v0, Lcom/mediatek/duraspeed/manager/g;->u:Lcom/mediatek/duraspeed/manager/g;

    .line 12
    .line 13
    return-object v0
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

.method private g()V
    .registers 9

    .line 0
    new-instance v0, Lcom/mediatek/duraspeed/manager/g$a;

    .line 1
    .line 2
    invoke-direct {v0, p0}, Lcom/mediatek/duraspeed/manager/g$a;-><init>(Lcom/mediatek/duraspeed/manager/g;)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/mediatek/duraspeed/manager/g;->c:Landroid/app/usage/TimeSparseArray;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_8
    iget-object v2, p0, Lcom/mediatek/duraspeed/manager/g;->c:Landroid/app/usage/TimeSparseArray;

    .line 9
    .line 10
    if-nez v2, :cond_14

    .line 11
    .line 12
    new-instance v2, Landroid/app/usage/TimeSparseArray;

    .line 13
    .line 14
    invoke-direct {v2}, Landroid/app/usage/TimeSparseArray;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lcom/mediatek/duraspeed/manager/g;->c:Landroid/app/usage/TimeSparseArray;

    .line 18
    .line 19
    goto :goto_17

    .line 20
    :cond_14
    invoke-virtual {v2}, Landroid/app/usage/TimeSparseArray;->clear()V

    .line 21
    .line 22
    .line 23
    :goto_17
    iget-object v2, p0, Lcom/mediatek/duraspeed/manager/g;->b:Ljava/io/File;

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_36

    .line 30
    .line 31
    array-length v2, v0

    .line 32
    const/4 v3, 0x0

    .line 33
    :goto_21
    if-ge v3, v2, :cond_36

    .line 34
    .line 35
    aget-object v4, v0, v3

    .line 36
    .line 37
    new-instance v5, Landroid/util/AtomicFile;

    .line 38
    .line 39
    invoke-direct {v5, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 40
    .line 41
    .line 42
    iget-object v4, p0, Lcom/mediatek/duraspeed/manager/g;->c:Landroid/app/usage/TimeSparseArray;

    .line 43
    .line 44
    invoke-static {v5}, Lcom/mediatek/duraspeed/utils/c;->d(Landroid/util/AtomicFile;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v6

    .line 48
    invoke-virtual {v4, v6, v7, v5}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_21

    .line 54
    :cond_36
    monitor-exit v1

    .line 55
    return-void

    .line 56
    :catchall_38
    move-exception p0

    .line 57
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_38

    .line 58
    throw p0
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

.method private i(Landroid/util/AtomicFile;Lcom/mediatek/duraspeed/manager/g$b;)V
    .registers 10

    .line 0
    const-string v0, "package"

    .line 1
    .line 2
    const-string v1, "launchcount"

    .line 3
    .line 4
    :try_start_4
    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-static {p1}, Lcom/mediatek/duraspeed/utils/c;->d(Landroid/util/AtomicFile;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    iput-wide v3, p2, Lcom/mediatek/duraspeed/manager/g$b;->b:J

    .line 13
    .line 14
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p2}, Lcom/mediatek/duraspeed/manager/g$b;->c()Landroid/util/ArrayMap;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const-string v3, "utf-8"

    .line 23
    .line 24
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const-string v4, "version"

    .line 32
    .line 33
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/4 v4, 0x1

    .line 42
    if-ne v3, v4, :cond_5d

    .line 43
    .line 44
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    :cond_30
    :goto_30
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eq v5, v4, :cond_5d

    .line 53
    .line 54
    const/4 v6, 0x3

    .line 55
    if-ne v5, v6, :cond_3f

    .line 56
    .line 57
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-le v6, v3, :cond_5d

    .line 62
    .line 63
    :cond_3f
    const/4 v6, 0x2

    .line 64
    if-eq v5, v6, :cond_43

    .line 65
    .line 66
    goto :goto_30

    .line 67
    :cond_43
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_30

    .line 76
    .line 77
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {p2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    goto :goto_30

    .line 93
    :cond_5d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_60} :catch_7c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_60} :catch_73
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_60} :catch_6a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_60} :catch_61

    .line 94
    .line 95
    .line 96
    goto :goto_84

    .line 97
    :catch_61
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p0, p1}, Lcom/mediatek/duraspeed/utils/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_84

    .line 106
    :catch_6a
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p0, p1}, Lcom/mediatek/duraspeed/utils/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_84

    .line 115
    :catch_73
    move-exception p1

    .line 116
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {p0, p1}, Lcom/mediatek/duraspeed/utils/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_84

    .line 124
    :catch_7c
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p0, p1}, Lcom/mediatek/duraspeed/utils/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :goto_84
    return-void
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

.method private o(Landroid/util/AtomicFile;Lcom/mediatek/duraspeed/manager/g$b;)V
    .registers 10

    .line 0
    const-string v0, "utf-8"

    .line 1
    .line 2
    const-string v1, "package"

    .line 3
    .line 4
    const-string v2, "launchcount"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_7
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 8
    .line 9
    .line 10
    move-result-object v4
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_6d
    .catchall {:try_start_7 .. :try_end_b} :catchall_6b

    .line 11
    :try_start_b
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    .line 12
    .line 13
    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v5, v4, v0}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v5, v0, v6}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    invoke-virtual {v5, v0, v6}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, v3, v2}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 31
    .line 32
    .line 33
    const-string v0, "version"

    .line 34
    .line 35
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-virtual {v5, v3, v0, v6}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/mediatek/duraspeed/manager/g$b;->c()Landroid/util/ArrayMap;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-eqz p2, :cond_5b

    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_5b

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    check-cast v6, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v5, v3, v1}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    .line 70
    .line 71
    invoke-static {v5, v1, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    check-cast v6, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    invoke-static {v5, v2, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v3, v1}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    .line 89
    .line 90
    goto :goto_38

    .line 91
    :cond_5b
    invoke-virtual {v5, v3, v2}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_64} :catch_68
    .catchall {:try_start_b .. :try_end_64} :catchall_65

    .line 98
    .line 99
    .line 100
    goto :goto_75

    .line 101
    :catchall_65
    move-exception p0

    .line 102
    move-object v3, v4

    .line 103
    goto :goto_79

    .line 104
    :catch_68
    move-exception p2

    .line 105
    move-object v3, v4

    .line 106
    goto :goto_6e

    .line 107
    :catchall_6b
    move-exception p0

    .line 108
    goto :goto_79

    .line 109
    :catch_6d
    move-exception p2

    .line 110
    :goto_6e
    :try_start_6e
    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-static {p0, p2}, Lcom/mediatek/duraspeed/utils/b;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_6b

    .line 115
    .line 116
    .line 117
    :goto_75
    invoke-virtual {p1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :goto_79
    invoke-virtual {p1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 122
    .line 123
    .line 124
    throw p0
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
.method public a(Ljava/io/PrintWriter;)V
    .registers 6

    .line 0
    const-string v0, "Today launch count: "

    .line 1
    .line 2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Lcom/mediatek/duraspeed/manager/g;->a:Lcom/mediatek/duraspeed/manager/g$b;

    .line 6
    .line 7
    if-eqz p0, :cond_53

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/mediatek/duraspeed/manager/g$b;->c()Landroid/util/ArrayMap;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_53

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v3, " Package name: "

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v3, ","

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v3, " launch count: "

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_15

    .line 83
    :cond_53
    return-void
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

.method public c()V
    .registers 6

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1
    .line 2
    .line 3
    move-result-wide v0

    .line 4
    iget-object v2, p0, Lcom/mediatek/duraspeed/manager/g;->b:Ljava/io/File;

    .line 5
    .line 6
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Ljava/io/File;

    .line 14
    .line 15
    const-string v4, "system/app_switch_log.txt"

    .line 16
    .line 17
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object v3, p0, Lcom/mediatek/duraspeed/manager/g;->d:Ljava/io/File;

    .line 21
    .line 22
    :try_start_16
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_21

    .line 27
    .line 28
    iget-object v2, p0, Lcom/mediatek/duraspeed/manager/g;->d:Ljava/io/File;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 31
    .line 32
    .line 33
    :cond_21
    iget-object v2, p0, Lcom/mediatek/duraspeed/manager/g;->d:Ljava/io/File;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_26} :catch_27

    .line 36
    .line 37
    .line 38
    goto :goto_32

    .line 39
    :catch_27
    move-exception v2

    .line 40
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {p0, v3}, Lcom/mediatek/duraspeed/utils/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :goto_32
    iget-object v2, p0, Lcom/mediatek/duraspeed/manager/g;->b:Ljava/io/File;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_3f

    .line 57
    .line 58
    const-string v2, "init, failed to create directory!"

    .line 59
    .line 60
    invoke-static {p0, v2}, Lcom/mediatek/duraspeed/utils/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_3f
    invoke-direct {p0}, Lcom/mediatek/duraspeed/manager/g;->g()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/mediatek/duraspeed/manager/g;->f()V

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/mediatek/duraspeed/manager/g;->c:Landroid/app/usage/TimeSparseArray;

    .line 70
    .line 71
    monitor-enter v2

    .line 72
    :try_start_48
    iget-object v3, p0, Lcom/mediatek/duraspeed/manager/g;->c:Landroid/app/usage/TimeSparseArray;

    .line 73
    .line 74
    invoke-virtual {v3, v0, v1}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrAfter(J)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-gez v0, :cond_52

    .line 79
    .line 80
    monitor-exit v2

    .line 81
    return-void

    .line 82
    :cond_52
    iget-object v1, p0, Lcom/mediatek/duraspeed/manager/g;->c:Landroid/app/usage/TimeSparseArray;

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    move v3, v0

    .line 89
    :goto_59
    if-ge v3, v1, :cond_69

    .line 90
    .line 91
    iget-object v4, p0, Lcom/mediatek/duraspeed/manager/g;->c:Landroid/app/usage/TimeSparseArray;

    .line 92
    .line 93
    invoke-virtual {v4, v3}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Landroid/util/AtomicFile;

    .line 98
    .line 99
    invoke-virtual {v4}, Landroid/util/AtomicFile;->delete()V

    .line 100
    .line 101
    .line 102
    add-int/lit8 v3, v3, 0x1

    .line 103
    .line 104
    goto :goto_59

    .line 105
    :cond_69
    :goto_69
    if-ge v0, v1, :cond_73

    .line 106
    .line 107
    iget-object v3, p0, Lcom/mediatek/duraspeed/manager/g;->c:Landroid/app/usage/TimeSparseArray;

    .line 108
    .line 109
    invoke-virtual {v3, v0}, Landroid/app/usage/TimeSparseArray;->removeAt(I)V

    .line 110
    .line 111
    .line 112
    add-int/lit8 v0, v0, 0x1

    .line 113
    .line 114
    goto :goto_69

    .line 115
    :cond_73
    monitor-exit v2

    .line 116
    return-void

    .line 117
    :catchall_75
    move-exception p0

    .line 118
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_48 .. :try_end_77} :catchall_75

    .line 119
    throw p0
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

.method public d()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/g;->a:Lcom/mediatek/duraspeed/manager/g$b;

    .line 1
    .line 2
    if-eqz v0, :cond_17

    .line 3
    .line 4
    monitor-enter v0

    .line 5
    :try_start_5
    iget-object v1, p0, Lcom/mediatek/duraspeed/manager/g;->a:Lcom/mediatek/duraspeed/manager/g$b;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/mediatek/duraspeed/manager/g$b;->a(Lcom/mediatek/duraspeed/manager/g$b;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/mediatek/duraspeed/manager/g;->a:Lcom/mediatek/duraspeed/manager/g$b;

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iput-wide v1, p0, Lcom/mediatek/duraspeed/manager/g$b;->b:J

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    goto :goto_1e

    .line 20
    :catchall_14
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    .line 22
    throw p0

    .line 23
    :cond_17
    new-instance v0, Lcom/mediatek/duraspeed/manager/g$b;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/mediatek/duraspeed/manager/g$b;-><init>(Lcom/mediatek/duraspeed/manager/g;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/mediatek/duraspeed/manager/g;->a:Lcom/mediatek/duraspeed/manager/g$b;

    .line 29
    .line 30
    :goto_1e
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

.method public e()Landroid/util/ArrayMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/duraspeed/manager/a;",
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
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/mediatek/duraspeed/manager/g;->c:Landroid/app/usage/TimeSparseArray;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_d
    iget-object v2, p0, Lcom/mediatek/duraspeed/manager/g;->c:Landroid/app/usage/TimeSparseArray;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/app/usage/TimeSparseArray;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_14
    if-ge v3, v2, :cond_82

    .line 21
    .line 22
    iget-object v4, p0, Lcom/mediatek/duraspeed/manager/g;->c:Landroid/app/usage/TimeSparseArray;

    .line 23
    .line 24
    invoke-virtual {v4, v3}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Landroid/util/AtomicFile;

    .line 29
    .line 30
    new-instance v5, Lcom/mediatek/duraspeed/manager/g$b;

    .line 31
    .line 32
    invoke-direct {v5, p0}, Lcom/mediatek/duraspeed/manager/g$b;-><init>(Lcom/mediatek/duraspeed/manager/g;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v4}, Lcom/mediatek/duraspeed/utils/c;->d(Landroid/util/AtomicFile;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    iget-object v8, p0, Lcom/mediatek/duraspeed/manager/g;->a:Lcom/mediatek/duraspeed/manager/g$b;

    .line 40
    .line 41
    if-eqz v8, :cond_33

    .line 42
    .line 43
    iget-wide v9, v8, Lcom/mediatek/duraspeed/manager/g$b;->b:J

    .line 44
    .line 45
    cmp-long v6, v9, v6

    .line 46
    .line 47
    if-nez v6, :cond_33

    .line 48
    .line 49
    move-object v5, v8

    .line 50
    goto :goto_36

    .line 51
    :cond_33
    invoke-direct {p0, v4, v5}, Lcom/mediatek/duraspeed/manager/g;->i(Landroid/util/AtomicFile;Lcom/mediatek/duraspeed/manager/g$b;)V

    .line 52
    .line 53
    .line 54
    :goto_36
    invoke-virtual {v5}, Lcom/mediatek/duraspeed/manager/g$b;->c()Landroid/util/ArrayMap;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    :goto_42
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_7f

    .line 71
    .line 72
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-eqz v7, :cond_6a

    .line 83
    .line 84
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    check-cast v7, Lcom/mediatek/duraspeed/manager/a;

    .line 89
    .line 90
    iget v8, v7, Lcom/mediatek/duraspeed/manager/a;->b:I

    .line 91
    .line 92
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    check-cast v6, Ljava/lang/Integer;

    .line 97
    .line 98
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    add-int/2addr v8, v6

    .line 103
    iput v8, v7, Lcom/mediatek/duraspeed/manager/a;->b:I

    .line 104
    .line 105
    goto :goto_42

    .line 106
    :cond_6a
    new-instance v7, Lcom/mediatek/duraspeed/manager/a;

    .line 107
    .line 108
    invoke-direct {v7, v6}, Lcom/mediatek/duraspeed/manager/a;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    check-cast v8, Ljava/lang/Integer;

    .line 116
    .line 117
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    iput v8, v7, Lcom/mediatek/duraspeed/manager/a;->b:I

    .line 122
    .line 123
    invoke-virtual {v0, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    goto :goto_42

    .line 127
    :cond_7f
    add-int/lit8 v3, v3, 0x1

    .line 128
    .line 129
    goto :goto_14

    .line 130
    :cond_82
    monitor-exit v1

    .line 131
    return-object v0

    .line 132
    :catchall_84
    move-exception p0

    .line 133
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_d .. :try_end_86} :catchall_84

    .line 134
    throw p0
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

.method public f()V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/g;->c:Landroid/app/usage/TimeSparseArray;

    .line 1
    .line 2
    monitor-enter v0

    .line 3
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-object v3, p0, Lcom/mediatek/duraspeed/manager/g;->c:Landroid/app/usage/TimeSparseArray;

    .line 8
    .line 9
    invoke-virtual {v3, v1, v2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    new-instance v4, Lcom/mediatek/duraspeed/manager/g$b;

    .line 14
    .line 15
    invoke-direct {v4, p0}, Lcom/mediatek/duraspeed/manager/g$b;-><init>(Lcom/mediatek/duraspeed/manager/g;)V

    .line 16
    .line 17
    .line 18
    if-ltz v3, :cond_29

    .line 19
    .line 20
    iget-object v5, p0, Lcom/mediatek/duraspeed/manager/g;->c:Landroid/app/usage/TimeSparseArray;

    .line 21
    .line 22
    invoke-virtual {v5, v3}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Landroid/util/AtomicFile;

    .line 27
    .line 28
    invoke-static {v3}, Lcom/mediatek/duraspeed/utils/c;->d(Landroid/util/AtomicFile;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v5

    .line 32
    invoke-static {v5, v6, v1, v2}, Lcom/mediatek/duraspeed/utils/c;->x(JJ)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_29

    .line 37
    .line 38
    invoke-direct {p0, v3, v4}, Lcom/mediatek/duraspeed/manager/g;->i(Landroid/util/AtomicFile;Lcom/mediatek/duraspeed/manager/g$b;)V

    .line 39
    .line 40
    .line 41
    :cond_29
    iput-object v4, p0, Lcom/mediatek/duraspeed/manager/g;->a:Lcom/mediatek/duraspeed/manager/g$b;

    .line 42
    .line 43
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :catchall_2d
    move-exception p0

    .line 46
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    .line 47
    throw p0
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

.method public h()V
    .registers 15

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1
    .line 2
    .line 3
    move-result-wide v0

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v2

    .line 8
    sget-wide v4, Lcom/mediatek/duraspeed/manager/g;->t:J

    .line 9
    .line 10
    sub-long v4, v2, v4

    .line 11
    .line 12
    sget-wide v6, Lcom/mediatek/duraspeed/manager/g;->s:J

    .line 13
    .line 14
    add-long/2addr v4, v6

    .line 15
    sub-long v4, v0, v4

    .line 16
    .line 17
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v6

    .line 21
    const-wide/16 v8, 0x7d0

    .line 22
    .line 23
    cmp-long v6, v6, v8

    .line 24
    .line 25
    if-lez v6, :cond_9e

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/mediatek/duraspeed/manager/g;->m()V

    .line 28
    .line 29
    .line 30
    iget-object v6, p0, Lcom/mediatek/duraspeed/manager/g;->c:Landroid/app/usage/TimeSparseArray;

    .line 31
    .line 32
    monitor-enter v6

    .line 33
    :try_start_21
    iget-object v7, p0, Lcom/mediatek/duraspeed/manager/g;->c:Landroid/app/usage/TimeSparseArray;

    .line 34
    .line 35
    invoke-virtual {v7}, Landroid/app/usage/TimeSparseArray;->size()I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    const/4 v8, 0x0

    .line 40
    :goto_28
    if-ge v8, v7, :cond_8f

    .line 41
    .line 42
    iget-object v9, p0, Lcom/mediatek/duraspeed/manager/g;->c:Landroid/app/usage/TimeSparseArray;

    .line 43
    .line 44
    invoke-virtual {v9, v8}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    check-cast v9, Landroid/util/AtomicFile;

    .line 49
    .line 50
    iget-object v10, p0, Lcom/mediatek/duraspeed/manager/g;->c:Landroid/app/usage/TimeSparseArray;

    .line 51
    .line 52
    invoke-virtual {v10, v8}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    .line 53
    .line 54
    .line 55
    move-result-wide v10

    .line 56
    add-long/2addr v10, v4

    .line 57
    const-wide/16 v12, 0x0

    .line 58
    .line 59
    cmp-long v12, v10, v12

    .line 60
    .line 61
    if-gez v12, :cond_43

    .line 62
    .line 63
    invoke-virtual {v9}, Landroid/util/AtomicFile;->delete()V
    :try_end_42
    .catchall {:try_start_21 .. :try_end_42} :catchall_9b

    .line 64
    .line 65
    .line 66
    goto :goto_8c

    .line 67
    :cond_43
    :try_start_43
    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 68
    .line 69
    .line 70
    move-result-object v12

    .line 71
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4a} :catch_4b
    .catchall {:try_start_43 .. :try_end_4a} :catchall_9b

    .line 72
    .line 73
    .line 74
    goto :goto_53

    .line 75
    :catch_4b
    move-exception v12

    .line 76
    :try_start_4c
    invoke-virtual {v12}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    invoke-static {p0, v12}, Lcom/mediatek/duraspeed/utils/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :goto_53
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    invoke-virtual {v9}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    const-string v12, "-c"

    .line 96
    .line 97
    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    if-eqz v11, :cond_78

    .line 102
    .line 103
    new-instance v11, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v10, "-c"

    .line 112
    .line 113
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    :cond_78
    new-instance v11, Ljava/io/File;

    .line 121
    .line 122
    invoke-virtual {v9}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    invoke-direct {v11, v12, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v9}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    invoke-virtual {v9, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 138
    .line 139
    .line 140
    :goto_8c
    add-int/lit8 v8, v8, 0x1

    .line 141
    .line 142
    goto :goto_28

    .line 143
    :cond_8f
    monitor-exit v6
    :try_end_90
    .catchall {:try_start_4c .. :try_end_90} :catchall_9b

    .line 144
    invoke-direct {p0}, Lcom/mediatek/duraspeed/manager/g;->g()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/mediatek/duraspeed/manager/g;->k()V

    .line 148
    .line 149
    .line 150
    sput-wide v0, Lcom/mediatek/duraspeed/manager/g;->s:J

    .line 151
    .line 152
    sput-wide v2, Lcom/mediatek/duraspeed/manager/g;->t:J

    .line 153
    .line 154
    goto :goto_9e

    .line 155
    :catchall_9b
    move-exception p0

    .line 156
    :try_start_9c
    monitor-exit v6
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    .line 157
    throw p0

    .line 158
    :cond_9e
    :goto_9e
    return-void
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

.method public j(Ljava/io/PrintWriter;)V
    .registers 5

    .line 0
    sget-boolean v0, Lcom/mediatek/duraspeed/utils/c;->J:Z

    .line 1
    .line 2
    if-nez v0, :cond_5

    .line 3
    .line 4
    return-void

    .line 5
    :cond_5
    const/4 v0, 0x0

    .line 6
    :try_start_6
    new-instance v1, Ljava/io/BufferedReader;

    .line 7
    .line 8
    new-instance v2, Ljava/io/FileReader;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/mediatek/duraspeed/manager/g;->d:Ljava/io/File;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_12} :catch_28
    .catchall {:try_start_6 .. :try_end_12} :catchall_26

    .line 16
    .line 17
    .line 18
    :goto_12
    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_1c

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1b} :catch_23
    .catchall {:try_start_12 .. :try_end_1b} :catchall_20

    .line 25
    .line 26
    .line 27
    goto :goto_12

    .line 28
    :cond_1c
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_32

    .line 29
    .line 30
    .line 31
    goto :goto_36

    .line 32
    :catchall_20
    move-exception p0

    .line 33
    move-object v0, v1

    .line 34
    goto :goto_37

    .line 35
    :catch_23
    move-exception p0

    .line 36
    move-object v0, v1

    .line 37
    goto :goto_29

    .line 38
    :catchall_26
    move-exception p0

    .line 39
    goto :goto_37

    .line 40
    :catch_28
    move-exception p0

    .line 41
    :goto_29
    :try_start_29
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_26

    .line 42
    .line 43
    .line 44
    if-eqz v0, :cond_36

    .line 45
    .line 46
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    .line 47
    .line 48
    .line 49
    goto :goto_36

    .line 50
    :catch_32
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :cond_36
    :goto_36
    return-void

    .line 55
    :goto_37
    if-eqz v0, :cond_41

    .line 56
    .line 57
    :try_start_39
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    .line 58
    .line 59
    .line 60
    goto :goto_41

    .line 61
    :catch_3d
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :cond_41
    :goto_41
    throw p0
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

.method public k()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/g;->a:Lcom/mediatek/duraspeed/manager/g$b;

    .line 1
    .line 2
    if-eqz v0, :cond_12

    .line 3
    .line 4
    monitor-enter v0

    .line 5
    :try_start_5
    iget-object v1, p0, Lcom/mediatek/duraspeed/manager/g;->a:Lcom/mediatek/duraspeed/manager/g$b;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/mediatek/duraspeed/manager/g$b;->a(Lcom/mediatek/duraspeed/manager/g$b;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lcom/mediatek/duraspeed/manager/g;->a:Lcom/mediatek/duraspeed/manager/g$b;

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    goto :goto_12

    .line 15
    :catchall_f
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    .line 17
    throw p0

    .line 18
    :cond_12
    :goto_12
    invoke-virtual {p0}, Lcom/mediatek/duraspeed/manager/g;->f()V

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
.end method

.method public l()V
    .registers 11

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1
    .line 2
    .line 3
    move-result-wide v0

    .line 4
    const-wide/32 v2, 0xa4cb800

    .line 5
    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    iget-object v2, p0, Lcom/mediatek/duraspeed/manager/g;->c:Landroid/app/usage/TimeSparseArray;

    .line 9
    .line 10
    monitor-enter v2

    .line 11
    :try_start_b
    iget-object p0, p0, Lcom/mediatek/duraspeed/manager/g;->b:Ljava/io/File;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_48

    .line 18
    .line 19
    array-length v3, p0

    .line 20
    const/4 v4, 0x0

    .line 21
    move v5, v4

    .line 22
    :goto_16
    if-ge v5, v3, :cond_48

    .line 23
    .line 24
    aget-object v6, p0, v5

    .line 25
    .line 26
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    const-string v8, ".bak"

    .line 31
    .line 32
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    if-eqz v8, :cond_35

    .line 37
    .line 38
    new-instance v6, Ljava/io/File;

    .line 39
    .line 40
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    add-int/lit8 v8, v8, -0x4

    .line 45
    .line 46
    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_35
    new-instance v7, Landroid/util/AtomicFile;

    .line 54
    .line 55
    invoke-direct {v7, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v7}, Lcom/mediatek/duraspeed/utils/c;->d(Landroid/util/AtomicFile;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v8

    .line 62
    cmp-long v6, v8, v0

    .line 63
    .line 64
    if-gez v6, :cond_45

    .line 65
    .line 66
    invoke-virtual {v7}, Landroid/util/AtomicFile;->delete()V

    .line 67
    .line 68
    .line 69
    :cond_45
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    goto :goto_16

    .line 72
    :cond_48
    monitor-exit v2

    .line 73
    return-void

    .line 74
    :catchall_4a
    move-exception p0

    .line 75
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_b .. :try_end_4c} :catchall_4a

    .line 76
    throw p0
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

.method public m()V
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/g;->a:Lcom/mediatek/duraspeed/manager/g$b;

    .line 1
    .line 2
    if-eqz v0, :cond_3c

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/g;->c:Landroid/app/usage/TimeSparseArray;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_7
    iget-object v1, p0, Lcom/mediatek/duraspeed/manager/g;->c:Landroid/app/usage/TimeSparseArray;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/mediatek/duraspeed/manager/g;->a:Lcom/mediatek/duraspeed/manager/g$b;

    .line 10
    .line 11
    iget-wide v2, v2, Lcom/mediatek/duraspeed/manager/g$b;->b:J

    .line 12
    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/app/usage/TimeSparseArray;->get(J)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/util/AtomicFile;

    .line 18
    .line 19
    if-nez v1, :cond_32

    .line 20
    .line 21
    new-instance v1, Landroid/util/AtomicFile;

    .line 22
    .line 23
    new-instance v2, Ljava/io/File;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/mediatek/duraspeed/manager/g;->b:Ljava/io/File;

    .line 26
    .line 27
    iget-object v4, p0, Lcom/mediatek/duraspeed/manager/g;->a:Lcom/mediatek/duraspeed/manager/g$b;

    .line 28
    .line 29
    iget-wide v4, v4, Lcom/mediatek/duraspeed/manager/g$b;->b:J

    .line 30
    .line 31
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/mediatek/duraspeed/manager/g;->c:Landroid/app/usage/TimeSparseArray;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/mediatek/duraspeed/manager/g;->a:Lcom/mediatek/duraspeed/manager/g$b;

    .line 44
    .line 45
    iget-wide v3, v3, Lcom/mediatek/duraspeed/manager/g$b;->b:J

    .line 46
    .line 47
    invoke-virtual {v2, v3, v4, v1}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_32
    iget-object v2, p0, Lcom/mediatek/duraspeed/manager/g;->a:Lcom/mediatek/duraspeed/manager/g$b;

    .line 51
    .line 52
    invoke-direct {p0, v1, v2}, Lcom/mediatek/duraspeed/manager/g;->o(Landroid/util/AtomicFile;Lcom/mediatek/duraspeed/manager/g$b;)V

    .line 53
    .line 54
    .line 55
    monitor-exit v0

    .line 56
    goto :goto_3c

    .line 57
    :catchall_39
    move-exception p0

    .line 58
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_39

    .line 59
    throw p0

    .line 60
    :cond_3c
    :goto_3c
    return-void
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

.method public n(Ljava/lang/String;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/g;->a:Lcom/mediatek/duraspeed/manager/g$b;

    .line 1
    .line 2
    if-eqz v0, :cond_f

    .line 3
    .line 4
    monitor-enter v0

    .line 5
    :try_start_5
    iget-object p0, p0, Lcom/mediatek/duraspeed/manager/g;->a:Lcom/mediatek/duraspeed/manager/g$b;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/mediatek/duraspeed/manager/g$b;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    goto :goto_f

    .line 12
    :catchall_c
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    .line 14
    throw p0

    .line 15
    :cond_f
    :goto_f
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

.method public p(Ljava/util/Date;Ljava/lang/String;)V
    .registers 6

    .line 0
    sget-boolean v0, Lcom/mediatek/duraspeed/utils/c;->J:Z

    .line 1
    .line 2
    if-nez v0, :cond_5

    .line 3
    .line 4
    return-void

    .line 5
    :cond_5
    const/4 v0, 0x0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/mediatek/duraspeed/manager/g;->e:Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, " DuraSpeed: "

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :try_start_20
    new-instance p2, Ljava/io/FileOutputStream;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/mediatek/duraspeed/manager/g;->d:Ljava/io/File;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-direct {p2, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_28} :catch_3e
    .catchall {:try_start_20 .. :try_end_28} :catchall_3c

    .line 38
    .line 39
    .line 40
    :try_start_28
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_32} :catch_39
    .catchall {:try_start_28 .. :try_end_32} :catchall_36

    .line 48
    .line 49
    .line 50
    :try_start_32
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_48

    .line 51
    .line 52
    .line 53
    goto :goto_4c

    .line 54
    :catchall_36
    move-exception p0

    .line 55
    move-object v0, p2

    .line 56
    goto :goto_4d

    .line 57
    :catch_39
    move-exception p0

    .line 58
    move-object v0, p2

    .line 59
    goto :goto_3f

    .line 60
    :catchall_3c
    move-exception p0

    .line 61
    goto :goto_4d

    .line 62
    :catch_3e
    move-exception p0

    .line 63
    :goto_3f
    :try_start_3f
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_3c

    .line 64
    .line 65
    .line 66
    if-eqz v0, :cond_4c

    .line 67
    .line 68
    :try_start_44
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    .line 69
    .line 70
    .line 71
    goto :goto_4c

    .line 72
    :catch_48
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    :cond_4c
    :goto_4c
    return-void

    .line 77
    :goto_4d
    if-eqz v0, :cond_57

    .line 78
    .line 79
    :try_start_4f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    .line 80
    .line 81
    .line 82
    goto :goto_57

    .line 83
    :catch_53
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    :cond_57
    :goto_57
    throw p0
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
