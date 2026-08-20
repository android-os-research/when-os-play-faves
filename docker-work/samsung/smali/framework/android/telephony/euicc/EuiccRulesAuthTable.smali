.class public final Landroid/telephony/euicc/EuiccRulesAuthTable;
.super Ljava/lang/Object;
.source "EuiccRulesAuthTable.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;,
        Landroid/telephony/euicc/EuiccRulesAuthTable$PolicyRuleFlag;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/euicc/EuiccRulesAuthTable;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist POLICY_RULE_FLAG_CONSENT_REQUIRED:I = 0x1


# instance fields
.field private final greylist-max-o mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

.field private final greylist-max-o mPolicyRuleFlags:[I

.field private final greylist-max-o mPolicyRules:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 252
    new-instance v0, Landroid/telephony/euicc/EuiccRulesAuthTable$1;

    invoke-direct {v0}, Landroid/telephony/euicc/EuiccRulesAuthTable$1;-><init>()V

    sput-object v0, Landroid/telephony/euicc/EuiccRulesAuthTable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    .line 244
    array-length v0, v0

    .line 245
    .local v0, "len":I
    new-array v1, v0, [[Landroid/service/carrier/CarrierIdentifier;

    iput-object v1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    .line 246
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_20

    .line 247
    iget-object v2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    sget-object v3, Landroid/service/carrier/CarrierIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/service/carrier/CarrierIdentifier;

    aput-object v3, v2, v1

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 249
    .end local v1    # "i":I
    :cond_20
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRuleFlags:[I

    .line 250
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/euicc/EuiccRulesAuthTable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/euicc/EuiccRulesAuthTable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-o <init>([I[[Landroid/service/carrier/CarrierIdentifier;[I)V
    .registers 4
    .param p1, "policyRules"    # [I
    .param p2, "carrierIds"    # [[Landroid/service/carrier/CarrierIdentifier;
    .param p3, "policyRuleFlags"    # [I

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    .line 135
    iput-object p2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    .line 136
    iput-object p3, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRuleFlags:[I

    .line 137
    return-void
.end method

.method synthetic constructor blacklist <init>([I[[Landroid/service/carrier/CarrierIdentifier;[ILandroid/telephony/euicc/EuiccRulesAuthTable-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/euicc/EuiccRulesAuthTable;-><init>([I[[Landroid/service/carrier/CarrierIdentifier;[I)V

    return-void
.end method

.method public static greylist-max-o match(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "mccRule"    # Ljava/lang/String;
    .param p1, "mcc"    # Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_c

    .line 119
    return v2

    .line 121
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x45

    if-eq v1, v3, :cond_2d

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v1, v3, :cond_2c

    .line 125
    goto :goto_2d

    .line 127
    :cond_2c
    return v2

    .line 121
    :cond_2d
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 129
    .end local v0    # "i":I
    :cond_30
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "obj"    # Ljava/lang/Object;

    .line 208
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 209
    return v0

    .line 211
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_66

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_66

    .line 215
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/euicc/EuiccRulesAuthTable;

    .line 216
    .local v2, "that":Landroid/telephony/euicc/EuiccRulesAuthTable;
    iget-object v3, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    array-length v3, v3

    iget-object v4, v2, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    array-length v4, v4

    if-eq v3, v4, :cond_1e

    .line 217
    return v1

    .line 219
    :cond_1e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    iget-object v4, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    array-length v5, v4

    if-ge v3, v5, :cond_4f

    .line 220
    aget-object v4, v4, v3

    .line 221
    .local v4, "carrierIds":[Landroid/service/carrier/CarrierIdentifier;
    iget-object v5, v2, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    aget-object v5, v5, v3

    .line 222
    .local v5, "thatCarrierIds":[Landroid/service/carrier/CarrierIdentifier;
    if-eqz v4, :cond_46

    if-eqz v5, :cond_46

    .line 223
    array-length v6, v4

    array-length v7, v5

    if-eq v6, v7, :cond_33

    .line 224
    return v1

    .line 226
    :cond_33
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_34
    array-length v7, v4

    if-ge v6, v7, :cond_45

    .line 227
    aget-object v7, v4, v6

    aget-object v8, v5, v6

    invoke-virtual {v7, v8}, Landroid/service/carrier/CarrierIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_42

    .line 228
    return v1

    .line 226
    :cond_42
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    .line 231
    .end local v6    # "j":I
    :cond_45
    goto :goto_4b

    .line 232
    :cond_46
    if-nez v4, :cond_4e

    if-nez v5, :cond_4e

    .line 233
    nop

    .line 219
    .end local v4    # "carrierIds":[Landroid/service/carrier/CarrierIdentifier;
    .end local v5    # "thatCarrierIds":[Landroid/service/carrier/CarrierIdentifier;
    :goto_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 235
    .restart local v4    # "carrierIds":[Landroid/service/carrier/CarrierIdentifier;
    .restart local v5    # "thatCarrierIds":[Landroid/service/carrier/CarrierIdentifier;
    :cond_4e
    return v1

    .line 238
    .end local v3    # "i":I
    .end local v4    # "carrierIds":[Landroid/service/carrier/CarrierIdentifier;
    .end local v5    # "thatCarrierIds":[Landroid/service/carrier/CarrierIdentifier;
    :cond_4f
    iget-object v3, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    iget-object v4, v2, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_64

    iget-object v3, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRuleFlags:[I

    iget-object v4, v2, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRuleFlags:[I

    .line 239
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_64

    goto :goto_65

    :cond_64
    move v0, v1

    .line 238
    :goto_65
    return v0

    .line 212
    .end local v2    # "that":Landroid/telephony/euicc/EuiccRulesAuthTable;
    :cond_66
    :goto_66
    return v1
.end method

.method public whitelist findIndex(ILandroid/service/carrier/CarrierIdentifier;)I
    .registers 9
    .param p1, "policy"    # I
    .param p2, "carrierId"    # Landroid/service/carrier/CarrierIdentifier;

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    array-length v2, v1

    if-ge v0, v2, :cond_6a

    .line 150
    aget v1, v1, v0

    and-int/2addr v1, p1

    if-nez v1, :cond_c

    .line 151
    goto :goto_67

    .line 153
    :cond_c
    iget-object v1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    aget-object v1, v1, v0

    .line 154
    .local v1, "carrierIds":[Landroid/service/carrier/CarrierIdentifier;
    if-eqz v1, :cond_67

    array-length v2, v1

    if-nez v2, :cond_16

    .line 155
    goto :goto_67

    .line 157
    :cond_16
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_17
    array-length v3, v1

    if-ge v2, v3, :cond_67

    .line 158
    aget-object v3, v1, v2

    .line 159
    .local v3, "ruleCarrierId":Landroid/service/carrier/CarrierIdentifier;
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/euicc/EuiccRulesAuthTable;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 160
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/euicc/EuiccRulesAuthTable;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 161
    goto :goto_64

    .line 163
    :cond_39
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "gid":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4e

    invoke-virtual {p2}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4e

    .line 165
    goto :goto_64

    .line 167
    :cond_4e
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v4

    .line 168
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_63

    invoke-virtual {p2}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_63

    .line 169
    goto :goto_64

    .line 171
    :cond_63
    return v0

    .line 157
    .end local v3    # "ruleCarrierId":Landroid/service/carrier/CarrierIdentifier;
    .end local v4    # "gid":Ljava/lang/String;
    :cond_64
    :goto_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 149
    .end local v1    # "carrierIds":[Landroid/service/carrier/CarrierIdentifier;
    .end local v2    # "j":I
    :cond_67
    :goto_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 174
    .end local v0    # "i":I
    :cond_6a
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist hasPolicyRuleFlag(II)Z
    .registers 4
    .param p1, "index"    # I
    .param p2, "flag"    # I

    .line 186
    if-ltz p1, :cond_12

    iget-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    array-length v0, v0

    if-ge p1, v0, :cond_12

    .line 189
    iget-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRuleFlags:[I

    aget v0, v0, p1

    and-int/2addr v0, p2

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    .line 187
    :cond_12
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 199
    iget-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 200
    iget-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    .line 201
    .local v3, "ids":[Landroid/service/carrier/CarrierIdentifier;
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 200
    .end local v3    # "ids":[Landroid/service/carrier/CarrierIdentifier;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 203
    :cond_13
    iget-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRuleFlags:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 204
    return-void
.end method
