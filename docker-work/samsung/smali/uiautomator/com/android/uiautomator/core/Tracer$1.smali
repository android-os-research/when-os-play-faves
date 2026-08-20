.class synthetic Lcom/android/uiautomator/core/Tracer$1;
.super Ljava/lang/Object;
.source "Tracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/core/Tracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$uiautomator$core$Tracer$Mode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 122
    invoke-static {}, Lcom/android/uiautomator/core/Tracer$Mode;->values()[Lcom/android/uiautomator/core/Tracer$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/uiautomator/core/Tracer$1;->$SwitchMap$com$android$uiautomator$core$Tracer$Mode:[I

    :try_start_9
    sget-object v1, Lcom/android/uiautomator/core/Tracer$Mode;->FILE:Lcom/android/uiautomator/core/Tracer$Mode;

    invoke-virtual {v1}, Lcom/android/uiautomator/core/Tracer$Mode;->ordinal()I

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
    sget-object v0, Lcom/android/uiautomator/core/Tracer$1;->$SwitchMap$com$android$uiautomator$core$Tracer$Mode:[I

    sget-object v1, Lcom/android/uiautomator/core/Tracer$Mode;->LOGCAT:Lcom/android/uiautomator/core/Tracer$Mode;

    invoke-virtual {v1}, Lcom/android/uiautomator/core/Tracer$Mode;->ordinal()I

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
    sget-object v0, Lcom/android/uiautomator/core/Tracer$1;->$SwitchMap$com$android$uiautomator$core$Tracer$Mode:[I

    sget-object v1, Lcom/android/uiautomator/core/Tracer$Mode;->ALL:Lcom/android/uiautomator/core/Tracer$Mode;

    invoke-virtual {v1}, Lcom/android/uiautomator/core/Tracer$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v0

    :goto_2e
    return-void
.end method
