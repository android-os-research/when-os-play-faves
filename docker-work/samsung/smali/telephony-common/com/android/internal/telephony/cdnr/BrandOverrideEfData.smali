.class public final Lcom/android/internal/telephony/cdnr/BrandOverrideEfData;
.super Ljava/lang/Object;
.source "BrandOverrideEfData.java"

# interfaces
.implements Lcom/android/internal/telephony/cdnr/EfData;


# instance fields
.field private final blacklist mRegisteredPlmn:Ljava/lang/String;

.field private final blacklist mSpn:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/internal/telephony/cdnr/BrandOverrideEfData;->mSpn:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/android/internal/telephony/cdnr/BrandOverrideEfData;->mRegisteredPlmn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getServiceProviderDisplayInformation()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 47
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/BrandOverrideEfData;->mRegisteredPlmn:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getServiceProviderName()Ljava/lang/String;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/BrandOverrideEfData;->mSpn:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getServiceProviderNameDisplayCondition(Z)I
    .registers 2

    const/4 p0, 0x2

    return p0
.end method
