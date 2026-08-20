.class public Lcom/sec/ims/ImsRegistration;
.super Ljava/lang/Object;
.source "ImsRegistration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/ImsRegistration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/ImsRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "ImsRegistration"

.field public static final NETWORK_TYPE_MOBILE:I = 0x1

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_WIFI:I = 0x2

.field public static final SHIP_BUILD:Z


# instance fields
.field private mCurrentRat:I

.field private mDeregiReason:I

.field private final mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;"
        }
    .end annotation
.end field

.field private final mDomain:Ljava/lang/String;

.field private final mEcmpStatus:I

.field private mEpdgOverCellularData:Z

.field private mEpdgStatus:Z

.field private final mHandle:I

.field private mInitialRegistrationRat:I

.field private final mInstanceId:Ljava/lang/String;

.field private final mNetwork:Landroid/net/Network;

.field private mPAssociatedUri2nd:Ljava/lang/String;

.field private final mPcscf:Ljava/lang/String;

.field private final mPdnType:I

.field private final mPhoneId:I

.field private final mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

.field private final mPrivateUserId:Ljava/lang/String;

.field private final mProfile:Lcom/sec/ims/settings/ImsProfile;

.field private mProhibited:Z

.field private final mPublicUserId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegExpiryStatus:I

.field private final mRegisterSipResponse:Ljava/lang/String;

.field private final mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

.field private final mServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionId:I

