.class public final Lcom/samsung/android/knox/kiosk/KioskMode$3;
.super Ljava/lang/Object;
.source "KioskMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/kiosk/KioskMode;->disableKioskMode(Lcom/samsung/android/knox/kiosk/KioskSetting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic greylist this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

.field public final synthetic greylist val$kiosk:Lcom/samsung/android/knox/kiosk/KioskSetting;

.field public final synthetic greylist val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/kiosk/KioskMode;Lcom/samsung/android/knox/kiosk/IKioskMode;Lcom/samsung/android/knox/kiosk/KioskSetting;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 1
    .line 2
    iput-object p2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$kiosk:Lcom/samsung/android/knox/kiosk/KioskSetting;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 8

    .line 0
    const-string v0, "KioskMode"

    .line 1
    .line 2
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 5
    .line 6
    iget-object v2, v2, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 7
    .line 8
    invoke-interface {v1, v2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->disableKioskMode(Lcom/samsung/android/knox/ContextInfo;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    .line 9
    .line 10
    .line 11
    goto :goto_12

    .line 12
    :catch_c
    move-exception v1

    .line 13
    const-string v2, "Failed talking with kiosk mode service"

    .line 14
    .line 15
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    :goto_12
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$kiosk:Lcom/samsung/android/knox/kiosk/KioskSetting;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x1

    .line 22
    if-nez v1, :cond_39

    .line 23
    .line 24
    new-instance v1, Lcom/samsung/android/knox/kiosk/KioskSetting;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/samsung/android/knox/kiosk/KioskSetting;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->settingsChanges:Z

    .line 30
    .line 31
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBarExpansion:Z

    .line 32
    .line 33
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->homeKey:Z

    .line 34
    .line 35
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->airCommand:Z

    .line 36
    .line 37
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->airView:Z

    .line 38
    .line 39
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->multiWindow:Z

    .line 40
    .line 41
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->smartClip:Z

    .line 42
    .line 43
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->taskManager:Z

    .line 44
    .line 45
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->clearAllNotifications:Z

    .line 46
    .line 47
    iput-boolean v2, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->navigationBar:Z

    .line 48
    .line 49
    iput-boolean v2, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBar:Z

    .line 50
    .line 51
    iput-boolean v2, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->systemBar:Z

    .line 52
    .line 53
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->wipeRecentTasks:Z

    .line 54
    .line 55
    iput v2, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->blockedEdgeFunctions:I

    .line 56
    .line 57
    :cond_39
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 58
    .line 59
    sget-object v5, Lcom/samsung/android/knox/kiosk/KioskMode;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    if-nez v4, :cond_49

    .line 66
    .line 67
    const-string v4, "Failed talking with restriction service"

    .line 68
    .line 69
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    goto :goto_a9

    .line 73
    :cond_49
    :try_start_49
    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 74
    .line 75
    iget-object v5, v5, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 76
    .line 77
    iget-boolean v6, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->settingsChanges:Z

    .line 78
    .line 79
    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSettingsChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-nez v5, :cond_61

    .line 84
    .line 85
    const-string v5, "allow settings changes failed"

    .line 86
    .line 87
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_5a} :catch_5b

    .line 88
    .line 89
    .line 90
    goto :goto_61

    .line 91
    :catch_5b
    move-exception v5

    .line 92
    const-string v6, "Failed to allow settings changes"

    .line 93
    .line 94
    invoke-static {v0, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .line 96
    .line 97
    :cond_61
    :goto_61
    :try_start_61
    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 98
    .line 99
    iget-object v5, v5, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 100
    .line 101
    iget-boolean v6, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBarExpansion:Z

    .line 102
    .line 103
    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowStatusBarExpansion(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-nez v5, :cond_79

    .line 108
    .line 109
    const-string v5, "allow status bar expansion failed"

    .line 110
    .line 111
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_72} :catch_73

    .line 112
    .line 113
    .line 114
    goto :goto_79

    .line 115
    :catch_73
    move-exception v5

    .line 116
    const-string v6, "Failed to allow status bar expansion"

    .line 117
    .line 118
    invoke-static {v0, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .line 120
    .line 121
    :cond_79
    :goto_79
    :try_start_79
    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 122
    .line 123
    iget-object v5, v5, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 124
    .line 125
    iget-boolean v6, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->homeKey:Z

    .line 126
    .line 127
    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setHomeKeyState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-nez v5, :cond_91

    .line 132
    .line 133
    const-string v5, "set home key state failed"

    .line 134
    .line 135
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_8a} :catch_8b

    .line 136
    .line 137
    .line 138
    goto :goto_91

    .line 139
    :catch_8b
    move-exception v5

    .line 140
    const-string v6, "Failed to set home key state"

    .line 141
    .line 142
    invoke-static {v0, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    .line 144
    .line 145
    :cond_91
    :goto_91
    :try_start_91
    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 146
    .line 147
    iget-object v5, v5, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 148
    .line 149
    iget-boolean v6, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->smartClip:Z

    .line 150
    .line 151
    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSmartClipMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-nez v4, :cond_a9

    .line 156
    .line 157
    const-string v4, "allow smart clip mode failed"

    .line 158
    .line 159
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_a2} :catch_a3

    .line 160
    .line 161
    .line 162
    goto :goto_a9

    .line 163
    :catch_a3
    move-exception v4

    .line 164
    const-string v5, "Failed to allow smart clip mode"

    .line 165
    .line 166
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .line 168
    .line 169
    :cond_a9
    :goto_a9
    :try_start_a9
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 170
    .line 171
    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 172
    .line 173
    iget-object v5, v5, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 174
    .line 175
    iget-boolean v6, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->airCommand:Z

    .line 176
    .line 177
    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirCommandMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-nez v4, :cond_c3

    .line 182
    .line 183
    const-string v4, "allow air command failed"

    .line 184
    .line 185
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_bc} :catch_bd

    .line 186
    .line 187
    .line 188
    goto :goto_c3

    .line 189
    :catch_bd
    move-exception v4

    .line 190
    const-string v5, "Failed to allow air command mode"

    .line 191
    .line 192
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .line 194
    .line 195
    :cond_c3
    :goto_c3
    :try_start_c3
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 196
    .line 197
    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 198
    .line 199
    iget-object v5, v5, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 200
    .line 201
    iget-boolean v6, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->airView:Z

    .line 202
    .line 203
    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirViewMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    if-nez v4, :cond_dd

    .line 208
    .line 209
    const-string v4, "allow air view failed"

    .line 210
    .line 211
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d6
    .catch Landroid/os/RemoteException; {:try_start_c3 .. :try_end_d6} :catch_d7

    .line 212
    .line 213
    .line 214
    goto :goto_dd

    .line 215
    :catch_d7
    move-exception v4

    .line 216
    const-string v5, "Failed to allow air view mode"

    .line 217
    .line 218
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    .line 220
    .line 221
    :cond_dd
    :goto_dd
    iget-object v4, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    .line 222
    .line 223
    if-eqz v4, :cond_118

    .line 224
    .line 225
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    new-array v4, v4, [I

    .line 230
    .line 231
    :goto_e7
    iget-object v5, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    .line 232
    .line 233
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-ge v2, v5, :cond_100

    .line 238
    .line 239
    iget-object v5, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    .line 240
    .line 241
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    check-cast v5, Ljava/lang/Integer;

    .line 246
    .line 247
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    aput v5, v4, v2

    .line 252
    .line 253
    add-int/lit8 v2, v2, 0x1

    .line 254
    .line 255
    goto :goto_e7

    .line 256
    :cond_100
    :try_start_100
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 257
    .line 258
    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 259
    .line 260
    iget-object v5, v5, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 261
    .line 262
    invoke-interface {v2, v5, v4, v3}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowHardwareKeys(Lcom/samsung/android/knox/ContextInfo;[IZ)[I

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    if-nez v2, :cond_118

    .line 267
    .line 268
    const-string v2, "allowHardwareKeys failed"

    .line 269
    .line 270
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catch Landroid/os/RemoteException; {:try_start_100 .. :try_end_111} :catch_112

    .line 271
    .line 272
    .line 273
    goto :goto_118

    .line 274
    :catch_112
    move-exception v2

    .line 275
    const-string v4, "Failed to allow hardware keys"

    .line 276
    .line 277
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    .line 279
    .line 280
    :cond_118
    :goto_118
    :try_start_118
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 281
    .line 282
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 283
    .line 284
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 285
    .line 286
    iget-boolean v5, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->multiWindow:Z

    .line 287
    .line 288
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowMultiWindowMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-nez v2, :cond_132

    .line 293
    .line 294
    const-string v2, "set multiwindow mode failed"

    .line 295
    .line 296
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12b
    .catch Landroid/os/RemoteException; {:try_start_118 .. :try_end_12b} :catch_12c

    .line 297
    .line 298
    .line 299
    goto :goto_132

    .line 300
    :catch_12c
    move-exception v2

    .line 301
    const-string v4, "Failed to allow multiwindow mode"

    .line 302
    .line 303
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    .line 305
    .line 306
    :cond_132
    :goto_132
    :try_start_132
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 307
    .line 308
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 309
    .line 310
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 311
    .line 312
    iget-boolean v5, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->taskManager:Z

    .line 313
    .line 314
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowTaskManager(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    if-nez v2, :cond_14c

    .line 319
    .line 320
    const-string v2, "set task manager failed"

    .line 321
    .line 322
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_145
    .catch Landroid/os/RemoteException; {:try_start_132 .. :try_end_145} :catch_146

    .line 323
    .line 324
    .line 325
    goto :goto_14c

    .line 326
    :catch_146
    move-exception v2

    .line 327
    const-string v4, "Failed to allow task manager"

    .line 328
    .line 329
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    .line 331
    .line 332
    :cond_14c
    :goto_14c
    iget-boolean v2, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->clearAllNotifications:Z

    .line 333
    .line 334
    if-eqz v2, :cond_168

    .line 335
    .line 336
    :try_start_150
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 337
    .line 338
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 339
    .line 340
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 341
    .line 342
    invoke-interface {v2, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->clearAllNotifications(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    if-nez v2, :cond_168

    .line 347
    .line 348
    const-string v2, "clear all notifications failed"

    .line 349
    .line 350
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_161
    .catch Landroid/os/RemoteException; {:try_start_150 .. :try_end_161} :catch_162

    .line 351
    .line 352
    .line 353
    goto :goto_168

    .line 354
    :catch_162
    move-exception v2

    .line 355
    const-string v4, "Failed to clear all notifications"

    .line 356
    .line 357
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    .line 359
    .line 360
    :cond_168
    :goto_168
    :try_start_168
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 361
    .line 362
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 363
    .line 364
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 365
    .line 366
    iget-boolean v5, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->navigationBar:Z

    .line 367
    .line 368
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideNavigationBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    if-nez v2, :cond_182

    .line 373
    .line 374
    const-string v2, "hide navigationbar failed"

    .line 375
    .line 376
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17b
    .catch Landroid/os/RemoteException; {:try_start_168 .. :try_end_17b} :catch_17c

    .line 377
    .line 378
    .line 379
    goto :goto_182

    .line 380
    :catch_17c
    move-exception v2

    .line 381
    const-string v4, "Failed to hide navigationbar"

    .line 382
    .line 383
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    .line 385
    .line 386
    :cond_182
    :goto_182
    :try_start_182
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 387
    .line 388
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 389
    .line 390
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 391
    .line 392
    iget-boolean v5, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBar:Z

    .line 393
    .line 394
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideStatusBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    if-nez v2, :cond_19c

    .line 399
    .line 400
    const-string v2, "hide status bar failed"

    .line 401
    .line 402
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_195
    .catch Landroid/os/RemoteException; {:try_start_182 .. :try_end_195} :catch_196

    .line 403
    .line 404
    .line 405
    goto :goto_19c

    .line 406
    :catch_196
    move-exception v2

    .line 407
    const-string v4, "Failed to hide status bar"

    .line 408
    .line 409
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    .line 411
    .line 412
    :cond_19c
    :goto_19c
    :try_start_19c
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 413
    .line 414
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 415
    .line 416
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 417
    .line 418
    iget-boolean v5, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->systemBar:Z

    .line 419
    .line 420
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideSystemBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    if-nez v2, :cond_1b6

    .line 425
    .line 426
    const-string v2, "hide system bar failed"

    .line 427
    .line 428
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1af
    .catch Landroid/os/RemoteException; {:try_start_19c .. :try_end_1af} :catch_1b0

    .line 429
    .line 430
    .line 431
    goto :goto_1b6

    .line 432
    :catch_1b0
    move-exception v2

    .line 433
    const-string v4, "Failed to hide system bar"

    .line 434
    .line 435
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    .line 437
    .line 438
    :cond_1b6
    :goto_1b6
    iget-boolean v2, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->wipeRecentTasks:Z

    .line 439
    .line 440
    if-eqz v2, :cond_1d2

    .line 441
    .line 442
    :try_start_1ba
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 443
    .line 444
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 445
    .line 446
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 447
    .line 448
    invoke-interface {v2, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->wipeRecentTasks(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    if-nez v2, :cond_1d2

    .line 453
    .line 454
    const-string v2, "wipe recent task failed"

    .line 455
    .line 456
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cb
    .catch Landroid/os/RemoteException; {:try_start_1ba .. :try_end_1cb} :catch_1cc

    .line 457
    .line 458
    .line 459
    goto :goto_1d2

    .line 460
    :catch_1cc
    move-exception v2

    .line 461
    const-string v4, "Failed to wipe recent task"

    .line 462
    .line 463
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    .line 465
    .line 466
    :cond_1d2
    :goto_1d2
    :try_start_1d2
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 467
    .line 468
    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 469
    .line 470
    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 471
    .line 472
    iget v1, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->blockedEdgeFunctions:I

    .line 473
    .line 474
    invoke-interface {v2, p0, v1, v3}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowEdgeScreen(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    .line 475
    .line 476
    .line 477
    move-result p0

    .line 478
    if-nez p0, :cond_1ec

    .line 479
    .line 480
    const-string p0, "Allow edge functions failed"

    .line 481
    .line 482
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e5
    .catch Landroid/os/RemoteException; {:try_start_1d2 .. :try_end_1e5} :catch_1e6

    .line 483
    .line 484
    .line 485
    goto :goto_1ec

    .line 486
    :catch_1e6
    move-exception p0

    .line 487
    const-string v1, "Failed to Allow Edge Functions"

    .line 488
    .line 489
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    .line 491
    .line 492
    :cond_1ec
    :goto_1ec
    return-void
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
.end method
