.class public synthetic Lorg/tensorflow/lite/DataType$1;
.super Ljava/lang/Object;
.source "DataType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/DataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$org$tensorflow$lite$DataType:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 52
    invoke-static {}, Lorg/tensorflow/lite/DataType;->values()[Lorg/tensorflow/lite/DataType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/tensorflow/lite/DataType$1;->$SwitchMap$org$tensorflow$lite$DataType:[I

    :try_start_9
    sget-object v1, Lorg/tensorflow/lite/DataType;->FLOAT32:Lorg/tensorflow/lite/DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lorg/tensorflow/lite/DataType$1;->$SwitchMap$org$tensorflow$lite$DataType:[I

    sget-object v1, Lorg/tensorflow/lite/DataType;->INT32:Lorg/tensorflow/lite/DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lorg/tensorflow/lite/DataType$1;->$SwitchMap$org$tensorflow$lite$DataType:[I

    sget-object v1, Lorg/tensorflow/lite/DataType;->INT16:Lorg/tensorflow/lite/DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lorg/tensorflow/lite/DataType$1;->$SwitchMap$org$tensorflow$lite$DataType:[I

    sget-object v1, Lorg/tensorflow/lite/DataType;->INT8:Lorg/tensorflow/lite/DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lorg/tensorflow/lite/DataType$1;->$SwitchMap$org$tensorflow$lite$DataType:[I

    sget-object v1, Lorg/tensorflow/lite/DataType;->UINT8:Lorg/tensorflow/lite/DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lorg/tensorflow/lite/DataType$1;->$SwitchMap$org$tensorflow$lite$DataType:[I

    sget-object v1, Lorg/tensorflow/lite/DataType;->INT64:Lorg/tensorflow/lite/DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lorg/tensorflow/lite/DataType$1;->$SwitchMap$org$tensorflow$lite$DataType:[I

    sget-object v1, Lorg/tensorflow/lite/DataType;->BOOL:Lorg/tensorflow/lite/DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lorg/tensorflow/lite/DataType$1;->$SwitchMap$org$tensorflow$lite$DataType:[I

    sget-object v1, Lorg/tensorflow/lite/DataType;->STRING:Lorg/tensorflow/lite/DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    return-void
.end method
