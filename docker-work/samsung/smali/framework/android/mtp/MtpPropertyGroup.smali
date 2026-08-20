.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final greylist-max-o PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private greylist-max-o mColumns:[Ljava/lang/String;

.field private final greylist-max-o mProperties:[Landroid/mtp/MtpPropertyGroup$Property;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    const-class v0, Landroid/mtp/MtpPropertyGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>([I)V
    .registers 7
    .param p1, "properties"    # [I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    array-length v0, p1

    .line 60
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .local v1, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    new-array v2, v0, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 64
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_22

    .line 65
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v4, p1, v2

    invoke-direct {p0, v4, v1}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v4

    aput-object v4, v3, v2

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 67
    .end local v2    # "i":I
    :cond_22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 68
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 69
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2b
    if-ge v2, v0, :cond_3a

    .line 70
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v2

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 72
    .end local v2    # "i":I
    :cond_3a
    return-void
.end method

.method private greylist-max-o createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .registers 8
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    .line 75
    .local p2, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 78
    .local v0, "column":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_96

    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, "type":I
    sget-object v2, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7e

    .line 152
    .end local v1    # "type":I
    :sswitch_20
    const/4 v1, 0x6

    .line 153
    .restart local v1    # "type":I
    goto/16 :goto_7e

    .line 157
    .end local v1    # "type":I
    :sswitch_23
    const/4 v1, 0x4

    .line 158
    .restart local v1    # "type":I
    goto/16 :goto_7e

    .line 122
    .end local v1    # "type":I
    :sswitch_26
    const v1, 0xffff

    .line 123
    .restart local v1    # "type":I
    goto :goto_7e

    .line 133
    .end local v1    # "type":I
    :sswitch_2a
    const-string v0, "album_artist"

    .line 134
    const v1, 0xffff

    .line 135
    .restart local v1    # "type":I
    goto :goto_7e

    .line 129
    .end local v1    # "type":I
    :sswitch_30
    const-string v0, "album"

    .line 130
    const v1, 0xffff

    .line 131
    .restart local v1    # "type":I
    goto :goto_7e

    .line 104
    .end local v1    # "type":I
    :sswitch_36
    const-string/jumbo v0, "year"

    .line 105
    const v1, 0xffff

    .line 106
    .restart local v1    # "type":I
    goto :goto_7e

    .line 141
    .end local v1    # "type":I
    :sswitch_3d
    const-string v0, "composer"

    .line 142
    const v1, 0xffff

    .line 143
    .restart local v1    # "type":I
    goto :goto_7e

    .line 137
    .end local v1    # "type":I
    :sswitch_43
    const-string v0, "genre"

    .line 138
    const v1, 0xffff

    .line 139
    .restart local v1    # "type":I
    goto :goto_7e

    .line 118
    .end local v1    # "type":I
    :sswitch_49
    const-string/jumbo v0, "track"

    .line 119
    const/4 v1, 0x4

    .line 120
    .restart local v1    # "type":I
    goto :goto_7e

    .line 114
    .end local v1    # "type":I
    :sswitch_4e
    const-string v0, "duration"

    .line 115
    const/4 v1, 0x6

    .line 116
    .restart local v1    # "type":I
    goto :goto_7e

    .line 101
    .end local v1    # "type":I
    :sswitch_52
    const v1, 0xffff

    .line 102
    .restart local v1    # "type":I
    goto :goto_7e

    .line 145
    .end local v1    # "type":I
    :sswitch_56
    const-string v0, "description"

    .line 146
    const v1, 0xffff

    .line 147
    .restart local v1    # "type":I
    goto :goto_7e

    .line 125
    .end local v1    # "type":I
    :sswitch_5c
    const-string v0, "artist"

    .line 126
    const v1, 0xffff

    .line 127
    .restart local v1    # "type":I
    goto :goto_7e

    .line 95
    .end local v1    # "type":I
    :sswitch_62
    const v1, 0xffff

    .line 96
    .restart local v1    # "type":I
    goto :goto_7e

    .line 111
    .end local v1    # "type":I
    :sswitch_66
    const/16 v1, 0xa

    .line 112
    .restart local v1    # "type":I
    goto :goto_7e

    .line 160
    .end local v1    # "type":I
    :sswitch_69
    const/4 v1, 0x4

    .line 161
    .restart local v1    # "type":I
    goto :goto_7e

    .line 108
    .end local v1    # "type":I
    :sswitch_6b
    const/4 v1, 0x6

    .line 109
    .restart local v1    # "type":I
    goto :goto_7e

    .line 98
    .end local v1    # "type":I
    :sswitch_6d
    const v1, 0xffff

    .line 99
    .restart local v1    # "type":I
    goto :goto_7e

    .line 92
    .end local v1    # "type":I
    :sswitch_71
    const v1, 0xffff

    .line 93
    .restart local v1    # "type":I
    goto :goto_7e

    .line 89
    .end local v1    # "type":I
    :sswitch_75
    const/16 v1, 0x8

    .line 90
    .restart local v1    # "type":I
    goto :goto_7e

    .line 86
    .end local v1    # "type":I
    :sswitch_78
    const/4 v1, 0x4

    .line 87
    .restart local v1    # "type":I
    goto :goto_7e

    .line 83
    .end local v1    # "type":I
    :sswitch_7a
    const/4 v1, 0x4

    .line 84
    .restart local v1    # "type":I
    goto :goto_7e

    .line 80
    .end local v1    # "type":I
    :sswitch_7c
    const/4 v1, 0x6

    .line 81
    .restart local v1    # "type":I
    nop

    .line 168
    :goto_7e
    if-eqz v0, :cond_8f

    .line 169
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object v2

    .line 172
    :cond_8f
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object v2

    :sswitch_data_96
    .sparse-switch
        0xdc01 -> :sswitch_7c
        0xdc02 -> :sswitch_7a
        0xdc03 -> :sswitch_78
        0xdc04 -> :sswitch_75
        0xdc07 -> :sswitch_71
        0xdc09 -> :sswitch_6d
        0xdc0b -> :sswitch_6b
        0xdc0d -> :sswitch_69
        0xdc41 -> :sswitch_66
        0xdc44 -> :sswitch_62
        0xdc46 -> :sswitch_5c
        0xdc48 -> :sswitch_56
        0xdc4e -> :sswitch_52
        0xdc89 -> :sswitch_4e
        0xdc8b -> :sswitch_49
        0xdc8c -> :sswitch_43
        0xdc96 -> :sswitch_3d
        0xdc99 -> :sswitch_36
        0xdc9a -> :sswitch_30
        0xdc9b -> :sswitch_2a
        0xdce0 -> :sswitch_26
        0xde92 -> :sswitch_23
        0xde93 -> :sswitch_20
        0xde94 -> :sswitch_23
        0xde99 -> :sswitch_20
        0xde9a -> :sswitch_20
    .end sparse-switch
.end method

.method private native greylist-max-o format_date_time(J)Ljava/lang/String;
.end method


# virtual methods
.method public blacklist getPropertyList(Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpPropertyList;)I
    .registers 28
    .param p1, "provider"    # Landroid/content/ContentProviderClient;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "object"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p4, "list"    # Landroid/mtp/MtpPropertyList;

    .line 183
    move-object/from16 v1, p0

    move-object/from16 v8, p4

    const/4 v0, 0x0

    .line 184
    .local v0, "c":Landroid/database/Cursor;
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v9

    .line 185
    .local v9, "id":I
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v10

    .line 186
    .local v10, "path":Ljava/lang/String;
    iget-object v11, v1, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v12, v11

    const/4 v13, 0x0

    move-object v2, v0

    move v14, v13

    .end local v0    # "c":Landroid/database/Cursor;
    .local v2, "c":Landroid/database/Cursor;
    :goto_17
    if-ge v14, v12, :cond_1d0

    aget-object v15, v11, v14

    .line 187
    .local v15, "property":Landroid/mtp/MtpPropertyGroup$Property;
    iget v0, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_69

    if-nez v2, :cond_69

    .line 190
    :try_start_22
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v0
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_26} :catch_62
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_26} :catch_56

    move-object/from16 v6, p2

    :try_start_28
    invoke-static {v0, v6}, Landroid/mtp/MtpDatabase;->getObjectPropertiesUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 192
    .local v17, "uri":Landroid/net/Uri;
    iget-object v0, v1, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const-string v19, "_data=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v10, v3, v13

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, p1

    move-object/from16 v18, v0

    move-object/from16 v20, v3

    invoke-virtual/range {v16 .. v22}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    .line 194
    if-eqz v2, :cond_50

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_50

    .line 195
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_4f} :catch_54
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_4f} :catch_52

    .line 196
    const/4 v2, 0x0

    .line 202
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_50
    move-object v0, v2

    goto :goto_6c

    .line 200
    :catch_52
    move-exception v0

    goto :goto_59

    .line 198
    :catch_54
    move-exception v0

    goto :goto_65

    .line 200
    :catch_56
    move-exception v0

    move-object/from16 v6, p2

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    :goto_59
    sget-object v3, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    const-string v4, "Mediaprovider lookup failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_6c

    .line 198
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_62
    move-exception v0

    move-object/from16 v6, p2

    .line 199
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_65
    const v3, 0xa801

    return v3

    .line 187
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_69
    move-object/from16 v6, p2

    .line 204
    move-object v0, v2

    .end local v2    # "c":Landroid/database/Cursor;
    .local v0, "c":Landroid/database/Cursor;
    :goto_6c
    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    sparse-switch v2, :sswitch_data_1d8

    .line 271
    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    sparse-switch v2, :sswitch_data_226

    .line 282
    const-wide/16 v2, 0x0

    .line 283
    .local v2, "longValue":J
    if-eqz v0, :cond_1bd

    .line 284
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-wide/from16 v16, v2

    goto/16 :goto_1bf

    .line 259
    .end local v2    # "longValue":J
    :sswitch_84
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x6

    const-wide/16 v16, 0x0

    move-object/from16 v2, p4

    move v3, v9

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 260
    goto/16 :goto_1cb

    .line 264
    :sswitch_93
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 265
    goto/16 :goto_1cb

    .line 242
    :sswitch_a0
    const/4 v2, 0x0

    .line 243
    .local v2, "year":I
    if-eqz v0, :cond_a9

    .line 244
    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 245
    :cond_a9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0101T000000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "dateTime":Ljava/lang/String;
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v8, v9, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 247
    goto/16 :goto_1cb

    .line 249
    .end local v2    # "year":I
    .end local v3    # "dateTime":Ljava/lang/String;
    :sswitch_c7
    const/4 v2, 0x0

    .line 250
    .local v2, "track":I
    if-eqz v0, :cond_d2

    .line 251
    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move v6, v2

    goto :goto_d3

    .line 250
    :cond_d2
    move v6, v2

    .line 252
    .end local v2    # "track":I
    .local v6, "track":I
    :goto_d3
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x4

    rem-int/lit16 v2, v6, 0x3e8

    int-to-long v2, v2

    move-wide/from16 v16, v2

    move-object/from16 v2, p4

    move v3, v9

    move/from16 v18, v6

    .end local v6    # "track":I
    .local v18, "track":I
    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 254
    goto/16 :goto_1cb

    .line 236
    .end local v18    # "track":I
    :sswitch_e7
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    shl-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v4

    add-long v16, v2, v4

    .line 238
    .local v16, "puid":J
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object/from16 v2, p4

    move v3, v9

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 239
    goto/16 :goto_1cb

    .line 267
    .end local v16    # "puid":J
    :sswitch_10a
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    move v6, v2

    .line 268
    .local v6, "hidden":I
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x4

    int-to-long v2, v6

    move-wide/from16 v16, v2

    move-object/from16 v2, p4

    move v3, v9

    move/from16 v18, v6

    .end local v6    # "hidden":I
    .local v18, "hidden":I
    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 269
    goto/16 :goto_1cb

    .line 230
    .end local v18    # "hidden":I
    :sswitch_127
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    .line 231
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v2

    if-eqz v2, :cond_138

    const-wide/16 v2, 0x0

    goto :goto_141

    :cond_138
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v2

    int-to-long v2, v2

    :goto_141
    move-wide v6, v2

    .line 230
    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 232
    goto/16 :goto_1cb

    .line 217
    :sswitch_14a
    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-virtual {v8, v9, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 219
    goto/16 :goto_1cb

    .line 212
    :sswitch_159
    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v9, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 213
    goto/16 :goto_1cb

    .line 227
    :sswitch_164
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v6

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 228
    goto :goto_1cb

    .line 207
    :sswitch_173
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const-wide/16 v6, 0x0

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 208
    goto :goto_1cb

    .line 224
    :sswitch_180
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v2

    int-to-long v6, v2

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 225
    goto :goto_1cb

    .line 221
    :sswitch_190
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v2

    int-to-long v6, v2

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 222
    goto :goto_1cb

    .line 276
    :sswitch_1a0
    const-string v2, ""

    .line 277
    .local v2, "value":Ljava/lang/String;
    if-eqz v0, :cond_1aa

    .line 278
    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 279
    :cond_1aa
    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v8, v9, v3, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 280
    goto :goto_1cb

    .line 273
    .end local v2    # "value":Ljava/lang/String;
    :sswitch_1b0
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const-wide/16 v6, 0x0

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 274
    goto :goto_1cb

    .line 283
    .local v2, "longValue":J
    :cond_1bd
    move-wide/from16 v16, v2

    .line 285
    .end local v2    # "longValue":J
    .local v16, "longValue":J
    :goto_1bf
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object/from16 v2, p4

    move v3, v9

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 186
    .end local v15    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v16    # "longValue":J
    :goto_1cb
    add-int/lit8 v14, v14, 0x1

    move-object v2, v0

    goto/16 :goto_17

    .line 289
    .end local v0    # "c":Landroid/database/Cursor;
    .local v2, "c":Landroid/database/Cursor;
    :cond_1d0
    if-eqz v2, :cond_1d5

    .line 290
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_1d5
    const/16 v0, 0x2001

    return v0

    :sswitch_data_1d8
    .sparse-switch
        0xdc01 -> :sswitch_190
        0xdc02 -> :sswitch_180
        0xdc03 -> :sswitch_173
        0xdc04 -> :sswitch_164
        0xdc07 -> :sswitch_159
        0xdc09 -> :sswitch_14a
        0xdc0b -> :sswitch_127
        0xdc0d -> :sswitch_10a
        0xdc41 -> :sswitch_e7
        0xdc44 -> :sswitch_159
        0xdc4e -> :sswitch_14a
        0xdc8b -> :sswitch_c7
        0xdc99 -> :sswitch_a0
        0xdce0 -> :sswitch_159
        0xde92 -> :sswitch_93
        0xde93 -> :sswitch_84
        0xde94 -> :sswitch_93
        0xde99 -> :sswitch_84
        0xde9a -> :sswitch_84
    .end sparse-switch

    :sswitch_data_226
    .sparse-switch
        0x0 -> :sswitch_1b0
        0xffff -> :sswitch_1a0
    .end sparse-switch
.end method
