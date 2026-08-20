.class public final Landroid/hardware/tv/tuner/FrontendSettings;
.super Ljava/lang/Object;
.source "FrontendSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/FrontendSettings$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist analog:I = 0x0

.field public static final blacklist atsc:I = 0x1

.field public static final blacklist atsc3:I = 0x2

.field public static final blacklist dtmb:I = 0x9

.field public static final blacklist dvbc:I = 0x4

.field public static final blacklist dvbs:I = 0x3

.field public static final blacklist dvbt:I = 0x5

.field public static final blacklist isdbs:I = 0x6

.field public static final blacklist isdbs3:I = 0x7

.field public static final blacklist isdbt:I = 0x8


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 196
    new-instance v0, Landroid/hardware/tv/tuner/FrontendSettings$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendSettings$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "_value":Landroid/hardware/tv/tuner/FrontendAnalogSettings;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/FrontendSettings;->_tag:I

    .line 25
    iput-object v0, p0, Landroid/hardware/tv/tuner/FrontendSettings;->_value:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendSettings;->_tag:I

    .line 34
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendSettings;->_value:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/FrontendSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/FrontendSettings-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 348
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendSettings;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 351
    return-void

    .line 349
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendSettings;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendSettings;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/FrontendSettings;->_tagString(I)Ljava/lang/String;

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

    .line 370
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendSettings;->_tag:I

    .line 371
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendSettings;->_value:Ljava/lang/Object;

    .line 372
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 354
    packed-switch p1, :pswitch_data_3c

    .line 366
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

    .line 364
    :pswitch_1d
    const-string v0, "dtmb"

    return-object v0

    .line 363
    :pswitch_20
    const-string v0, "isdbt"

    return-object v0

    .line 362
    :pswitch_23
    const-string v0, "isdbs3"

    return-object v0

    .line 361
    :pswitch_26
    const-string v0, "isdbs"

    return-object v0

    .line 360
    :pswitch_29
    const-string v0, "dvbt"

    return-object v0

    .line 359
    :pswitch_2c
    const-string v0, "dvbc"

    return-object v0

    .line 358
    :pswitch_2f
    const-string v0, "dvbs"

    return-object v0

    .line 357
    :pswitch_32
    const-string v0, "atsc3"

    return-object v0

    .line 356
    :pswitch_35
    const-string v0, "atsc"

    return-object v0

    .line 355
    :pswitch_38
    const-string v0, "analog"

    return-object v0

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist analog(Landroid/hardware/tv/tuner/FrontendAnalogSettings;)Landroid/hardware/tv/tuner/FrontendSettings;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendAnalogSettings;

    .line 44
    new-instance v0, Landroid/hardware/tv/tuner/FrontendSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist atsc(Landroid/hardware/tv/tuner/FrontendAtscSettings;)Landroid/hardware/tv/tuner/FrontendSettings;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendAtscSettings;

    .line 59
    new-instance v0, Landroid/hardware/tv/tuner/FrontendSettings;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist atsc3(Landroid/hardware/tv/tuner/FrontendAtsc3Settings;)Landroid/hardware/tv/tuner/FrontendSettings;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendAtsc3Settings;

    .line 74
    new-instance v0, Landroid/hardware/tv/tuner/FrontendSettings;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 340
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 341
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 342
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 344
    :cond_10
    return v0
.end method

