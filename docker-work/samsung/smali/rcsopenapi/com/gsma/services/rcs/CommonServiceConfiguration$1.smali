.class synthetic Lcom/gsma/services/rcs/CommonServiceConfiguration$1;
.super Ljava/lang/Object;
.source "CommonServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/CommonServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$gsma$services$rcs$CommonServiceConfiguration$MessagingMethod:[I

.field static final synthetic $SwitchMap$com$gsma$services$rcs$CommonServiceConfiguration$MessagingMode:[I

.field static final synthetic $SwitchMap$com$gsma$services$rcs$CommonServiceConfiguration$MinimumBatteryLevel:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 163
    invoke-static {}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->values()[Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$1;->$SwitchMap$com$gsma$services$rcs$CommonServiceConfiguration$MessagingMethod:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->AUTOMATIC:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    invoke-virtual {v2}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    const/4 v0, 0x2

    :try_start_15
    sget-object v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$1;->$SwitchMap$com$gsma$services$rcs$CommonServiceConfiguration$MessagingMethod:[I

    sget-object v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->RCS:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v2

    :goto_21
    const/4 v2, 0x3

    :try_start_22
    sget-object v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$1;->$SwitchMap$com$gsma$services$rcs$CommonServiceConfiguration$MessagingMethod:[I

    sget-object v4, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->NON_RCS:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    invoke-virtual {v4}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v3

    .line 116
    :goto_2e
    invoke-static {}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->values()[Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$1;->$SwitchMap$com$gsma$services$rcs$CommonServiceConfiguration$MessagingMode:[I

    :try_start_37
    sget-object v4, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->INTEGRATED:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    invoke-virtual {v4}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_3f} :catch_40

    goto :goto_41

    :catch_40
    move-exception v3

    :goto_41
    :try_start_41
    sget-object v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$1;->$SwitchMap$com$gsma$services$rcs$CommonServiceConfiguration$MessagingMode:[I

    sget-object v4, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->CONVERGED:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    invoke-virtual {v4}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_4b} :catch_4c

    goto :goto_4d

    :catch_4c
    move-exception v3

    :goto_4d
    :try_start_4d
    sget-object v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$1;->$SwitchMap$com$gsma$services$rcs$CommonServiceConfiguration$MessagingMode:[I

    sget-object v4, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->SEAMLESS:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    invoke-virtual {v4}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_57} :catch_58

    goto :goto_59

    :catch_58
    move-exception v3

    :goto_59
    const/4 v3, 0x4

    :try_start_5a
    sget-object v4, Lcom/gsma/services/rcs/CommonServiceConfiguration$1;->$SwitchMap$com$gsma$services$rcs$CommonServiceConfiguration$MessagingMode:[I

    sget-object v5, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->NONE:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    invoke-virtual {v5}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_64} :catch_65

    goto :goto_66

    :catch_65
    move-exception v4

    .line 71
    :goto_66
    invoke-static {}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->values()[Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/gsma/services/rcs/CommonServiceConfiguration$1;->$SwitchMap$com$gsma$services$rcs$CommonServiceConfiguration$MinimumBatteryLevel:[I

    :try_start_6f
    sget-object v5, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->NONE:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    invoke-virtual {v5}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_77} :catch_78

    goto :goto_79

    :catch_78
    move-exception v1

    :goto_79
    :try_start_79
    sget-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$1;->$SwitchMap$com$gsma$services$rcs$CommonServiceConfiguration$MinimumBatteryLevel:[I

    sget-object v4, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->PERCENT_5:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    invoke-virtual {v4}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_83} :catch_84

    goto :goto_85

    :catch_84
    move-exception v0

    :goto_85
    :try_start_85
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$1;->$SwitchMap$com$gsma$services$rcs$CommonServiceConfiguration$MinimumBatteryLevel:[I

    sget-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->PERCENT_10:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    invoke-virtual {v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85 .. :try_end_8f} :catch_90

    goto :goto_91

    :catch_90
    move-exception v0

    :goto_91
    :try_start_91
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$1;->$SwitchMap$com$gsma$services$rcs$CommonServiceConfiguration$MinimumBatteryLevel:[I

    sget-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->PERCENT_20:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    invoke-virtual {v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_9b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_91 .. :try_end_9b} :catch_9c

    goto :goto_9d

    :catch_9c
    move-exception v0

    :goto_9d
    return-void
.end method
