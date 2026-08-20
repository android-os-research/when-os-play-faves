.class public final Lcom/android/server/display/DisplayPowerController$BrightnessReason;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BrightnessReason"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerController$BrightnessReason$BrightnessChange;
    }
.end annotation


# static fields
.field public static final ADJUSTMENT_AUTO:I = 0x2

.field public static final ADJUSTMENT_AUTO_TEMP:I = 0x1

.field public static final MODIFIER_AB_LIMIT:I = 0x40

.field public static final MODIFIER_COVER_LIMIT:I = 0x80

.field public static final MODIFIER_CURTAIN:I = 0x400

.field public static final MODIFIER_DIMMED:I = 0x1

.field public static final MODIFIER_DOZE_MAXIMUM:I = 0x800

.field public static final MODIFIER_FORCE_DIMMED:I = 0x1000

.field public static final MODIFIER_HBM_AT_MANUAL:I = 0x4000

.field public static final MODIFIER_HBM_BLOCK:I = 0x100

.field public static final MODIFIER_HDR:I = 0x4

.field public static final MODIFIER_LOW_POWER:I = 0x2

.field public static final MODIFIER_MASK:I = 0xfff

.field public static final MODIFIER_MB_LIMIT:I = 0x20

.field public static final MODIFIER_OUTDOOR_MODE:I = 0x200

.field public static final MODIFIER_RESTORE_MANUAL:I = 0x2000

.field public static final MODIFIER_SCALE_FACTOR:I = 0x10

.field public static final MODIFIER_THROTTLED:I = 0x8

.field public static final REASON_AUTOMATIC:I = 0x4

.field public static final REASON_BOOST:I = 0x9

.field public static final REASON_DOZE:I = 0x2

.field public static final REASON_DOZE_DEFAULT:I = 0x3

.field public static final REASON_LAST_TARGET:I = 0xa

.field public static final REASON_MANUAL:I = 0x1

.field public static final REASON_MAX:I = 0xa

.field public static final REASON_OVERRIDE:I = 0x7

.field public static final REASON_SCREEN_OFF:I = 0x5

.field public static final REASON_TEMPORARY:I = 0x8

.field public static final REASON_UNKNOWN:I = 0x0

.field public static final REASON_VR:I = 0x6


# instance fields
.field public changes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/DisplayPowerController$BrightnessReason$BrightnessChange;",
            ">;"
        }
    .end annotation
.end field

.field public modifier:I

.field public reason:I

.field public startBrightness:I

