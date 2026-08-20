.class public final Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;
.super Ljava/lang/Object;
.source "DemuxTsFilterSettingsFilterSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist av:I = 0x2

.field public static final blacklist noinit:I = 0x0

.field public static final blacklist pesData:I = 0x3

.field public static final blacklist record:I = 0x4

.field public static final blacklist section:I = 0x1


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 116
    new-instance v0, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "_value":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_tag:I

    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_tag:I

    .line 29
    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 25
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 210
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 213
    return-void

    .line 211
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 227
    iput p1, p0, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_tag:I

    .line 228
    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    .line 229
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 216
    packed-switch p1, :pswitch_data_2c

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :pswitch_1d
    const-string v0, "record"

    return-object v0

    .line 220
    :pswitch_20
    const-string v0, "pesData"

    return-object v0

    .line 219
    :pswitch_23
    const-string v0, "av"

    return-object v0

    .line 218
    :pswitch_26
    const-string v0, "section"

    return-object v0

    .line 217
    :pswitch_29
    const-string v0, "noinit"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist av(Landroid/hardware/tv/tuner/DemuxFilterAvSettings;)Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterAvSettings;

    .line 69
    new-instance v0, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 202
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 203
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 204
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 206
    :cond_10
    return v0
.end method

.method public static blacklist noinit(Z)Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;
    .registers 4
    .param p0, "_value"    # Z

    .line 39
    new-instance v0, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist pesData(Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;)Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;

    .line 84
    new-instance v0, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist record(Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;)Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;

    .line 99
    new-instance v0, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist section(Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;)Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    .line 54
    new-instance v0, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_32

    goto :goto_31

    .line 196
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->getRecord()Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_31

    .line 193
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->getPesData()Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 194
    goto :goto_31

    .line 190
    :pswitch_1d
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->getAv()Landroid/hardware/tv/tuner/DemuxFilterAvSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 191
    goto :goto_31

    .line 187
    :pswitch_27
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->getSection()Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 188
    nop

    .line 199
    :goto_31
    return v0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_27
        :pswitch_1d
        :pswitch_13
        :pswitch_9
    .end packed-switch
.end method

.method public blacklist getAv()Landroid/hardware/tv/tuner/DemuxFilterAvSettings;
    .registers 2

    .line 73
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_assertTag(I)V

    .line 74
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterAvSettings;

    return-object v0
.end method

.method public blacklist getNoinit()Z
    .registers 2

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_assertTag(I)V

    .line 44
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getPesData()Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;
    .registers 2

    .line 88
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_assertTag(I)V

    .line 89
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;

    return-object v0
.end method

.method public blacklist getRecord()Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;
    .registers 2

    .line 103
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_assertTag(I)V

    .line 104
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;

    return-object v0
.end method

.method public blacklist getSection()Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;
    .registers 2

    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_assertTag(I)V

    .line 59
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    return-object v0
.end method

.method public final blacklist getStability()I
    .registers 2

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 33
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 152
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_5e

    .line 179
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :pswitch_21
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;

    .line 176
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 177
    return-void

    .line 170
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;
    :pswitch_2d
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;

    .line 171
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 172
    return-void

    .line 165
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;
    :pswitch_39
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterAvSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterAvSettings;

    .line 166
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterAvSettings;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 167
    return-void

    .line 160
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterAvSettings;
    :pswitch_45
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    .line 161
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 162
    return-void

    .line 155
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;
    :pswitch_51
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 156
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 157
    return-void

    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_51
        :pswitch_45
        :pswitch_39
        :pswitch_2d
        :pswitch_21
    .end packed-switch
.end method

.method public blacklist setAv(Landroid/hardware/tv/tuner/DemuxFilterAvSettings;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterAvSettings;

    .line 78
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 79
    return-void
.end method

.method public blacklist setNoinit(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 48
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 49
    return-void
.end method

.method public blacklist setPesData(Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;

    .line 93
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 94
    return-void
.end method

.method public blacklist setRecord(Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;

    .line 108
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 109
    return-void
.end method

.method public blacklist setSection(Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 129
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->_tag:I

    packed-switch v0, :pswitch_data_34

    goto :goto_33

    .line 144
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->getRecord()Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_33

    .line 141
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->getPesData()Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 142
    goto :goto_33

    .line 138
    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->getAv()Landroid/hardware/tv/tuner/DemuxFilterAvSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 139
    goto :goto_33

    .line 135
    :pswitch_23
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->getSection()Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 136
    goto :goto_33

    .line 132
    :pswitch_2b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxTsFilterSettingsFilterSettings;->getNoinit()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 133
    nop

    .line 147
    :goto_33
    return-void

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