.field private mUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 75
    nop

    .line 76
    const-string v0, "ro.product_ship"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/ims/ImsRegistration;->SHIP_BUILD:Z

    .line 323
    new-instance v0, Lcom/sec/ims/ImsRegistration$1;

    invoke-direct {v0}, Lcom/sec/ims/ImsRegistration$1;-><init>()V

    sput-object v0, Lcom/sec/ims/ImsRegistration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    .line 68
    const/16 v1, 0xe

    iput v1, p0, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    .line 69
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mUuid:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/ims/ImsRegistration;->mHandle:I

    .line 338
    new-instance v1, Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/ims/settings/ImsProfile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 339
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    .line 340
    invoke-direct {p0, p1}, Lcom/sec/ims/ImsRegistration;->readServices(Landroid/os/Parcel;)V

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/ims/ImsRegistration;->mInitialRegistrationRat:I

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/ims/ImsRegistration;->mCurrentRat:I

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/ims/ImsRegistration;->mSubscriptionId:I

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/ims/ImsRegistration;->mPhoneId:I

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mPrivateUserId:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5c

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    goto :goto_5e

    .line 349
    :cond_5c
    iput-object v2, p0, Lcom/sec/ims/ImsRegistration;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    .line 351
    :goto_5e
    const-class v1, Lcom/sec/ims/util/NameAddr;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/NameAddr;

    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

    .line 352
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mPublicUserId:Ljava/util/List;

    .line 353
    sget-object v4, Lcom/sec/ims/util/NameAddr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 354
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mDeviceList:Ljava/util/List;

    .line 355
    sget-object v4, Lcom/sec/ims/util/NameAddr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mDomain:Ljava/lang/String;

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mPcscf:Ljava/lang/String;

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mInstanceId:Ljava/lang/String;

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/ims/ImsRegistration;->mPdnType:I

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/ims/ImsRegistration;->mEcmpStatus:I

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/ims/ImsRegistration;->mRegExpiryStatus:I

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_b0

    move v1, v3

    goto :goto_b1

    :cond_b0
    move v1, v0

    :goto_b1
    iput-boolean v1, p0, Lcom/sec/ims/ImsRegistration;->mEpdgStatus:Z

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_ba

    move v0, v3

    :cond_ba
    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mEpdgOverCellularData:Z

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_c9

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    goto :goto_cb

    .line 369
    :cond_c9
    iput-object v2, p0, Lcom/sec/ims/ImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    .line 371
    :goto_cb
    const-class v0, Landroid/net/Network;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mNetwork:Landroid/net/Network;

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mUuid:Ljava/lang/String;

    .line 374
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/ImsRegistration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sec/ims/ImsRegistration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/ImsRegistration$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/sec/ims/ImsRegistration$Builder;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    .line 68
    const/16 v0, 0xe

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mUuid:Ljava/lang/String;

    .line 417
    iget v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mHandle:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mHandle:I

    .line 418
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 419
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mServices:Ljava/util/Set;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    .line 420
    iget v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mRat:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mInitialRegistrationRat:I

    .line 421
    iget v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mRat:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mCurrentRat:I

    .line 422
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mDomain:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mDomain:Ljava/lang/String;

    .line 423
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mPrivateUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPrivateUserId:Ljava/lang/String;

    .line 424
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    .line 425
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

    .line 426
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mPublicUserId:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPublicUserId:Ljava/util/List;

    .line 427
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mDeviceList:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mDeviceList:Ljava/util/List;

    .line 428
    iget v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mSubscriptionId:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mSubscriptionId:I

    .line 429
    iget v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mPhoneId:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mPhoneId:I

    .line 430
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mInstanceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mInstanceId:Ljava/lang/String;

    .line 431
    iget v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mPdnType:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mPdnType:I

    .line 432
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mPcscf:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPcscf:Ljava/lang/String;

    .line 433
    invoke-static {p1}, Lcom/sec/ims/ImsRegistration$Builder;->-$$Nest$fgetmEcmpStatus(Lcom/sec/ims/ImsRegistration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mEcmpStatus:I

    .line 434
    invoke-static {p1}, Lcom/sec/ims/ImsRegistration$Builder;->-$$Nest$fgetmRegExpiryStatus(Lcom/sec/ims/ImsRegistration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mRegExpiryStatus:I

    .line 435
    invoke-static {p1}, Lcom/sec/ims/ImsRegistration$Builder;->-$$Nest$fgetmEpdgStatus(Lcom/sec/ims/ImsRegistration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mEpdgStatus:Z

    .line 436
    invoke-static {p1}, Lcom/sec/ims/ImsRegistration$Builder;->-$$Nest$fgetmEpdgOverCellularData(Lcom/sec/ims/ImsRegistration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mEpdgOverCellularData:Z

    .line 437
    invoke-static {p1}, Lcom/sec/ims/ImsRegistration$Builder;->-$$Nest$fgetmProhibited(Lcom/sec/ims/ImsRegistration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    .line 438
    invoke-static {p1}, Lcom/sec/ims/ImsRegistration$Builder;->-$$Nest$fgetmRegisterSipResponse(Lcom/sec/ims/ImsRegistration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    .line 439
    invoke-static {p1}, Lcom/sec/ims/ImsRegistration$Builder;->-$$Nest$fgetmNetwork(Lcom/sec/ims/ImsRegistration$Builder;)Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mNetwork:Landroid/net/Network;

    .line 440
    invoke-static {p1}, Lcom/sec/ims/ImsRegistration$Builder;->-$$Nest$fgetmDeregiReason(Lcom/sec/ims/ImsRegistration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    .line 441
    invoke-static {p1}, Lcom/sec/ims/ImsRegistration$Builder;->-$$Nest$fgetmPAssociatedUri2nd(Lcom/sec/ims/ImsRegistration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 442
    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/ImsRegistration;)V
    .registers 4
    .param p1, "src"    # Lcom/sec/ims/ImsRegistration;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    .line 68
    const/16 v0, 0xe

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mUuid:Ljava/lang/String;

    .line 389
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mHandle:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mHandle:I

    .line 390
    new-instance v0, Lcom/sec/ims/settings/ImsProfile;

    iget-object v1, p1, Lcom/sec/ims/ImsRegistration;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v0, v1}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 391
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    .line 392
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mInitialRegistrationRat:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mInitialRegistrationRat:I

    .line 393
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mCurrentRat:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mCurrentRat:I

    .line 394
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mDomain:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mDomain:Ljava/lang/String;

    .line 395
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mPrivateUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPrivateUserId:Ljava/lang/String;

    .line 396
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    .line 397
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/sec/ims/ImsRegistration;->mPublicUserId:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPublicUserId:Ljava/util/List;

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/sec/ims/ImsRegistration;->mDeviceList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mDeviceList:Ljava/util/List;

    .line 400
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mSubscriptionId:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mSubscriptionId:I

    .line 401
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mPhoneId:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mPhoneId:I

    .line 402
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mInstanceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mInstanceId:Ljava/lang/String;

    .line 403
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mPdnType:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mPdnType:I

    .line 404
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mPcscf:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPcscf:Ljava/lang/String;

    .line 405
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mEcmpStatus:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mEcmpStatus:I

    .line 406
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mRegExpiryStatus:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mRegExpiryStatus:I

    .line 407
    iget-boolean v0, p1, Lcom/sec/ims/ImsRegistration;->mEpdgStatus:Z

    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mEpdgStatus:Z

    .line 408
    iget-boolean v0, p1, Lcom/sec/ims/ImsRegistration;->mEpdgOverCellularData:Z

    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mEpdgOverCellularData:Z

    .line 409
    iget-boolean v0, p1, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    .line 410
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    .line 411
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mNetwork:Landroid/net/Network;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mNetwork:Landroid/net/Network;

    .line 412
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    .line 413
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 414
    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/ImsRegistration;Ljava/util/Set;)V
    .registers 5
    .param p1, "src"    # Lcom/sec/ims/ImsRegistration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/ImsRegistration;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 444
    .local p2, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    .line 68
    const/16 v0, 0xe

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mUuid:Ljava/lang/String;

    .line 445
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mHandle:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mHandle:I

    .line 446
    new-instance v0, Lcom/sec/ims/settings/ImsProfile;

    iget-object v1, p1, Lcom/sec/ims/ImsRegistration;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v0, v1}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 447
    iput-object p2, p0, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    .line 448
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mInitialRegistrationRat:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mInitialRegistrationRat:I

    .line 449
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mCurrentRat:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mCurrentRat:I

    .line 450
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mDomain:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mDomain:Ljava/lang/String;

    .line 451
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mPrivateUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPrivateUserId:Ljava/lang/String;

    .line 452
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    .line 453
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/sec/ims/ImsRegistration;->mPublicUserId:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPublicUserId:Ljava/util/List;

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/sec/ims/ImsRegistration;->mDeviceList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mDeviceList:Ljava/util/List;

    .line 456
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mSubscriptionId:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mSubscriptionId:I

    .line 457
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mPhoneId:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mPhoneId:I

    .line 458
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mInstanceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mInstanceId:Ljava/lang/String;

    .line 459
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mPdnType:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mPdnType:I

    .line 460
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mPcscf:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPcscf:Ljava/lang/String;

    .line 461
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mEcmpStatus:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mEcmpStatus:I

    .line 462
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mRegExpiryStatus:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mRegExpiryStatus:I

    .line 463
    iget-boolean v0, p1, Lcom/sec/ims/ImsRegistration;->mEpdgStatus:Z

    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mEpdgStatus:Z

    .line 464
    iget-boolean v0, p1, Lcom/sec/ims/ImsRegistration;->mEpdgOverCellularData:Z

    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mEpdgOverCellularData:Z

    .line 465
    iget-boolean v0, p1, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    .line 466
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    .line 467
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mNetwork:Landroid/net/Network;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mNetwork:Landroid/net/Network;

    .line 468
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    .line 469
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 470
    return-void
.end method

.method public static getBuilder()Lcom/sec/ims/ImsRegistration$Builder;
    .registers 1

    .line 497
    new-instance v0, Lcom/sec/ims/ImsRegistration$Builder;

    invoke-direct {v0}, Lcom/sec/ims/ImsRegistration$Builder;-><init>()V

    return-object v0
.end method

.method private readServices(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 385
    iget-object v1, p0, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 386
    return-void
.end method

.method private writeServices(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 378
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentRat()I
    .registers 2

    .line 259
    iget v0, p0, Lcom/sec/ims/ImsRegistration;->mCurrentRat:I

    return v0
.end method

.method public getDeregiReason()I
    .registers 2

    .line 243
    iget v0, p0, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    return v0
.end method

.method public getDeviceList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/ims/ImsRegistration;->mDeviceList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getEcmpStatus()I
    .registers 2

    .line 175
    iget v0, p0, Lcom/sec/ims/ImsRegistration;->mEcmpStatus:I

    return v0
.end method

.method public getEpdgStatus()Z
    .registers 2

    .line 186
    iget-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mEpdgStatus:Z

    return v0
.end method

.method public getHandle()I
    .registers 2

    .line 79
    iget v0, p0, Lcom/sec/ims/ImsRegistration;->mHandle:I

    return v0
.end method

.method public getImpi()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPrivateUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getImpuList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/ims/ImsRegistration;->mPublicUserId:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getImsProfile()Lcom/sec/ims/settings/ImsProfile;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()Landroid/net/Network;
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public getNetworkType()I
    .registers 2

    .line 202
    iget v0, p0, Lcom/sec/ims/ImsRegistration;->mPdnType:I

    return v0
.end method

.method public getOwnNumber()Ljava/lang/String;
    .registers 2

    .line 165
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 166
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "msisdn":Ljava/lang/String;
    if-eqz v0, :cond_1f

    .line 168
    return-object v0

    .line 171
    .end local v0    # "msisdn":Ljava/lang/String;
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPAssociatedUri2nd()Ljava/lang/String;
    .registers 2

    .line 267
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    return-object v0
.end method

.method public getPcscf()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPcscf:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneId()I
    .registers 2

    .line 99
    iget v0, p0, Lcom/sec/ims/ImsRegistration;->mPhoneId:I

    return v0
.end method

.method public getPreferredImpu()Lcom/sec/ims/util/NameAddr;
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

    if-eqz v0, :cond_5

    goto :goto_c

    :cond_5
    new-instance v0, Lcom/sec/ims/util/NameAddr;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Lcom/sec/ims/util/NameAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    return-object v0
.end method

.method public getRegiRat()I
    .registers 2

    .line 251
    iget v0, p0, Lcom/sec/ims/ImsRegistration;->mInitialRegistrationRat:I

    return v0
.end method

.method public getRegisterSipResponse()Ljava/lang/String;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisteredImpu()Lcom/sec/ims/util/ImsUri;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    return-object v0
.end method

.method public getServices()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSubscriptionId()I
    .registers 2

    .line 95
    iget v0, p0, Lcom/sec/ims/ImsRegistration;->mSubscriptionId:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .registers 2

    .line 275
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public hasRcsService()Z
    .registers 3

    .line 124
    new-instance v0, Ljava/util/HashSet;

    .line 125
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 127
    .local v0, "rcsServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public hasService(Ljava/lang/String;)Z
    .registers 3
    .param p1, "service"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasVolteService()Z
    .registers 3

    .line 116
    new-instance v0, Ljava/util/HashSet;

    .line 117
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 118
    .local v0, "volteServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "cdpn"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 120
    iget-object v1, p0, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public isEpdgOverCellularData()Z
    .registers 2

    .line 194
    iget-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mEpdgOverCellularData:Z

    return v0
.end method

.method public isImsiBased(Ljava/lang/String;)Z
    .registers 3
    .param p1, "imsi"    # Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    if-eqz v0, :cond_10

    if-nez p1, :cond_7

    goto :goto_10

    .line 226
    :cond_7
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 224
    :cond_10
    :goto_10
    const/4 v0, 0x0

    return v0
.end method

.method public isProhibited()Z
    .registers 2

    .line 216
    iget-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    return v0
.end method

.method public setCurrentRat(I)V
    .registers 2
    .param p1, "rat"    # I

    .line 255
    iput p1, p0, Lcom/sec/ims/ImsRegistration;->mCurrentRat:I

    .line 256
    return-void
.end method

.method public setDeregiReason(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 239
    iput p1, p0, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    .line 240
    return-void
.end method

.method public setEpdgOverCellularData(Z)V
    .registers 2
    .param p1, "isEpdgOverCellularData"    # Z

    .line 198
    iput-boolean p1, p0, Lcom/sec/ims/ImsRegistration;->mEpdgOverCellularData:Z

    .line 199
    return-void
.end method

.method public setEpdgStatus(Z)V
    .registers 2
    .param p1, "isEpdgConnected"    # Z

    .line 190
    iput-boolean p1, p0, Lcom/sec/ims/ImsRegistration;->mEpdgStatus:Z

    .line 191
    return-void
.end method

.method public setPAssociatedUri2nd(Ljava/lang/String;)V
    .registers 2
    .param p1, "pAssociatedUri"    # Ljava/lang/String;

    .line 263
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setProhibited(Z)V
    .registers 2
    .param p1, "prohibited"    # Z

    .line 207
    iput-boolean p1, p0, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    .line 208
    return-void
.end method

.method public setRegiRat(I)V
    .registers 2
    .param p1, "rat"    # I

    .line 247
    iput p1, p0, Lcom/sec/ims/ImsRegistration;->mInitialRegistrationRat:I

    .line 248
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .registers 2
    .param p1, "uuid"    # Ljava/lang/String;

    .line 271
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration;->mUuid:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 21

    .line 474
    move-object/from16 v0, p0

    sget-boolean v1, Lcom/sec/ims/ImsRegistration;->SHIP_BUILD:Z

    const-string v2, "]"

    const-string v3, ", mDeregiReason ="

    const-string v4, ", mNetwork="

    const-string v5, ", mProhibited="

    const-string v6, ", mEpdgOverCellularData="

    const-string v7, ", mEpdgStatus="

    const-string v8, ", mRegExpiryStatus="

    const-string v9, ", mEcmpStatus="

    const-string v10, ", mPcscf="

    const-string v11, ", mPdnType="

    const-string v12, ", mPhoneId="

    const-string v13, ", mSubscriptionId="

    const-string v14, ", mDeviceList="

    const-string v15, ", mDomain="

    move-object/from16 v16, v2

    const-string v2, ", mServices="

    const-string v17, "null"

    move-object/from16 v18, v3

    const-string v3, ", mProfile="

    move-object/from16 v19, v4

    const-string v4, "ImsRegistration [mHandle="

    if-eqz v1, :cond_ec

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Lcom/sec/ims/ImsRegistration;->mHandle:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/sec/ims/ImsRegistration;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    if-eqz v3, :cond_4b

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v17

    :cond_4b
    move-object/from16 v3, v17

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/ims/ImsRegistration;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/ims/ImsRegistration;->mDeviceList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/sec/ims/ImsRegistration;->mSubscriptionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/sec/ims/ImsRegistration;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/sec/ims/ImsRegistration;->mPdnType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/ims/ImsRegistration;->mPcscf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/sec/ims/ImsRegistration;->mEcmpStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/sec/ims/ImsRegistration;->mRegExpiryStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/sec/ims/ImsRegistration;->mEpdgStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/sec/ims/ImsRegistration;->mEpdgOverCellularData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/ims/ImsRegistration;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 483
    :cond_ec
    move-object/from16 v1, v19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Lcom/sec/ims/ImsRegistration;->mHandle:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/sec/ims/ImsRegistration;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    if-eqz v3, :cond_109

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v17

    :cond_109
    move-object/from16 v3, v17

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/ims/ImsRegistration;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPrivateUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/ims/ImsRegistration;->mPrivateUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRegisteredPublicUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/ims/ImsRegistration;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPreferredPublicUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/ims/ImsRegistration;->mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPublicUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/ims/ImsRegistration;->mPublicUserId:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/ims/ImsRegistration;->mDeviceList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/sec/ims/ImsRegistration;->mSubscriptionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/sec/ims/ImsRegistration;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mInstanceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/ims/ImsRegistration;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/sec/ims/ImsRegistration;->mPdnType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/ims/ImsRegistration;->mPcscf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/sec/ims/ImsRegistration;->mEcmpStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/sec/ims/ImsRegistration;->mRegExpiryStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/sec/ims/ImsRegistration;->mEpdgStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/sec/ims/ImsRegistration;->mEpdgOverCellularData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/ims/ImsRegistration;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 285
    iget v0, p0, Lcom/sec/ims/ImsRegistration;->mHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    invoke-direct {p0, p1}, Lcom/sec/ims/ImsRegistration;->writeServices(Landroid/os/Parcel;)V

    .line 288
    iget v0, p0, Lcom/sec/ims/ImsRegistration;->mInitialRegistrationRat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget v0, p0, Lcom/sec/ims/ImsRegistration;->mCurrentRat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget v0, p0, Lcom/sec/ims/ImsRegistration;->mSubscriptionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget v0, p0, Lcom/sec/ims/ImsRegistration;->mPhoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPrivateUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 294
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_40

    .line 296
    :cond_34
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    :goto_40
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 300
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPublicUserId:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 301
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mDeviceList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 303
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPcscf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mInstanceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    iget v0, p0, Lcom/sec/ims/ImsRegistration;->mPdnType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget v0, p0, Lcom/sec/ims/ImsRegistration;->mEcmpStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget v0, p0, Lcom/sec/ims/ImsRegistration;->mRegExpiryStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mEpdgStatus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mEpdgOverCellularData:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    if-nez v0, :cond_7f

    .line 313
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_87

    .line 315
    :cond_7f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    :goto_87
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 319
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    return-void
.end method
