.class public final Landroid/security/metrics/KeystoreAtomPayload;
.super Ljava/lang/Object;
.source "KeystoreAtomPayload.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/metrics/KeystoreAtomPayload$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/metrics/KeystoreAtomPayload;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist crashStats:I = 0x9

.field public static final blacklist keyCreationWithAuthInfo:I = 0x3

.field public static final blacklist keyCreationWithGeneralInfo:I = 0x2

.field public static final blacklist keyCreationWithPurposeAndModesInfo:I = 0x4

.field public static final blacklist keyOperationWithGeneralInfo:I = 0x7

.field public static final blacklist keyOperationWithPurposeAndModesInfo:I = 0x6

.field public static final blacklist keystore2AtomWithOverflow:I = 0x5

.field public static final blacklist rkpErrorStats:I = 0x8

.field public static final blacklist rkpPoolStats:I = 0x1

.field public static final blacklist storageStats:I


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 191
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload$1;

    invoke-direct {v0}, Landroid/security/metrics/KeystoreAtomPayload$1;-><init>()V

    sput-object v0, Landroid/security/metrics/KeystoreAtomPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "_value":Landroid/security/metrics/StorageStats;
    const/4 v1, 0x0

    iput v1, p0, Landroid/security/metrics/KeystoreAtomPayload;->_tag:I

    .line 25
    iput-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

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
    iput p1, p0, Landroid/security/metrics/KeystoreAtomPayload;->_tag:I

    .line 34
    iput-object p2, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/security/metrics/KeystoreAtomPayload-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 343
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 346
    return-void

    .line 344
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/security/metrics/KeystoreAtomPayload;->_tagString(I)Ljava/lang/String;

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

    .line 365
    iput p1, p0, Landroid/security/metrics/KeystoreAtomPayload;->_tag:I

    .line 366
    iput-object p2, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    .line 367
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 349
    packed-switch p1, :pswitch_data_44

    .line 361
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

    .line 359
    :pswitch_1d
    const-string v0, "crashStats"

    return-object v0

    .line 358
    :pswitch_20
    const-string/jumbo v0, "rkpErrorStats"

    return-object v0

    .line 357
    :pswitch_24
    const-string/jumbo v0, "keyOperationWithGeneralInfo"

    return-object v0

    .line 356
    :pswitch_28
    const-string/jumbo v0, "keyOperationWithPurposeAndModesInfo"

    return-object v0

    .line 355
    :pswitch_2c
    const-string/jumbo v0, "keystore2AtomWithOverflow"

    return-object v0

    .line 354
    :pswitch_30
    const-string/jumbo v0, "keyCreationWithPurposeAndModesInfo"

    return-object v0

    .line 353
    :pswitch_34
    const-string/jumbo v0, "keyCreationWithAuthInfo"

    return-object v0

    .line 352
    :pswitch_38
    const-string/jumbo v0, "keyCreationWithGeneralInfo"

    return-object v0

    .line 351
    :pswitch_3c
    const-string/jumbo v0, "rkpPoolStats"

    return-object v0

    .line 350
    :pswitch_40
    const-string/jumbo v0, "storageStats"

    return-object v0

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist crashStats(Landroid/security/metrics/CrashStats;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3
    .param p0, "_value"    # Landroid/security/metrics/CrashStats;

    .line 179
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 335
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 336
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 337
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 339
    :cond_10
    return v0
.end method

.method public static blacklist keyCreationWithAuthInfo(Landroid/security/metrics/KeyCreationWithAuthInfo;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3
    .param p0, "_value"    # Landroid/security/metrics/KeyCreationWithAuthInfo;

    .line 89
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist keyCreationWithGeneralInfo(Landroid/security/metrics/KeyCreationWithGeneralInfo;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3
    .param p0, "_value"    # Landroid/security/metrics/KeyCreationWithGeneralInfo;

    .line 74
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist keyCreationWithPurposeAndModesInfo(Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3
    .param p0, "_value"    # Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    .line 104
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist keyOperationWithGeneralInfo(Landroid/security/metrics/KeyOperationWithGeneralInfo;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3
    .param p0, "_value"    # Landroid/security/metrics/KeyOperationWithGeneralInfo;

    .line 149
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist keyOperationWithPurposeAndModesInfo(Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3
    .param p0, "_value"    # Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    .line 134
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist keystore2AtomWithOverflow(Landroid/security/metrics/Keystore2AtomWithOverflow;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3
    .param p0, "_value"    # Landroid/security/metrics/Keystore2AtomWithOverflow;

    .line 119
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist rkpErrorStats(Landroid/security/metrics/RkpErrorStats;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3
    .param p0, "_value"    # Landroid/security/metrics/RkpErrorStats;

    .line 164
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist rkpPoolStats(Landroid/security/metrics/RkpPoolStats;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3
    .param p0, "_value"    # Landroid/security/metrics/RkpPoolStats;

    .line 59
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist storageStats(Landroid/security/metrics/StorageStats;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3
    .param p0, "_value"    # Landroid/security/metrics/StorageStats;

    .line 44
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_6e

    goto :goto_6d

    .line 329
    :pswitch_9
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getCrashStats()Landroid/security/metrics/CrashStats;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_6d

    .line 326
    :pswitch_13
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getRkpErrorStats()Landroid/security/metrics/RkpErrorStats;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 327
    goto :goto_6d

    .line 323
    :pswitch_1d
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithGeneralInfo()Landroid/security/metrics/KeyOperationWithGeneralInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 324
    goto :goto_6d

    .line 320
    :pswitch_27
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithPurposeAndModesInfo()Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 321
    goto :goto_6d

    .line 317
    :pswitch_31
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeystore2AtomWithOverflow()Landroid/security/metrics/Keystore2AtomWithOverflow;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 318
    goto :goto_6d

    .line 314
    :pswitch_3b
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithPurposeAndModesInfo()Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 315
    goto :goto_6d

    .line 311
    :pswitch_45
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithAuthInfo()Landroid/security/metrics/KeyCreationWithAuthInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 312
    goto :goto_6d

    .line 308
    :pswitch_4f
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithGeneralInfo()Landroid/security/metrics/KeyCreationWithGeneralInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 309
    goto :goto_6d

    .line 305
    :pswitch_59
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getRkpPoolStats()Landroid/security/metrics/RkpPoolStats;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 306
    goto :goto_6d

    .line 302
    :pswitch_63
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getStorageStats()Landroid/security/metrics/StorageStats;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 303
    nop

    .line 332
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

.method public blacklist getCrashStats()Landroid/security/metrics/CrashStats;
    .registers 2

    .line 183
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 184
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/CrashStats;

    return-object v0
.end method

.method public blacklist getKeyCreationWithAuthInfo()Landroid/security/metrics/KeyCreationWithAuthInfo;
    .registers 2

    .line 93
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 94
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/KeyCreationWithAuthInfo;

    return-object v0
.end method

.method public blacklist getKeyCreationWithGeneralInfo()Landroid/security/metrics/KeyCreationWithGeneralInfo;
    .registers 2

    .line 78
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 79
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/KeyCreationWithGeneralInfo;

    return-object v0
.end method

.method public blacklist getKeyCreationWithPurposeAndModesInfo()Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;
    .registers 2

    .line 108
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 109
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    return-object v0
.end method

.method public blacklist getKeyOperationWithGeneralInfo()Landroid/security/metrics/KeyOperationWithGeneralInfo;
    .registers 2

    .line 153
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 154
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/KeyOperationWithGeneralInfo;

    return-object v0
.end method

.method public blacklist getKeyOperationWithPurposeAndModesInfo()Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;
    .registers 2

    .line 138
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 139
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    return-object v0
.end method

.method public blacklist getKeystore2AtomWithOverflow()Landroid/security/metrics/Keystore2AtomWithOverflow;
    .registers 2

    .line 123
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 124
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/Keystore2AtomWithOverflow;

    return-object v0
.end method

.method public blacklist getRkpErrorStats()Landroid/security/metrics/RkpErrorStats;
    .registers 2

    .line 168
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 169
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/RkpErrorStats;

    return-object v0
.end method

.method public blacklist getRkpPoolStats()Landroid/security/metrics/RkpPoolStats;
    .registers 2

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 64
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/RkpPoolStats;

    return-object v0
.end method

.method public blacklist getStorageStats()Landroid/security/metrics/StorageStats;
    .registers 2

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 49
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/StorageStats;

    return-object v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 38
    iget v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 242
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_9a

    .line 294
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

    .line 290
    :pswitch_21
    sget-object v1, Landroid/security/metrics/CrashStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/CrashStats;

    .line 291
    .local v1, "_aidl_value":Landroid/security/metrics/CrashStats;
    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 292
    return-void

    .line 285
    .end local v1    # "_aidl_value":Landroid/security/metrics/CrashStats;
    :pswitch_2d
    sget-object v1, Landroid/security/metrics/RkpErrorStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/RkpErrorStats;

    .line 286
    .local v1, "_aidl_value":Landroid/security/metrics/RkpErrorStats;
    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 287
    return-void

    .line 280
    .end local v1    # "_aidl_value":Landroid/security/metrics/RkpErrorStats;
    :pswitch_39
    sget-object v1, Landroid/security/metrics/KeyOperationWithGeneralInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/KeyOperationWithGeneralInfo;

    .line 281
    .local v1, "_aidl_value":Landroid/security/metrics/KeyOperationWithGeneralInfo;
    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 282
    return-void

    .line 275
    .end local v1    # "_aidl_value":Landroid/security/metrics/KeyOperationWithGeneralInfo;
    :pswitch_45
    sget-object v1, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    .line 276
    .local v1, "_aidl_value":Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;
    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 277
    return-void

    .line 270
    .end local v1    # "_aidl_value":Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;
    :pswitch_51
    sget-object v1, Landroid/security/metrics/Keystore2AtomWithOverflow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/Keystore2AtomWithOverflow;

    .line 271
    .local v1, "_aidl_value":Landroid/security/metrics/Keystore2AtomWithOverflow;
    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 272
    return-void

    .line 265
    .end local v1    # "_aidl_value":Landroid/security/metrics/Keystore2AtomWithOverflow;
    :pswitch_5d
    sget-object v1, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    .line 266
    .local v1, "_aidl_value":Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;
    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 267
    return-void

    .line 260
    .end local v1    # "_aidl_value":Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;
    :pswitch_69
    sget-object v1, Landroid/security/metrics/KeyCreationWithAuthInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/KeyCreationWithAuthInfo;

    .line 261
    .local v1, "_aidl_value":Landroid/security/metrics/KeyCreationWithAuthInfo;
    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 262
    return-void

    .line 255
    .end local v1    # "_aidl_value":Landroid/security/metrics/KeyCreationWithAuthInfo;
    :pswitch_75
    sget-object v1, Landroid/security/metrics/KeyCreationWithGeneralInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/KeyCreationWithGeneralInfo;

    .line 256
    .local v1, "_aidl_value":Landroid/security/metrics/KeyCreationWithGeneralInfo;
    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 257
    return-void

    .line 250
    .end local v1    # "_aidl_value":Landroid/security/metrics/KeyCreationWithGeneralInfo;
    :pswitch_81
    sget-object v1, Landroid/security/metrics/RkpPoolStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/RkpPoolStats;

    .line 251
    .local v1, "_aidl_value":Landroid/security/metrics/RkpPoolStats;
    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 252
    return-void

    .line 245
    .end local v1    # "_aidl_value":Landroid/security/metrics/RkpPoolStats;
    :pswitch_8d
    sget-object v1, Landroid/security/metrics/StorageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/StorageStats;

    .line 246
    .local v1, "_aidl_value":Landroid/security/metrics/StorageStats;
    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 247
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

.method public blacklist setCrashStats(Landroid/security/metrics/CrashStats;)V
    .registers 3
    .param p1, "_value"    # Landroid/security/metrics/CrashStats;

    .line 188
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 189
    return-void
.end method

.method public blacklist setKeyCreationWithAuthInfo(Landroid/security/metrics/KeyCreationWithAuthInfo;)V
    .registers 3
    .param p1, "_value"    # Landroid/security/metrics/KeyCreationWithAuthInfo;

    .line 98
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 99
    return-void
.end method

.method public blacklist setKeyCreationWithGeneralInfo(Landroid/security/metrics/KeyCreationWithGeneralInfo;)V
    .registers 3
    .param p1, "_value"    # Landroid/security/metrics/KeyCreationWithGeneralInfo;

    .line 83
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 84
    return-void
.end method

.method public blacklist setKeyCreationWithPurposeAndModesInfo(Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;)V
    .registers 3
    .param p1, "_value"    # Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    .line 113
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 114
    return-void
.end method

.method public blacklist setKeyOperationWithGeneralInfo(Landroid/security/metrics/KeyOperationWithGeneralInfo;)V
    .registers 3
    .param p1, "_value"    # Landroid/security/metrics/KeyOperationWithGeneralInfo;

    .line 158
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 159
    return-void
.end method

.method public blacklist setKeyOperationWithPurposeAndModesInfo(Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;)V
    .registers 3
    .param p1, "_value"    # Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    .line 143
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 144
    return-void
.end method

.method public blacklist setKeystore2AtomWithOverflow(Landroid/security/metrics/Keystore2AtomWithOverflow;)V
    .registers 3
    .param p1, "_value"    # Landroid/security/metrics/Keystore2AtomWithOverflow;

    .line 128
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 129
    return-void
.end method

.method public blacklist setRkpErrorStats(Landroid/security/metrics/RkpErrorStats;)V
    .registers 3
    .param p1, "_value"    # Landroid/security/metrics/RkpErrorStats;

    .line 173
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 174
    return-void
.end method

.method public blacklist setRkpPoolStats(Landroid/security/metrics/RkpPoolStats;)V
    .registers 3
    .param p1, "_value"    # Landroid/security/metrics/RkpPoolStats;

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method public blacklist setStorageStats(Landroid/security/metrics/StorageStats;)V
    .registers 3
    .param p1, "_value"    # Landroid/security/metrics/StorageStats;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 54
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 204
    iget v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_tag:I

    packed-switch v0, :pswitch_data_5c

    goto :goto_5b

    .line 234
    :pswitch_b
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getCrashStats()Landroid/security/metrics/CrashStats;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_5b

    .line 231
    :pswitch_13
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getRkpErrorStats()Landroid/security/metrics/RkpErrorStats;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 232
    goto :goto_5b

    .line 228
    :pswitch_1b
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithGeneralInfo()Landroid/security/metrics/KeyOperationWithGeneralInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 229
    goto :goto_5b

    .line 225
    :pswitch_23
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithPurposeAndModesInfo()Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 226
    goto :goto_5b

    .line 222
    :pswitch_2b
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeystore2AtomWithOverflow()Landroid/security/metrics/Keystore2AtomWithOverflow;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 223
    goto :goto_5b

    .line 219
    :pswitch_33
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithPurposeAndModesInfo()Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 220
    goto :goto_5b

    .line 216
    :pswitch_3b
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithAuthInfo()Landroid/security/metrics/KeyCreationWithAuthInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 217
    goto :goto_5b

    .line 213
    :pswitch_43
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithGeneralInfo()Landroid/security/metrics/KeyCreationWithGeneralInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 214
    goto :goto_5b

    .line 210
    :pswitch_4b
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getRkpPoolStats()Landroid/security/metrics/RkpPoolStats;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 211
    goto :goto_5b

    .line 207
    :pswitch_53
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getStorageStats()Landroid/security/metrics/StorageStats;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 208
    nop

    .line 237
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
