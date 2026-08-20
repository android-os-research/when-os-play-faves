.class Lcom/mediatek/duraspeed/collector/m$b$b;
.super Ljava/lang/Object;
.source "RecordingScreenAppCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/duraspeed/collector/m$b;->onStop(Landroid/media/projection/MediaProjectionInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/media/projection/MediaProjectionInfo;

.field final synthetic b:Lcom/mediatek/duraspeed/collector/m$b;


# direct methods
.method constructor <init>(Lcom/mediatek/duraspeed/collector/m$b;Landroid/media/projection/MediaProjectionInfo;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/mediatek/duraspeed/collector/m$b$b;->b:Lcom/mediatek/duraspeed/collector/m$b;

    .line 1
    .line 2
    iput-object p2, p0, Lcom/mediatek/duraspeed/collector/m$b$b;->a:Landroid/media/projection/MediaProjectionInfo;

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/mediatek/duraspeed/collector/m$b$b;->a:Landroid/media/projection/MediaProjectionInfo;

    .line 1
    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_b

    .line 10
    :cond_a
    move-object v0, v1

    .line 11
    :goto_b
    iget-object v2, p0, Lcom/mediatek/duraspeed/collector/m$b$b;->b:Lcom/mediatek/duraspeed/collector/m$b;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/mediatek/duraspeed/collector/m$b;->a:Lcom/mediatek/duraspeed/collector/m;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/mediatek/duraspeed/collector/m;->l(Lcom/mediatek/duraspeed/collector/m;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_54

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iget-object v4, p0, Lcom/mediatek/duraspeed/collector/m$b$b;->b:Lcom/mediatek/duraspeed/collector/m$b;

    .line 44
    .line 45
    iget-object v4, v4, Lcom/mediatek/duraspeed/collector/m$b;->a:Lcom/mediatek/duraspeed/collector/m;

    .line 46
    .line 47
    invoke-static {v4}, Lcom/mediatek/duraspeed/collector/m;->l(Lcom/mediatek/duraspeed/collector/m;)Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Ljava/lang/String;

    .line 60
    .line 61
    if-eqz v4, :cond_1b

    .line 62
    .line 63
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_1b

    .line 68
    .line 69
    iget-object v2, p0, Lcom/mediatek/duraspeed/collector/m$b$b;->b:Lcom/mediatek/duraspeed/collector/m$b;

    .line 70
    .line 71
    iget-object v2, v2, Lcom/mediatek/duraspeed/collector/m$b;->a:Lcom/mediatek/duraspeed/collector/m;

    .line 72
    .line 73
    invoke-static {v2}, Lcom/mediatek/duraspeed/collector/m;->l(Lcom/mediatek/duraspeed/collector/m;)Ljava/util/Map;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    :cond_54
    iget-object v2, p0, Lcom/mediatek/duraspeed/collector/m$b$b;->b:Lcom/mediatek/duraspeed/collector/m$b;

    .line 85
    .line 86
    iget-object v2, v2, Lcom/mediatek/duraspeed/collector/m$b;->a:Lcom/mediatek/duraspeed/collector/m;

    .line 87
    .line 88
    invoke-static {v2}, Lcom/mediatek/duraspeed/collector/m;->j(Lcom/mediatek/duraspeed/collector/m;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_73

    .line 93
    .line 94
    iget-object v2, p0, Lcom/mediatek/duraspeed/collector/m$b$b;->b:Lcom/mediatek/duraspeed/collector/m$b;

    .line 95
    .line 96
    iget-object v2, v2, Lcom/mediatek/duraspeed/collector/m$b;->a:Lcom/mediatek/duraspeed/collector/m;

    .line 97
    .line 98
    invoke-static {v2}, Lcom/mediatek/duraspeed/collector/m;->j(Lcom/mediatek/duraspeed/collector/m;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_73

    .line 107
    .line 108
    iget-object p0, p0, Lcom/mediatek/duraspeed/collector/m$b$b;->b:Lcom/mediatek/duraspeed/collector/m$b;

    .line 109
    .line 110
    iget-object p0, p0, Lcom/mediatek/duraspeed/collector/m$b;->a:Lcom/mediatek/duraspeed/collector/m;

    .line 111
    .line 112
    invoke-static {p0, v1}, Lcom/mediatek/duraspeed/collector/m;->n(Lcom/mediatek/duraspeed/collector/m;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_73
    return-void
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
