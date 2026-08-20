.class public final Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VibratorManagerShellCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;
    }
.end annotation


# static fields
.field public static final SHELL_PACKAGE_NAME:Ljava/lang/String; = "com.android.shell"


# instance fields
.field public final mShellCallbacksToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;)V
    .registers 3

    .line 2002
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2003
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->mShellCallbacksToken:Landroid/os/IBinder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public final addOneShotToComposition(Landroid/os/VibrationEffect$Composition;)V
    .registers 6

    .line 2128
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    .line 2130
    :cond_5
    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    const-string v3, "-a"

    .line 2131
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v0, 0x1

    goto :goto_5

    :cond_15
    const-string v3, "-w"

    .line 2133
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2134
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_5

    .line 2138
    :cond_26
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    if-eqz v0, :cond_39

    .line 2139
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_3a

    :cond_39
    const/4 p0, -0x1

    :goto_3a
    int-to-long v0, v1

    .line 2141
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/VibrationEffect$Composition;->addOffDuration(Ljava/time/Duration;)Landroid/os/VibrationEffect$Composition;

    .line 2142
    invoke-static {v2, v3, p0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    return-void
.end method

.method public final addPrebakedToComposition(Landroid/os/VibrationEffect$Composition;)V
    .registers 6

    .line 2242
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    .line 2244
    :cond_5
    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    const-string v3, "-b"

    .line 2245
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v1, 0x1

    goto :goto_5

    :cond_15
    const-string v3, "-w"

    .line 2247
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2248
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_5

    .line 2252
    :cond_26
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v2, v0

    .line 2253
    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/VibrationEffect$Composition;->addOffDuration(Ljava/time/Duration;)Landroid/os/VibrationEffect$Composition;

    .line 2254
    invoke-static {p0, v1}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    return-void
.end method

.method public final addPrimitivesToComposition(Landroid/os/VibrationEffect$Composition;)V
    .registers 5

    .line 2258
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2260
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    const/4 v1, 0x0

    const-string v2, "-w"

    .line 2262
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2263
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2264
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2265
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2268
    :cond_21
    :try_start_21
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    .line 2269
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_2d} :catch_2e
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_2d} :catch_2e

    goto :goto_3

    :catch_2e
    :cond_2e
    return-void
.end method

