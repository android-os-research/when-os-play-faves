.class public Lcom/android/server/broadcastradio/hal2/Convert;
.super Ljava/lang/Object;
.source "Convert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;,
        Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BcRadio2Srv.convert"

.field public static final metadataKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$021e3bsGPoIo22XMl3-LMB4HbLM(Landroid/hardware/broadcastradio/V2_0/DabTableEntry;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->lambda$dabConfigFromHal$0(Landroid/hardware/broadcastradio/V2_0/DabTableEntry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Kq5ISKTfWPKegE_SsSFu2AJN9sk(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/hal2/Convert;->lambda$programFilterToHal$4(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;Landroid/hardware/radio/ProgramSelector$Identifier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tbg1M0nM-9TptquDkDETxdSKDKM(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 1

    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->lambda$programListChunkFromHal$6(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Y4U_WqUf-qQU3YGJaLinaSDp2kY(Landroid/hardware/broadcastradio/V2_0/DabTableEntry;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->lambda$dabConfigFromHal$1(Landroid/hardware/broadcastradio/V2_0/DabTableEntry;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bJBn3r7NhXX5ymfDKyosmclwX7o(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 1

    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->lambda$programInfoFromHal$3(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$g90Qd112XUUngx020-FELGIJqnY(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .registers 1

    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->lambda$programListChunkFromHal$5(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xlrfdYCSbG37WfNVYAoVW4hqmFI(I)[Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 1

    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->lambda$programSelectorFromHal$2(I)[Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 7

    .line 314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/4 v1, 0x1

    .line 315
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v4, "android.hardware.radio.metadata.RDS_PS"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 317
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v4, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->INT:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v6, "android.hardware.radio.metadata.RDS_PTY"

    invoke-direct {v2, v4, v6, v5}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 319
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string v6, "android.hardware.radio.metadata.RBDS_PTY"

    invoke-direct {v2, v4, v6, v5}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 321
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string v6, "android.hardware.radio.metadata.RDS_RT"

    invoke-direct {v2, v3, v6, v5}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 323
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string v6, "android.hardware.radio.metadata.TITLE"

    invoke-direct {v2, v3, v6, v5}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 325
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string v6, "android.hardware.radio.metadata.ARTIST"

    invoke-direct {v2, v3, v6, v5}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 327
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string v6, "android.hardware.radio.metadata.ALBUM"

    invoke-direct {v2, v3, v6, v5}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 329
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string v6, "android.hardware.radio.metadata.ICON"

    invoke-direct {v2, v4, v6, v5}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 331
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string v6, "android.hardware.radio.metadata.ART"

    invoke-direct {v2, v4, v6, v5}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    .line 333
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string v4, "android.hardware.radio.metadata.PROGRAM_NAME"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb

    .line 335
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string v4, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc

    .line 337
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string v4, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME_SHORT"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xd

    .line 339
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string v4, "android.hardware.radio.metadata.DAB_SERVICE_NAME"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xe

    .line 341
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string v4, "android.hardware.radio.metadata.DAB_SERVICE_NAME_SHORT"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xf

    .line 343
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string v4, "android.hardware.radio.metadata.DAB_COMPONENT_NAME"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10

    .line 345
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string v4, "android.hardware.radio.metadata.DAB_COMPONENT_NAME_SHORT"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static amfmConfigToBands(Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;)[Landroid/hardware/radio/RadioManager$BandDescriptor;
    .registers 23

    move-object/from16 v0, p0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object v0

    .line 170
    :cond_8
    iget-object v1, v0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 176
    iget-object v0, v0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;

    .line 177
    iget v4, v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    invoke-static {v4}, Lcom/android/server/broadcastradio/hal2/Utils;->getBand(I)Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    move-result-object v4

    .line 178
    sget-object v5, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    if-ne v4, v5, :cond_4f

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown frequency band at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "kHz"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BcRadio2Srv.convert"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 182
    :cond_4f
    sget-object v5, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->FM:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    if-ne v4, v5, :cond_6a

    .line 183
    new-instance v14, Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    const/4 v5, 0x1

    iget v6, v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    iget v7, v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->upperBound:I

    iget v8, v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->spacing:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v3, v14

    move v4, v1

    invoke-direct/range {v3 .. v13}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;-><init>(IIIIIZZZZZ)V

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 190
    :cond_6a
    new-instance v4, Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    const/16 v17, 0x0

    iget v5, v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    iget v6, v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->upperBound:I

    iget v3, v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->spacing:I

    const/16 v21, 0x1

    const/16 v16, 0x0

    move-object v15, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v3

    invoke-direct/range {v15 .. v21}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;-><init>(IIIIIZ)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 199
    :cond_86
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object v0
.end method

.method public static announcementFromHal(Landroid/hardware/broadcastradio/V2_0/Announcement;)Landroid/hardware/radio/Announcement;
    .registers 4

    .line 413
    new-instance v0, Landroid/hardware/radio/Announcement;

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 414
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->programSelectorFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/hardware/radio/ProgramSelector;

    iget-byte v2, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->type:B

    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->vendorInfo:Ljava/util/ArrayList;

    .line 416
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Landroid/hardware/radio/Announcement;-><init>(Landroid/hardware/radio/ProgramSelector;ILjava/util/Map;)V

    return-object v0
.end method

.method public static dabConfigFromHal(Ljava/util/List;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/broadcastradio/V2_0/DabTableEntry;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 205
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda1;-><init>()V

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static identifierTypeToProgramType(I)I
    .registers 2

    packed-switch p0, :pswitch_data_18

    :pswitch_3
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_16

    const/16 v0, 0x7cf

    if-gt p0, v0, :cond_16

    return p0

    :pswitch_c
    const/4 p0, 0x7

    return p0

    :pswitch_e
    const/4 p0, 0x6

    return p0

    :pswitch_10
    const/4 p0, 0x5

    return p0

    :pswitch_12
    const/4 p0, 0x4

    return p0

    :pswitch_14
    const/4 p0, 0x2

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_14
        :pswitch_12
        :pswitch_3
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_e
        :pswitch_e
        :pswitch_3
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public static identifierTypesToProgramTypes([I)[I
    .registers 6

    .line 145
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 147
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_32

    aget v3, p0, v2

    .line 148
    invoke-static {v3}, Lcom/android/server/broadcastradio/hal2/Convert;->identifierTypeToProgramType(I)I

    move-result v3

    if-nez v3, :cond_12

    goto :goto_2f

    .line 152
    :cond_12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    if-ne v3, v4, :cond_24

    const/4 v4, 0x1

    .line 155
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_24
    const/4 v4, 0x4

    if-ne v3, v4, :cond_2f

    const/4 v3, 0x3

    .line 159
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 163
    :cond_32
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public static isEmpty(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Z
    .registers 6

    .line 279
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    iget v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    return v2

    .line 280
    :cond_8
    iget-wide v0, v0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->value:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_11

    return v2

    .line 281
    :cond_11
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->secondaryIds:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_1a

    return v2

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$dabConfigFromHal$0(Landroid/hardware/broadcastradio/V2_0/DabTableEntry;)Ljava/lang/String;
    .registers 1

    .line 205
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;->label:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic lambda$dabConfigFromHal$1(Landroid/hardware/broadcastradio/V2_0/DabTableEntry;)Ljava/lang/Integer;
    .registers 1

    .line 205
    iget p0, p0, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;->frequency:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$programFilterToHal$4(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .registers 2

    .line 394
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierToHal(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$programInfoFromHal$3(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 2

    .line 372
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object p0
.end method

.method public static synthetic lambda$programListChunkFromHal$5(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .registers 1

    .line 403
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->programInfoFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$programListChunkFromHal$6(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 2

    .line 405
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object p0
.end method

.method public static synthetic lambda$programSelectorFromHal$2(I)[Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 1

    .line 291
    new-array p0, p0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object p0
.end method

.method public static listToArrayList(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 422
    :cond_4
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/util/ArrayList;

    return-object p0

    .line 423
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static metadataFromHal(Ljava/util/ArrayList;)Landroid/hardware/radio/RadioMetadata;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/Metadata;",
            ">;)",
            "Landroid/hardware/radio/RadioMetadata;"
        }
    .end annotation

    .line 350
    new-instance v0, Landroid/hardware/radio/RadioMetadata$Builder;

    invoke-direct {v0}, Landroid/hardware/radio/RadioMetadata$Builder;-><init>()V

    .line 352
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/broadcastradio/V2_0/Metadata;

    .line 353
    sget-object v2, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    iget v3, v1, Landroid/hardware/broadcastradio/V2_0/Metadata;->key:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    if-nez v2, :cond_42

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignored unknown metadata entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/hardware/broadcastradio/V2_0/Metadata;->key:I

    invoke-static {v1}, Landroid/hardware/broadcastradio/V2_0/MetadataKey;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BcRadio2Srv.convert"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 358
    :cond_42
    invoke-static {v2}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;->-$$Nest$fgettype(Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;)Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    move-result-object v3

    sget-object v4, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    if-ne v3, v4, :cond_54

    .line 359
    invoke-static {v2}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;->-$$Nest$fgetkey(Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Landroid/hardware/broadcastradio/V2_0/Metadata;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_9

    .line 363
    :cond_54
    invoke-static {v2}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;->-$$Nest$fgetkey(Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v1, Landroid/hardware/broadcastradio/V2_0/Metadata;->intValue:J

    long-to-int v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_9

    .line 367
    :cond_5f
    invoke-virtual {v0}, Landroid/hardware/radio/RadioMetadata$Builder;->build()Landroid/hardware/radio/RadioMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static programFilterToHal(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/broadcastradio/V2_0/ProgramFilter;
    .registers 5

    if-nez p0, :cond_7

    .line 388
    new-instance p0, Landroid/hardware/radio/ProgramList$Filter;

    invoke-direct {p0}, Landroid/hardware/radio/ProgramList$Filter;-><init>()V

    .line 390
    :cond_7
    new-instance v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;-><init>()V

    .line 392
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    iget-object v2, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda5;

    invoke-direct {v3, v2}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda5;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 393
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 395
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    .line 396
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    move-result p0

    iput-boolean p0, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

    return-object v0
.end method

.method public static programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 5

    .line 261
    iget v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 262
    :cond_6
    new-instance v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    iget v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    iget-wide v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->value:J

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    return-object v0
.end method

.method public static programIdentifierToHal(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;
    .registers 2

    .line 254
    new-instance v0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;-><init>()V

    .line 255
    invoke-static {v0, p0}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierToHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;Landroid/hardware/radio/ProgramSelector$Identifier;)V

    return-object v0
.end method

.method public static programIdentifierToHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .registers 4

    .line 248
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v0

    iput v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    .line 249
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->value:J

    return-void
.end method

.method public static programInfoFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .registers 11

    .line 371
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->relatedContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;-><init>()V

    .line 372
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 373
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    .line 375
    new-instance v0, Landroid/hardware/radio/RadioManager$ProgramInfo;

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 376
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->programSelectorFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, Landroid/hardware/radio/ProgramSelector;

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 377
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v3

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 378
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v4

    iget v6, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->infoFlags:I

    iget v7, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->signalQuality:I

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->metadata:Ljava/util/ArrayList;

    .line 382
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->metadataFromHal(Ljava/util/ArrayList;)Landroid/hardware/radio/RadioMetadata;

    move-result-object v8

    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->vendorInfo:Ljava/util/ArrayList;

    .line 383
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object v9

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/hardware/radio/RadioManager$ProgramInfo;-><init>(Landroid/hardware/radio/ProgramSelector;Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/ProgramSelector$Identifier;Ljava/util/Collection;IILandroid/hardware/radio/RadioMetadata;Ljava/util/Map;)V

    return-object v0
.end method

.method public static programListChunkFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)Landroid/hardware/radio/ProgramList$Chunk;
    .registers 5

    .line 402
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda3;-><init>()V

    .line 403
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 404
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda4;-><init>()V

    .line 405
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 406
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 408
    new-instance v2, Landroid/hardware/radio/ProgramList$Chunk;

    iget-boolean v3, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    iget-boolean p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    invoke-direct {v2, v3, p0, v0, v1}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(ZZLjava/util/Set;Ljava/util/Set;)V

    return-object v2
.end method

.method public static programSelectorFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;
    .registers 6

    .line 287
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->isEmpty(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 289
    :cond_8
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->secondaryIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda9;-><init>()V

    .line 290
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda11;-><init>()V

    .line 291
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 293
    new-instance v2, Landroid/hardware/radio/ProgramSelector;

    iget-object v3, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    iget v3, v3, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    .line 294
    invoke-static {v3}, Lcom/android/server/broadcastradio/hal2/Convert;->identifierTypeToProgramType(I)I

    move-result v3

    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 295
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-direct {v2, v3, p0, v0, v1}, Landroid/hardware/radio/ProgramSelector;-><init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V

    return-object v2
.end method

.method public static programSelectorToHal(Landroid/hardware/radio/ProgramSelector;)Landroid/hardware/broadcastradio/V2_0/ProgramSelector;
    .registers 4

    .line 267
    new-instance v0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;-><init>()V

    .line 270
    iget-object v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierToHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;Landroid/hardware/radio/ProgramSelector$Identifier;)V

    .line 271
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector;->getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    iget-object v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->secondaryIds:Ljava/util/ArrayList;

    .line 272
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda8;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static propertiesFromHal(ILjava/lang/String;Landroid/hardware/broadcastradio/V2_0/Properties;Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;Ljava/util/List;)Landroid/hardware/radio/RadioManager$ModuleProperties;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/hardware/broadcastradio/V2_0/Properties;",
            "Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;",
            "Ljava/util/List<",
            "Landroid/hardware/broadcastradio/V2_0/DabTableEntry;",
            ">;)",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;"
        }
    .end annotation

    move-object/from16 v0, p2

    move/from16 v2, p0

    move-object/from16 v3, p1

    .line 211
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v1, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->supportedIdentifierTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>()V

    .line 215
    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    move-object/from16 v16, v1

    .line 216
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->identifierTypesToProgramTypes([I)[I

    move-result-object v15

    .line 218
    new-instance v19, Landroid/hardware/radio/RadioManager$ModuleProperties;

    move-object/from16 v1, v19

    iget-object v5, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->maker:Ljava/lang/String;

    iget-object v6, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->product:Ljava/lang/String;

    iget-object v7, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->version:Ljava/lang/String;

    iget-object v8, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->serial:Ljava/lang/String;

    .line 237
    invoke-static/range {p3 .. p3}, Lcom/android/server/broadcastradio/hal2/Convert;->amfmConfigToBands(Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;)[Landroid/hardware/radio/RadioManager$BandDescriptor;

    move-result-object v13

    .line 241
    invoke-static/range {p4 .. p4}, Lcom/android/server/broadcastradio/hal2/Convert;->dabConfigFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object v17

    iget-object v0, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->vendorInfo:Ljava/util/ArrayList;

    .line 242
    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object v18

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v18}, Landroid/hardware/radio/RadioManager$ModuleProperties;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ[Landroid/hardware/radio/RadioManager$BandDescriptor;Z[I[ILjava/util/Map;Ljava/util/Map;)V

    return-object v19
.end method

.method public static throwOnError(Ljava/lang/String;I)V
    .registers 5

    packed-switch p1, :pswitch_data_c2

    .line 74
    new-instance v0, Landroid/os/ParcelableException;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": unknown error ("

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 72
    :pswitch_27
    new-instance p1, Landroid/os/ParcelableException;

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": TIMEOUT"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 70
    :pswitch_43
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": NOT_SUPPORTED"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :pswitch_5a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": INVALID_STATE"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :pswitch_71
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": INVALID_ARGUMENTS"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :pswitch_88
    new-instance p1, Landroid/os/ParcelableException;

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": INTERNAL_ERROR"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 62
    :pswitch_a4
    new-instance p1, Landroid/os/ParcelableException;

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": UNKNOWN_ERROR"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :pswitch_c0
    return-void

    nop

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_a4
        :pswitch_88
        :pswitch_71
        :pswitch_5a
        :pswitch_43
        :pswitch_27
    .end packed-switch
.end method

.method public static vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_7

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 102
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;

    .line 104
    iget-object v2, v1, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->key:Ljava/lang/String;

    if-eqz v2, :cond_29

    iget-object v1, v1, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->value:Ljava/lang/String;

    if-nez v1, :cond_25

    goto :goto_29

    .line 108
    :cond_25
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_29
    :goto_29
    const-string v1, "BcRadio2Srv.convert"

    const-string v2, "VendorKeyValue contains null pointers"

    .line 105
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_31
    return-object v0
.end method

.method public static vendorInfoToHal(Ljava/util/Map;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_8

    .line 81
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 83
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 85
    new-instance v2, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;

    invoke-direct {v2}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;-><init>()V

    .line 86
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->key:Ljava/lang/String;

    .line 87
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->value:Ljava/lang/String;

    .line 88
    iget-object v3, v2, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->key:Ljava/lang/String;

    if-eqz v3, :cond_41

    if-nez v1, :cond_3d

    goto :goto_41

    .line 92
    :cond_3d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_41
    :goto_41
    const-string v1, "BcRadio2Srv.convert"

    const-string v2, "VendorKeyValue contains null pointers"

    .line 89
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_49
    return-object v0
.end method
