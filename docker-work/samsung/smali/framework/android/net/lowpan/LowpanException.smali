.class public Landroid/net/lowpan/LowpanException;
.super Landroid/util/AndroidException;
.source "LowpanException.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Landroid/util/AndroidException;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Exception;

    .line 42
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/Exception;)V

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method

.method static blacklist rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;
    .registers 3
    .param p0, "e"    # Landroid/os/ServiceSpecificException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .line 53
    iget v0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v0, :pswitch_data_6e

    .line 89
    :pswitch_5
    new-instance v0, Landroid/net/lowpan/LowpanRuntimeException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/LowpanRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 73
    :pswitch_b
    new-instance v0, Landroid/net/lowpan/NetworkAlreadyExistsException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/NetworkAlreadyExistsException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 70
    :pswitch_11
    new-instance v0, Landroid/net/lowpan/JoinFailedAtAuthException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/JoinFailedAtAuthException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 67
    :pswitch_17
    new-instance v0, Landroid/net/lowpan/JoinFailedAtScanException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/JoinFailedAtScanException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 64
    :pswitch_1d
    new-instance v0, Landroid/net/lowpan/JoinFailedException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/JoinFailedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 76
    :pswitch_23
    new-instance v0, Landroid/net/lowpan/LowpanException;

    .line 77
    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    :cond_30
    const-string v1, "Feature not supported"

    :goto_32
    invoke-direct {v0, v1, p0}, Landroid/net/lowpan/LowpanException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 61
    :pswitch_36
    new-instance v0, Landroid/net/lowpan/OperationCanceledException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/OperationCanceledException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 80
    :pswitch_3c
    new-instance v0, Landroid/net/lowpan/LowpanRuntimeException;

    .line 81
    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_49

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_4b

    :cond_49
    const-string v1, "NCP problem"

    :goto_4b
    invoke-direct {v0, v1, p0}, Landroid/net/lowpan/LowpanRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 58
    :pswitch_4f
    new-instance v0, Landroid/net/lowpan/WrongStateException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/WrongStateException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 55
    :pswitch_55
    new-instance v0, Landroid/net/lowpan/InterfaceDisabledException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/InterfaceDisabledException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 84
    :pswitch_5b
    new-instance v0, Landroid/net/lowpan/LowpanRuntimeException;

    .line 85
    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_68

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_6a

    :cond_68
    const-string v1, "Invalid argument"

    :goto_6a
    invoke-direct {v0, v1, p0}, Landroid/net/lowpan/LowpanRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_6e
    .packed-switch 0x2
        :pswitch_5b
        :pswitch_55
        :pswitch_4f
        :pswitch_5
        :pswitch_5
        :pswitch_3c
        :pswitch_5
        :pswitch_5
        :pswitch_36
        :pswitch_23
        :pswitch_1d
        :pswitch_17
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method
