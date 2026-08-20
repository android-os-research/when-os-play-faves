.class public Lcom/android/server/media/VolumeCtrl;
.super Ljava/lang/Object;
.source "VolumeCtrl.java"


# static fields
.field public static final ADJUST_LOWER:Ljava/lang/String; = "lower"

.field public static final ADJUST_RAISE:Ljava/lang/String; = "raise"

.field public static final ADJUST_SAME:Ljava/lang/String; = "same"

.field public static final LOG_E:Ljava/lang/String; = "[E]"

.field public static final LOG_V:Ljava/lang/String; = "[V]"

.field public static final TAG:Ljava/lang/String; = "VolumeCtrl"

.field public static final USAGE:Ljava/lang/String;

.field public static final VOLUME_CONTROL_MODE_ADJUST:I = 0x2

.field public static final VOLUME_CONTROL_MODE_SET:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "the options are as follows: \n\t\t--stream STREAM selects the stream to control, see AudioManager.STREAM_*\n\t\t                controls AudioManager.STREAM_MUSIC if no stream is specified\n\t\t--set INDEX     sets the volume index value\n\t\t--adj DIRECTION adjusts the volume, use raise|same|lower for the direction\n\t\t--get           outputs the current volume\n\t\t--show          shows the UI during the volume change\n\texamples:\n\t\tadb shell media volume --show --stream 3 --set 11\n\t\tadb shell media volume --stream 0 --adj lower\n\t\tadb shell media volume --stream 3 --get\n\n\t\tSamsung custom options are as follows: \n\t\t--setfine INDEX sets the fine volume index value\n\t\t--getfine       outputs the current fine volume\n\texamples:\n\t\tadb shell media volume --show --setfine 127\n\t\tadb shell media volume --getfine\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/media/VolumeCtrl;->USAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static run(Lcom/android/server/media/MediaShellCommand;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move v12, v5

    move v15, v12

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    const/4 v13, 0x3

    const/4 v14, 0x5

    .line 94
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v11, 0x2

    const-string v10, "[V]"

    const/4 v9, 0x1

    if-eqz v6, :cond_13a

    .line 95
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_2f6

    :goto_21
    const/4 v7, -0x1

    goto/16 :goto_79

    :sswitch_24
    const-string v7, "--stream"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2d

    goto :goto_21

    :cond_2d
    const/4 v7, 0x7

    goto :goto_79

    :sswitch_2f
    const-string v7, "--show"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_38

    goto :goto_21

    :cond_38
    const/4 v7, 0x6

    goto :goto_79

    :sswitch_3a
    const-string v7, "--getfine"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_43

    goto :goto_21

    :cond_43
    const/4 v7, 0x5

    goto :goto_79

    :sswitch_45
    const-string v1, "--device"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    goto :goto_21

    :sswitch_4e
    const-string v1, "--set"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    goto :goto_21

    :cond_57
    const/4 v7, 0x3

    goto :goto_79

    :sswitch_59
    const-string v1, "--get"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    goto :goto_21

    :cond_62
    move v7, v11

    goto :goto_79

    :sswitch_64
    const-string v1, "--adj"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    goto :goto_21

    :cond_6d
    move v7, v9

    goto :goto_79

    :sswitch_6f
    const-string v1, "--setfine"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    goto :goto_21

    :cond_78
    move v7, v3

    :cond_79
    :goto_79
    packed-switch v7, :pswitch_data_318

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :pswitch_93
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "will control stream="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {v13}, Lcom/android/server/media/VolumeCtrl;->streamName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {v0, v10, v1}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :pswitch_c7
    move v15, v9

    goto/16 :goto_f

    :pswitch_ca
    const-string/jumbo v1, "will get fine volume"

    .line 130
    invoke-virtual {v0, v10, v1}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v17, v9

    goto/16 :goto_f

    .line 120
    :pswitch_d4
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string/jumbo v1, "will set device"

    .line 121
    invoke-virtual {v0, v10, v1}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 109
    :pswitch_e8
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "will set volume to index="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v9

    goto/16 :goto_f

    :pswitch_10c
    const-string/jumbo v1, "will get volume"

    .line 101
    invoke-virtual {v0, v10, v1}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v16, v9

    goto/16 :goto_f

    .line 115
    :pswitch_116
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "will adjust volume"

    .line 116
    invoke-virtual {v0, v10, v4}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    move v5, v11

    goto/16 :goto_f

    .line 124
    :pswitch_124
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const-string/jumbo v1, "will set fine volume"

    .line 126
    invoke-virtual {v0, v10, v1}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v18, v9

    goto/16 :goto_f

    :cond_13a
    if-ne v5, v11, :cond_1a3

    if-nez v4, :cond_144

    const-string v1, "Error: no valid volume adjustment (null)"

    .line 142
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    return-void

    .line 145
    :cond_144
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string/jumbo v6, "raise"

    const-string/jumbo v8, "lower"

    const-string/jumbo v2, "same"

    sparse-switch v1, :sswitch_data_32c

    :goto_154
    const/4 v1, -0x1

    goto :goto_170

    :sswitch_156
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15d

    goto :goto_154

    :cond_15d
    move v1, v11

    goto :goto_170

    :sswitch_15f
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_166

    goto :goto_154

    :cond_166
    move v1, v9

    goto :goto_170

    :sswitch_168
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16f

    goto :goto_154

    :cond_16f
    move v1, v3

    :goto_170
    packed-switch v1, :pswitch_data_33a

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: no valid volume adjustment, was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", expected "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    return-void

    :pswitch_19f
    const/4 v8, -0x1

    goto :goto_1a4

    :pswitch_1a1
    move v8, v3

    goto :goto_1a4

    :cond_1a3
    :pswitch_1a3
    move v8, v9

    :goto_1a4
    const-string v1, "Connecting to AudioService"

    .line 159
    invoke-virtual {v0, v10, v1}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "audio"

    .line 160
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    if-eqz v1, :cond_2e7

    if-ne v5, v9, :cond_1f0

    .line 169
    invoke-interface {v1, v13}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v2

    if-gt v14, v2, :cond_1c3

    .line 170
    invoke-interface {v1, v13}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    move-result v2

    if-ge v14, v2, :cond_1f0

    :cond_1c3
    new-array v2, v7, [Ljava/lang/Object;

    .line 172
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    .line 173
    invoke-interface {v1, v13}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    .line 174
    invoke-interface {v1, v13}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const-string v1, "Error: invalid volume index %d for stream %d (should be in [%d..%d])"

    .line 171
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    return-void

    .line 182
    :cond_1f0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    if-ne v5, v9, :cond_21a

    if-eqz v12, :cond_210

    const/4 v4, 0x0

    move-object v6, v1

    move v7, v13

    move v8, v14

    move/from16 v19, v9

    move v9, v15

    move-object v5, v10

    move-object v10, v2

    move v3, v11

    move-object v11, v4

    move v4, v12

    .line 185
    invoke-interface/range {v6 .. v12}, Landroid/media/IAudioService;->setStreamVolumeForDeviceWithAttribution(IIILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_218

    :cond_210
    move/from16 v19, v9

    move-object v5, v10

    move v3, v11

    move v4, v12

    .line 188
    invoke-interface {v1, v13, v14, v15, v2}, Landroid/media/IAudioService;->setStreamVolume(IIILjava/lang/String;)V

    :goto_218
    move-object v6, v5

    goto :goto_224

    :cond_21a
    move/from16 v19, v9

    move-object v6, v10

    move v3, v11

    move v4, v12

    if-ne v5, v3, :cond_224

    .line 191
    invoke-interface {v1, v13, v8, v15, v2}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V

    :cond_224
    :goto_224
    if-eqz v16, :cond_28f

    if-eqz v4, :cond_259

    .line 195
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "device : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " stream("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-static {v13}, Lcom/android/server/media/VolumeCtrl;->streamName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") volume is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-static {v13, v4}, Landroid/media/AudioSystem;->getStreamVolumeIndex(II)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 195
    invoke-virtual {v0, v6, v4}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28f

    .line 199
    :cond_259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "volume is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v13}, Landroid/media/IAudioService;->getStreamVolume(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " in range ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-interface {v1, v13}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-interface {v1, v13}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-virtual {v0, v6, v4}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28f
    :goto_28f
    if-eqz v18, :cond_2ca

    const/high16 v4, 0x100000

    or-int v9, v15, v4

    const/4 v4, 0x3

    .line 208
    invoke-interface {v1, v4}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0xa

    if-gt v14, v5, :cond_2aa

    if-gez v14, :cond_2a1

    goto :goto_2aa

    :cond_2a1
    const/4 v7, 0x3

    const/4 v10, 0x0

    move-object v6, v1

    move v8, v14

    move-object v11, v2

    .line 215
    invoke-interface/range {v6 .. v11}, Landroid/media/IAudioService;->setFineVolume(IIIILjava/lang/String;)V

    goto :goto_2e6

    :cond_2aa
    :goto_2aa
    new-array v2, v3, [Ljava/lang/Object;

    .line 211
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x3

    .line 212
    invoke-interface {v1, v3}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v19

    const-string v1, "Error: invalid volume index %d(should be in [0..%d])"

    .line 210
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    return-void

    :cond_2ca
    if-eqz v17, :cond_2e6

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fine volume is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/media/IAudioService;->getFineVolume(II)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e6
    :goto_2e6
    return-void

    :cond_2e7
    const-string v1, "[E]"

    const-string v2, "Error type 2"

    .line 163
    invoke-virtual {v0, v1, v2}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v0, Landroid/util/AndroidException;

    const-string v1, "Can\'t connect to audio service; is the system running?"

    invoke-direct {v0, v1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_2f6
    .sparse-switch
        -0x370ae884 -> :sswitch_6f
        0x2900f07 -> :sswitch_64
        0x29025b6 -> :sswitch_59
        0x29052c2 -> :sswitch_4e
        0x3f786bf6 -> :sswitch_45
        0x4e2a5070 -> :sswitch_3a
        0x4f7a109d -> :sswitch_2f
        0x59e29d20 -> :sswitch_24
    .end sparse-switch

    :pswitch_data_318
    .packed-switch 0x0
        :pswitch_124
        :pswitch_116
        :pswitch_10c
        :pswitch_e8
        :pswitch_d4
        :pswitch_ca
        :pswitch_c7
        :pswitch_93
    .end packed-switch

    :sswitch_data_32c
    .sparse-switch
        0x35c066 -> :sswitch_168
        0x6262b01 -> :sswitch_15f
        0x67427ec -> :sswitch_156
    .end sparse-switch

    :pswitch_data_33a
    .packed-switch 0x0
        :pswitch_1a1
        :pswitch_19f
        :pswitch_1a3
    .end packed-switch
.end method

.method public static streamName(I)Ljava/lang/String;
    .registers 2

    .line 226
    :try_start_0
    sget-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object p0, v0, p0
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const-string/jumbo p0, "invalid stream"

    return-object p0
.end method