.method public static blacklist dtmb(Landroid/hardware/tv/tuner/FrontendDtmbSettings;)Landroid/hardware/tv/tuner/FrontendSettings;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendDtmbSettings;

    .line 179
    new-instance v0, Landroid/hardware/tv/tuner/FrontendSettings;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dvbc(Landroid/hardware/tv/tuner/FrontendDvbcSettings;)Landroid/hardware/tv/tuner/FrontendSettings;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendDvbcSettings;

    .line 104
    new-instance v0, Landroid/hardware/tv/tuner/FrontendSettings;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dvbs(Landroid/hardware/tv/tuner/FrontendDvbsSettings;)Landroid/hardware/tv/tuner/FrontendSettings;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendDvbsSettings;

    .line 89
    new-instance v0, Landroid/hardware/tv/tuner/FrontendSettings;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dvbt(Landroid/hardware/tv/tuner/FrontendDvbtSettings;)Landroid/hardware/tv/tuner/FrontendSettings;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendDvbtSettings;

    .line 119
    new-instance v0, Landroid/hardware/tv/tuner/FrontendSettings;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbs(Landroid/hardware/tv/tuner/FrontendIsdbsSettings;)Landroid/hardware/tv/tuner/FrontendSettings;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendIsdbsSettings;

    .line 134
    new-instance v0, Landroid/hardware/tv/tuner/FrontendSettings;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbs3(Landroid/hardware/tv/tuner/FrontendIsdbs3Settings;)Landroid/hardware/tv/tuner/FrontendSettings;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendIsdbs3Settings;

    .line 149
    new-instance v0, Landroid/hardware/tv/tuner/FrontendSettings;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbt(Landroid/hardware/tv/tuner/FrontendIsdbtSettings;)Landroid/hardware/tv/tuner/FrontendSettings;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendIsdbtSettings;

    .line 164
    new-instance v0, Landroid/hardware/tv/tuner/FrontendSettings;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendSettings;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_6e

    goto :goto_6d

    .line 334
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendSettings;->getDtmb()Landroid/hardware/tv/tuner/FrontendDtmbSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_6d

    .line 331
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendSettings;->getIsdbt()Landroid/hardware/tv/tuner/FrontendIsdbtSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 332
    goto :goto_6d

    .line 328
    :pswitch_1d
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendSettings;->getIsdbs3()Landroid/hardware/tv/tuner/FrontendIsdbs3Settings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 329
    goto :goto_6d

    .line 325
    :pswitch_27
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendSettings;->getIsdbs()Landroid/hardware/tv/tuner/FrontendIsdbsSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 326
    goto :goto_6d

    .line 322
    :pswitch_31
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendSettings;->getDvbt()Landroid/hardware/tv/tuner/FrontendDvbtSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 323
    goto :goto_6d

    .line 319
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendSettings;->getDvbc()Landroid/hardware/tv/tuner/FrontendDvbcSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 320
    goto :goto_6d

    .line 316
    :pswitch_45
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendSettings;->getDvbs()Landroid/hardware/tv/tuner/FrontendDvbsSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 317
    goto :goto_6d

    .line 313
    :pswitch_4f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendSettings;->getAtsc3()Landroid/hardware/tv/tuner/FrontendAtsc3Settings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 314
    goto :goto_6d

    .line 310
    :pswitch_59
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendSettings;->getAtsc()Landroid/hardware/tv/tuner/FrontendAtscSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 311
    goto :goto_6d

    .line 307
    :pswitch_63
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendSettings;->getAnalog()Landroid/hardware/tv/tuner/FrontendAnalogSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 308
    nop

    .line 337
    :goto_6d
    return v0

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_63
        :pswitch_59
        :pswitch_4f
        :pswitch_45
        :pswitch_3b
        :pswitch_31
        :pswitch_27
        :pswitch_1d
        :pswitch_13
        :pswitch_9
    .end packed-switch
.end method

.method public blacklist getAnalog()Landroid/hardware/tv/tuner/FrontendAnalogSettings;
    .registers 2

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendSettings;->_assertTag(I)V

    .line 49
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendAnalogSettings;

    return-object v0
.end method

.method public blacklist getAtsc()Landroid/hardware/tv/tuner/FrontendAtscSettings;
    .registers 2

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendSettings;->_assertTag(I)V

    .line 64
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendAtscSettings;

    return-object v0
.end method

.method public blacklist getAtsc3()Landroid/hardware/tv/tuner/FrontendAtsc3Settings;
    .registers 2

    .line 78
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendSettings;->_assertTag(I)V

    .line 79
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendAtsc3Settings;

    return-object v0
.end method

.method public blacklist getDtmb()Landroid/hardware/tv/tuner/FrontendDtmbSettings;
    .registers 2

    .line 183
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendSettings;->_assertTag(I)V

    .line 184
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;

    return-object v0
.end method

.method public blacklist getDvbc()Landroid/hardware/tv/tuner/FrontendDvbcSettings;
    .registers 2

    .line 108
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendSettings;->_assertTag(I)V

    .line 109
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendDvbcSettings;

    return-object v0
.end method