.method public final addWaveformToComposition(Landroid/os/VibrationEffect$Composition;)V
    .registers 14

    .line 2152
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    .line 2154
    :cond_a
    :goto_a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_50

    const-string v8, "-a"

    .line 2155
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    move v3, v0

    goto :goto_a

    :cond_1a
    const-string v8, "-r"

    .line 2157
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 2158
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_a

    :cond_2b
    const-string v8, "-w"

    .line 2159
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 2160
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_a

    :cond_3c
    const-string v8, "-f"

    .line 2161
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_46

    move v4, v0

    goto :goto_a

    :cond_46
    const-string v8, "-c"

    .line 2163
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    move v6, v0

    goto :goto_a

    .line 2167
    :cond_50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2168
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2169
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 2173
    :cond_60
    :goto_60
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a6

    .line 2175
    :try_start_66
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2176
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_66 .. :try_end_74} :catch_a6

    if-eqz v3, :cond_89

    .line 2183
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    const/high16 v11, 0x437f0000    # 255.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    .line 2182
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_94

    .line 2185
    :cond_89
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v9

    move v9, v10

    :goto_94
    if-eqz v4, :cond_60

    .line 2189
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60

    :catch_a6
    :cond_a6
    int-to-long v9, v5

    .line 2194
    invoke-static {v9, v10}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->addOffDuration(Ljava/time/Duration;)Landroid/os/VibrationEffect$Composition;

    .line 2196
    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object p0

    .line 2197
    :goto_b2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_160

    if-eqz v6, :cond_ca

    .line 2199
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v9, v3

    invoke-static {v9, v10}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v3

    goto :goto_cc

    .line 2200
    :cond_ca
    sget-object v3, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    :goto_cc
    if-eqz v6, :cond_d1

    .line 2202
    sget-object v5, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    goto :goto_e0

    .line 2203
    :cond_d1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v9, v5

    invoke-static {v9, v10}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v5

    :goto_e0
    if-eqz v4, :cond_102

    .line 2206
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-static {v9}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v9

    .line 2207
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-static {v10}, Landroid/os/VibrationEffect$VibrationParameter;->targetFrequency(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v10

    .line 2206
    invoke-virtual {p0, v3, v9, v10}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    goto :goto_113

    .line 2209
    :cond_102
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-static {v9}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v9

    invoke-virtual {p0, v3, v9}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    .line 2211
    :goto_113
    invoke-virtual {v5}, Ljava/time/Duration;->isZero()Z

    move-result v3

    if-nez v3, :cond_11c

    .line 2214
    invoke-virtual {p0, v5}, Landroid/os/VibrationEffect$WaveformBuilder;->addSustain(Ljava/time/Duration;)Landroid/os/VibrationEffect$WaveformBuilder;

    :cond_11c
    if-lez v1, :cond_15c

    if-ne v1, v2, :cond_15c

    .line 2219
    invoke-virtual {p0}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    if-eqz v4, :cond_14a

    .line 2222
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object p0

    .line 2223
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Landroid/os/VibrationEffect$VibrationParameter;->targetFrequency(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v3

    .line 2222
    invoke-static {p0, v3}, Landroid/os/VibrationEffect;->startWaveform(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object p0

    goto :goto_15c

    .line 2226
    :cond_14a
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object p0

    .line 2225
    invoke-static {p0}, Landroid/os/VibrationEffect;->startWaveform(Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object p0

    :cond_15c
    :goto_15c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b2

    :cond_160
    if-gez v2, :cond_16a

    .line 2231
    invoke-virtual {p0}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    goto :goto_171

    .line 2234
    :cond_16a
    invoke-virtual {p0}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->repeatEffectIndefinitely(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    :goto_171
    return-void
.end method

.method public final createVibrationAttributes(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;)Landroid/os/VibrationAttributes;
    .registers 2

    .line 2279
    iget-boolean p0, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->force:Z

    .line 2280
    new-instance p1, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {p1}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 2281
    invoke-virtual {p1, p0}, Landroid/os/VibrationAttributes$Builder;->setFlags(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    const/16 p1, 0x12

    .line 2283
    invoke-virtual {p0, p1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    .line 2284
    invoke-virtual {p0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0
.end method

.method public final nextEffect()Landroid/os/VibrationEffect;
    .registers 4

    .line 2103
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 2106
    :goto_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3e

    const-string/jumbo v2, "oneshot"

    .line 2107
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2108
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addOneShotToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_4

    :cond_17
    const-string/jumbo v2, "waveform"

    .line 2109
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2110
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addWaveformToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_4

    :cond_24
    const-string/jumbo v2, "prebaked"

    .line 2111
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 2112
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addPrebakedToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_4

    :cond_31
    const-string/jumbo v2, "primitives"

    .line 2113
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 2114
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addPrimitivesToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_4

    .line 2121
    :cond_3e
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 5

    .line 2008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCommand "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_18
    const-string v0, "list"

    .line 2010
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2011
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runListVibrators()I

    move-result p0
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_72

    .line 2027
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :cond_28
    :try_start_28
    const-string/jumbo v0, "synced"

    .line 2013
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2014
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runMono()I

    move-result p0
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_72

    .line 2027
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :cond_39
    :try_start_39
    const-string v0, "combined"

    .line 2016
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2017
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runStereo()I

    move-result p0
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_72

    .line 2027
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :cond_49
    :try_start_49
    const-string/jumbo v0, "sequential"

    .line 2019
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 2020
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runSequential()I

    move-result p0
    :try_end_56
    .catchall {:try_start_49 .. :try_end_56} :catchall_72

    .line 2027
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :cond_5a
    :try_start_5a
    const-string v0, "cancel"

    .line 2022
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 2023
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runCancel()I

    move-result p0
    :try_end_66
    .catchall {:try_start_5a .. :try_end_66} :catchall_72

    .line 2027
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 2025
    :cond_6a
    :try_start_6a
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_72

    .line 2027
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_72
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2028
    throw p0
.end method

.method public onHelp()V
    .registers 7

    const-string v0, "    (Do Not Disturb) mode; touch feedback strength user setting "

    const-string v1, "    will be used to scale amplitude."

    const-string v2, "    wait time in milliseconds."

    const-string v3, "    If -w is provided, the effect will be played after the specified"

    const-string v4, ""

    .line 2289
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    :try_start_e
    const-string v5, "Vibrator Manager commands:"

    .line 2290
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "  help"

    .line 2291
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    Prints this help text."

    .line 2292
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2293
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "  list"

    .line 2294
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    Prints the id of device vibrators. This does not include any "

    .line 2295
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    connected input device."

    .line 2296
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "  synced [options] <effect>..."

    .line 2297
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    Vibrates effect on all vibrators in sync."

    .line 2298
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "  combined [options] (-v <vibrator-id> <effect>...)..."

    .line 2299
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    Vibrates different effects on each vibrator in sync."

    .line 2300
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "  sequential [options] (-v <vibrator-id> <effect>...)..."

    .line 2301
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    Vibrates different effects on each vibrator in sequence."

    .line 2302
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "  cancel"

    .line 2303
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    Cancels any active vibration"

    .line 2304
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2305
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "Effect commands:"

    .line 2306
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "  oneshot [-w delay] [-a] <duration> [<amplitude>]"

    .line 2307
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    Vibrates for duration milliseconds; ignored when device is on "

    .line 2308
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    DND (Do Not Disturb) mode; touch feedback strength user setting "

    .line 2309
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2310
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2311
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2312
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    If -a is provided, the command accepts a second argument for "

    .line 2313
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    amplitude, in a scale of 1-255."

    .line 2314
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "  waveform [-w delay] [-r index] [-a] [-f] [-c] "

    .line 2315
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "(<duration> [<amplitude>] [<frequency>])..."

    .line 2316
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    Vibrates for durations and amplitudes in list; ignored when "

    .line 2317
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    device is on DND (Do Not Disturb) mode; touch feedback strength "

    .line 2318
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    user setting will be used to scale amplitude."

    .line 2319
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2320
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2321
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    If -r is provided, the waveform loops back to the specified"

    .line 2322
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    index (e.g. 0 loops from the beginning)"

    .line 2323
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    If -a is provided, the command expects amplitude to follow each"

    .line 2324
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    duration; otherwise, it accepts durations only and alternates"

    .line 2325
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    off/on"

    .line 2326
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    If -f is provided, the command expects frequency to follow each"

    .line 2327
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    amplitude or duration; otherwise, it uses resonant frequency"

    .line 2328
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    If -c is provided, the waveform is continuous and will ramp"

    .line 2329
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    between values; otherwise each entry is a fixed step."

    .line 2330
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    Duration is in milliseconds; amplitude is a scale of 1-255;"

    .line 2331
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    frequency is an absolute value in hertz;"

    .line 2332
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "  prebaked [-w delay] [-b] <effect-id>"

    .line 2333
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    Vibrates with prebaked effect; ignored when device is on DND "

    .line 2334
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2335
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2336
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2337
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2338
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    If -b is provided, the prebaked fallback effect will be played if"

    .line 2339
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    the device doesn\'t support the given effect-id."

    .line 2340
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  primitives ([-w delay] <primitive-id>)..."

    .line 2341
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Vibrates with a composed effect; ignored when device is on DND "

    .line 2342
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2343
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    will be used to scale primitive intensities."

    .line 2344
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    If -w is provided, the next primitive will be played after the "

    .line 2345
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    specified wait time in milliseconds."

    .line 2346
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2347
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Common Options:"

    .line 2348
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -f"

    .line 2349
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Force. Ignore Do Not Disturb setting."

    .line 2350
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -B"

    .line 2351
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Run in the background; without this option the shell cmd will"

    .line 2352
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    block until the vibration has completed."

    .line 2353
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -d <description>"

    .line 2354
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Add description to the vibration."

    .line 2355
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -P <package>"

    .line 2356
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Add calling package to the vibration."

    .line 2357
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2358
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_14b
    .catchall {:try_start_e .. :try_end_14b} :catchall_14f

    .line 2359
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_14f
    move-exception v0

    if-eqz p0, :cond_15a

    .line 2289
    :try_start_152
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_155
    .catchall {:try_start_152 .. :try_end_155} :catchall_156

    goto :goto_15a

    :catchall_156
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_15a
    :goto_15a
    throw v0
.end method

.method public final runCancel()I
    .registers 2

    .line 2098
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p0}, Lcom/android/server/vibrator/VibratorManagerService;->cancelVibrate(ILandroid/os/IBinder;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runListVibrators()I
    .registers 6

    .line 2032
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2033
    :try_start_4
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibratorIds(Lcom/android/server/vibrator/VibratorManagerService;)[I

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    const-string p0, "No vibrator found"

    .line 2034
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26

    .line 2036
    :cond_14
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibratorIds(Lcom/android/server/vibrator/VibratorManagerService;)[I

    move-result-object p0

    array-length v1, p0

    move v3, v2

    :goto_1c
    if-ge v3, v1, :cond_26

    aget v4, p0, v3

    .line 2037
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_26
    :goto_26
    const-string p0, ""

    .line 2040
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_2f

    .line 2042
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return v2

    :catchall_2f
    move-exception p0

    if-eqz v0, :cond_3a

    .line 2032
    :try_start_32
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_3a

    :catchall_36
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3a
    :goto_3a
    throw p0
.end method

.method public final runMono()I
    .registers 3

    .line 2066
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->nextEffect()Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-static {v1}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runSequential()I
    .registers 5

    .line 2083
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    .line 2085
    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v1

    .line 2086
    :goto_9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-v"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2087
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2088
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->nextEffect()Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$SequentialCombination;

    goto :goto_9

    .line 2090
    :cond_25
    invoke-virtual {v1}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runStereo()I
    .registers 5

    .line 2071
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    .line 2073
    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v1

    .line 2074
    :goto_9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-v"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2075
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2076
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->nextEffect()Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    goto :goto_9

    .line 2078
    :cond_25
    invoke-virtual {v1}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V
    .registers 10

    .line 2049
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->createVibrationAttributes(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;)Landroid/os/VibrationAttributes;

    move-result-object v4

    .line 2053
    iget-boolean v0, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->background:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    goto :goto_d

    .line 2054
    :cond_b
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->mShellCallbacksToken:Landroid/os/IBinder;

    :goto_d
    move-object v6, v0

    .line 2055
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->pkgName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mvibrateInternal(Lcom/android/server/vibrator/VibratorManagerService;ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/Vibration;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 2057
    iget-boolean p1, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->background:Z

    if-nez p1, :cond_26

    .line 2059
    :try_start_23
    invoke-virtual {p0}, Lcom/android/server/vibrator/Vibration;->waitForEnd()V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_26

    :catch_26
    :cond_26
    return-void
.end method
