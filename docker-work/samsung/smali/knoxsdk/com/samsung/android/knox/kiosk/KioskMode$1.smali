.class public final Lcom/samsung/android/knox/kiosk/KioskMode$1;
.super Ljava/lang/Object;
.source "KioskMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/kiosk/KioskMode;->enableKioskMode(Lcom/samsung/android/knox/kiosk/KioskSetting;)V
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
.method public constructor greylist <init>(Lcom/samsung/android/knox/kiosk/KioskMode;Lcom/samsung/android/knox/kiosk/KioskSetting;Lcom/samsung/android/knox/kiosk/IKioskMode;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 1
    .line 2
    iput-object p2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$kiosk:Lcom/samsung/android/knox/kiosk/KioskSetting;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

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
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$kiosk:Lcom/samsung/android/knox/kiosk/KioskSetting;

    .line 1
    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez v0, :cond_27

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/knox/kiosk/KioskSetting;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/samsung/android/knox/kiosk/KioskSetting;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->homeKey:Z

    .line 11
    .line 12
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->settingsChanges:Z

    .line 13
    .line 14
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBarExpansion:Z

    .line 15
    .line 16
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airCommand:Z

    .line 17
    .line 18
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airView:Z

    .line 19
    .line 20
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->multiWindow:Z

    .line 21
    .line 22
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->smartClip:Z

    .line 23
    .line 24
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->taskManager:Z

    .line 25
    .line 26
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->clearAllNotifications:Z

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->navigationBar:Z

    .line 30
    .line 31
    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBar:Z

    .line 32
    .line 33
    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->systemBar:Z

    .line 34
    .line 35
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->wipeRecentTasks:Z

    .line 36
    .line 37
    iput v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->blockedEdgeFunctions:I

    .line 38
    .line 39
    :cond_27
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 40
    .line 41
    sget-object v3, Lcom/samsung/android/knox/kiosk/KioskMode;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/samsung/android/knox/kiosk/KioskMode;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v3, "KioskMode"

    .line 48
    .line 49
    if-nez v2, :cond_39

    .line 50
    .line 51
    const-string v2, "Failed talking with restriction service"

    .line 52
    .line 53
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto :goto_99

    .line 57
    :cond_39
    :try_start_39
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 58
    .line 59
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 60
    .line 61
    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->settingsChanges:Z

    .line 62
    .line 63
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSettingsChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_51

    .line 68
    .line 69
    const-string v4, "allow settings changes failed"

    .line 70
    .line 71
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_4a} :catch_4b

    .line 72
    .line 73
    .line 74
    goto :goto_51

    .line 75
    :catch_4b
    move-exception v4

    .line 76
    const-string v5, "Failed to allow settings changes"

    .line 77
    .line 78
    invoke-static {v3, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    :cond_51
    :goto_51
    :try_start_51
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 82
    .line 83
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 84
    .line 85
    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBarExpansion:Z

    .line 86
    .line 87
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowStatusBarExpansion(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-nez v4, :cond_69

    .line 92
    .line 93
    const-string v4, "allow status bar expansion failed"

    .line 94
    .line 95
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_62} :catch_63

    .line 96
    .line 97
    .line 98
    goto :goto_69

    .line 99
    :catch_63
    move-exception v4

    .line 100
    const-string v5, "Failed to allow status bar expansion"

    .line 101
    .line 102
    invoke-static {v3, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .line 104
    .line 105
    :cond_69
    :goto_69
    :try_start_69
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 106
    .line 107
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 108
    .line 109
    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->homeKey:Z

    .line 110
    .line 111
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setHomeKeyState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-nez v4, :cond_81

    .line 116
    .line 117
    const-string v4, "set home key state failed"

    .line 118
    .line 119
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_7a} :catch_7b

    .line 120
    .line 121
    .line 122
    goto :goto_81

    .line 123
    :catch_7b
    move-exception v4

    .line 124
    const-string v5, "Failed to set home key state"

    .line 125
    .line 126
    invoke-static {v3, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .line 128
    .line 129
    :cond_81
    :goto_81
    :try_start_81
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 130
    .line 131
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 132
    .line 133
    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->smartClip:Z

    .line 134
    .line 135
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSmartClipMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_99

    .line 140
    .line 141
    const-string v2, "allow smart clip mode failed"

    .line 142
    .line 143
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_92} :catch_93

    .line 144
    .line 145
    .line 146
    goto :goto_99

    .line 147
    :catch_93
    move-exception v2

    .line 148
    const-string v4, "Failed to allow smart clip mode"

    .line 149
    .line 150
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .line 152
    .line 153
    :cond_99
    :goto_99
    :try_start_99
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 154
    .line 155
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 156
    .line 157
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 158
    .line 159
    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airCommand:Z

    .line 160
    .line 161
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirCommandMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-nez v2, :cond_b3

    .line 166
    .line 167
    const-string v2, "set air command mode failed"

    .line 168
    .line 169
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_ac} :catch_ad

    .line 170
    .line 171
    .line 172
    goto :goto_b3

    .line 173
    :catch_ad
    move-exception v2

    .line 174
    const-string v4, "Failed to allow air command mode"

    .line 175
    .line 176
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .line 178
    .line 179
    :cond_b3
    :goto_b3
    :try_start_b3
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 180
    .line 181
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 182
    .line 183
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 184
    .line 185
    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airView:Z

    .line 186
    .line 187
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirViewMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-nez v2, :cond_cd

    .line 192
    .line 193
    const-string v2, "set air view mode failed"

    .line 194
    .line 195
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_c6} :catch_c7

    .line 196
    .line 197
    .line 198
    goto :goto_cd

    .line 199
    :catch_c7
    move-exception v2

    .line 200
    const-string v4, "Failed to allow air view mode"

    .line 201
    .line 202
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    .line 204
    .line 205
    :cond_cd
    :goto_cd
    iget-object v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    .line 206
    .line 207
    if-eqz v2, :cond_109

    .line 208
    .line 209
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    new-array v2, v2, [I

    .line 214
    .line 215
    move v4, v1

    .line 216
    :goto_d8
    iget-object v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    .line 217
    .line 218
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    if-ge v4, v5, :cond_f1

    .line 223
    .line 224
    iget-object v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    .line 225
    .line 226
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    check-cast v5, Ljava/lang/Integer;

    .line 231
    .line 232
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    aput v5, v2, v4

    .line 237
    .line 238
    add-int/lit8 v4, v4, 0x1

    .line 239
    .line 240
    goto :goto_d8

    .line 241
    :cond_f1
    :try_start_f1
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 242
    .line 243
    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 244
    .line 245
    iget-object v5, v5, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 246
    .line 247
    invoke-interface {v4, v5, v2, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowHardwareKeys(Lcom/samsung/android/knox/ContextInfo;[IZ)[I

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    if-nez v2, :cond_109

    .line 252
    .line 253
    const-string v2, "allowHardwareKeys failed"

    .line 254
    .line 255
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_102
    .catch Landroid/os/RemoteException; {:try_start_f1 .. :try_end_102} :catch_103

    .line 256
    .line 257
    .line 258
    goto :goto_109

    .line 259
    :catch_103
    move-exception v2

    .line 260
    const-string v4, "Failed to allow hardware keys"

    .line 261
    .line 262
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    .line 264
    .line 265
    :cond_109
    :goto_109
    :try_start_109
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 266
    .line 267
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 268
    .line 269
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 270
    .line 271
    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->multiWindow:Z

    .line 272
    .line 273
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowMultiWindowMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-nez v2, :cond_123

    .line 278
    .line 279
    const-string v2, "set multiwindow mode failed"

    .line 280
    .line 281
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11c
    .catch Landroid/os/RemoteException; {:try_start_109 .. :try_end_11c} :catch_11d

    .line 282
    .line 283
    .line 284
    goto :goto_123

    .line 285
    :catch_11d
    move-exception v2

    .line 286
    const-string v4, "Failed to allow multiwindow mode"

    .line 287
    .line 288
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    .line 290
    .line 291
    :cond_123
    :goto_123
    :try_start_123
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 292
    .line 293
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 294
    .line 295
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 296
    .line 297
    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->taskManager:Z

    .line 298
    .line 299
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowTaskManager(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    if-nez v2, :cond_13d

    .line 304
    .line 305
    const-string v2, "set task manager failed"

    .line 306
    .line 307
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_136
    .catch Landroid/os/RemoteException; {:try_start_123 .. :try_end_136} :catch_137

    .line 308
    .line 309
    .line 310
    goto :goto_13d

    .line 311
    :catch_137
    move-exception v2

    .line 312
    const-string v4, "Failed to allow task manager"

    .line 313
    .line 314
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    .line 316
    .line 317
    :cond_13d
    :goto_13d
    iget-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->clearAllNotifications:Z

    .line 318
    .line 319
    if-eqz v2, :cond_159

    .line 320
    .line 321
    :try_start_141
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 322
    .line 323
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 324
    .line 325
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 326
    .line 327
    invoke-interface {v2, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->clearAllNotifications(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    if-nez v2, :cond_159

    .line 332
    .line 333
    const-string v2, "clear all notifications failed"

    .line 334
    .line 335
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_152
    .catch Landroid/os/RemoteException; {:try_start_141 .. :try_end_152} :catch_153

    .line 336
    .line 337
    .line 338
    goto :goto_159

    .line 339
    :catch_153
    move-exception v2

    .line 340
    const-string v4, "Failed to clear all notifications"

    .line 341
    .line 342
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    .line 344
    .line 345
    :cond_159
    :goto_159
    :try_start_159
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 346
    .line 347
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 348
    .line 349
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 350
    .line 351
    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->systemBar:Z

    .line 352
    .line 353
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideSystemBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-nez v2, :cond_173

    .line 358
    .line 359
    const-string v2, "hide system bar failed"

    .line 360
    .line 361
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16c
    .catch Landroid/os/RemoteException; {:try_start_159 .. :try_end_16c} :catch_16d

    .line 362
    .line 363
    .line 364
    goto :goto_173

    .line 365
    :catch_16d
    move-exception v2

    .line 366
    const-string v4, "Failed to hide system bar"

    .line 367
    .line 368
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    .line 370
    .line 371
    :cond_173
    :goto_173
    :try_start_173
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 372
    .line 373
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 374
    .line 375
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 376
    .line 377
    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->navigationBar:Z

    .line 378
    .line 379
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideNavigationBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    if-nez v2, :cond_18d

    .line 384
    .line 385
    const-string v2, "hide navigationbar failed"

    .line 386
    .line 387
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_186
    .catch Landroid/os/RemoteException; {:try_start_173 .. :try_end_186} :catch_187

    .line 388
    .line 389
    .line 390
    goto :goto_18d

    .line 391
    :catch_187
    move-exception v2

    .line 392
    const-string v4, "Failed to hide navigationbar"

    .line 393
    .line 394
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    .line 396
    .line 397
    :cond_18d
    :goto_18d
    :try_start_18d
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 398
    .line 399
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 400
    .line 401
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 402
    .line 403
    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBar:Z

    .line 404
    .line 405
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideStatusBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    if-nez v2, :cond_1a7

    .line 410
    .line 411
    const-string v2, "hide status bar failed"

    .line 412
    .line 413
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a0
    .catch Landroid/os/RemoteException; {:try_start_18d .. :try_end_1a0} :catch_1a1

    .line 414
    .line 415
    .line 416
    goto :goto_1a7

    .line 417
    :catch_1a1
    move-exception v2

    .line 418
    const-string v4, "Failed to hide status bar"

    .line 419
    .line 420
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    .line 422
    .line 423
    :cond_1a7
    :goto_1a7
    iget-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->wipeRecentTasks:Z

    .line 424
    .line 425
    if-eqz v2, :cond_1c3

    .line 426
    .line 427
    :try_start_1ab
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 428
    .line 429
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 430
    .line 431
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 432
    .line 433
    invoke-interface {v2, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->wipeRecentTasks(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    if-nez v2, :cond_1c3

    .line 438
    .line 439
    const-string v2, "wipe recent task failed"

    .line 440
    .line 441
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bc
    .catch Landroid/os/RemoteException; {:try_start_1ab .. :try_end_1bc} :catch_1bd

    .line 442
    .line 443
    .line 444
    goto :goto_1c3

    .line 445
    :catch_1bd
    move-exception v2

    .line 446
    const-string v4, "Failed to wipe recent task"

    .line 447
    .line 448
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    .line 450
    .line 451
    :cond_1c3
    :goto_1c3
    :try_start_1c3
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 452
    .line 453
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 454
    .line 455
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 456
    .line 457
    iget v0, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->blockedEdgeFunctions:I

    .line 458
    .line 459
    invoke-interface {v2, v4, v0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowEdgeScreen(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    if-nez v0, :cond_1dd

    .line 464
    .line 465
    const-string v0, "block edge functions failed"

    .line 466
    .line 467
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d6
    .catch Landroid/os/RemoteException; {:try_start_1c3 .. :try_end_1d6} :catch_1d7

    .line 468
    .line 469
    .line 470
    goto :goto_1dd

    .line 471
    :catch_1d7
    move-exception v0

    .line 472
    const-string v1, "Failed to Block Edge Functions"

    .line 473
    .line 474
    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    .line 476
    .line 477
    :cond_1dd
    :goto_1dd
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 478
    .line 479
    invoke-virtual {v0}, Lcom/samsung/android/knox/kiosk/KioskMode;->isKioskModeEnabled()Z

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    if-nez v0, :cond_1f7

    .line 484
    .line 485
    :try_start_1e5
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 486
    .line 487
    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 488
    .line 489
    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 490
    .line 491
    const-string v1, "com.sec.android.kiosk"

    .line 492
    .line 493
    invoke-interface {v0, p0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->enableKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    :try_end_1f0
    .catch Landroid/os/RemoteException; {:try_start_1e5 .. :try_end_1f0} :catch_1f1

    .line 494
    .line 495
    .line 496
    goto :goto_1f7

    .line 497
    :catch_1f1
    move-exception p0

    .line 498
    const-string v0, "Failed talking with kiosk mode service"

    .line 499
    .line 500
    invoke-static {v3, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 501
    .line 502
    .line 503
    :cond_1f7
    :goto_1f7
    return-void
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
