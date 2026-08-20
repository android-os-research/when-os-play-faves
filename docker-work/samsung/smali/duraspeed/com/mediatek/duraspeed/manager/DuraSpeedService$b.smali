.class Lcom/mediatek/duraspeed/manager/DuraSpeedService$b;
.super Landroid/database/ContentObserver;
.source "DuraSpeedService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/duraspeed/manager/DuraSpeedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mediatek/duraspeed/manager/DuraSpeedService;


# direct methods
.method public constructor <init>(Lcom/mediatek/duraspeed/manager/DuraSpeedService;Landroid/os/Handler;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/mediatek/duraspeed/manager/DuraSpeedService$b;->a:Lcom/mediatek/duraspeed/manager/DuraSpeedService;

    .line 1
    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

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


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6

    .line 0
    iget-object p1, p0, Lcom/mediatek/duraspeed/manager/DuraSpeedService$b;->a:Lcom/mediatek/duraspeed/manager/DuraSpeedService;

    .line 1
    .line 2
    invoke-static {p1}, Lcom/mediatek/duraspeed/manager/DuraSpeedService;->a(Lcom/mediatek/duraspeed/manager/DuraSpeedService;)Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string p2, "setting.duraspeed.enabled"

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 p2, 0x1

    .line 18
    if-ne p1, p2, :cond_15

    .line 19
    .line 20
    move v0, p2

    .line 21
    :cond_15
    iget-object p1, p0, Lcom/mediatek/duraspeed/manager/DuraSpeedService$b;->a:Lcom/mediatek/duraspeed/manager/DuraSpeedService;

    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/mediatek/duraspeed/manager/DuraSpeedService;->e(Lcom/mediatek/duraspeed/manager/DuraSpeedService;Z)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/mediatek/duraspeed/manager/DuraSpeedService$b;->a:Lcom/mediatek/duraspeed/manager/DuraSpeedService;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "onChange, checked: "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {p1, p2, v1}, Lcom/mediatek/duraspeed/utils/b;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    if-eqz v0, :cond_45

    .line 49
    .line 50
    iget-object p1, p0, Lcom/mediatek/duraspeed/manager/DuraSpeedService$b;->a:Lcom/mediatek/duraspeed/manager/DuraSpeedService;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/mediatek/duraspeed/manager/DuraSpeedService;->b(Lcom/mediatek/duraspeed/manager/DuraSpeedService;)Lcom/mediatek/duraspeed/monitor/a;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/mediatek/duraspeed/monitor/a;->e()V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/mediatek/duraspeed/manager/DuraSpeedService$b;->a:Lcom/mediatek/duraspeed/manager/DuraSpeedService;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/mediatek/duraspeed/manager/DuraSpeedService;->d(Lcom/mediatek/duraspeed/manager/DuraSpeedService;)Lcom/mediatek/duraspeed/monitor/c;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lcom/mediatek/duraspeed/monitor/c;->f()V

    .line 66
    .line 67
    .line 68
    goto :goto_57

    .line 69
    :cond_45
    iget-object p1, p0, Lcom/mediatek/duraspeed/manager/DuraSpeedService$b;->a:Lcom/mediatek/duraspeed/manager/DuraSpeedService;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/mediatek/duraspeed/manager/DuraSpeedService;->b(Lcom/mediatek/duraspeed/manager/DuraSpeedService;)Lcom/mediatek/duraspeed/monitor/a;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/mediatek/duraspeed/monitor/a;->f()V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/mediatek/duraspeed/manager/DuraSpeedService$b;->a:Lcom/mediatek/duraspeed/manager/DuraSpeedService;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/mediatek/duraspeed/manager/DuraSpeedService;->d(Lcom/mediatek/duraspeed/manager/DuraSpeedService;)Lcom/mediatek/duraspeed/monitor/c;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/mediatek/duraspeed/monitor/c;->g()V

    .line 85
    .line 86
    .line 87
    :goto_57
    iget-object p0, p0, Lcom/mediatek/duraspeed/manager/DuraSpeedService$b;->a:Lcom/mediatek/duraspeed/manager/DuraSpeedService;

    .line 88
    .line 89
    invoke-static {p0}, Lcom/mediatek/duraspeed/manager/DuraSpeedService;->c(Lcom/mediatek/duraspeed/manager/DuraSpeedService;)Lcom/mediatek/duraspeed/manager/c;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0, v0}, Lcom/mediatek/duraspeed/manager/c;->v(Z)V

    .line 94
    .line 95
    .line 96
    return-void
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
