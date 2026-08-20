.class public Landroid/telephony/ims/stub/ImsCallSessionImplBase$State;
.super Ljava/lang/Object;
.source "ImsCallSessionImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsCallSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final whitelist ESTABLISHED:I = 0x4

.field public static final whitelist ESTABLISHING:I = 0x3

.field public static final whitelist IDLE:I = 0x0

.field public static final whitelist INITIATED:I = 0x1

.field public static final whitelist INVALID:I = -0x1

.field public static final whitelist NEGOTIATING:I = 0x2

.field public static final whitelist REESTABLISHING:I = 0x6

.field public static final whitelist RENEGOTIATING:I = 0x5

.field public static final whitelist TERMINATED:I = 0x8

.field public static final whitelist TERMINATING:I = 0x7


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    return-void
.end method

.method public static whitelist toString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 93
    packed-switch p0, :pswitch_data_22

    .line 113
    const-string v0, "UNKNOWN"

    return-object v0

    .line 111
    :pswitch_6
    const-string v0, "TERMINATED"

    return-object v0

    .line 109
    :pswitch_9
    const-string v0, "TERMINATING"

    return-object v0

    .line 107
    :pswitch_c
    const-string v0, "REESTABLISHING"

    return-object v0

    .line 105
    :pswitch_f
    const-string v0, "RENEGOTIATING"

    return-object v0

    .line 103
    :pswitch_12
    const-string v0, "ESTABLISHED"

    return-object v0

    .line 101
    :pswitch_15
    const-string v0, "ESTABLISHING"

    return-object v0

    .line 99
    :pswitch_18
    const-string v0, "NEGOTIATING"

    return-object v0

    .line 97
    :pswitch_1b
    const-string v0, "INITIATED"

    return-object v0

    .line 95
    :pswitch_1e
    const-string v0, "IDLE"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