.method public blacklist getDvbs()Landroid/hardware/tv/tuner/FrontendDvbsSettings;
    .registers 2

    .line 93
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendSettings;->_assertTag(I)V

    .line 94
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;

    return-object v0
.end method

.method public blacklist getDvbt()Landroid/hardware/tv/tuner/FrontendDvbtSettings;
    .registers 2

    .line 123
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendSettings;->_assertTag(I)V

    .line 124
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;

    return-object v0
.end method

.method public blacklist getIsdbs()Landroid/hardware/tv/tuner/FrontendIsdbsSettings;
    .registers 2

    .line 138
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendSettings;->_assertTag(I)V

    .line 139
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendIsdbsSettings;

    return-object v0
.end method

.method public blacklist getIsdbs3()Landroid/hardware/tv/tuner/FrontendIsdbs3Settings;
    .registers 2

    .line 153
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendSettings;->_assertTag(I)V

    .line 154
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendIsdbs3Settings;

    return-object v0
.end method

.method public blacklist getIsdbt()Landroid/hardware/tv/tuner/FrontendIsdbtSettings;
    .registers 2

    .line 168
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendSettings;->_assertTag(I)V

    .line 169
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;

    return-object v0
.end method

.method public final blacklist getStability()I
    .registers 2

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 38
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendSettings;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 247
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_9a

    .line 299
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

    .line 295
    :pswitch_21
    sget-object v1, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendDtmbSettings;

    .line 296
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendDtmbSettings;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendSettings;->_set(ILjava/lang/Object;)V

    .line 297
    return-void

    .line 290
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendDtmbSettings;
    :pswitch_2d
    sget-object v1, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;

    .line 291
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendIsdbtSettings;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendSettings;->_set(ILjava/lang/Object;)V

    .line 292
    return-void

    .line 285
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendIsdbtSettings;
    :pswitch_39
    sget-object v1, Landroid/hardware/tv/tuner/FrontendIsdbs3Settings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendIsdbs3Settings;

    .line 286
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendIsdbs3Settings;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendSettings;->_set(ILjava/lang/Object;)V

    .line 287
    return-void

    .line 280
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendIsdbs3Settings;
    :pswitch_45
    sget-object v1, Landroid/hardware/tv/tuner/FrontendIsdbsSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendIsdbsSettings;

    .line 281
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendIsdbsSettings;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendSettings;->_set(ILjava/lang/Object;)V

    .line 282
    return-void

    .line 275
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendIsdbsSettings;
    :pswitch_51
    sget-object v1, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendDvbtSettings;

    .line 276
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendDvbtSettings;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendSettings;->_set(ILjava/lang/Object;)V

    .line 277
    return-void

    .line 270
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendDvbtSettings;
    :pswitch_5d
    sget-object v1, Landroid/hardware/tv/tuner/FrontendDvbcSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendDvbcSettings;

    .line 271
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendDvbcSettings;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendSettings;->_set(ILjava/lang/Object;)V

    .line 272
    return-void

    .line 265
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendDvbcSettings;
    :pswitch_69
    sget-object v1, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendDvbsSettings;

    .line 266
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendDvbsSettings;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendSettings;->_set(ILjava/lang/Object;)V

    .line 267
    return-void

    .line 260
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendDvbsSettings;
    :pswitch_75
    sget-object v1, Landroid/hardware/tv/tuner/FrontendAtsc3Settings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendAtsc3Settings;

    .line 261
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendAtsc3Settings;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendSettings;->_set(ILjava/lang/Object;)V

    .line 262
    return-void

    .line 255
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendAtsc3Settings;
    :pswitch_81
    sget-object v1, Landroid/hardware/tv/tuner/FrontendAtscSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendAtscSettings;

    .line 256
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendAtscSettings;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendSettings;->_set(ILjava/lang/Object;)V

    .line 257
    return-void

    .line 250
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendAtscSettings;
    :pswitch_8d
    sget-object v1, Landroid/hardware/tv/tuner/FrontendAnalogSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendAnalogSettings;

    .line 251
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendAnalogSettings;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendSettings;->_set(ILjava/lang/Object;)V

    .line 252
    return-void

    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_81
        :pswitch_75
        :pswitch_69
        :pswitch_5d
        :pswitch_51
        :pswitch_45
        :pswitch_39
        :pswitch_2d
        :pswitch_21
    .end packed-switch
