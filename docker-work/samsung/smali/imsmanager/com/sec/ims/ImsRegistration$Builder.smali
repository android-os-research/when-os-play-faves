.class public Lcom/sec/ims/ImsRegistration$Builder;
.super Ljava/lang/Object;
.source "ImsRegistration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/ImsRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDeregiReason:I

.field protected mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;"
        }
    .end annotation
.end field

.field protected mDomain:Ljava/lang/String;

.field private mEcmpStatus:I

.field private mEpdgOverCellularData:Z

.field private mEpdgStatus:Z

.field protected mHandle:I

.field protected mInstanceId:Ljava/lang/String;

.field private mNetwork:Landroid/net/Network;

.field private mPAssociatedUri2nd:Ljava/lang/String;

.field protected mPcscf:Ljava/lang/String;

.field protected mPdnType:I

.field protected mPhoneId:I

.field protected mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

.field protected mPrivateUserId:Ljava/lang/String;

.field protected mProfile:Lcom/sec/ims/settings/ImsProfile;

.field private mProhibited:Z

.field protected mPublicUserId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;"
        }
    .end annotation
.end field

.field protected mRat:I

.field private mRegExpiryStatus:I

.field private mRegisterSipResponse:Ljava/lang/String;

.field protected mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

.field mServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSubscriptionId:I

