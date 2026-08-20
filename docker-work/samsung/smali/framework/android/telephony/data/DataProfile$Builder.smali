.class public final Landroid/telephony/data/DataProfile$Builder;
.super Ljava/lang/Object;
.source "DataProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mApn:Ljava/lang/String;

.field private blacklist mApnSetting:Landroid/telephony/data/ApnSetting;

.field private blacklist mAuthType:I

.field private blacklist mBearerBitmask:I

.field private blacklist mCid:I

.field private blacklist mEnabled:Z

.field private blacklist mMtuV4:I

.field private blacklist mMtuV6:I

.field private blacklist mPassword:Ljava/lang/String;

.field private blacklist mPersistent:Z

.field private blacklist mPreferred:Z

.field private blacklist mProfileId:I

.field private blacklist mProtocolType:I

.field private blacklist mRoamingProtocolType:I

.field private blacklist mSupportedApnTypesBitmask:I

.field private blacklist mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

.field private blacklist mType:I

.field private blacklist mUserName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmApnSetting(Landroid/telephony/data/DataProfile$Builder;)Landroid/telephony/data/ApnSetting;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/DataProfile$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCid(Landroid/telephony/data/DataProfile$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/DataProfile$Builder;->mCid:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreferred(Landroid/telephony/data/DataProfile$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/data/DataProfile$Builder;->mPreferred:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProfileId(Landroid/telephony/data/DataProfile$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/DataProfile$Builder;->mProfileId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTrafficDescriptor(Landroid/telephony/data/DataProfile$Builder;)Landroid/telephony/data/TrafficDescriptor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/DataProfile$Builder;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/telephony/data/DataProfile$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/DataProfile$Builder;->mType:I

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/data/DataProfile$Builder;->mProfileId:I

    .line 586
    iput v0, p0, Landroid/telephony/data/DataProfile$Builder;->mType:I

    .line 589
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/telephony/data/DataProfile$Builder;->mEnabled:Z

    .line 613
    iput v0, p0, Landroid/telephony/data/DataProfile$Builder;->mCid:I

    .line 620
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/data/DataProfile;
    .registers 3

    .line 891
    iget-object v0, p0, Landroid/telephony/data/DataProfile$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-nez v0, :cond_67

    iget-object v0, p0, Landroid/telephony/data/DataProfile$Builder;->mApn:Ljava/lang/String;

    if-eqz v0, :cond_67

    .line 893
    new-instance v0, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v0}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    iget-object v1, p0, Landroid/telephony/data/DataProfile$Builder;->mApn:Ljava/lang/String;

    .line 894
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/DataProfile$Builder;->mApn:Ljava/lang/String;

    .line 895
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mSupportedApnTypesBitmask:I

    .line 896
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mAuthType:I

    .line 897
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/data/DataProfile$Builder;->mEnabled:Z

    .line 898
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/data/DataProfile$Builder;->mPersistent:Z

    .line 899
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setModemCognitive(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV4:I

    .line 900
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV4(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV6:I

    .line 901
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV6(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mBearerBitmask:I

    .line 902
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mProfileId:I

    .line 903
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/DataProfile$Builder;->mPassword:Ljava/lang/String;

    .line 904
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mProtocolType:I

    .line 905
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mRoamingProtocolType:I

    .line 906
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/DataProfile$Builder;->mUserName:Ljava/lang/String;

    .line 907
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 908
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting$Builder;->build()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 911
    :cond_67
    iget-object v0, p0, Landroid/telephony/data/DataProfile$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-nez v0, :cond_78

    iget-object v0, p0, Landroid/telephony/data/DataProfile$Builder;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    if-eqz v0, :cond_70

    goto :goto_78

    .line 912
    :cond_70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "APN setting and traffic descriptor can\'t be both null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    :cond_78
    :goto_78
    new-instance v0, Landroid/telephony/data/DataProfile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/data/DataProfile;-><init>(Landroid/telephony/data/DataProfile$Builder;Landroid/telephony/data/DataProfile-IA;)V

    return-object v0
.end method

.method public whitelist enable(Z)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "isEnabled"    # Z

    .line 726
    iput-boolean p1, p0, Landroid/telephony/data/DataProfile$Builder;->mEnabled:Z

    .line 727
    return-object p0
.end method

.method public whitelist setApn(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "apn"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 648
    iput-object p1, p0, Landroid/telephony/data/DataProfile$Builder;->mApn:Ljava/lang/String;

    .line 649
    return-object p0
.end method

.method public whitelist setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "apnSetting"    # Landroid/telephony/data/ApnSetting;

    .line 867
    iput-object p1, p0, Landroid/telephony/data/DataProfile$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 868
    return-object p0
.end method

.method public whitelist setAuthType(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "authType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 676
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mAuthType:I

    .line 677
    return-object p0
.end method

.method public whitelist setBearerBitmask(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "bearerBitmask"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 769
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mBearerBitmask:I

    .line 770
    return-object p0
.end method

.method public whitelist setCid(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "cid"    # I

    .line 852
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mCid:I

    .line 853
    return-object p0
.end method

.method public whitelist setMtu(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "mtu"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 784
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV6:I

    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV4:I

    .line 785
    return-object p0
.end method

.method public whitelist setMtuV4(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "mtu"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 798
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV4:I

    .line 799
    return-object p0
.end method

.method public whitelist setMtuV6(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "mtu"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 812
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV6:I

    .line 813
    return-object p0
.end method

.method public whitelist setPassword(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "password"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 704
    iput-object p1, p0, Landroid/telephony/data/DataProfile$Builder;->mPassword:Ljava/lang/String;

    .line 705
    return-object p0
.end method

.method public whitelist setPersistent(Z)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "isPersistent"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 840
    iput-boolean p1, p0, Landroid/telephony/data/DataProfile$Builder;->mPersistent:Z

    .line 841
    return-object p0
.end method

.method public whitelist setPreferred(Z)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "isPreferred"    # Z

    .line 825
    iput-boolean p1, p0, Landroid/telephony/data/DataProfile$Builder;->mPreferred:Z

    .line 826
    return-object p0
.end method

.method public whitelist setProfileId(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "profileId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 633
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mProfileId:I

    .line 634
    return-object p0
.end method

.method public whitelist setProtocolType(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "protocolType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 662
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mProtocolType:I

    .line 663
    return-object p0
.end method

.method public whitelist setRoamingProtocolType(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "protocolType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 754
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mRoamingProtocolType:I

    .line 755
    return-object p0
.end method

.method public whitelist setSupportedApnTypesBitmask(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "supportedApnTypesBitmask"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 740
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mSupportedApnTypesBitmask:I

    .line 741
    return-object p0
.end method

.method public whitelist setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "trafficDescriptor"    # Landroid/telephony/data/TrafficDescriptor;

    .line 881
    iput-object p1, p0, Landroid/telephony/data/DataProfile$Builder;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    .line 882
    return-object p0
.end method

.method public whitelist setType(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "type"    # I

    .line 715
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mType:I

    .line 716
    return-object p0
.end method

.method public whitelist setUserName(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "userName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 690
    iput-object p1, p0, Landroid/telephony/data/DataProfile$Builder;->mUserName:Ljava/lang/String;

    .line 691
    return-object p0
.end method
