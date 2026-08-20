.class synthetic Lcom/samsung/android/knox/dar/ddar/fsm/Event$1;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/dar/ddar/fsm/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$samsung$android$knox$dar$ddar$fsm$Event:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 16
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->values()[Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/Event$1;->$SwitchMap$com$samsung$android$knox$dar$ddar$fsm$Event:[I

    :try_start_9
    sget-object v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DDAR_WORKSPACE_CREATED:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-virtual {v1}, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    :try_start_14
    sget-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/Event$1;->$SwitchMap$com$samsung$android$knox$dar$ddar$fsm$Event:[I

    sget-object v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DEVICE_LOCKED:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-virtual {v1}, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :goto_21
    :try_start_21
    sget-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/Event$1;->$SwitchMap$com$samsung$android$knox$dar$ddar$fsm$Event:[I

    sget-object v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DATALOCK_TIMEOUT:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-virtual {v1}, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v0

    :goto_2e
    :try_start_2e
    sget-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/Event$1;->$SwitchMap$com$samsung$android$knox$dar$ddar$fsm$Event:[I

    sget-object v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DEVICE_AUTH_SUCCESS:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-virtual {v1}, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v0

    :goto_3b
    :try_start_3b
    sget-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/Event$1;->$SwitchMap$com$samsung$android$knox$dar$ddar$fsm$Event:[I

    sget-object v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DDAR_WORKSPACE_AUTH_SUCCESS:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-virtual {v1}, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v0

    :goto_48
    :try_start_48
    sget-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/Event$1;->$SwitchMap$com$samsung$android$knox$dar$ddar$fsm$Event:[I

    sget-object v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DDAR_WORKSPACE_REMOVED:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-virtual {v1}, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_53} :catch_54

    goto :goto_55

    :catch_54
    move-exception v0

    :goto_55
    return-void
.end method