.end method

.method public blacklist setAnalog(Landroid/hardware/tv/tuner/FrontendAnalogSettings;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendAnalogSettings;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendSettings;->_set(ILjava/lang/Object;)V

    .line 54
    return-void
.end method

.method public blacklist setAtsc(Landroid/hardware/tv/tuner/FrontendAtscSettings;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendAtscSettings;

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendSettings;->_set(ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method public blacklist setAtsc3(Landroid/hardware/tv/tuner/FrontendAtsc3Settings;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendAtsc3Settings;

    .line 83
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendSettings;->_set(ILjava/lang/Object;)V

    .line 84
    return-void
.end method

.method public blacklist setDtmb(Landroid/hardware/tv/tuner/FrontendDtmbSettings;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendDtmbSettings;

    .line 188
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendSettings;->_set(ILjava/lang/Object;)V

    .line 189
    return-void
.end method

.method public blacklist setDvbc(Landroid/hardware/tv/tuner/FrontendDvbcSettings;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendDvbcSettings;

    .line 113
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendSettings;->_set(ILjava/lang/Object;)V

    .line 114
    return-void
.end method

.method public blacklist setDvbs(Landroid/hardware/tv/tuner/FrontendDvbsSettings;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendDvbsSettings;

    .line 98
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendSettings;->_set(ILjava/lang/Object;)V

    .line 99
    return-void
.end method

.method public blacklist setDvbt(Landroid/hardware/tv/tuner/FrontendDvbtSettings;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendDvbtSettings;

    .line 128
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendSettings;->_set(ILjava/lang/Object;)V

    .line 129
    return-void
.end method

.method public blacklist setIsdbs(Landroid/hardware/tv/tuner/FrontendIsdbsSettings;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendIsdbsSettings;

    .line 143
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendSettings;->_set(ILjava/lang/Object;)V

    .line 144
    return-void
.end method

.method public blacklist setIsdbs3(Landroid/hardware/tv/tuner/FrontendIsdbs3Settings;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendIsdbs3Settings;

    .line 158
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendSettings;->_set(ILjava/lang/Object;)V

    .line 159
    return-void
.end method

.method public blacklist setIsdbt(Landroid/hardware/tv/tuner/FrontendIsdbtSettings;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendIsdbtSettings;

    .line 173
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendSettings;->_set(ILjava/lang/Object;)V

    .line 174
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 209
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendSettings;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendSettings;->_tag:I

    packed-switch v0, :pswitch_data_5c

    goto :goto_5b

    .line 239
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendSettings;->getDtmb()Landroid/hardware/tv/tuner/FrontendDtmbSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_5b

    .line 236
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendSettings;->getIsdbt()Landroid/hardware/tv/tuner/FrontendIsdbtSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 237
    goto :goto_5b

    .line 233
    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendSettings;->getIsdbs3()Landroid/hardware/tv/tuner/FrontendIsdbs3Settings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 234
    goto :goto_5b

    .line 230
    :pswitch_23
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendSettings;->getIsdbs()Landroid/hardware/tv/tuner/FrontendIsdbsSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 231
    goto :goto_5b

    .line 227
    :pswitch_2b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendSettings;->getDvbt()Landroid/hardware/tv/tuner/FrontendDvbtSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 228
    goto :goto_5b

    .line 224
    :pswitch_33
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendSettings;->getDvbc()Landroid/hardware/tv/tuner/FrontendDvbcSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 225
    goto :goto_5b

    .line 221
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendSettings;->getDvbs()Landroid/hardware/tv/tuner/FrontendDvbsSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 222
    goto :goto_5b

    .line 218
    :pswitch_43
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendSettings;->getAtsc3()Landroid/hardware/tv/tuner/FrontendAtsc3Settings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 219
    goto :goto_5b

    .line 215
    :pswitch_4b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendSettings;->getAtsc()Landroid/hardware/tv/tuner/FrontendAtscSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 216
    goto :goto_5b

    .line 212
    :pswitch_53
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendSettings;->getAnalog()Landroid/hardware/tv/tuner/FrontendAnalogSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 213
    nop

    .line 242
    :goto_5b
    return-void

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_53
        :pswitch_4b
        :pswitch_43
        :pswitch_3b
        :pswitch_33
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