.field private mUuid:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeregiReason(Lcom/sec/ims/ImsRegistration$Builder;)I
    .registers 1

    iget p0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mDeregiReason:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEcmpStatus(Lcom/sec/ims/ImsRegistration$Builder;)I
    .registers 1

    iget p0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mEcmpStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEpdgOverCellularData(Lcom/sec/ims/ImsRegistration$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mEpdgOverCellularData:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEpdgStatus(Lcom/sec/ims/ImsRegistration$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mEpdgStatus:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetwork(Lcom/sec/ims/ImsRegistration$Builder;)Landroid/net/Network;
    .registers 1

    iget-object p0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPAssociatedUri2nd(Lcom/sec/ims/ImsRegistration$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPAssociatedUri2nd:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProhibited(Lcom/sec/ims/ImsRegistration$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mProhibited:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegExpiryStatus(Lcom/sec/ims/ImsRegistration$Builder;)I
    .registers 1

    iget p0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mRegExpiryStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegisterSipResponse(Lcom/sec/ims/ImsRegistration$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mRegisterSipResponse:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mServices:Ljava/util/Set;

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPublicUserId:Ljava/util/List;

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mDeviceList:Ljava/util/List;

    .line 513
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mSubscriptionId:I

    .line 514
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPhoneId:I

    .line 525
    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mProhibited:Z

    .line 528
    const/16 v0, 0xe

    iput v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mDeregiReason:I

    return-void
.end method


# virtual methods
.method public addService(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 3
    .param p1, "service"    # Ljava/lang/String;

    .line 558
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 559
    return-object p0
.end method

.method public build()Lcom/sec/ims/ImsRegistration;
    .registers 2

    .line 533
    new-instance v0, Lcom/sec/ims/ImsRegistration;

    invoke-direct {v0, p0}, Lcom/sec/ims/ImsRegistration;-><init>(Lcom/sec/ims/ImsRegistration$Builder;)V

    return-object v0
.end method

.method public setDeregiReason(I)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 2
    .param p1, "reason"    # I

    .line 643
    iput p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mDeregiReason:I

    .line 644
    return-object p0
.end method

.method public setDeviceList(Ljava/util/List;)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;)",
            "Lcom/sec/ims/ImsRegistration$Builder;"
        }
    .end annotation

    .line 588
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/NameAddr;>;"
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mDeviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 589
    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 2
    .param p1, "domain"    # Ljava/lang/String;

    .line 563
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mDomain:Ljava/lang/String;

    .line 564
    return-object p0
.end method

.method public setEcmpStatus(I)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 2
    .param p1, "ecmp"    # I

    .line 618
    iput p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mEcmpStatus:I

    .line 619
    return-object p0
.end method

.method public setEpdgOverCellularData(Z)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 2
    .param p1, "isEpdgOverCellularData"    # Z

    .line 633
    iput-boolean p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mEpdgOverCellularData:Z

    .line 634
    return-object p0
.end method

.method public setEpdgStatus(Z)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 2
    .param p1, "epdgStatus"    # Z

    .line 628
    iput-boolean p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mEpdgStatus:Z

    .line 629
    return-object p0
.end method

.method public setHandle(I)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 2
    .param p1, "handle"    # I

    .line 537
    iput p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mHandle:I

    .line 538
    return-object p0
.end method

.method public setImsProfile(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 2
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 542
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 543
    return-object p0
.end method

.method public setInstanceId(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 2
    .param p1, "instanceId"    # Ljava/lang/String;

    .line 603
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mInstanceId:Ljava/lang/String;

    .line 604
    return-object p0
.end method

.method public setNetwork(Landroid/net/Network;)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 2
    .param p1, "network"    # Landroid/net/Network;

    .line 653
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mNetwork:Landroid/net/Network;

    .line 654
    return-object p0
.end method

.method public setPAssociatedUri2nd(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 2
    .param p1, "uri"    # Ljava/lang/String;

    .line 658
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 659
    return-object p0
.end method

.method public setPcscf(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 2
    .param p1, "pcscf"    # Ljava/lang/String;

    .line 613
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPcscf:Ljava/lang/String;

    .line 614
    return-object p0
.end method

.method public setPdnType(I)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 2
    .param p1, "pdn"    # I

    .line 608
    iput p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPdnType:I

    .line 609
    return-object p0
.end method

.method public setPhoneId(I)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 2
    .param p1, "phoneId"    # I

    .line 598
    iput p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPhoneId:I

    .line 599
    return-object p0
.end method

.method public setPreferredPublicUserId(Lcom/sec/ims/util/NameAddr;)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 2
    .param p1, "impu"    # Lcom/sec/ims/util/NameAddr;

    .line 578
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

    .line 579
    return-object p0
.end method

.method public setPrivateUserId(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 2
    .param p1, "privateId"    # Ljava/lang/String;

    .line 568
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPrivateUserId:Ljava/lang/String;

    .line 569
    return-object p0
.end method

.method public setProhibited(Z)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 2
    .param p1, "prohibit"    # Z

    .line 638
    iput-boolean p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mProhibited:Z

    .line 639
    return-object p0
.end method

.method public setPublicUserId(Ljava/util/List;)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;)",
            "Lcom/sec/ims/ImsRegistration$Builder;"
        }
    .end annotation

    .line 583
    .local p1, "impus":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/NameAddr;>;"
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPublicUserId:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 584
    return-object p0
.end method

.method public setRegExpiryStatus(I)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 2
    .param p1, "regExpiry"    # I

    .line 623
    iput p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mRegExpiryStatus:I

    .line 624
    return-object p0
.end method

.method public setRegiRat(I)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 2
    .param p1, "rat"    # I

    .line 553
    iput p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mRat:I

    .line 554
    return-object p0
.end method

.method public setRegisterSipResponse(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 2
    .param p1, "sip"    # Ljava/lang/String;

    .line 648
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mRegisterSipResponse:Ljava/lang/String;

    .line 649
    return-object p0
.end method

.method public setRegisteredPublicUserId(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 2
    .param p1, "publicId"    # Lcom/sec/ims/util/ImsUri;

    .line 573
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    .line 574
    return-object p0
.end method

.method public setServices(Ljava/util/Set;)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/ims/ImsRegistration$Builder;"
        }
    .end annotation

    .line 547
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 548
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 549
    return-object p0
.end method

.method public setSubscriptionId(I)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 2
    .param p1, "subscriptionId"    # I

    .line 593
    iput p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mSubscriptionId:I

    .line 594
    return-object p0
.end method

.method public setUuid(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;
    .registers 2
    .param p1, "uuid"    # Ljava/lang/String;

    .line 663
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mUuid:Ljava/lang/String;

    .line 664
    return-object p0
.end method
