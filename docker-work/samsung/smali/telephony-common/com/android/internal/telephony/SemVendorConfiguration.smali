.class public Lcom/android/internal/telephony/SemVendorConfiguration;
.super Ljava/lang/Object;
.source "SemVendorConfiguration.java"


# instance fields
.field greylist mConfigurationName:Ljava/lang/String;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field greylist mConfigurationValue:Ljava/lang/String;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/internal/telephony/SemVendorConfiguration;->mConfigurationName:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/android/internal/telephony/SemVendorConfiguration;->mConfigurationValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getConfigurationName()Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/internal/telephony/SemVendorConfiguration;->mConfigurationName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getConfigurationValue()Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/android/internal/telephony/SemVendorConfiguration;->mConfigurationValue:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ mConfigurationName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemVendorConfiguration;->mConfigurationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mConfigurationValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemVendorConfiguration;->mConfigurationValue:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
