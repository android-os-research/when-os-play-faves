.class public final Landroid/hardware/broadcastradio/V2_0/MetadataKey;
.super Ljava/lang/Object;
.source "MetadataKey.java"


# static fields
.field public static final ALBUM_ART:I = 0x9

.field public static final DAB_COMPONENT_NAME:I = 0xf

.field public static final DAB_COMPONENT_NAME_SHORT:I = 0x10

.field public static final DAB_ENSEMBLE_NAME:I = 0xb

.field public static final DAB_ENSEMBLE_NAME_SHORT:I = 0xc

.field public static final DAB_SERVICE_NAME:I = 0xd

.field public static final DAB_SERVICE_NAME_SHORT:I = 0xe

.field public static final PROGRAM_NAME:I = 0xa

.field public static final RBDS_PTY:I = 0x3

.field public static final RDS_PS:I = 0x1

.field public static final RDS_PTY:I = 0x2

.field public static final RDS_RT:I = 0x4

.field public static final SONG_ALBUM:I = 0x7

.field public static final SONG_ARTIST:I = 0x6

.field public static final SONG_TITLE:I = 0x5

.field public static final STATION_ICON:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    const-string v1, "RDS_PS"

    .line 136
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1d

    const-string v1, "RDS_PTY"

    .line 140
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_1d
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_29

    const-string v1, "RBDS_PTY"

    .line 144
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3

    :cond_29
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_35

    const-string v1, "RDS_RT"

    .line 148
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_35
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_41

    const-string v1, "SONG_TITLE"

    .line 152
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x5

    :cond_41
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_4d

    const-string v1, "SONG_ARTIST"

    .line 156
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x6

    :cond_4d
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_59

    const-string v1, "SONG_ALBUM"

    .line 160
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x7

    :cond_59
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_66

    const-string v1, "STATION_ICON"

    .line 164
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_66
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_73

    const-string v1, "ALBUM_ART"

    .line 168
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x9

    :cond_73
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_80

    const-string v1, "PROGRAM_NAME"

    .line 172
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xa

    :cond_80
    and-int/lit8 v1, p0, 0xb

    const/16 v3, 0xb

    if-ne v1, v3, :cond_8d

    const-string v1, "DAB_ENSEMBLE_NAME"

    .line 176
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xb

    :cond_8d
    and-int/lit8 v1, p0, 0xc

    const/16 v3, 0xc

    if-ne v1, v3, :cond_9a

    const-string v1, "DAB_ENSEMBLE_NAME_SHORT"

    .line 180
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xc

    :cond_9a
    and-int/lit8 v1, p0, 0xd

    const/16 v3, 0xd

    if-ne v1, v3, :cond_a7

    const-string v1, "DAB_SERVICE_NAME"

    .line 184
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xd

    :cond_a7
    and-int/lit8 v1, p0, 0xe

    const/16 v3, 0xe

    if-ne v1, v3, :cond_b4

    const-string v1, "DAB_SERVICE_NAME_SHORT"

    .line 188
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xe

    :cond_b4
    and-int/lit8 v1, p0, 0xf

    const/16 v3, 0xf

    if-ne v1, v3, :cond_c1

    const-string v1, "DAB_COMPONENT_NAME"

    .line 192
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xf

    :cond_c1
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_ce

    const-string v1, "DAB_COMPONENT_NAME_SHORT"

    .line 196
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x10

    :cond_ce
    if-eq p0, v2, :cond_ea

    .line 200
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

    :cond_ea
    const-string p0, " | "

    .line 202
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string p0, "RDS_PS"

    return-object p0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string p0, "RDS_PTY"

    return-object p0

    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    const-string p0, "RBDS_PTY"

    return-object p0

    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    const-string p0, "RDS_RT"

    return-object p0

    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    const-string p0, "SONG_TITLE"

    return-object p0

    :cond_1e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_24

    const-string p0, "SONG_ARTIST"

    return-object p0

    :cond_24
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2a

    const-string p0, "SONG_ALBUM"

    return-object p0

    :cond_2a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_31

    const-string p0, "STATION_ICON"

    return-object p0

    :cond_31
    const/16 v0, 0x9

    if-ne p0, v0, :cond_38

    const-string p0, "ALBUM_ART"

    return-object p0

    :cond_38
    const/16 v0, 0xa

    if-ne p0, v0, :cond_3f

    const-string p0, "PROGRAM_NAME"

    return-object p0

    :cond_3f
    const/16 v0, 0xb

    if-ne p0, v0, :cond_46

    const-string p0, "DAB_ENSEMBLE_NAME"

    return-object p0

    :cond_46
    const/16 v0, 0xc

    if-ne p0, v0, :cond_4d

    const-string p0, "DAB_ENSEMBLE_NAME_SHORT"

    return-object p0

    :cond_4d
    const/16 v0, 0xd

    if-ne p0, v0, :cond_54

    const-string p0, "DAB_SERVICE_NAME"

    return-object p0

    :cond_54
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5b

    const-string p0, "DAB_SERVICE_NAME_SHORT"

    return-object p0

    :cond_5b
    const/16 v0, 0xf

    if-ne p0, v0, :cond_62

    const-string p0, "DAB_COMPONENT_NAME"

    return-object p0

    :cond_62
    const/16 v0, 0x10

    if-ne p0, v0, :cond_69

    const-string p0, "DAB_COMPONENT_NAME_SHORT"

    return-object p0

    .line 129
    :cond_69
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
