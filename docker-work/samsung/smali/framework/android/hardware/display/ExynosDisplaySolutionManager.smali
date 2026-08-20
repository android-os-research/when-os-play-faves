.class public final Landroid/hardware/display/ExynosDisplaySolutionManager;
.super Ljava/lang/Object;
.source "ExynosDisplaySolutionManager.java"


# static fields
.field public static final blacklist HDR_TUNE_PATTERN_CHANGED:Ljava/lang/String; = "com.android.server.display.HDR_TUNE_PATTERN_CHANGED"

.field public static final blacklist HDR_TUNE_PATTERN_COLOR:Ljava/lang/String; = "com.android.server.display.hdr_tune_color"

.field public static final blacklist HDR_TUNE_PATTERN_FORMAT:Ljava/lang/String; = "com.android.server.display.hdr_tune_format"

.field public static final blacklist HDR_TUNE_PATTERN_TYPE:Ljava/lang/String; = "com.android.server.display.hdr_tune_type"

.field private static blacklist RETURN_ERROR:F = 0.0f

.field private static blacklist RETURN_ERROR_INT:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "ExynosDisplaySolutionManager"


# instance fields
.field final blacklist mService:Landroid/hardware/display/IExynosDisplaySolutionManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Landroid/hardware/display/ExynosDisplaySolutionManager;->RETURN_ERROR:F

    .line 32
    const/4 v0, -0x1

    sput v0, Landroid/hardware/display/ExynosDisplaySolutionManager;->RETURN_ERROR_INT:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/display/IExynosDisplaySolutionManager;)V
    .registers 2
    .param p1, "service"    # Landroid/hardware/display/IExynosDisplaySolutionManager;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    .line 61
    return-void
.end method

.method private blacklist onError(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .line 64
    const-string v0, "ExynosDisplaySolutionManager"

    const-string v1, "Error ExynosDisplaySolutionManager"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    return-void
.end method


# virtual methods
.method public blacklist getColorEnhancementMode()Ljava/lang/String;
    .registers 3

    .line 94
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 95
    return-object v1

    .line 99
    :cond_6
    :try_start_6
    invoke-interface {v0}, Landroid/hardware/display/IExynosDisplaySolutionManager;->getColorEnhancementMode()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    .line 100
    :catch_b
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 103
    .end local v0    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public blacklist getRgbGain()[F
    .registers 3

    .line 274
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 275
    return-object v1

    .line 279
    :cond_6
    :try_start_6
    invoke-interface {v0}, Landroid/hardware/display/IExynosDisplaySolutionManager;->getRgbGain()[F

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    .line 280
    :catch_b
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 283
    .end local v0    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public blacklist setColorEnhancementSettingValue(I)V
    .registers 3
    .param p1, "value"    # I

    .line 113
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setColorEnhancementSettingValue(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 116
    goto :goto_a

    .line 114
    :catch_6
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 117
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist setColorTempSettingOn(I)V
    .registers 3
    .param p1, "onoff"    # I

    .line 139
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setColorTempSettingOn(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 142
    goto :goto_a

    .line 140
    :catch_6
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 143
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist setColorTempSettingValue(I)V
    .registers 3
    .param p1, "value"    # I

    .line 126
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setColorTempSettingValue(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 129
    goto :goto_a

    .line 127
    :catch_6
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 130
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist setDisplayFeature(Ljava/lang/String;IILjava/lang/String;)V
    .registers 7
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    if-nez v0, :cond_c

    .line 77
    const-string v0, "ExynosDisplaySolutionManager"

    const-string v1, "ExynosDisplaySolutionManagerService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void

    .line 82
    :cond_c
    :try_start_c
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setDisplayFeature(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 85
    goto :goto_14

    .line 83
    :catch_10
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 86
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method

.method public blacklist setEdgeSharpnessSettingOn(I)V
    .registers 3
    .param p1, "onoff"    # I

    .line 306
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setEdgeSharpnessSettingOn(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 309
    goto :goto_a

    .line 307
    :catch_6
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 310
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist setEdgeSharpnessSettingValue(I)V
    .registers 3
    .param p1, "value"    # I

    .line 293
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setEdgeSharpnessSettingValue(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 296
    goto :goto_a

    .line 294
    :catch_6
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 297
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist setEyeTempSettingOn(I)V
    .registers 3
    .param p1, "onoff"    # I

    .line 165
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setEyeTempSettingOn(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 168
    goto :goto_a

    .line 166
    :catch_6
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 169
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist setEyeTempSettingValue(I)V
    .registers 3
    .param p1, "value"    # I

    .line 152
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setEyeTempSettingValue(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 155
    goto :goto_a

    .line 153
    :catch_6
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 156
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist setHsvGainSettingOn(I)V
    .registers 3
    .param p1, "onoff"    # I

    .line 234
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setHsvGainSettingOn(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 237
    goto :goto_a

    .line 235
    :catch_6
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 238
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist setHsvGainSettingValue(III)V
    .registers 5
    .param p1, "h"    # I
    .param p2, "s"    # I
    .param p3, "v"    # I

    .line 221
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setHsvGainSettingValue(III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 224
    goto :goto_a

    .line 222
    :catch_6
    move-exception v0

    .line 223
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 225
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist setRgbGain(FFF)V
    .registers 5
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .line 262
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setRgbGain(FFF)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 265
    goto :goto_a

    .line 263
    :catch_6
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 266
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist setRgbGainSettingOn(I)V
    .registers 3
    .param p1, "onoff"    # I

    .line 193
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setRgbGainSettingOn(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 196
    goto :goto_a

    .line 194
    :catch_6
    move-exception v0

    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 197
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist setRgbGainSettingValue(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .line 180
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setRgbGainSettingValue(III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 183
    goto :goto_a

    .line 181
    :catch_6
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 184
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist setSkinColorSettingOn(I)V
    .registers 3
    .param p1, "onoff"    # I

    .line 206
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setSkinColorSettingOn(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 209
    goto :goto_a

    .line 207
    :catch_6
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 210
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist setWhitePointColorSettingOn(I)V
    .registers 3
    .param p1, "onoff"    # I

    .line 247
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setWhitePointColorSettingOn(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 250
    goto :goto_a

    .line 248
    :catch_6
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 251
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method
