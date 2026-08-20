.class public final Landroid/hardware/broadcastradio/V2_0/IdentifierType;
.super Ljava/lang/Object;
.source "IdentifierType.java"


# static fields
.field public static final AMFM_FREQUENCY:I = 0x1

.field public static final DAB_ENSEMBLE:I = 0x6

.field public static final DAB_FREQUENCY:I = 0x8

.field public static final DAB_SCID:I = 0x7

.field public static final DAB_SID_EXT:I = 0x5

.field public static final DRMO_FREQUENCY:I = 0xa

.field public static final DRMO_SERVICE_ID:I = 0x9

.field public static final HD_STATION_ID_EXT:I = 0x3

.field public static final HD_STATION_NAME:I = 0x4

.field public static final INVALID:I = 0x0

.field public static final RDS_PI:I = 0x2

.field public static final SXM_CHANNEL:I = 0xd

.field public static final SXM_SERVICE_ID:I = 0xc

.field public static final VENDOR_END:I = 0x7cf

.field public static final VENDOR_START:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit16 v1, p0, 0x3e8

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_11

    const-string v1, "VENDOR_START"

    .line 166
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    and-int/lit16 v1, p0, 0x7cf

    const/16 v3, 0x7cf

    if-ne v1, v3, :cond_1f

    const-string v1, "VENDOR_END"

    .line 170
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x7cf

    :cond_1f
    const-string v1, "INVALID"

    .line 173
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v1, p0, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_30

    const-string v1, "AMFM_FREQUENCY"

    .line 175
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1

    :cond_30
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3c

    const-string v1, "RDS_PI"

    .line 179
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_3c
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_48

    const-string v1, "HD_STATION_ID_EXT"

    .line 183
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3

    :cond_48
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_54

    const-string v1, "HD_STATION_NAME"

    .line 187
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_54
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_60

    const-string v1, "DAB_SID_EXT"

    .line 191
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x5

    :cond_60
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_6c

    const-string v1, "DAB_ENSEMBLE"

    .line 195
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x6

    :cond_6c
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_78

    const-string v1, "DAB_SCID"

    .line 199
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x7

    :cond_78
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_85

    const-string v1, "DAB_FREQUENCY"

    .line 203
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_85
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_92

    const-string v1, "DRMO_SERVICE_ID"

    .line 207
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x9

    :cond_92
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_9f

    const-string v1, "DRMO_FREQUENCY"

    .line 211
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xa

    :cond_9f
    and-int/lit8 v1, p0, 0xc

    const/16 v3, 0xc

    if-ne v1, v3, :cond_ac

    const-string v1, "SXM_SERVICE_ID"

    .line 215
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xc

    :cond_ac
    and-int/lit8 v1, p0, 0xd

    const/16 v3, 0xd

    if-ne v1, v3, :cond_b9

    const-string v1, "SXM_CHANNEL"

    .line 219
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xd

    :cond_b9
    if-eq p0, v2, :cond_d5

    .line 223
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

    :cond_d5
    const-string p0, " | "

    .line 225
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_7

    const-string p0, "VENDOR_START"

    return-object p0

    :cond_7
    const/16 v0, 0x7cf

    if-ne p0, v0, :cond_e

    const-string p0, "VENDOR_END"

    return-object p0

    :cond_e
    if-nez p0, :cond_13

    const-string p0, "INVALID"

    return-object p0

    :cond_13
    const/4 v0, 0x1

    if-ne p0, v0, :cond_19

    const-string p0, "AMFM_FREQUENCY"

    return-object p0

    :cond_19
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1f

    const-string p0, "RDS_PI"

    return-object p0

    :cond_1f
    const/4 v0, 0x3

    if-ne p0, v0, :cond_25

    const-string p0, "HD_STATION_ID_EXT"

    return-object p0

    :cond_25
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2b

    const-string p0, "HD_STATION_NAME"

    return-object p0

    :cond_2b
    const/4 v0, 0x5

    if-ne p0, v0, :cond_31

    const-string p0, "DAB_SID_EXT"

    return-object p0

    :cond_31
    const/4 v0, 0x6

    if-ne p0, v0, :cond_37

    const-string p0, "DAB_ENSEMBLE"

    return-object p0

    :cond_37
    const/4 v0, 0x7

    if-ne p0, v0, :cond_3d

    const-string p0, "DAB_SCID"

    return-object p0

    :cond_3d
    const/16 v0, 0x8

    if-ne p0, v0, :cond_44

    const-string p0, "DAB_FREQUENCY"

    return-object p0

    :cond_44
    const/16 v0, 0x9

    if-ne p0, v0, :cond_4b

    const-string p0, "DRMO_SERVICE_ID"

    return-object p0

    :cond_4b
    const/16 v0, 0xa

    if-ne p0, v0, :cond_52

    const-string p0, "DRMO_FREQUENCY"

    return-object p0

    :cond_52
    const/16 v0, 0xc

    if-ne p0, v0, :cond_59

    const-string p0, "SXM_SERVICE_ID"

    return-object p0

    :cond_59
    const/16 v0, 0xd

    if-ne p0, v0, :cond_60

    const-string p0, "SXM_CHANNEL"

    return-object p0

    .line 159
    :cond_60
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
