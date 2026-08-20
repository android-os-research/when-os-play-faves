.class public final Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIfaceCallback$EapEventType;
.super Ljava/lang/Object;
.source "ISehSupplicantStaIfaceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EapEventType"
.end annotation


# static fields
.field public static final ANONYMOUS_IDENTITY_UPDATED:I = 0x1

.field public static final DEAUTH_8021X_AUTH_FAILED:I = 0x2

.field public static final EAP_FAILURE:I = 0x3

.field public static final ERROR_MESSAGE:I = 0x4

.field public static final LOGGING:I = 0x5

.field public static final NOTIFICATION:I = 0x7

.field public static final NO_CREDENTIALS:I = 0x6

.field public static final SUCCESS:I = 0x8

.field public static final TLS_ALERT:I = 0x9

.field public static final TLS_CERT_ERROR:I = 0xa

.field public static final TLS_HANDSHAKE_FAIL:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    const-string v1, "ANONYMOUS_IDENTITY_UPDATED"

    .line 184
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1d

    const-string v1, "DEAUTH_8021X_AUTH_FAILED"

    .line 188
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_1d
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_29

    const-string v1, "EAP_FAILURE"

    .line 192
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3

    :cond_29
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_35

    const-string v1, "ERROR_MESSAGE"

    .line 196
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_35
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_41

    const-string v1, "LOGGING"

    .line 200
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x5

    :cond_41
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_4d

    const-string v1, "NO_CREDENTIALS"

    .line 204
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x6

    :cond_4d
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_59

    const-string v1, "NOTIFICATION"

    .line 208
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x7

    :cond_59
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_66

    const-string v1, "SUCCESS"

    .line 212
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_66
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_73

    const-string v1, "TLS_ALERT"

    .line 216
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x9

    :cond_73
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_80

    const-string v1, "TLS_CERT_ERROR"

    .line 220
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xa

    :cond_80
    and-int/lit8 v1, p0, 0xb

    const/16 v3, 0xb

    if-ne v1, v3, :cond_8d

    const-string v1, "TLS_HANDSHAKE_FAIL"

    .line 224
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xb

    :cond_8d
    if-eq p0, v2, :cond_a9

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v2, v2

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a9
    const-string p0, " | "

    .line 230
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string p0, "ANONYMOUS_IDENTITY_UPDATED"

    return-object p0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string p0, "DEAUTH_8021X_AUTH_FAILED"

    return-object p0

    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    const-string p0, "EAP_FAILURE"

    return-object p0

    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    const-string p0, "ERROR_MESSAGE"

    return-object p0

    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    const-string p0, "LOGGING"

    return-object p0

    :cond_1e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_24

    const-string p0, "NO_CREDENTIALS"

    return-object p0

    :cond_24
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2a

    const-string p0, "NOTIFICATION"

    return-object p0

    :cond_2a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_31

    const-string p0, "SUCCESS"

    return-object p0

    :cond_31
    const/16 v0, 0x9

    if-ne p0, v0, :cond_38

    const-string p0, "TLS_ALERT"

    return-object p0

    :cond_38
    const/16 v0, 0xa

    if-ne p0, v0, :cond_3f

    const-string p0, "TLS_CERT_ERROR"

    return-object p0

    :cond_3f
    const/16 v0, 0xb

    if-ne p0, v0, :cond_46

    const-string p0, "TLS_HANDSHAKE_FAIL"

    return-object p0

    .line 177
    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
