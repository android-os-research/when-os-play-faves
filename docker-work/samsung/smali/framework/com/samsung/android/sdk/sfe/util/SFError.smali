.class public Lcom/samsung/android/sdk/sfe/util/SFError;
.super Ljava/lang/Object;
.source "SFError.java"


# static fields
.field public static final blacklist E_ALREADY_CLOSED:I = 0x13

.field public static final blacklist E_ALREADY_INIT:I = 0x4

.field public static final blacklist E_ALREADY_SET:I = 0x5

.field public static final blacklist E_DATA_NOT_FOUND:I = 0x9

.field public static final blacklist E_EXCEED_IMAGE_LIMIT:I = 0x14

.field public static final blacklist E_EXCEED_TEXT_LIMIT:I = 0x15

.field public static final blacklist E_FILE_CAN_NOT_OPEN:I = 0xb

.field public static final blacklist E_FILE_NOT_FOUND:I = 0xa

.field public static final blacklist E_FORCE_STOP:I = 0x16

.field public static final blacklist E_INSTANCE_NOT_LOADED:I = 0x12

.field public static final blacklist E_INVALID_ARG:I = 0x7

.field public static final blacklist E_INVALID_DATA:I = 0x6

.field public static final blacklist E_INVALID_PASSWORD:I = 0x11

.field public static final blacklist E_INVALID_STATE:I = 0x8

.field public static final blacklist E_LIBRARY_NOT_FOUND:I = 0xf

.field public static final blacklist E_LIBRARY_NOT_LOADED:I = 0x10

.field public static final blacklist E_OUT_OF_MEMORY:I = 0x2

.field public static final blacklist E_OUT_OF_RANGE:I = 0x3

.field public static final blacklist E_PERMISSION_DENY:I = 0xe

.field public static final blacklist E_UNKNOWN:I = 0x1

.field public static final blacklist E_UNSUPPORTED_TYPE:I = 0xd

.field public static final blacklist E_UNSUPPORTED_VERSION:I = 0xc


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 178
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native blacklist Error_GetError()I
.end method

.method public static blacklist ThrowUncheckedException(I)V
    .registers 4
    .param p0, "exceptionNum"    # I

    .line 90
    packed-switch p0, :pswitch_data_6c

    .line 122
    :pswitch_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :pswitch_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INSTANCE_NOT_LOADED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :pswitch_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_UNSUPPORTED_VERSION"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :pswitch_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_DATA_NOT_FOUND"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :pswitch_34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :pswitch_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "E_INVALID_ARG"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :pswitch_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_ALREADY_SET"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :pswitch_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_ALREADY_INIT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :pswitch_54
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "E_OUT_OF_RANGE"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :pswitch_5c
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "E_OUT_OF_MEMORY"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :pswitch_64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "E_UNKNOWN"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_64
        :pswitch_5c
        :pswitch_54
        :pswitch_4c
        :pswitch_44
        :pswitch_3
        :pswitch_3c
        :pswitch_34
        :pswitch_2c
        :pswitch_3
        :pswitch_3
        :pswitch_24
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist ThrowUncheckedException(ILjava/lang/String;)V
    .registers 5
    .param p0, "exceptionNum"    # I
    .param p1, "message"    # Ljava/lang/String;

    .line 128
    packed-switch p0, :pswitch_data_110

    .line 160
    :pswitch_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :pswitch_26
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_INSTANCE_NOT_LOADED : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :pswitch_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_UNSUPPORTED_VERSION"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :pswitch_47
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_DATA_NOT_FOUND : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :pswitch_60
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_INVALID_STATE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :pswitch_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_INVALID_ARG : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :pswitch_92
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_ALREADY_SET : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :pswitch_ab
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_ALREADY_INIT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :pswitch_c4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_OUT_OF_RANGE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :pswitch_dd
    new-instance v0, Ljava/lang/OutOfMemoryError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_OUT_OF_MEMORY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :pswitch_f6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_UNKNOWN : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_f6
        :pswitch_dd
        :pswitch_c4
        :pswitch_ab
        :pswitch_92
        :pswitch_3
        :pswitch_79
        :pswitch_60
        :pswitch_47
        :pswitch_3
        :pswitch_3
        :pswitch_3f
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_26
    .end packed-switch
.end method

.method public static blacklist getError()I
    .registers 1

    .line 166
    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->Error_GetError()I

    move-result v0

    return v0
.end method

.method private static blacklist isBuildTypeEngMode()Z
    .registers 2

    .line 170
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