.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public static bridge synthetic -$$Nest$mmodifierToString(Lcom/android/server/display/DisplayPowerController$BrightnessReason;I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifierToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .registers 2

    .line 4389
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4446
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->changes:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$BrightnessReason-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    return-void
.end method


# virtual methods
.method public addModifier(IF)V
    .registers 5

    .line 4500
    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setModifier(I)V

    .line 4501
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->changes:Ljava/util/List;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$BrightnessReason$BrightnessChange;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DisplayPowerController$BrightnessReason$BrightnessChange;-><init>(Lcom/android/server/display/DisplayPowerController$BrightnessReason;IF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public changesToString()Ljava/lang/String;
    .registers 5

    .line 4505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4506
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 4507
    iget v2, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->startBrightness:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "[%d]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4508
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->changes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_35

    .line 4509
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->changes:Ljava/util/List;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$BrightnessReason$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController$BrightnessReason$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 4511
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 4555
    instance-of v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 4558
    :cond_6
    check-cast p1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 4559
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    iget v2, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    if-ne v0, v2, :cond_15

    iget p1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    iget p0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    if-ne p1, p0, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public hasLoggableChanges(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)Z
    .registers 4

    const/4 v0, 0x7

    .line 4535
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->isReasonChanged(Lcom/android/server/display/DisplayPowerController$BrightnessReason;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    return v1

    :cond_9
    const/16 v0, 0x70

    .line 4538
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->isModifierChanged(Lcom/android/server/display/DisplayPowerController$BrightnessReason;I)Z

    move-result p0

    if-eqz p0, :cond_12

    return v1

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public hasModifier(I)Z
    .registers 4

    and-int/lit16 v0, p1, -0x1000

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 4549
    :cond_6
    iget p0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 4564
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isModifierChanged(Lcom/android/server/display/DisplayPowerController$BrightnessReason;I)Z
    .registers 5

    .line 4522
    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    if-eq v0, v1, :cond_12

    .line 4523
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->hasModifier(I)Z

    move-result p0

    invoke-virtual {p1, p2}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->hasModifier(I)Z

    move-result p1

    if-eq p0, p1, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isReasonChanged(Lcom/android/server/display/DisplayPowerController$BrightnessReason;I)Z
    .registers 4

    .line 4515
    iget p0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    iget p1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    const/4 v0, 0x0

    if-eq p0, p1, :cond_c

    if-eq p0, p2, :cond_b

    if-ne p1, p2, :cond_c

    :cond_b
    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public isStartBrightnessChanged(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)Z
    .registers 2

    .line 4531
    iget p0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->startBrightness:I

    iget p1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->startBrightness:I

    if-eq p0, p1, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final modifierToString(I)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_52

    const/4 p0, 0x2

    if-eq p1, p0, :cond_4e

    sparse-switch p1, :sswitch_data_56

    .line 4637
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_1f
    const-string/jumbo p0, "hbm_at_manual"

    return-object p0

    :sswitch_23
    const-string/jumbo p0, "restore_manual"

    return-object p0

    :sswitch_27
    const-string p0, "force_dim"

    return-object p0

    :sswitch_2a
    const-string p0, "doze_maximum"

    return-object p0

    :sswitch_2d
    const-string p0, "curtain"

    return-object p0

    :sswitch_30
    const-string/jumbo p0, "outdoor"

    return-object p0

    :sswitch_34
    const-string/jumbo p0, "hbm_block"

    return-object p0

    :sswitch_38
    const-string p0, "cover_limit"

    return-object p0

    :sswitch_3b
    const-string p0, "ab_limit"

    return-object p0

    :sswitch_3e
    const-string/jumbo p0, "mb_limit"

    return-object p0

    :sswitch_42
    const-string/jumbo p0, "scale_factor"

    return-object p0

    :sswitch_46
    const-string/jumbo p0, "throttled"

    return-object p0

    :sswitch_4a
    const-string/jumbo p0, "hdr"

    return-object p0

    :cond_4e
    const-string/jumbo p0, "low_pwr"

    return-object p0

    :cond_52
    const-string p0, "dim"

    return-object p0

    nop

    :sswitch_data_56
    .sparse-switch
        0x4 -> :sswitch_4a
        0x8 -> :sswitch_46
        0x10 -> :sswitch_42
        0x20 -> :sswitch_3e
        0x40 -> :sswitch_3b
        0x80 -> :sswitch_38
        0x100 -> :sswitch_34
        0x200 -> :sswitch_30
        0x400 -> :sswitch_2d
        0x800 -> :sswitch_2a
        0x1000 -> :sswitch_27
        0x2000 -> :sswitch_23
        0x4000 -> :sswitch_1f
    .end sparse-switch
.end method

.method public final reasonToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_2c

    .line 4615
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "last_target"

    return-object p0

    :pswitch_c
    const-string p0, "boost"

    return-object p0

    :pswitch_f
    const-string/jumbo p0, "temporary"

    return-object p0

    :pswitch_13
    const-string/jumbo p0, "override"

    return-object p0

    :pswitch_17
    const-string/jumbo p0, "vr"

    return-object p0

    :pswitch_1b
    const-string/jumbo p0, "screen_off"

    return-object p0

    :pswitch_1f
    const-string p0, "automatic"

    return-object p0

    :pswitch_22
    const-string p0, "doze_default"

    return-object p0

    :pswitch_25
    const-string p0, "doze"

    return-object p0

    :pswitch_28
    const-string/jumbo p0, "manual"

    return-object p0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method public set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_5

    move v1, v0

    goto :goto_7

    .line 4451
    :cond_5
    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    :goto_7
    if-nez p1, :cond_b

    move v2, v0

    goto :goto_d

    .line 4453
    :cond_b
    iget v2, p1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->startBrightness:I

    .line 4451
    :goto_d
    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(II)V

    if-nez p1, :cond_13

    goto :goto_15

    .line 4455
    :cond_13
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    :goto_15
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setModifier(I)V

    return-void
.end method

.method public setModifier(I)V
    .registers 4

    and-int/lit16 v0, p1, -0x1000

    if-eqz v0, :cond_23

    .line 4470
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetTAG(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "brightness modifier out of bounds: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4471
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4470
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 4473
    :cond_23
    iput p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    :goto_25
    return-void
.end method

.method public setReason(IF)V
    .registers 3

    .line 4485
    invoke-static {p2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(II)V

    return-void
.end method

.method public setReason(II)V
    .registers 4

    if-ltz p1, :cond_11

    const/16 v0, 0xa

    if-le p1, v0, :cond_7

    goto :goto_11

    .line 4493
    :cond_7
    iput p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    .line 4494
    iput p2, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->startBrightness:I

    .line 4496
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->changes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    .line 4490
    :cond_11
    :goto_11
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetTAG(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "brightness reason out of bounds: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 4569
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(I)Ljava/lang/String;
    .registers 4

    .line 4573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4574
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    .line 4575
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1c

    const-string v1, " temp_adj"

    .line 4577
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_25

    const-string p1, " auto_adj"

    .line 4580
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4582
    :cond_25
    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_30

    const-string p1, " low_pwr"

    .line 4583
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4585
    :cond_30
    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3b

    const-string p1, " dim"

    .line 4586
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4588
    :cond_3b
    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_46

    const-string p1, " hdr"

    .line 4589
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4591
    :cond_46
    iget p0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_51

    const-string p0, " throttled"

    .line 4592
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4594
    :cond_51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p1, p0, -0x1

    .line 4595
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    const/16 v1, 0x5b

    if-ne p1, v1, :cond_65

    add-int/lit8 p0, p0, -0x2

    .line 4596
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_6a

    :cond_65
    const-string p0, " ]"

    .line 4598
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4600
    :goto_6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
